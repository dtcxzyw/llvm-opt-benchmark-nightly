Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead8poly1305NtB4_7Context15update_internal:bb.a
  %i.fu = load i32, ptr %i.ft, align 4, !alias.scope !3971, !noalias !3972, !noundef !15
  %i.fv = add i32 %i.fs, %i.fu
  %i.fw = zext i32 %.sroa.03.0.copyload.i to i64
  %i.fx = shl nuw i64 %i.fw, 32
  %i.fy = or disjoint i64 %i.fx, %i.fn
  %i.fz = lshr i64 %i.fy, 14
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, 67108863
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 64, !alias.scope !3971, !noalias !3972, !noundef !15
  %i.ge = add i32 %i.gb, %i.gd
  %i.gf = lshr i32 %.sroa.03.0.copyload.i, 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !alias.scope !3971, !noalias !3972, !noundef !15
  %i.gi = add i32 %i.gh, %i.gf
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load i32, ptr %i.gj, align 16, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.gl = zext i32 %i.fc to i64                   ; 5 uses
  %i.gm = zext i32 %i.gk to i64                   ; 5 uses
  %i.gn = mul nuw i64 %i.gm, %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = load i32, ptr %i.go, align 16, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.gq = zext i32 %i.fm to i64                   ; 5 uses
  %i.gr = zext i32 %i.gp to i64                   ; 4 uses
  %i.gs = mul nuw i64 %i.gr, %i.gq
  %i.gt = add i64 %i.gs, %i.gn
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gv = load i32, ptr %i.gu, align 4, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.gw = zext i32 %i.fv to i64                   ; 5 uses
  %i.gx = zext i32 %i.gv to i64                   ; 3 uses
  %i.gy = mul nuw i64 %i.gx, %i.gw
  %i.gz = add i64 %i.gt, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hb = load i32, ptr %i.ha, align 8, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.hc = zext i32 %i.ge to i64                   ; 5 uses
  %i.hd = zext i32 %i.hb to i64                   ; 2 uses
  %i.he = mul nuw i64 %i.hd, %i.hc
  %i.hf = add i64 %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.hh = load i32, ptr %i.hg, align 4, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.hi = zext i32 %i.gi to i64                   ; 5 uses
  %i.hj = zext i32 %i.hh to i64
  %i.hk = mul nuw i64 %i.hj, %i.hi
  %i.hl = add i64 %i.hf, %i.hk                    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hn = load i32, ptr %i.hm, align 4, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.ho = zext i32 %i.hn to i64                   ; 4 uses
  %i.hp = mul nuw i64 %i.ho, %i.gl
  %i.hq = mul nuw i64 %i.gm, %i.gq
  %i.hr = mul nuw i64 %i.gr, %i.gw
  %i.hs = mul nuw i64 %i.gx, %i.hc
  %i.ht = mul nuw i64 %i.hd, %i.hi
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load i32, ptr %i.hu, align 8, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.hw = zext i32 %i.hv to i64                   ; 3 uses
  %i.hx = mul nuw i64 %i.hw, %i.gl
  %i.hy = mul nuw i64 %i.ho, %i.gq
  %i.hz = mul nuw i64 %i.gm, %i.gw
  %i.ia = mul nuw i64 %i.gr, %i.hc
  %i.ib = mul nuw i64 %i.gx, %i.hi
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = mul nuw i64 %i.ie, %i.gl
  %i.ig = mul nuw i64 %i.hw, %i.gq
  %i.ih = mul nuw i64 %i.ho, %i.gw
  %i.ii = mul nuw i64 %i.hc, %i.gm
  %i.ij = mul nuw i64 %i.gr, %i.hi
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.il = load i32, ptr %i.ik, align 32, !alias.scope !3981, !noalias !3972, !noundef !15
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw i64 %i.im, %i.gl
  %i.io = mul nuw i64 %i.ie, %i.gq
  %i.ip = mul nuw i64 %i.hw, %i.gw
  %i.iq = mul nuw i64 %i.ho, %i.hc
  %i.ir = mul nuw i64 %i.gm, %i.hi
  %i.is = trunc i64 %i.hl to i32
  %i.it = and i32 %i.is, 67108863
  %i.iu = lshr i64 %i.hl, 26
  %i.iv = add i64 %i.hr, %i.hq
  %i.iw = add i64 %i.iv, %i.hs
  %i.ix = add i64 %i.iw, %i.ht
  %i.iy = add i64 %i.ix, %i.hp
  %i.iz = add i64 %i.iy, %i.iu                    ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = and i32 %i.ja, 67108863
  store i32 %i.jb, ptr %i.fk, align 8, !alias.scope !3981, !noalias !3972
  %i.jc = lshr i64 %i.iz, 26
  %i.jd = and i64 %i.jc, 4294967295
  %i.je = add i64 %i.ia, %i.hz
  %i.jf = add i64 %i.je, %i.ib
  %i.jg = add i64 %i.jf, %i.hy
  %i.jh = add i64 %i.jg, %i.hx
  %i.ji = add i64 %i.jh, %i.jd                    ; 2 uses
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = and i32 %i.jj, 67108863
  store i32 %i.jk, ptr %i.ft, align 4, !alias.scope !3981, !noalias !3972
  %i.jl = lshr i64 %i.ji, 26
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = add i64 %i.ij, %i.ii
  %i.jo = add i64 %i.jn, %i.ih
  %i.jp = add i64 %i.jo, %i.ig
  %i.jq = add i64 %i.jp, %i.if
  %i.jr = add i64 %i.jq, %i.jm                    ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  %i.jt = and i32 %i.js, 67108863
  store i32 %i.jt, ptr %i.gc, align 64, !alias.scope !3981, !noalias !3972
  %i.ju = lshr i64 %i.jr, 26
  %i.jv = and i64 %i.ju, 4294967295
  %i.jw = add i64 %i.iq, %i.ir
  %i.jx = add i64 %i.jw, %i.ip
  %i.jy = add i64 %i.jx, %i.io
  %i.jz = add i64 %i.jy, %i.in
  %i.ka = add i64 %i.jz, %i.jv                    ; 2 uses
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = and i32 %i.kb, 67108863
  store i32 %i.kc, ptr %i.gg, align 4, !alias.scope !3981, !noalias !3972
  %i.kd = lshr i64 %i.ka, 26
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = mul i32 %i.ke, 5
  %i.kg = add i32 %i.kf, %i.it
  store i32 %i.kg, ptr %i.fa, align 4, !alias.scope !3981, !noalias !3972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3978
  br label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB2_5State15update_internal.exit

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB2_5State15update_internal.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj10_ENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtNtNtCs5yxAJGbRKSL_4ring4aead8poly13058fallbackNtB1Q_5State15update_internal0EB1W_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB4_9Algorithm11open_within(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 1 captures(address) dead_on_return dereferenceable(16) %5, ptr noalias nofree noundef nonnull %6, i64 noundef range(i64 0, -9223372036854775808) %7, i64 noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.not = icmp ult i64 %7, %8
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  store ptr %6, ptr %i.b, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %7, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %8, ptr %.sroa.620.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  call void %i.d(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(12) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %5)
  %i.e = load ptr, ptr %i.a, align 8, !noundef !15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.4.0 = select i1 %i.f, i64 undef, i64 %i.h, !prof !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch9sub_bytes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !15 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !15 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !noundef !15  ; 5 uses
  %i.p = xor i64 %i.l, %i.h                       ; 3 uses
  %i.q = xor i64 %i.n, %i.b                       ; 4 uses
  %i.r = xor i64 %i.h, %i.b                       ; 3 uses
  %i.s = xor i64 %i.l, %i.b                       ; 4 uses
  %i.t = xor i64 %i.f, %i.d                       ; 3 uses
  %i.u = xor i64 %i.o, %i.t                       ; 5 uses
  %i.v = xor i64 %i.u, %i.h                       ; 2 uses
  %i.w = xor i64 %i.q, %i.p                       ; 3 uses
  %i.x = xor i64 %i.u, %i.b                       ; 2 uses
  %i.y = xor i64 %i.u, %i.n                       ; 3 uses
  %i.z = xor i64 %i.y, %i.s                       ; 2 uses
  %i.aa = xor i64 %i.w, %i.j                      ; 2 uses
  %i.ab = xor i64 %i.aa, %i.l                     ; 4 uses
  %i.ac = xor i64 %i.aa, %i.d                     ; 2 uses
  %i.ad = xor i64 %i.ab, %i.o                     ; 2 uses
  %i.ae = xor i64 %i.ab, %i.t                     ; 4 uses
  %i.af = xor i64 %i.ac, %i.r                     ; 5 uses
  %i.ag = xor i64 %i.af, %i.o                     ; 2 uses
  %i.ah = xor i64 %i.ae, %i.af                    ; 2 uses
  %i.ai = xor i64 %i.af, %i.t                     ; 4 uses
  %1 = and i64 %i.ab, %i.w                        ; 2 uses
  %i.aj = and i64 %i.ad, %i.z
  %i.ak = and i64 %i.v, %i.o
  %i.al = and i64 %i.ai, %i.q                     ; 2 uses
  %i.am = and i64 %i.y, %i.u
  %i.an = and i64 %i.ag, %i.x
  %i.ao = and i64 %i.af, %i.r                     ; 2 uses
  %i.ap = and i64 %i.ah, %i.p
  %i.aq = xor i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = and i64 %i.ae, %i.s
  %i.as = xor i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = xor i64 %i.ac, %i.aj
  %i.au = xor i64 %i.at, %1
  %i.av = xor i64 %i.au, %i.aq                    ; 2 uses
  %i.aw = xor i64 %i.ak, %i.s
  %i.ax = xor i64 %i.aw, %i.ae
  %i.ay = xor i64 %i.ax, %1
  %i.az = xor i64 %i.ay, %i.as                    ; 3 uses
  %2 = xor i64 %i.ai, %i.am
  %i.ba = xor i64 %2, %i.al
  %i.bb = xor i64 %i.ba, %i.q
  %i.bc = xor i64 %i.bb, %i.aq                    ; 3 uses
  %3 = xor i64 %i.ai, %i.an
  %i.bd = xor i64 %3, %i.al
  %i.be = xor i64 %i.bd, %i.b
  %i.bf = xor i64 %i.be, %i.as                    ; 4 uses
  %i.bg = xor i64 %i.av, %i.az                    ; 2 uses
  %i.bh = and i64 %i.av, %i.bc                    ; 3 uses
  %i.bi = xor i64 %i.bf, %i.bh                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.bg
  %i.bk = xor i64 %i.bj, %i.az                    ; 5 uses
  %i.bl = xor i64 %i.bf, %i.bc
  %i.bm = xor i64 %i.bh, %i.az
  %i.bn = and i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = xor i64 %i.bn, %i.bf                    ; 4 uses
  %i.bp = xor i64 %i.bn, %i.bh
  %i.bq = and i64 %i.bp, %i.bf                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bc                    ; 3 uses
  %i.bs = xor i64 %i.br, %i.bo                    ; 3 uses
  %i.bt = xor i64 %i.bq, %i.bi
  %i.bu = and i64 %i.bt, %i.bk
  %i.bv = xor i64 %i.bu, %i.bg                    ; 4 uses
  %i.bw = xor i64 %i.bv, %i.bs                    ; 3 uses
  %i.bx = xor i64 %i.bk, %i.bo                    ; 3 uses
  %i.by = xor i64 %i.bv, %i.bk                    ; 2 uses
  %i.bz = xor i64 %i.bw, %i.bx                    ; 2 uses
  %i.ca = and i64 %i.br, %i.ab
  %i.cb = and i64 %i.bs, %i.ad
  %i.cc = and i64 %i.bo, %i.o                     ; 2 uses
  %i.cd = and i64 %i.by, %i.ai                    ; 2 uses
  %i.ce = and i64 %i.bv, %i.u                     ; 2 uses
  %i.cf = and i64 %i.bk, %i.ag                    ; 2 uses
  %i.cg = and i64 %i.bx, %i.af
  %i.ch = and i64 %i.bz, %i.ah                    ; 2 uses
  %i.ci = and i64 %i.bw, %i.ae
  %i.cj = and i64 %i.br, %i.w
  %i.ck = and i64 %i.bs, %i.z                     ; 2 uses
  %i.cl = and i64 %i.bo, %i.v
  %i.cm = and i64 %i.by, %i.q                     ; 2 uses
  %i.cn = and i64 %i.bv, %i.y
  %i.co = and i64 %i.bk, %i.x
  %i.cp = and i64 %i.bx, %i.r
  %i.cq = and i64 %i.bz, %i.p                     ; 2 uses
  %i.cr = and i64 %i.bw, %i.s
  %i.cs = xor i64 %i.cq, %i.cp                    ; 2 uses
  %i.ct = xor i64 %i.ck, %i.cl
  %i.cu = xor i64 %i.cn, %i.cf                    ; 2 uses
  %i.cv = xor i64 %i.cj, %i.ck
  %i.cw = xor i64 %i.cm, %i.cc
  %i.cx = xor i64 %i.cc, %i.cf
  %i.cy = xor i64 %i.ch, %i.ci
  %i.cz = xor i64 %i.cd, %i.ca                    ; 2 uses
  %i.da = xor i64 %i.cw, %i.cz                    ; 2 uses
  %i.db = xor i64 %i.cs, %i.ce                    ; 2 uses
  %i.dc = xor i64 %i.cd, %i.cg
  %i.dd = xor i64 %i.dc, %i.ch                    ; 2 uses
  %i.de = xor i64 %i.da, %i.co
  %i.df = xor i64 %i.cy, %i.db                    ; 2 uses
  %i.dg = xor i64 %i.cv, %i.db                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.ce                    ; 2 uses
  %i.di = xor i64 %i.de, %i.df                    ; 2 uses
  %i.dj = xor i64 %i.dg, %i.cb                    ; 2 uses
  %i.dk = xor i64 %i.dg, %i.dd
  %i.dl = xor i64 %i.cu, %i.cm
  %i.dm = xor i64 %i.dl, %i.df
  %i.dn = xor i64 %i.dm, -1
  %i.do = xor i64 %i.cu, %i.da
  %i.dp = xor i64 %i.do, %i.cs
  %i.dq = xor i64 %i.dp, -1
  %i.dr = xor i64 %i.dj, %i.cz                    ; 2 uses
  %i.ds = xor i64 %i.cx, %i.dj
  %i.dt = xor i64 %i.ct, %i.di
  %i.du = xor i64 %i.dh, %i.dr
  %i.dv = xor i64 %i.du, -1
  %i.dw = xor i64 %i.dh, %i.cr
  %i.dx = xor i64 %i.dw, %i.cq
  %i.dy = xor i64 %i.dx, %i.di
  %i.dz = xor i64 %i.dy, -1
  store i64 %i.dq, ptr %0, align 8
  store i64 %i.dn, ptr %i.m, align 8
  store i64 %i.dt, ptr %i.k, align 8
  store i64 %i.ds, ptr %i.i, align 8
  store i64 %i.dr, ptr %i.g, align 8
  store i64 %i.dz, ptr %i.e, align 8
  store i64 %i.dv, ptr %i.c, align 8
  store i64 %i.dk, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3opsNtB5_12PublicKeyOps10elem_parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load i8, ptr %i.i, align 8, !range !34, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %. = select i1 %i.k, i64 48, i64 32             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3997, !noundef !15 ; 3 uses
  %i.n = add i64 %., %i.m                         ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3997
  %.not.i = icmp ugt i64 %i.n, %i.q
  %or.cond.i = select i1 %i.o, i1 true, i1 %.not.i, !prof !28
  br i1 %or.cond.i, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.r = load ptr, ptr %3, align 8, !alias.scope !3997, !nonnull !15, !noundef !15
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !3997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i8, ptr %i.s, align 8, !range !34, !noundef !15
  %i.t = trunc nuw i8 %.val6 to i1                ; 2 uses
  %..i = select i1 %i.t, i64 6, i64 4             ; 3 uses
  %i.u = xor i1 %i.k, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3998
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !noalias !3998
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3999
  store ptr %i.c, ptr %i.b, align 8, !noalias !3999
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %..i, ptr %i.w, align 8, !noalias !3999
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.x, align 8, !noalias !3999
  %i.y = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %., i64 noundef range(i64 4, 7) %..i), !noalias !4000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3999
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i: ; preds = %bb.e
  %i.ab = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.c, ptr noundef nonnull readonly align 8 %.val, i64 noundef range(i64 4, 7) %..i) #36, !noalias !4001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4002
  store i64 %i.ab, ptr %i.a, align 8, !noalias !4002
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !4001, !srcloc !37
  %i.ac = load i64, ptr %i.a, align 8, !noalias !4002, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4002
  br i1 %.not.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, label %bb.g

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3998
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, %bb.d
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.g:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3998
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  %i.ae = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  call void %i.ae(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMse_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PE24verify_inverse_consttimeBb_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = tail call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr nonnull %.0.val, i64 %.8.val) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4007)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb29verify_limbs_equal_1_leak_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4007, !noundef !15
  %i.f = xor i64 %i.e, 1
  %i.g = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.f) #36, !noalias !4007
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.c, 1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.c, 2305843009213693951 ; 2 uses
end_hunk_0
