Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp9transform7idct4x4:bb.a
  %i.es = add nsw i64 %i.ep, %i.er                ; 2 uses
  %i.et = add nsw i64 %i.ed, 4                    ; 2 uses
  %i.eu = add nsw i64 %i.et, %i.es
  %i.ev = lshr i64 %i.eu, 3
  %i.ew = trunc i64 %i.ev to i32
  store i32 %i.ew, ptr %0, align 4
  %i.ex = sub nsw i64 %i.et, %i.es
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.cv, align 4
  %i.fa = add nsw i64 %i.ee, 4                    ; 2 uses
  %i.fb = add nsw i64 %i.fa, %i.em
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = trunc i64 %i.fc to i32
  store i32 %i.fd, ptr %i.ai, align 4
  %i.fe = sub nsw i64 %i.fa, %i.em
  %i.ff = lshr i64 %i.fe, 3
  %i.fg = trunc i64 %i.ff to i32
  store i32 %i.fg, ptr %i.bp, align 4
  %i.fh = load i32, ptr %i.i, align 4, !noundef !4
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %sext32 = shl i64 %i.cq, 32
  %i.fk = ashr exact i64 %sext32, 32              ; 2 uses
  %i.fl = add nsw i64 %i.fk, %i.fi
  %i.fm = sub nsw i64 %i.fi, %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !noundef !4
  %i.fp = sext i32 %i.fo to i64                   ; 3 uses
  %i.fq = mul nsw i64 %i.fp, 35468
  %i.fr = ashr i64 %i.fq, 16
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %sext33 = shl i64 %i.dw, 32
  %i.ft = ashr exact i64 %sext33, 32              ; 3 uses
  %i.fu = mul nsw i64 %i.ft, 20091
  %i.fv = ashr i64 %i.fu, 16
  %i.fw = add nsw i64 %i.fv, %i.ft
  %i.fx = sub nsw i64 %i.fr, %i.fw                ; 2 uses
  %i.fy = mul nsw i64 %i.fp, 20091
  %i.fz = ashr i64 %i.fy, 16
  %i.ga = add nsw i64 %i.fz, %i.fp
  %i.gb = mul nsw i64 %i.ft, 35468
  %i.gc = ashr i64 %i.gb, 16
  %i.gd = add nsw i64 %i.ga, %i.gc                ; 2 uses
  %i.ge = add nsw i64 %i.fl, 4                    ; 2 uses
  %i.gf = add nsw i64 %i.ge, %i.gd
  %i.gg = lshr i64 %i.gf, 3
  %i.gh = trunc i64 %i.gg to i32
  store i32 %i.gh, ptr %i.i, align 4
  %i.gi = sub nsw i64 %i.ge, %i.gd
  %i.gj = lshr i64 %i.gi, 3
  %i.gk = trunc i64 %i.gj to i32
  store i32 %i.gk, ptr %i.fs, align 4
  %i.gl = add nsw i64 %i.fm, 4                    ; 2 uses
  %i.gm = add nsw i64 %i.gl, %i.fx
  %i.gn = lshr i64 %i.gm, 3
  %i.go = trunc i64 %i.gn to i32
  store i32 %i.go, ptr %i.fn, align 4
  %i.gp = sub nsw i64 %i.gl, %i.fx
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = trunc i64 %i.gq to i32
  store i32 %i.gr, ptr %i.fj, align 4
  %i.gs = load i32, ptr %i.d, align 4, !noundef !4
  %i.gt = sext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !noundef !4
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = add nsw i64 %i.gw, %i.gt
  %i.gy = sub nsw i64 %i.gt, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !noundef !4
  %i.hb = sext i32 %i.ha to i64                   ; 3 uses
  %i.hc = mul nsw i64 %i.hb, 35468
  %i.hd = ashr i64 %i.hc, 16
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 44
  %sext34 = shl i64 %i.dz, 32
  %i.hf = ashr exact i64 %sext34, 32              ; 3 uses
  %i.hg = mul nsw i64 %i.hf, 20091
  %i.hh = ashr i64 %i.hg, 16
  %i.hi = add nsw i64 %i.hh, %i.hf
  %i.hj = sub nsw i64 %i.hd, %i.hi                ; 2 uses
  %i.hk = mul nsw i64 %i.hb, 20091
  %i.hl = ashr i64 %i.hk, 16
  %i.hm = add nsw i64 %i.hl, %i.hb
  %i.hn = mul nsw i64 %i.hf, 35468
  %i.ho = ashr i64 %i.hn, 16
  %i.hp = add nsw i64 %i.hm, %i.ho                ; 2 uses
  %i.hq = add nsw i64 %i.gx, 4                    ; 2 uses
  %i.hr = add nsw i64 %i.hq, %i.hp
  %i.hs = lshr i64 %i.hr, 3
  %i.ht = trunc i64 %i.hs to i32
  store i32 %i.ht, ptr %i.d, align 4
  %i.hu = sub nsw i64 %i.hq, %i.hp
  %i.hv = lshr i64 %i.hu, 3
  %i.hw = trunc i64 %i.hv to i32
  store i32 %i.hw, ptr %i.he, align 4
  %i.hx = add nsw i64 %i.gy, 4                    ; 2 uses
  %i.hy = add nsw i64 %i.hx, %i.hj
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = trunc i64 %i.hz to i32
  store i32 %i.ia, ptr %i.gz, align 4
  %i.ib = sub nsw i64 %i.hx, %i.hj
  %i.ic = lshr i64 %i.ib, 3
  %i.id = trunc i64 %i.ic to i32
  store i32 %i.id, ptr %i.gu, align 4
  %i.ie = load i32, ptr %i.n, align 4, !noundef !4
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !noundef !4
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nsw i64 %i.ii, %i.if
  %i.ik = sub nsw i64 %i.if, %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !noundef !4
  %i.in = sext i32 %i.im to i64                   ; 3 uses
  %i.io = mul nsw i64 %i.in, 35468
  %i.ip = ashr i64 %i.io, 16
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !noundef !4
  %i.is = sext i32 %i.ir to i64                   ; 3 uses
  %i.it = mul nsw i64 %i.is, 20091
  %i.iu = ashr i64 %i.it, 16
  %i.iv = add nsw i64 %i.iu, %i.is
  %i.iw = sub nsw i64 %i.ip, %i.iv                ; 2 uses
  %i.ix = mul nsw i64 %i.in, 20091
  %i.iy = ashr i64 %i.ix, 16
  %i.iz = add nsw i64 %i.iy, %i.in
  %i.ja = mul nsw i64 %i.is, 35468
  %i.jb = ashr i64 %i.ja, 16
  %i.jc = add nsw i64 %i.iz, %i.jb                ; 2 uses
  %i.jd = add nsw i64 %i.ij, 4                    ; 2 uses
  %i.je = add nsw i64 %i.jd, %i.jc
  %i.jf = lshr i64 %i.je, 3
  %i.jg = trunc i64 %i.jf to i32
  store i32 %i.jg, ptr %i.n, align 4
  %i.jh = sub nsw i64 %i.jd, %i.jc
  %i.ji = lshr i64 %i.jh, 3
  %i.jj = trunc i64 %i.ji to i32
  store i32 %i.jj, ptr %i.iq, align 4
  %i.jk = add nsw i64 %i.ik, 4                    ; 2 uses
  %i.jl = add nsw i64 %i.jk, %i.iw
  %i.jm = lshr i64 %i.jl, 3
  %i.jn = trunc i64 %i.jm to i32
  store i32 %i.jn, ptr %i.il, align 4
  %i.jo = sub nsw i64 %i.jk, %i.iw
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = trunc i64 %i.jp to i32
  store i32 %i.jq, ptr %i.ig, align 4
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsksn9slvsHfS_10image_webp9transform7iwht4x4(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 15
  br i1 %i.a, label %.lr.ph.preheader, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #25
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load <4 x i32>, ptr %0, align 4          ; 2 uses
  %i.f = load <4 x i32>, ptr %i.b, align 4        ; 2 uses
  %i.g = load <8 x i32>, ptr %i.c, align 4        ; 3 uses
  %i.h = shufflevector <8 x i32> %i.g, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.i = add <8 x i32> %i.h, %i.g
  %i.j = sub <8 x i32> %i.h, %i.g
  %i.k = shufflevector <8 x i32> %i.i, <8 x i32> %i.j, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.l = shufflevector <4 x i32> %i.f, <4 x i32> %i.e, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.m = shufflevector <4 x i32> %i.e, <4 x i32> %i.f, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.n = add <8 x i32> %i.l, %i.m
  %i.o = sub <8 x i32> %i.l, %i.m
  %i.p = shufflevector <8 x i32> %i.n, <8 x i32> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.q = add <8 x i32> %i.k, %i.p
  store <8 x i32> %i.q, ptr %0, align 4
  %i.r = sub <8 x i32> %i.p, %i.k
  store <8 x i32> %i.r, ptr %i.d, align 4
  %i.s = and i64 %1, 2305843009213693948
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.3.016 = phi ptr [ %i.t, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.5.015 = phi i64 [ %i.u, %.lr.ph ], [ %i.s, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.3.016, i64 16
  %i.u = add nsw i64 %.sroa.5.015, -4             ; 2 uses
  %i.v = load i32, ptr %.sroa.3.016, align 4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.3.016, i64 12
  %i.x = load i32, ptr %i.w, align 4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.3.016, i64 4
  %2 = add i32 %i.x, %i.v
  %i.z = load <2 x i32>, ptr %i.y, align 4        ; 3 uses
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ab = add <2 x i32> %i.aa, %i.z
  %i.ac = sub <2 x i32> %i.aa, %i.z
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %i.ac, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %i.ae = sub i32 %i.v, %i.x
  %i.af = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ae, i64 1
  %i.ah = add <4 x i32> %i.ag, <i32 3, i32 3, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aj = add <4 x i32> %i.ai, %i.ad
  %i.ak = sub <4 x i32> %i.ai, %i.ad
  %i.al = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = ashr <4 x i32> %i.al, splat (i32 3)
  store <4 x i32> %i.am, ptr %.sroa.3.016, align 4
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj20_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj4_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecAhj8_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 30
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjmEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTtlEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTttEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit

_RNvMs3_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsksn9slvsHfS_10image_webp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull align 4 ptr @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc11collections11binary_heapINtB5_7PeekMutNtNvNtCsksn9slvsHfS_10image_webp7encoder18build_huffman_tree4ItemENtNtNtCsj6eKBz9Db1c_4core3ops5deref8DerefMut9deref_mutB1d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !11, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ult i64 %i.c, 1152921504606846976
  tail call void @llvm.assume(i1 %i.d)
end_hunk_0
