Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/base64-rs/original/base64-2bb5e08323c56fc8.base64.be38770df9fbf2a4-cgu.1?download=true
inline.NumInlined: 38
inline.NumDeleted: 23
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads:bb.a
  br i1 %i.ki, label %.loopexit291, label %bb.ax

.loopexit291:                                     ; preds = %bb.ap, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.sink2504 = phi i64 [ 23, %bb.aw ], [ 22, %bb.av ], [ 17, %bb.aq ], [ 18, %bb.ar ], [ 19, %bb.as ], [ 20, %bb.at ], [ 21, %bb.au ], [ 16, %bb.ap ]
  %.sroa.1497.0.ph = phi i8 [ %i.ke, %bb.aw ], [ %i.jy, %bb.av ], [ %i.iu, %bb.aq ], [ %i.ja, %bb.ar ], [ %i.jg, %bb.as ], [ %i.jm, %bb.at ], [ %i.js, %bb.au ], [ %i.io, %bb.ap ]
  %i.kj = shl i64 %.sroa.13.01058, 5
  %i.kk = add i64 %i.kj, %3
  %i.kl = add i64 %i.kk, %.sink2504
  store i8 0, ptr %0, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.1497.0.ph, ptr %.sroa.4191.0..sroa_idx, align 1
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kl, ptr %.sroa.6193.0..sroa_idx, align 8
  br label %bb.f

bb.ax:                                            ; preds = %bb.aw
  %i.km = zext i8 %i.ir to i64
  %i.kn = shl i64 %i.km, 58
  %i.ko = zext i8 %i.ix to i64
  %i.kp = shl nuw nsw i64 %i.ko, 52
  %i.kq = or i64 %i.kp, %i.kn
  %i.kr = zext i8 %i.jd to i64
  %i.ks = shl nuw nsw i64 %i.kr, 46
  %i.kt = or i64 %i.kq, %i.ks
  %i.ku = zext i8 %i.jj to i64
  %i.kv = shl nuw nsw i64 %i.ku, 40
  %i.kw = or i64 %i.kt, %i.kv
  %i.kx = zext i8 %i.jp to i64
  %i.ky = shl nuw nsw i64 %i.kx, 34
  %i.kz = or i64 %i.kw, %i.ky
  %i.la = zext i8 %i.jv to i64
  %i.lb = shl nuw nsw i64 %i.la, 28
  %i.lc = or i64 %i.kz, %i.lb
  %i.ld = zext i8 %i.kb to i64
  %i.le = shl nuw nsw i64 %i.ld, 22
  %i.lf = or i64 %i.lc, %i.le
  %i.lg = zext i8 %i.kh to i64
  %i.lh = shl nuw nsw i64 %i.lg, 16
  %i.li = or i64 %i.lf, %i.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !77
  %i.lj = call i64 @llvm.bswap.i64(i64 %i.li)
  store i64 %i.lj, ptr %i.c, align 8, !noalias !77
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull %i.in, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !77
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 24
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bx, i64 18
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.lm = load i8, ptr %i.lk, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.lq = icmp eq i8 %i.lp, -1
  br i1 %i.lq, label %.loopexit292, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 25
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.lw = icmp eq i8 %i.lv, -1
  br i1 %i.lw, label %.loopexit292, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 26
  %i.ly = load i8, ptr %i.lx, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.lz = zext i8 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.mc = icmp eq i8 %i.mb, -1
  br i1 %i.mc, label %.loopexit292, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 27
  %i.me = load i8, ptr %i.md, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.mi = icmp eq i8 %i.mh, -1
  br i1 %i.mi, label %.loopexit292, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 28
  %i.mk = load i8, ptr %i.mj, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.ml = zext i8 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.mo = icmp eq i8 %i.mn, -1
  br i1 %i.mo, label %.loopexit292, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 29
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %5, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.mu = icmp eq i8 %i.mt, -1
  br i1 %i.mu, label %.loopexit292, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 30
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.mx = zext i8 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr %5, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.na = icmp eq i8 %i.mz, -1
  br i1 %i.na, label %.loopexit292, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0.01060, i64 31
  %i.nc = load i8, ptr %i.nb, align 1, !alias.scope !79, !noalias !84, !noundef !4 ; 2 uses
  %i.nd = zext i8 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !alias.scope !82, !noalias !87, !noundef !4 ; 2 uses
  %i.ng = icmp eq i8 %i.nf, -1
  br i1 %i.ng, label %.loopexit292, label %bb.bf

.loopexit292:                                     ; preds = %bb.ax, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.sink2506 = phi i64 [ 31, %bb.be ], [ 30, %bb.bd ], [ 25, %bb.ay ], [ 26, %bb.az ], [ 27, %bb.ba ], [ 28, %bb.bb ], [ 29, %bb.bc ], [ 24, %bb.ax ]
  %.sroa.14101.0.ph = phi i8 [ %i.nc, %bb.be ], [ %i.mw, %bb.bd ], [ %i.ls, %bb.ay ], [ %i.ly, %bb.az ], [ %i.me, %bb.ba ], [ %i.mk, %bb.bb ], [ %i.mq, %bb.bc ], [ %i.lm, %bb.ax ]
  %i.nh = shl i64 %.sroa.13.01058, 5
  %i.ni = add i64 %i.nh, %3
  %i.nj = add i64 %i.ni, %.sink2506
  store i8 0, ptr %0, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.14101.0.ph, ptr %.sroa.4215.0..sroa_idx, align 1
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nj, ptr %.sroa.6217.0..sroa_idx, align 8
  br label %bb.f

bb.bf:                                            ; preds = %bb.be
  %i.nk = zext i8 %i.lp to i64
  %i.nl = shl i64 %i.nk, 58
  %i.nm = zext i8 %i.lv to i64
  %i.nn = shl nuw nsw i64 %i.nm, 52
  %i.no = or i64 %i.nn, %i.nl
  %i.np = zext i8 %i.mb to i64
  %i.nq = shl nuw nsw i64 %i.np, 46
  %i.nr = or i64 %i.no, %i.nq
  %i.ns = zext i8 %i.mh to i64
  %i.nt = shl nuw nsw i64 %i.ns, 40
  %i.nu = or i64 %i.nr, %i.nt
  %i.nv = zext i8 %i.mn to i64
  %i.nw = shl nuw nsw i64 %i.nv, 34
  %i.nx = or i64 %i.nu, %i.nw
  %i.ny = zext i8 %i.mt to i64
  %i.nz = shl nuw nsw i64 %i.ny, 28
  %i.oa = or i64 %i.nx, %i.nz
  %i.ob = zext i8 %i.mz to i64
  %i.oc = shl nuw nsw i64 %i.ob, 22
  %i.od = or i64 %i.oa, %i.oc
  %i.oe = zext i8 %i.nf to i64
  %i.of = shl nuw nsw i64 %i.oe, 16
  %i.og = or i64 %i.od, %i.of
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  %i.oh = call i64 @llvm.bswap.i64(i64 %i.og)
  store i64 %i.oh, ptr %i.d, align 8, !noalias !88
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull %i.ll, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsgkxsgNF9KUO_6base646decodeNtB2_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i8, ptr %0, align 8, !range !90, !noundef !4
  switch i8 %i.m, label %default.unreachable84 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.l
  ]

default.unreachable84:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  store i64 %i.o, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !noundef !4
  store i8 %i.q, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %2 = ptrtoint ptr %i.k to i64
  %3 = ptrtoint ptr %i.l to i64
  store i64 %2, ptr %i.j, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 ptrtoint (ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt to i64), ptr %.sroa.49.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %3, ptr %i.r, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.413.0..sroa_idx, align 8
  %i.s = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !91, !noundef !4
  %i.v = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @14, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !4
  store i64 %i.x, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %4 = ptrtoint ptr %i.i to i64
  store i64 %4, ptr %i.h, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.45.0..sroa_idx, align 8
  %i.y = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !align !91, !noundef !4
  %i.ab = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noundef nonnull @15, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  store i64 %i.ad, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4 ; 2 uses
  store i8 %i.af, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ah = load i8, ptr %i.ag, align 2, !noundef !4
  store i8 %i.ah, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.af, ptr %i.b, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  %i.ai = load i64, ptr %i.c, align 8, !range !14, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.l, %bb.k, %bb.c, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.v, %bb.b ], [ %i.ab, %bb.c ], [ %i.cd, %bb.k ], [ %i.cj, %bb.l ]
  ret i1 %.sroa.0.1.in

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = icmp samesign eq i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %i.al, align 1, !noalias !92, !noundef !4 ; 5 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit12.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit12.i: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.as = and i8 %i.ap, 31
  %i.at = zext nneg i8 %i.as to i32               ; 3 uses
  %i.au = icmp samesign ne i64 %i.an, 1
  call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.ar, align 1, !noalias !92, !noundef !4
  %i.aw = shl nuw nsw i32 %i.at, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32               ; 2 uses
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ap, -33
  br i1 %i.ba, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit14.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = zext nneg i8 %i.ap to i32
  br label %bb.j

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit14.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit12.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.bd = icmp samesign ne i64 %i.an, 2
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bc, align 1, !noalias !92, !noundef !4
  %i.bf = shl nuw nsw i32 %i.ay, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.at, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ap, -17
  br i1 %i.bl, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit16.i, label %bb.j

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit16.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit14.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.bn = icmp samesign ne i64 %i.an, 3
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load i8, ptr %i.bm, align 1, !noalias !92, !noundef !4
  %i.bp = shl nuw nsw i32 %i.at, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bi, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit12.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit16.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit14.i ], [ %i.bv, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit16.i ], [ %i.az, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgkxsgNF9KUO_6base64.exit12.i ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bw)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.j
  %storemerge = phi i32 [ %.sroa.4.0.i.ph, %bb.j ], [ 65533, %bb.f ], [ 65533, %bb.g ]
  store i32 %storemerge, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %5 = ptrtoint ptr %i.f to i64
  %6 = ptrtoint ptr %i.d to i64
  %7 = ptrtoint ptr %i.g to i64
  %8 = ptrtoint ptr %i.e to i64
  store i64 %5, ptr %i.a, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt to i64), ptr %.sroa.443.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %6, ptr %i.bx, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 ptrtoint (ptr @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt to i64), ptr %.sroa.447.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %7, ptr %i.by, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.451.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %8, ptr %i.bz, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 ptrtoint (ptr @_RNvXsa_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_6Binary3fmt to i64), ptr %.sroa.455.0..sroa_idx, align 8
  %i.ca = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !align !91, !noundef !4
  %i.cd = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc, ptr noundef nonnull @16, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.l:                                             ; preds = %bb.a
  %i.ce = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !align !91, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !4, !nonnull !4
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull %i.ce, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 15) #15
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCsgkxsgNF9KUO_6base646decodeNtB5_16DecodeSliceErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 8, !range !95, !noundef !4
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsgkxsgNF9KUO_6base646decode11DecodeErrorNtB6_7Display3fmtBA_ to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !91, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @18, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.n, %bb.d ], [ %i.h, %bb.b ]
  ret i1 %.sroa.0.1.in

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !91, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !4, !nonnull !4
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 22) #15
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4SimdNtB7_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(326) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.c = load i8, ptr %i.b, align 1, !range !96, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 325
  %i.e = load i8, ptr %i.d, align 1, !range !96, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !96, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.l = load i8, ptr %i.k, align 1, !noundef !4  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1, !range !97, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.o = icmp eq i64 %6, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i64 %3, -1                       ; 3 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.b
  %i.q = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.r = icmp eq i64 %6, 0
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 4)
  %i.t = select i1 %i.r, i64 %i.s, i64 %i.q       ; 5 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = mul nuw nsw i64 %i.u, 3                  ; 2 uses
  %i.w = icmp samesign ult i64 %5, %i.v
  br i1 %i.w, label %bb.h, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !110, !noalias !111, !noundef !4 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.y, %i.l
  br i1 %.not9.i.i, label %bb.d, label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !114
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !115, !noalias !116, !noundef !4
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.104.0.ph.i = phi i64 [ %i.p, %bb.g ], [ undef, %bb.d ]
  %.sroa.8.0.ph.i = phi i8 [ %i.y, %bb.g ], [ undef, %bb.d ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.g ], [ -1, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.ad, align 8, !alias.scope !98, !noalias !117
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !98, !noalias !117
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.104.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !98, !noalias !117
  store i64 2, ptr %0, align 8, !alias.scope !98, !noalias !117
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs1_NtB6_4simdNtB1l_4SimdNtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.d
  %i.ae = trunc nuw i8 %i.c to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %i.af = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.t, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !118
  br label %_RNCNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4SimdNtB9_6Engine15internal_decode0Bb_.exit.i

bb.j:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %i.ag = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.t, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !118
  br label %_RNCNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4SimdNtB9_6Engine15internal_decode0Bb_.exit.i

_RNCNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4SimdNtB9_6Engine15internal_decode0Bb_.exit.i: ; preds = %bb.j, %bb.i
  %.pn.i.i = phi { i64, i64 } [ %i.af, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = extractvalue { i64, i64 } %.pn.i.i, 0
  %i.ai = extractvalue { i64, i64 } %.pn.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !119
  call fastcc void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.ah, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.g, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.ai) #15, !noalias !98
  %i.aj = load i8, ptr %i.a, align 8, !range !120, !noalias !119, !noundef !4
  %.not20.i = icmp eq i8 %i.aj, -2
  br i1 %.not20.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNCNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4SimdNtB9_6Engine15internal_decode0Bb_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  store i64 2, ptr %0, align 8, !alias.scope !98, !noalias !117
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs1_NtB6_4simdNtB1l_4SimdNtB6_6Engine15internal_decode0EB8_.exit

bb.l:                                             ; preds = %_RNCNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4SimdNtB9_6Engine15internal_decode0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !119
  tail call void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.t, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.g, i1 noundef zeroext %i.j, i8 noundef %i.l, i8 noundef range(i8 0, 3) %i.n)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs1_NtB6_4simdNtB1l_4SimdNtB6_6Engine15internal_decode0EB8_.exit

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(324) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs1_NtB6_4simdNtB1l_4SimdNtB6_6Engine15internal_decode0EB8_.exit

_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs1_NtB6_4simdNtB1l_4SimdNtB6_6Engine15internal_decode0EB8_.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs1_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4SimdNtB7_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(326) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.b = load i8, ptr %i.a, align 1, !range !96, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.e = load i8, ptr %i.d, align 1, !range !96, !noundef !4
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3
  br i1 %i.f, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(324) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.sroa.0.0 = phi i64 [ %i.k, %bb.g ], [ %i.h, %bb.c ]
  ret i64 %.sroa.0.0

bb.e:                                             ; preds = %bb.b
  %i.i = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { i64, i64 } [ %i.i, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.sroa.01.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  %i.k = tail call noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4, i64 noundef %.sroa.01.0, i64 noundef %.sroa.5.0)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsgkxsgNF9KUO_6base646decode11DecodeErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !91, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsgkxsgNF9KUO_6base646decodeNtB2_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsgkxsgNF9KUO_6base648alphabetNtB5_6SymbolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !noundef !4
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !91, !noundef !4
  %i.h = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs3_NtCsgkxsgNF9KUO_6base648alphabetNtB5_8AlphabetINtNtCskKLDkoKarTP_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([66 x i8]) align 1 captures(none) dereferenceable(66) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = icmp eq i64 %2, 64
  br i1 %i.a, label %.preheader9.i.i, label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit

bb.b:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !131
  br label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit

.preheader9.i.i:                                  ; preds = %bb.a, %bb.f
  %.sroa.0.013.i.i = phi i64 [ %i.i, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.013.i.i
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !132, !noalias !133, !noundef !4 ; 8 uses
  %i.e = add i8 %i.d, -32
  %or.cond.i.i = icmp ult i8 %i.e, 95
  br i1 %or.cond.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader9.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.f, align 1, !alias.scope !133, !noalias !132
  br label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit

bb.d:                                             ; preds = %.preheader9.i.i
  %i.g = icmp eq i8 %i.d, 61
  br i1 %i.g, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.h, align 1, !alias.scope !133, !noalias !132
  br label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit

bb.f:                                             ; preds = %bb.j
  %i.i = add nuw nsw i64 %.sroa.0.013.i.i, 1      ; 2 uses
  %exitcond17.not.i.i = icmp eq i64 %i.i, 64
  br i1 %exitcond17.not.i.i, label %bb.b, label %.preheader9.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.j
  %.sroa.04.012.i.i = phi i64 [ %i.v, %bb.j ], [ 0, %bb.d ] ; 6 uses
  %.not.i.i = icmp eq i64 %.sroa.04.012.i.i, %.sroa.0.013.i.i
  br i1 %.not.i.i, label %.preheader.i.i.1, label %bb.k

.preheader.i.i.1:                                 ; preds = %bb.k, %.preheader.i.i
  %i.j = or disjoint i64 %.sroa.04.012.i.i, 1     ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.j, %.sroa.0.013.i.i
  br i1 %.not.i.i.1, label %.preheader.i.i.2, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !132, !noalias !133, !noundef !4
  %i.m = icmp eq i8 %i.d, %i.l
  br i1 %i.m, label %bb.l, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %bb.g, %.preheader.i.i.1
  %i.n = or disjoint i64 %.sroa.04.012.i.i, 2     ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.n, %.sroa.0.013.i.i
  br i1 %.not.i.i.2, label %.preheader.i.i.3, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !132, !noalias !133, !noundef !4
  %i.q = icmp eq i8 %i.d, %i.p
  br i1 %i.q, label %bb.l, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %bb.h, %.preheader.i.i.2
  %i.r = or disjoint i64 %.sroa.04.012.i.i, 3     ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.r, %.sroa.0.013.i.i
  br i1 %.not.i.i.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !132, !noalias !133, !noundef !4
  %i.u = icmp eq i8 %i.d, %i.t
  br i1 %i.u, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader.i.i.3
  %i.v = add nuw nsw i64 %.sroa.04.012.i.i, 4     ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.v, 64
  br i1 %exitcond.not.i.i.3, label %bb.f, label %.preheader.i.i

bb.k:                                             ; preds = %.preheader.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.012.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !132, !noalias !133, !noundef !4
  %i.y = icmp eq i8 %i.d, %i.x
  br i1 %i.y, label %bb.l, label %.preheader.i.i.1

bb.l:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.z, align 1, !alias.scope !133, !noalias !132
  br label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit

_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet3new.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.l
  %.sink14.i = phi i64 [ 2, %bb.l ], [ 65, %bb.b ], [ 2, %bb.c ], [ 2, %bb.e ], [ 1, %bb.a ]
  %.sink12.i = phi i8 [ %i.d, %bb.l ], [ 61, %bb.b ], [ %i.d, %bb.c ], [ 61, %bb.e ], [ 0, %bb.a ]
  %.sink.i = phi i8 [ 1, %bb.l ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14.i
  store i8 %.sink12.i, ptr %i.aa, align 1, !alias.scope !133, !noalias !132
  store i8 %.sink.i, ptr %0, align 1, !alias.scope !133, !noalias !132
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx2NtB7_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(325) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.c = load i8, ptr %i.b, align 1, !range !96, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 67 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !96, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 323
  %i.i = load i8, ptr %i.h, align 1, !noundef !4  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1, !range !97, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.l = icmp eq i64 %6, 1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i64 %3, -1                       ; 3 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.a
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %3, i64 %6) ; 2 uses
  %i.o = icmp eq i64 %6, 0
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 4)
  %i.q = select i1 %i.o, i64 %i.p, i64 %i.n       ; 5 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = mul nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = icmp samesign ult i64 %5, %i.s
  br i1 %i.t, label %bb.g, label %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !146, !noalias !147, !noundef !4 ; 3 uses
  %.not9.i.i = icmp eq i8 %i.v, %i.i
  br i1 %.not9.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #14, !noalias !150
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !151, !noalias !152, !noundef !4
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sroa.104.0.ph.i = phi i64 [ %i.m, %bb.f ], [ undef, %bb.c ]
  %.sroa.8.0.ph.i = phi i8 [ %i.v, %bb.f ], [ undef, %bb.c ]
  %.sroa.0.0.ph.i = phi i8 [ 0, %bb.f ], [ -1, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.ph.i, ptr %i.aa, align 8, !alias.scope !134, !noalias !153
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.8.0.ph.i, ptr %.sroa.418.0..sroa_idx.i, align 1, !alias.scope !134, !noalias !153
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.104.0.ph.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !134, !noalias !153
  store i64 2, ptr %0, align 8, !alias.scope !134, !noalias !153
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs3_NtB6_4simdNtB1l_4Avx2NtB6_6Engine15internal_decode0EB8_.exit

_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i: ; preds = %bb.c
  %i.ab = trunc nuw i8 %i.c to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %i.ac = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.q, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !154
  br label %_RNCNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4Avx2NtB9_6Engine15internal_decode0Bb_.exit.i

bb.i:                                             ; preds = %_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode18complete_quads_len.exit.i
  %i.ad = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.q, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5), !noalias !154
  br label %_RNCNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4Avx2NtB9_6Engine15internal_decode0Bb_.exit.i

_RNCNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4Avx2NtB9_6Engine15internal_decode0Bb_.exit.i: ; preds = %bb.i, %bb.h
  %.pn.i.i = phi { i64, i64 } [ %i.ac, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ae = extractvalue { i64, i64 } %.pn.i.i, 0
  %i.af = extractvalue { i64, i64 } %.pn.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !155
  call fastcc void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode21decode_complete_quads(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.ae, i64 noundef %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.d, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.af) #15, !noalias !134
  %i.ag = load i8, ptr %i.a, align 8, !range !120, !noalias !155, !noundef !4
  %.not20.i = icmp eq i8 %i.ag, -2
  br i1 %.not20.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNCNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4Avx2NtB9_6Engine15internal_decode0Bb_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  store i64 2, ptr %0, align 8, !alias.scope !134, !noalias !153
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs3_NtB6_4simdNtB1l_4Avx2NtB6_6Engine15internal_decode0EB8_.exit

bb.k:                                             ; preds = %_RNCNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB7_4Avx2NtB9_6Engine15internal_decode0Bb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !155
  tail call void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %i.q, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.d, i1 noundef zeroext %i.g, i8 noundef %i.i, i8 noundef range(i8 0, 3) %i.k)
  br label %_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs3_NtB6_4simdNtB1l_4Avx2NtB6_6Engine15internal_decode0EB8_.exit

_RINvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode13decode_helperNCNvXs3_NtB6_4simdNtB1l_4Avx2NtB6_6Engine15internal_decode0EB8_.exit: ; preds = %bb.g, %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs3_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx2NtB7_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(325) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i8, ptr %i.a, align 1, !range !96, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, i64 } [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = tail call noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %3, i64 noundef %4, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0)
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsgkxsgNF9KUO_6base648alphabetNtB5_18ParseAlphabetErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i8, ptr %0, align 1, !range !90, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  switch i8 %i.g, label %default.unreachable59 [
    i8 0, label %bb.e
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
  ]

default.unreachable59:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %2 = ptrtoint ptr %i.f to i64
  store i64 %2, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 ptrtoint (ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64 to i64), ptr %.sroa.411.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !91, !noundef !4
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @22, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %3 = ptrtoint ptr %i.d to i64
  store i64 %3, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 ptrtoint (ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64 to i64), ptr %.sroa.47.0..sroa_idx, align 8
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !91, !noundef !4
  %i.p = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noundef nonnull @23, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %4 = ptrtoint ptr %i.b to i64
  store i64 %4, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64 to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !align !91, !noundef !4
  %i.t = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !align !91, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !4, !nonnull !4
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 33) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %i.l, %bb.b ], [ %i.p, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCskKLDkoKarTP_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
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
define noundef zeroext i1 @_RNvXs_NtCsgkxsgNF9KUO_6base646decodeNtB4_11DecodeErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = ptrtoint ptr %i.b to i64
  store i64 %2, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsgkxsgNF9KUO_6base646decode11DecodeErrorNtB6_7Display3fmtBA_ to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !91, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsgkxsgNF9KUO_6base648alphabetNtB4_8AlphabetNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !156
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(65) %0, i64 noundef 64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.e = load i64, ptr %i.b, align 8, !range !14, !alias.scope !159, !noalias !156, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet6as_str.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !156
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !159
  unreachable

_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet6as_str.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !159, !noalias !156, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !159, !noalias !156, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !156
  store ptr %i.i, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.m to i64
  store i64 %2, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 ptrtoint (ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64 to i64), ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %3, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 ptrtoint (ptr @_RNvXs2_NtCsgkxsgNF9KUO_6base648alphabetNtB5_6SymbolNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt to i64), ptr %.sroa.47.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !91, !noundef !4
  %i.r = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @30, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose13decode_suffix13decode_suffix(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(256), i1 noundef zeroext, i8 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211decode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB2_14GeneralPurpose3new(ptr dead_on_unwind noalias nofree noundef writable sret([324 x i8]) align 1 captures(none) dereferenceable(324), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(65), i24) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsgkxsgNF9KUO_6base64(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs_NtNtCsgkxsgNF9KUO_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_encode(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_8StandardEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtNtCsgkxsgNF9KUO_6base646engine4simd4avx211encode_bulkNtB4_7UrlSafeEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCsgkxsgNF9KUO_6base646engine15general_purpose18encode_scalar_tail(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCsgkxsgNF9KUO_6base64(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { noinline noreturn }
attributes #15 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet16new_with_padding: argument 0"}
!7 = distinct !{!7, !"_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet16new_with_padding"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_RNvMNtCsgkxsgNF9KUO_6base648alphabetNtB2_8Alphabet16new_with_padding: argument 1"}
!10 = !{!6, !9}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64: argument 0"}
!13 = distinct !{!13, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCsgkxsgNF9KUO_6base64"}
!14 = !{i64 0, i64 2}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new: argument 0"}
!18 = distinct !{!18, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new"}
!19 = !{!17, !20}
!20 = distinct !{!20, !18, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new: argument 1"}
!21 = !{!20}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new: argument 0"}
!24 = distinct !{!24, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new"}
!25 = !{!23, !26}
!26 = distinct !{!26, !24, !"_RNvMs0_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Simd3new: argument 1"}
!27 = !{!26}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218standard_unchecked: argument 0"}
!30 = distinct !{!30, !"_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218standard_unchecked"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218url_safe_unchecked: argument 0"}
!33 = distinct !{!33, !"_RNvMs2_NtNtCsgkxsgNF9KUO_6base646engine4simdNtB5_4Avx218url_safe_unchecked"}
!34 = !{!"branch_weights", i32 4001, i32 4000000}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 1"}
!37 = distinct !{!37, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 2"}
!40 = !{!41, !39, !42}
!41 = distinct !{!41, !37, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 0"}
!42 = distinct !{!42, !37, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_4: argument 3"}
!43 = !{!41, !36, !42}
!44 = !{!41, !36, !39, !42}
!45 = !{!41, !36, !39}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!48 = distinct !{!48, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!49 = !{!50}
!50 = distinct !{!50, !48, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!51 = !{!52, !50, !53}
!52 = distinct !{!52, !48, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 0"}
!53 = distinct !{!53, !48, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 3"}
!54 = !{!52, !47, !53}
!55 = !{!52, !47, !50, !53}
!56 = !{!52, !47, !50}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 1"}
!59 = distinct !{!59, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"_RNvNtNtNtCsgkxsgNF9KUO_6base646engine15general_purpose6decode14decode_chunk_8: argument 2"}
!62 = !{!63, !61, !64}
end_hunk_0
