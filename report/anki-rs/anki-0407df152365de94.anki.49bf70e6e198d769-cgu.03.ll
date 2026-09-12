Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN89_$LT$anki..storage..sqlite.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17he156a510139601ecE":bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 3, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN89_$LT$chrono..format..formatting..DelayedFormat$LT$I$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h038586a5caeb314cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [4 x i8], align 4                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [4 x i8], align 4                 ; 5 uses
  %i.n = alloca [12 x i8], align 8                ; 8 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [4 x i8], align 1                 ; 7 uses
  %i.r = alloca [4 x i8], align 1                 ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 9 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [4 x i8], align 4                 ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 9 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 9 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 9 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [4 x i8], align 4                ; 4 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [48 x i8], align 8               ; 9 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [4 x i8], align 4                ; 4 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [4 x i8], align 4                ; 4 uses
  %i.au = alloca [48 x i8], align 8               ; 9 uses
  %i.av = alloca [4 x i8], align 4                ; 21 uses
  %i.aw = alloca [96 x i8], align 8               ; 14 uses
  %i.ax = alloca [24 x i8], align 8               ; 11 uses
  %i.ay = alloca [24 x i8], align 8               ; 10 uses
  %i.az = alloca [40 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 126 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store i64 0, ptr %i.ba, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 87 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 219 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8648)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !8649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !8648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !8649
  invoke void @"_ZN98_$LT$chrono..format..strftime..StrftimeItems$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e41ea4a4ebf5fc9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.bc = load i8, ptr %i.ay, align 8, !range !24, !noalias !8649, !noundef !7
  %.not231.not.i = icmp eq i8 %i.bc, 7
  br i1 %.not231.not.i, label %.loopexit17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !8647, !noalias !8648 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bg, align 8, !alias.scope !8647, !noalias !8648
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !8647, !noalias !8648 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !8647, !noalias !8648 ; 7 uses
  %i.bh = load i64, ptr %0, align 8, !range !9, !alias.scope !8647, !noalias !8648
  %.not.i60.i = icmp eq i64 %i.bh, -9223372036854775808 ; 3 uses
  %i.bi = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bj = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.bp = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bq = urem i32 %i.bp, 1000000                 ; 2 uses
  %.sroa.4112.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bw = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.bw to i16
  %i.bx = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bx to i32       ; 2 uses
  %.sroa.4108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.474.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.4100.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.496.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cw = icmp eq i32 %i.bj, 0
  %i.cx = urem i32 %i.bj, 1000000
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = urem i32 %i.bj, 1000
  %i.da = icmp eq i32 %i.cz, 0
  %.sroa.492.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.dg = udiv i32 %i.bj, 1000
  %.sroa.488.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.dm = udiv i32 %i.bj, 1000000
  %.sroa.484.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ds = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 2 uses
  %.146.i.i = select i1 %i.ds, ptr @962, ptr @961 ; 2 uses
  %i.dt = select i1 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @962, i64 2), ptr getelementptr inbounds nuw (i8, ptr @961, i64 2) ; 2 uses
  %.sroa.076.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 11 uses
  %.sroa.377.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.not138.i.i = icmp eq i32 %i.bf, 0             ; 19 uses
  %i.dy = lshr i32 %i.bf, 4
  %i.dz = and i32 %i.dy, 511                      ; 9 uses
  %i.ea = and i32 %i.bf, 7
  %i.eb = add nuw nsw i32 %i.dz, %i.ea
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.eb to i16
  %i.ec = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.ed = icmp samesign ult i16 %i.ec, 6          ; 2 uses
  %narrow42.i.i = add nuw nsw i16 %i.ec, 1
  %narrow43.i.i = select i1 %i.ed, i16 %narrow42.i.i, i16 0
  %i.ee = zext nneg i16 %narrow43.i.i to i64      ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr @960, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr @913, i64 %i.ee ; 2 uses
  %i.ei = lshr i32 %i.bf, 3                       ; 4 uses
  %i.ej = and i32 %i.ei, 1023                     ; 8 uses
  %i.ek = zext nneg i32 %i.ej to i64              ; 8 uses
  %i.el = icmp samesign ult i32 %i.ej, 733        ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr @915, i64 %i.ek ; 7 uses
  %i.en = icmp ne i32 %i.bf, 0
  %or.cond5.i.i = select i1 %i.en, i1 %i.bi, i1 false ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !alias.scope !8647, !noalias !8648 ; 7 uses
  %i.eq = ashr i32 %i.bf, 13                      ; 13 uses
  %or.cond.i112.i = icmp ult i32 %i.eq, 10000     ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.lhs.trunc.i115.i = trunc nuw nsw i32 %i.eq to i16 ; 2 uses
  %i.ew = udiv i16 %.lhs.trunc.i115.i, 100
  %i.ex = trunc nuw nsw i16 %i.ew to i8           ; 2 uses
  %i.ey = udiv i8 %i.ex, 10
  %i.ez = or disjoint i8 %i.ey, 48                ; 2 uses
  %i.fa = urem i8 %i.ex, 10
  %i.fb = or disjoint i8 %i.fa, 48                ; 2 uses
  %i.fc = urem i16 %.lhs.trunc.i115.i, 100
  %i.fd = trunc nuw nsw i16 %i.fc to i8           ; 2 uses
  %i.fe = udiv i8 %i.fd, 10
  %i.ff = or disjoint i8 %i.fe, 48                ; 2 uses
  %i.fg = urem i8 %i.fd, 10
  %i.fh = or disjoint i8 %i.fg, 48                ; 2 uses
  %i.fi = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.fj = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.fk = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.fj, i32 %i.fk, i32 %.sroa.21.0.copyload.i.i
  %i.fl = trunc i32 %i.fi to i8                   ; 4 uses
  %i.fm = icmp ugt i8 %i.fl, 99                   ; 2 uses
  %i.fn = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.fo = zext i1 %i.fj to i32
  %.sroa.023.0.i.i = add nuw nsw i32 %i.fn, %i.fo
  %i.fp = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.fq = urem i32 %i.fp, 60                      ; 2 uses
  %i.fr = udiv i8 %i.fl, 10                       ; 2 uses
  %i.fs = or disjoint i8 %i.fr, 48                ; 2 uses
  %i.ft = urem i8 %i.fl, 10
  %i.fu = or disjoint i8 %i.ft, 48                ; 3 uses
  %i.fv = trunc nuw nsw i32 %i.fq to i8           ; 2 uses
  %i.fw = udiv i8 %i.fv, 10
  %i.fx = or disjoint i8 %i.fw, 48                ; 3 uses
  %i.fy = urem i8 %i.fv, 10
  %i.fz = or disjoint i8 %i.fy, 48                ; 3 uses
  %i.ga = trunc nuw nsw i32 %.sroa.023.0.i.i to i8 ; 2 uses
  %i.gb = udiv i8 %i.ga, 10
  %i.gc = or disjoint i8 %i.gb, 48
  %i.gd = urem i8 %i.ga, 10
  %i.ge = or disjoint i8 %i.gd, 48
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gu = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.gv = add nuw nsw i32 %i.gu, %i.fn            ; 2 uses
  %i.gw = trunc nuw nsw i32 %i.gv to i8           ; 2 uses
  %i.gx = udiv i8 %i.gw, 10
  %i.gy = or disjoint i8 %i.gx, 48                ; 2 uses
  %i.gz = urem i8 %i.gw, 10
  %i.ha = or disjoint i8 %i.gz, 48                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.hi = sext i32 %i.ep to i64
  %i.hj = add nsw i32 %i.eq, -1
  %i.hk = icmp slt i32 %i.eq, 1                   ; 2 uses
  %i.hl = sub nsw i32 1, %i.eq
  %i.hm = udiv i32 %i.hl, 400
  %i.hn = add nuw nsw i32 %i.hm, 1                ; 2 uses
  %i.ho = mul nuw nsw i32 %i.hn, 400
  %.neg.i.i.i = mul nsw i32 %i.hn, -146097
  %i.hp = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.hq = add nuw nsw i32 %i.dz, -719163
  %..sroa.3.0.i.i = select i1 %.not.i60.i, i64 0, i64 %i.hi
  %i.hr = sub nsw i64 %i.hp, %..sroa.3.0.i.i
  %i.hs = zext nneg i32 %i.bj to i64
  %i.ht = icmp samesign ult i32 %i.gv, 10
  %i.hu = icmp samesign ult i32 %i.fq, 10
  %i.hv = urem i32 %i.fi, 12                      ; 2 uses
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = trunc nuw nsw i32 %i.hv to i8
  %i.hy = select i1 %i.hw, i8 12, i8 %i.hx
  %.frozen.i.i = freeze i8 %i.hy                  ; 4 uses
  %.cmp8.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.hz = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.ia = select i1 %.cmp8.i.i, i8 49, i8 48
  %.urem9.i.i = add i8 %.frozen.i.i, -10
  %i.ib = select i1 %i.hz, i8 %.frozen.i.i, i8 %.urem9.i.i
  %i.ic = or disjoint i8 %i.ib, 48
  %i.id = icmp ult i8 %i.fl, 10
  %i.ie = add nuw nsw i8 %i.fr, 48
  %i.if = zext nneg i32 %i.dz to i64
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.ec to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.ig = trunc i32 %i.bf to i8
  %i.ih = and i8 %i.ig, 15                        ; 4 uses
  %i.ii = trunc nuw nsw i32 %i.dz to i16
  %i.ij = add nuw nsw i16 %i.ii, 6
  %.lhs.trunc1.i130.i.i = sub nuw nsw i16 %i.ij, %i.ec ; 2 uses
  %i.ik = udiv i16 %.lhs.trunc1.i130.i.i, 7
  %i.il = trunc nuw nsw i16 %i.ik to i8           ; 2 uses
  %i.im = udiv i8 %i.il, 10
  %i.in = icmp samesign ult i16 %.lhs.trunc1.i130.i.i, 70
  %i.io = add nuw nsw i8 %i.im, 48
  %i.ip = urem i8 %i.il, 10
  %i.iq = or disjoint i8 %i.ip, 48
  %spec.select.i119.i.i = zext nneg i16 %i.ec to i32 ; 2 uses
  %i.ir = add nuw nsw i32 %spec.select.i119.i.i, 7
  %.pn.i.i.i = select i1 %i.ed, i32 %i.ir, i32 %spec.select.i119.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.dz, 6
  %i.is = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.it = trunc nsw i32 %i.is to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.it, 6
  %i.iu = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.iv = trunc nuw nsw i16 %i.iu to i8           ; 2 uses
  %i.iw = udiv i8 %i.iv, 10
  %i.ix = icmp samesign ult i16 %i.iu, 10
  %i.iy = add nuw nsw i8 %i.iw, 48
  %i.iz = urem i8 %i.iv, 10
  %i.ja = or disjoint i8 %i.iz, 48
  %i.jb = srem i32 %i.eq, 100                     ; 4 uses
  %i.jc = icmp slt i32 %i.jb, 0
  %i.jd = add nsw i32 %i.jb, 100
  %spec.select.i.i.i = select i1 %i.jc, i32 %i.jd, i32 %i.jb ; 2 uses
  %i.je = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.jf = udiv i8 %i.je, 10
  %i.jg = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.jh = add nuw nsw i8 %i.jf, 48
  %i.ji = urem i8 %i.je, 10
  %i.jj = or disjoint i8 %i.ji, 48
  %i.jk = sdiv i32 %i.eq, 100
  %.lobit.i.i.i = ashr i32 %i.jb, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.jk
  %i.jl = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.jm = udiv i8 %i.jl, 10
  %i.jn = icmp ult i8 %i.jl, 10
  %i.jo = add nuw nsw i8 %i.jm, 48
  %i.jp = urem i8 %i.jl, 10
  %i.jq = or disjoint i8 %i.jp, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %spec.select.i = select i1 %i.hk, i32 %.neg.i.i.i, i32 0
  %i.js = select i1 %i.hk, i32 %i.ho, i32 0
  %spec.select233.i = add nsw i32 %i.hj, %i.js    ; 2 uses
  %i.jt = sdiv i32 %spec.select233.i, 100         ; 2 uses
  %i.ju = mul nsw i32 %spec.select233.i, 1461
  %i.jv = ashr i32 %i.ju, 2
  %i.jw = ashr i32 %i.jt, 2
  %i.jx = add nsw i32 %i.hq, %spec.select.i
  %i.jy = sub i32 %i.jx, %i.jt
  %i.jz = add nsw i32 %i.jy, %i.jv
  %narrow.i.i = add nsw i32 %i.jz, %i.jw
  %i.ka = sext i32 %narrow.i.i to i64
  %i.kb = mul nsw i64 %i.ka, 86400
  %i.kc = add nsw i64 %i.hr, %i.kb
  %i.kd = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.ke = insertelement <2 x ptr> %i.kd, ptr %i.dt, i64 1
  %i.kf = shl nuw nsw i16 %i.ec, 3
  %switch.shiftamt = zext nneg i16 %i.kf to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

.loopexit.i:                                      ; preds = %.noexc77.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc154.i.i, %.noexc152.i.i, %.noexc.peel.i.i
  %lpad.loopexit184.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke, %.noexc11, %.noexc10, %.noexc9, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i2.i", %.invoke268.i, %bb.es, %bb.er, %bb.ep, %bb.en, %.noexc135.i, %.noexc134.i, %.noexc133.i, %.noexc132.i, %.noexc131.i, %.noexc130.i, %.noexc129.i, %bb.em, %.noexc126.i, %.noexc125.i, %.noexc124.i, %.noexc123.i, %.noexc122.i, %bb.el, %.noexc120.i, %.noexc119.i, %.noexc118.i, %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit52.i.i, %bb.ek, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.i, %.noexc169.i, %.noexc168.i, %.noexc167.i, %.noexc166.i, %.noexc165.i, %.noexc164.i, %.noexc163.i, %.noexc162.i, %.noexc161.i, %bb.eh, %.noexc158.i, %.noexc157.i, %.noexc156.i, %.noexc155.i, %.noexc154.i, %.noexc153.i, %bb.eg, %bb.ef, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i145.i", %.noexc149.i, %bb.ee, %.noexc146.i, %bb.ec, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %bb.dr, %bb.do, %.noexc91.i, %bb.dn, %.noexc89.i, %bb.dm, %.noexc87.i, %bb.dl, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %.invoke267.i, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i", %bb.bq, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i", %bb.bn, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i158.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit157.i.i", %bb.bk, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i152.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit151.i.i", %bb.bh, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i146.i.i", %switch.lookup.i.i, %switch.lookup, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit143.i.i", %bb.be, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i138.i.i", %bb.bc, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i", %bb.bb, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i", %bb.ay, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i", %bb.av, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i", %bb.ar, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i", %bb.am, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i", %bb.ak, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i101.i.i", %bb.ai, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit99.i.i", %bb.ah, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i94.i.i", %bb.af, %bb.ae, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit91.i.i", %bb.ad, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i86.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit.i.i", %bb.aa, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i.i.i"
  %lpad.loopexit187.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke269.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit184.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit187.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$chrono..format..Item$GT$17h40b97c289809788aE"(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #31
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !8649
  %i.kg = load i8, ptr %i.ax, align 8, !range !35, !noalias !8649, !noundef !7
  switch i8 %i.kg, label %default.unreachable [
    i8 0, label %.invoke268.i
    i8 1, label %.invoke268.i
    i8 2, label %.invoke268.i
    i8 3, label %.invoke268.i
    i8 4, label %bb.c
    i8 5, label %bb.br
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.aq, %bb.aj, %bb.ag, %bb.ac, %bb.z, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@"_ZN89_$LT$chrono..format..formatting..DelayedFormat$LT$I$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h038586a5caeb314cE":bb.a

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i101.i.i": ; preds = %bb.aj, %.noexc19.i
  %i.pd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8668, !noalias !8657, !noundef !7 ; 2 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  call void @llvm.assume(i1 %i.pe)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc20.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i101.i.i"
  %i.pf = add nuw nsw i8 %i.pa, 48
  %i.pg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8668, !noalias !8657, !nonnull !7, !noundef !7
  %i.ph = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8668, !noalias !8657, !noundef !7 ; 2 uses
  %i.pi = icmp sgt i64 %i.ph, -1
  call void @llvm.assume(i1 %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.ph
  store i8 %i.pf, ptr %i.pj, align 1, !noalias !8659
  %i.pk = add nuw i64 %i.pd, 1                    ; 2 uses
  store i64 %i.pk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8668, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.pl = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8657, !noundef !7 ; 2 uses
  %i.pm = icmp sgt i64 %i.pl, -1
  call void @llvm.assume(i1 %i.pm)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc21.i:                                       ; preds = %bb.ak
  %i.pn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8657, !nonnull !7, !noundef !7
  %i.po = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8657, !noundef !7 ; 2 uses
  %i.pp = icmp sgt i64 %i.po, -1
  call void @llvm.assume(i1 %i.pp)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  store i8 32, ptr %i.pq, align 1, !noalias !8659
  %i.pr = add nuw i64 %i.pl, 1                    ; 2 uses
  store i64 %i.pr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8669, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i": ; preds = %.noexc21.i, %.noexc20.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i102.i.i"
  %i.ps = phi i64 [ %.pre.i104.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i102.i.i" ], [ %i.pr, %.noexc21.i ], [ %i.pk, %.noexc20.i ] ; 2 uses
  %i.pt = icmp sgt i64 %i.ps, -1
  call void @llvm.assume(i1 %i.pt)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc22.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i"
  %i.pu = or disjoint i8 %i.pb, 48
  %i.pv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8667, !noalias !8657, !nonnull !7, !noundef !7
  %i.pw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8667, !noalias !8657, !noundef !7 ; 2 uses
  %i.px = icmp sgt i64 %i.pw, -1
  call void @llvm.assume(i1 %i.px)
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pw
  store i8 %i.pu, ptr %i.py, align 1, !noalias !8659
  %i.pz = add nuw i64 %i.ps, 1
  store i64 %i.pz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8667, !noalias !8657
  br label %.critedge.i

bb.al:                                            ; preds = %bb.j
  br i1 %i.el, label %bb.am, label %.invoke269.i

bb.am:                                            ; preds = %bb.al
  %i.qa = load i8, ptr %i.em, align 1, !noalias !8670, !noundef !7
  %i.qb = zext i8 %i.qa to i32
  %i.qc = add nuw nsw i32 %i.ej, %i.qb
  %i.qd = lshr i32 %i.qc, 6
  %i.qe = add nsw i32 %i.qd, -1
  %i.qf = udiv i32 %i.qe, 3
  %i.qg = add nuw nsw i32 %i.qf, 49               ; 2 uses
  %i.qh = and i32 %i.qg, 255                      ; 2 uses
  %i.qi = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8671, !noalias !8657, !noundef !7 ; 2 uses
  %i.qj = icmp sgt i64 %i.qi, -1
  call void @llvm.assume(i1 %i.qj)
  %i.qk = icmp samesign ult i32 %i.qh, 128        ; 2 uses
  %spec.select.i.i = select i1 %i.qk, i64 1, i64 2 ; 2 uses
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %spec.select.i.i)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc23.i:                                       ; preds = %bb.am
  %i.ql = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8671, !noalias !8657, !nonnull !7, !noundef !7
  %i.qm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8671, !noalias !8657, !noundef !7 ; 2 uses
  %i.qn = icmp sgt i64 %i.qm, -1
  call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qm ; 2 uses
  %i.qp = trunc i32 %i.qg to i8                   ; 2 uses
  br i1 %i.qk, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i.i", label %bb.an

bb.an:                                            ; preds = %.noexc23.i
  %i.qq = and i8 %i.qp, 63
  %i.qr = or disjoint i8 %i.qq, -128
  %i.qs = lshr i32 %i.qh, 6
  %i.qt = trunc nuw nsw i32 %i.qs to i8
  %i.qu = or disjoint i8 %i.qt, -64
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 1
  store i8 %i.qr, ptr %i.qv, align 1, !noalias !8659
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i.i": ; preds = %bb.an, %.noexc23.i
  %.sink.i.i = phi i8 [ %i.qu, %bb.an ], [ %i.qp, %.noexc23.i ]
  store i8 %.sink.i.i, ptr %i.qo, align 1, !noalias !8659
  %i.qw = add nuw i64 %spec.select.i.i, %i.qi
  store i64 %i.qw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8671, !noalias !8657
  br label %.critedge.i

.invoke269.i:                                     ; preds = %.noexc117.i, %.noexc152.i, %.noexc147.i, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %bb.as, %bb.ao, %bb.al
  %i.qx = phi i64 [ %i.ek, %.noexc147.i ], [ %i.ek, %bb.al ], [ %i.aan, %bb.cj ], [ %i.ek, %bb.as ], [ %i.ek, %bb.ao ], [ %i.aab, %bb.cg ], [ %i.ahq, %.noexc152.i ], [ %i.ek, %bb.cf ], [ %i.ek, %bb.ci ], [ %i.ek, %.noexc117.i ]
  %i.qy = phi i64 [ 733, %.noexc147.i ], [ 733, %bb.al ], [ 12, %bb.cj ], [ 733, %bb.as ], [ 733, %bb.ao ], [ 12, %bb.cg ], [ 12, %.noexc152.i ], [ 733, %bb.cf ], [ 733, %bb.ci ], [ 733, %.noexc117.i ]
  %i.qz = phi ptr [ @917, %.noexc147.i ], [ @917, %bb.al ], [ @952, %bb.cj ], [ @917, %bb.as ], [ @917, %bb.ao ], [ @939, %bb.cg ], [ @931, %.noexc152.i ], [ @917, %bb.cf ], [ @917, %bb.ci ], [ @917, %.noexc117.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.qx, i64 noundef %i.qy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qz) #33
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke269.i
  unreachable

bb.ao:                                            ; preds = %bb.k
  br i1 %i.el, label %bb.ap, label %.invoke269.i

bb.ap:                                            ; preds = %bb.ao
  %i.ra = load i8, ptr %i.em, align 1, !noalias !8670, !noundef !7
  %i.rb = zext i8 %i.ra to i32
  %i.rc = add nuw nsw i32 %i.ej, %i.rb            ; 3 uses
  %i.rd = lshr i32 %i.rc, 6
  %i.re = trunc nuw nsw i32 %i.rd to i8           ; 2 uses
  %.cmp.i.i = icmp samesign ugt i32 %i.rc, 639
  %i.rf = icmp samesign ult i32 %i.rc, 640        ; 2 uses
  br i1 %i.rf, label %bb.aq, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i"

bb.aq:                                            ; preds = %bb.ap
  switch i8 %i.kh, label %default.unreachable [
    i8 0, label %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i108.i.i"
    i8 2, label %bb.ar
    i8 1, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i"
  ]

"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i108.i.i": ; preds = %bb.aq
  %.pre.i110.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8672, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i": ; preds = %bb.aq, %bb.ap
  %i.rg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8673, !noalias !8657, !noundef !7 ; 2 uses
  %i.rh = icmp sgt i64 %i.rg, -1
  call void @llvm.assume(i1 %i.rh)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc25.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i"
  %i.ri = select i1 %.cmp.i.i, i8 49, i8 48
  %i.rj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8673, !noalias !8657, !nonnull !7, !noundef !7
  %i.rk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8673, !noalias !8657, !noundef !7 ; 2 uses
  %i.rl = icmp sgt i64 %i.rk, -1
  call void @llvm.assume(i1 %i.rl)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rk
  store i8 %i.ri, ptr %i.rm, align 1, !noalias !8659
  %i.rn = add nuw i64 %i.rg, 1                    ; 2 uses
  store i64 %i.rn, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8673, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i"

bb.ar:                                            ; preds = %bb.aq
  %i.ro = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8674, !noalias !8657, !noundef !7 ; 2 uses
  %i.rp = icmp sgt i64 %i.ro, -1
  call void @llvm.assume(i1 %i.rp)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc26.i:                                       ; preds = %bb.ar
  %i.rq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8674, !noalias !8657, !nonnull !7, !noundef !7
  %i.rr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8674, !noalias !8657, !noundef !7 ; 2 uses
  %i.rs = icmp sgt i64 %i.rr, -1
  call void @llvm.assume(i1 %i.rs)
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rr
  store i8 32, ptr %i.rt, align 1, !noalias !8659
  %i.ru = add nuw i64 %i.ro, 1                    ; 2 uses
  store i64 %i.ru, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8674, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i": ; preds = %.noexc26.i, %.noexc25.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i108.i.i"
  %i.rv = phi i64 [ %.pre.i110.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i108.i.i" ], [ %i.ru, %.noexc26.i ], [ %i.rn, %.noexc25.i ] ; 2 uses
  %i.rw = icmp sgt i64 %i.rv, -1
  call void @llvm.assume(i1 %i.rw)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc27.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i"
  %.urem.i.i = add nsw i8 %i.re, -10
  %i.rx = select i1 %i.rf, i8 %i.re, i8 %.urem.i.i
  %i.ry = or disjoint i8 %i.rx, 48
  %i.rz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8672, !noalias !8657, !nonnull !7, !noundef !7
  %i.sa = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8672, !noalias !8657, !noundef !7 ; 2 uses
  %i.sb = icmp sgt i64 %i.sa, -1
  call void @llvm.assume(i1 %i.sb)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sa
  store i8 %i.ry, ptr %i.sc, align 1, !noalias !8659
  %i.sd = add nuw i64 %i.rv, 1
  store i64 %i.sd, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8672, !noalias !8657
  br label %.critedge.i

bb.as:                                            ; preds = %bb.l
  br i1 %i.el, label %bb.at, label %.invoke269.i

bb.at:                                            ; preds = %bb.as
  %i.se = load i8, ptr %i.em, align 1, !noalias !8670, !noundef !7
  %2 = zext i8 %i.se to i32
  %3 = add nuw nsw i32 %i.ei, %2
  %4 = lshr i32 %3, 1
  %5 = trunc i32 %4 to i8
  %i.sf = and i8 %5, 31                           ; 3 uses
  %i.sg = udiv i8 %i.sf, 10
  %i.sh = urem i8 %i.sf, 10
  %i.si = icmp samesign ult i8 %i.sf, 10
  br i1 %i.si, label %bb.au, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i"

bb.au:                                            ; preds = %bb.at
  switch i8 %i.kh, label %default.unreachable [
    i8 0, label %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i114.i.i"
    i8 2, label %bb.av
    i8 1, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i"
  ]

"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i114.i.i": ; preds = %bb.au
  %.pre.i116.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8675, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i": ; preds = %bb.au, %bb.at
  %i.sj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8676, !noalias !8657, !noundef !7 ; 2 uses
  %i.sk = icmp sgt i64 %i.sj, -1
  call void @llvm.assume(i1 %i.sk)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc29.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i"
  %i.sl = or disjoint i8 %i.sg, 48
  %i.sm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8676, !noalias !8657, !nonnull !7, !noundef !7
  %i.sn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8676, !noalias !8657, !noundef !7 ; 2 uses
  %i.so = icmp sgt i64 %i.sn, -1
  call void @llvm.assume(i1 %i.so)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sn
  store i8 %i.sl, ptr %i.sp, align 1, !noalias !8659
  %i.sq = add nuw i64 %i.sj, 1                    ; 2 uses
  store i64 %i.sq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8676, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i"

bb.av:                                            ; preds = %bb.au
  %i.sr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8677, !noalias !8657, !noundef !7 ; 2 uses
  %i.ss = icmp sgt i64 %i.sr, -1
  call void @llvm.assume(i1 %i.ss)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc30.i:                                       ; preds = %bb.av
  %i.st = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8677, !noalias !8657, !nonnull !7, !noundef !7
  %i.su = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8677, !noalias !8657, !noundef !7 ; 2 uses
  %i.sv = icmp sgt i64 %i.su, -1
  call void @llvm.assume(i1 %i.sv)
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.su
  store i8 32, ptr %i.sw, align 1, !noalias !8659
  %i.sx = add nuw i64 %i.sr, 1                    ; 2 uses
  store i64 %i.sx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8677, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i": ; preds = %.noexc30.i, %.noexc29.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i114.i.i"
  %i.sy = phi i64 [ %.pre.i116.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i114.i.i" ], [ %i.sx, %.noexc30.i ], [ %i.sq, %.noexc29.i ] ; 2 uses
  %i.sz = icmp sgt i64 %i.sy, -1
  call void @llvm.assume(i1 %i.sz)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc31.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i"
  %i.ta = or disjoint i8 %i.sh, 48
  %i.tb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8675, !noalias !8657, !nonnull !7, !noundef !7
  %i.tc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8675, !noalias !8657, !noundef !7 ; 2 uses
  %i.td = icmp sgt i64 %i.tc, -1
  call void @llvm.assume(i1 %i.td)
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tc
  store i8 %i.ta, ptr %i.te, align 1, !noalias !8659
  %i.tf = add nuw i64 %i.sy, 1
  store i64 %i.tf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8675, !noalias !8657
  br label %.critedge.i

bb.aw:                                            ; preds = %bb.m
  br i1 %i.ix, label %bb.ax, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i"

bb.ax:                                            ; preds = %bb.aw
  switch i8 %i.kh, label %default.unreachable [
    i8 0, label %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i121.i.i"
    i8 2, label %bb.ay
    i8 1, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i"
  ]

"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i121.i.i": ; preds = %bb.ax
  %.pre.i123.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8678, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i": ; preds = %bb.ax, %bb.aw
  %i.tg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8679, !noalias !8657, !noundef !7 ; 2 uses
  %i.th = icmp sgt i64 %i.tg, -1
  call void @llvm.assume(i1 %i.th)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc33.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i"
  %i.ti = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8679, !noalias !8657, !nonnull !7, !noundef !7
  %i.tj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8679, !noalias !8657, !noundef !7 ; 2 uses
  %i.tk = icmp sgt i64 %i.tj, -1
  call void @llvm.assume(i1 %i.tk)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj
  store i8 %i.iy, ptr %i.tl, align 1, !noalias !8659
  %i.tm = add nuw i64 %i.tg, 1                    ; 2 uses
  store i64 %i.tm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8679, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i"

bb.ay:                                            ; preds = %bb.ax
  %i.tn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8680, !noalias !8657, !noundef !7 ; 2 uses
  %i.to = icmp sgt i64 %i.tn, -1
  call void @llvm.assume(i1 %i.to)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc34.i:                                       ; preds = %bb.ay
  %i.tp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8680, !noalias !8657, !nonnull !7, !noundef !7
  %i.tq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8680, !noalias !8657, !noundef !7 ; 2 uses
  %i.tr = icmp sgt i64 %i.tq, -1
  call void @llvm.assume(i1 %i.tr)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 %i.tq
  store i8 32, ptr %i.ts, align 1, !noalias !8659
  %i.tt = add nuw i64 %i.tn, 1                    ; 2 uses
  store i64 %i.tt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8680, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i": ; preds = %.noexc34.i, %.noexc33.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i121.i.i"
  %i.tu = phi i64 [ %.pre.i123.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i121.i.i" ], [ %i.tt, %.noexc34.i ], [ %i.tm, %.noexc33.i ] ; 2 uses
  %i.tv = icmp sgt i64 %i.tu, -1
  call void @llvm.assume(i1 %i.tv)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc35.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i"
  %i.tw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8678, !noalias !8657, !nonnull !7, !noundef !7
  %i.tx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8678, !noalias !8657, !noundef !7 ; 2 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.tx
  store i8 %i.ja, ptr %i.tz, align 1, !noalias !8659
  %i.ua = add nuw i64 %i.tu, 1
  store i64 %i.ua, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8678, !noalias !8657
  br label %.critedge.i

bb.az:                                            ; preds = %bb.n
  br i1 %i.in, label %bb.ba, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i"

bb.ba:                                            ; preds = %bb.az
  switch i8 %i.kh, label %default.unreachable [
    i8 0, label %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i133.i.i"
    i8 2, label %bb.bb
    i8 1, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i"
  ]

"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i133.i.i": ; preds = %bb.ba
  %.pre.i135.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8681, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i": ; preds = %bb.ba, %bb.az
  %i.ub = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8682, !noalias !8657, !noundef !7 ; 2 uses
  %i.uc = icmp sgt i64 %i.ub, -1
  call void @llvm.assume(i1 %i.uc)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc36.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i"
  %i.ud = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8682, !noalias !8657, !nonnull !7, !noundef !7
  %i.ue = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8682, !noalias !8657, !noundef !7 ; 2 uses
  %i.uf = icmp sgt i64 %i.ue, -1
  call void @llvm.assume(i1 %i.uf)
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ue
  store i8 %i.io, ptr %i.ug, align 1, !noalias !8659
  %i.uh = add nuw i64 %i.ub, 1                    ; 2 uses
  store i64 %i.uh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8682, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i"

bb.bb:                                            ; preds = %bb.ba
  %i.ui = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8683, !noalias !8657, !noundef !7 ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, -1
  call void @llvm.assume(i1 %i.uj)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc37.i:                                       ; preds = %bb.bb
  %i.uk = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8683, !noalias !8657, !nonnull !7, !noundef !7
  %i.ul = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8683, !noalias !8657, !noundef !7 ; 2 uses
  %i.um = icmp sgt i64 %i.ul, -1
  call void @llvm.assume(i1 %i.um)
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 %i.ul
  store i8 32, ptr %i.un, align 1, !noalias !8659
  %i.uo = add nuw i64 %i.ui, 1                    ; 2 uses
  store i64 %i.uo, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8683, !noalias !8657
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i": ; preds = %.noexc37.i, %.noexc36.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i133.i.i"
  %i.up = phi i64 [ %.pre.i135.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i133.i.i" ], [ %i.uo, %.noexc37.i ], [ %i.uh, %.noexc36.i ] ; 2 uses
  %i.uq = icmp sgt i64 %i.up, -1
  call void @llvm.assume(i1 %i.uq)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc38.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i"
  %i.ur = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8681, !noalias !8657, !nonnull !7, !noundef !7
  %i.us = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8681, !noalias !8657, !noundef !7 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZN89_$LT$chrono..format..formatting..DelayedFormat$LT$I$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h038586a5caeb314cE":bb.a
          to label %.noexc162.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc162.i:                                      ; preds = %.noexc161.i
  %i.ajh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8752, !noalias !8739, !nonnull !7, !noundef !7
  %i.aji = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8752, !noalias !8739, !noundef !7 ; 2 uses
  %i.ajj = icmp sgt i64 %i.aji, -1
  call void @llvm.assume(i1 %i.ajj)
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.aji
  store i8 %i.fu, ptr %i.ajk, align 1, !noalias !8741
  %i.ajl = add nuw nsw i64 %i.ahv, 8
  store i64 %i.ajl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8752, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc163.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc163.i:                                      ; preds = %.noexc162.i
  %i.ajm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8753, !noalias !8739, !nonnull !7, !noundef !7
  %i.ajn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8753, !noalias !8739, !noundef !7 ; 2 uses
  %i.ajo = icmp sgt i64 %i.ajn, -1
  call void @llvm.assume(i1 %i.ajo)
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajn
  store i8 58, ptr %i.ajp, align 1, !noalias !8741
  %i.ajq = add nuw nsw i64 %i.ahv, 9
  store i64 %i.ajq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8753, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc164.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc164.i:                                      ; preds = %.noexc163.i
  %i.ajr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8754, !noalias !8739, !nonnull !7, !noundef !7
  %i.ajs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8754, !noalias !8739, !noundef !7 ; 2 uses
  %i.ajt = icmp sgt i64 %i.ajs, -1
  call void @llvm.assume(i1 %i.ajt)
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.ajs
  store i8 %i.fx, ptr %i.aju, align 1, !noalias !8741
  %i.ajv = add nuw i64 %i.ahv, 10
  store i64 %i.ajv, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8754, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc165.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc165.i:                                      ; preds = %.noexc164.i
  %i.ajw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8755, !noalias !8739, !nonnull !7, !noundef !7
  %i.ajx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8755, !noalias !8739, !noundef !7 ; 2 uses
  %i.ajy = icmp sgt i64 %i.ajx, -1
  call void @llvm.assume(i1 %i.ajy)
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ajx
  store i8 %i.fz, ptr %i.ajz, align 1, !noalias !8741
  %i.aka = add nuw nsw i64 %i.ahv, 11
  store i64 %i.aka, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8755, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc166.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc166.i:                                      ; preds = %.noexc165.i
  %i.akb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8756, !noalias !8739, !nonnull !7, !noundef !7
  %i.akc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8756, !noalias !8739, !noundef !7 ; 2 uses
  %i.akd = icmp sgt i64 %i.akc, -1
  call void @llvm.assume(i1 %i.akd)
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.akc
  store i8 58, ptr %i.ake, align 1, !noalias !8741
  %i.akf = add nuw nsw i64 %i.ahv, 12
  store i64 %i.akf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8756, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc167.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc167.i:                                      ; preds = %.noexc166.i
  %i.akg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8757, !noalias !8739, !nonnull !7, !noundef !7
  %i.akh = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8757, !noalias !8739, !noundef !7 ; 2 uses
  %i.aki = icmp sgt i64 %i.akh, -1
  call void @llvm.assume(i1 %i.aki)
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 %i.akh
  store i8 %i.gy, ptr %i.akj, align 1, !noalias !8741
  %i.akk = add nuw i64 %i.ahv, 13
  store i64 %i.akk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8757, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc168.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc168.i:                                      ; preds = %.noexc167.i
  %i.akl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8758, !noalias !8739, !nonnull !7, !noundef !7
  %i.akm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8758, !noalias !8739, !noundef !7 ; 2 uses
  %i.akn = icmp sgt i64 %i.akm, -1
  call void @llvm.assume(i1 %i.akn)
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 %i.akm
  store i8 %i.ha, ptr %i.ako, align 1, !noalias !8741
  %i.akp = add nuw nsw i64 %i.ahv, 14
  store i64 %i.akp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8758, !noalias !8739
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc169.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc169.i:                                      ; preds = %.noexc168.i
  %i.akq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8759, !noalias !8739, !nonnull !7, !noundef !7
  %i.akr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8759, !noalias !8739, !noundef !7 ; 2 uses
  %i.aks = icmp sgt i64 %i.akr, -1
  call void @llvm.assume(i1 %i.aks)
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 %i.akr
  store i8 32, ptr %i.akt, align 1, !noalias !8741
  %i.aku = add nuw i64 %i.ahv, 15
  store i64 %i.aku, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8759, !noalias !8739
  %i.akv = invoke fastcc noundef zeroext i1 @"_ZN6chrono6format10formatting46_$LT$impl$u20$chrono..format..OffsetFormat$GT$6format17he53627d509e19dfdE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(4) @932, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef %i.ep)
          to label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$12format_fixed17h613322555a4b9faeE.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ei:                                            ; preds = %bb.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !8760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !8649
  store i32 %i.eq, ptr %i.m, align 4, !noalias !8761
  br i1 %or.cond.i112.i, label %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit52.i.i, label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.i

_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.i: ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !8761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8761
  store ptr %i.m, ptr %i.k, align 8, !noalias !8761
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hf9cd6342de4889e1E", ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !8761
  store ptr @139, ptr %i.l, align 8, !noalias !8761
  store i64 1, ptr %i.er, align 8, !noalias !8761
  store ptr @933, ptr %i.es, align 8, !noalias !8761
  store i64 1, ptr %i.et, align 8, !noalias !8761
  store ptr %i.k, ptr %i.eu, align 8, !noalias !8761
  store i64 1, ptr %i.ev, align 8, !noalias !8761
  %i.akw = invoke noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hac88d7d2cbc0e1c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.l)
          to label %.noexc116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc116.i:                                      ; preds = %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !8761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8761
  br i1 %i.akw, label %.noexc102.thread.i, label %bb.ej

bb.ej:                                            ; preds = %.noexc116.i
  %.pre.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8762, !noalias !8763
  br label %bb.ek

bb.ek:                                            ; preds = %.noexc121.i, %bb.ej
  %i.akx = phi i64 [ %i.alz, %.noexc121.i ], [ %.pre.i.i, %bb.ej ] ; 16 uses
  %i.aky = icmp sgt i64 %i.akx, -1
  call void @llvm.assume(i1 %i.aky)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc117.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc117.i:                                      ; preds = %bb.ek
  %i.akz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8762, !noalias !8763, !nonnull !7, !noundef !7
  %i.ala = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8762, !noalias !8763, !noundef !7 ; 2 uses
  %i.alb = icmp sgt i64 %i.ala, -1
  call void @llvm.assume(i1 %i.alb)
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akz, i64 %i.ala
  store i8 45, ptr %i.alc, align 1, !noalias !8764
  %i.ald = add nuw i64 %i.akx, 1                  ; 2 uses
  store i64 %i.ald, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8762, !noalias !8763
  br i1 %i.el, label %bb.el, label %.invoke269.i

_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit52.i.i: ; preds = %bb.ei
  %i.ale = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8765, !noalias !8763, !noundef !7 ; 5 uses
  %i.alf = icmp sgt i64 %i.ale, -1
  call void @llvm.assume(i1 %i.alf)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc118.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc118.i:                                      ; preds = %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit52.i.i
  %i.alg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8765, !noalias !8763, !nonnull !7, !noundef !7
  %i.alh = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8765, !noalias !8763, !noundef !7 ; 2 uses
  %i.ali = icmp sgt i64 %i.alh, -1
  call void @llvm.assume(i1 %i.ali)
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alh
  store i8 %i.ez, ptr %i.alj, align 1, !noalias !8764
  %i.alk = add nuw nsw i64 %i.ale, 1
  store i64 %i.alk, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8765, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc119.i:                                      ; preds = %.noexc118.i
  %i.all = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8766, !noalias !8763, !nonnull !7, !noundef !7
  %i.alm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8766, !noalias !8763, !noundef !7 ; 2 uses
  %i.aln = icmp sgt i64 %i.alm, -1
  call void @llvm.assume(i1 %i.aln)
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 %i.alm
  store i8 %i.fb, ptr %i.alo, align 1, !noalias !8764
  %i.alp = add nuw nsw i64 %i.ale, 2
  store i64 %i.alp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8766, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc120.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc120.i:                                      ; preds = %.noexc119.i
  %i.alq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8767, !noalias !8763, !nonnull !7, !noundef !7
  %i.alr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8767, !noalias !8763, !noundef !7 ; 2 uses
  %i.als = icmp sgt i64 %i.alr, -1
  call void @llvm.assume(i1 %i.als)
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alq, i64 %i.alr
  store i8 %i.ff, ptr %i.alt, align 1, !noalias !8764
  %i.alu = add nuw i64 %i.ale, 3
  store i64 %i.alu, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8767, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc121.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc121.i:                                      ; preds = %.noexc120.i
  %i.alv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8768, !noalias !8763, !nonnull !7, !noundef !7
  %i.alw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8768, !noalias !8763, !noundef !7 ; 2 uses
  %i.alx = icmp sgt i64 %i.alw, -1
  call void @llvm.assume(i1 %i.alx)
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alw
  store i8 %i.fh, ptr %i.aly, align 1, !noalias !8764
  %i.alz = add nuw i64 %i.ale, 4                  ; 2 uses
  store i64 %i.alz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8768, !noalias !8763
  br label %bb.ek

bb.el:                                            ; preds = %.noexc117.i
  %i.ama = load i8, ptr %i.em, align 1, !noalias !8761, !noundef !7
  %6 = zext i8 %i.ama to i32                      ; 2 uses
  %i.amb = icmp sgt i64 %i.ald, -1
  call void @llvm.assume(i1 %i.amb)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc122.i:                                      ; preds = %bb.el
  %i.amc = add nuw nsw i32 %i.ej, %6              ; 3 uses
  %.cmp.i113.i = icmp samesign ugt i32 %i.amc, 639
  %i.amd = zext i1 %.cmp.i113.i to i8
  %i.ame = or disjoint i8 %i.amd, 48
  %i.amf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8769, !noalias !8763, !nonnull !7, !noundef !7
  %i.amg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8769, !noalias !8763, !noundef !7 ; 2 uses
  %i.amh = icmp sgt i64 %i.amg, -1
  call void @llvm.assume(i1 %i.amh)
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amf, i64 %i.amg
  store i8 %i.ame, ptr %i.ami, align 1, !noalias !8764
  %i.amj = add nuw i64 %i.akx, 2
  store i64 %i.amj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8769, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc123.i:                                      ; preds = %.noexc122.i
  %.cmp62.i.i = icmp samesign ult i32 %i.amc, 640
  %i.amk = lshr i32 %i.amc, 6
  %i.aml = trunc nuw nsw i32 %i.amk to i8         ; 2 uses
  %.urem.i114.i = add nsw i8 %i.aml, -10
  %i.amm = select i1 %.cmp62.i.i, i8 %i.aml, i8 %.urem.i114.i
  %i.amn = or disjoint i8 %i.amm, 48
  %i.amo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8770, !noalias !8763, !nonnull !7, !noundef !7
  %i.amp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8770, !noalias !8763, !noundef !7 ; 2 uses
  %i.amq = icmp sgt i64 %i.amp, -1
  call void @llvm.assume(i1 %i.amq)
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amp
  store i8 %i.amn, ptr %i.amr, align 1, !noalias !8764
  %i.ams = add nuw nsw i64 %i.akx, 3
  store i64 %i.ams, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8770, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc124.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc124.i:                                      ; preds = %.noexc123.i
  %i.amt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8771, !noalias !8763, !nonnull !7, !noundef !7
  %i.amu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8771, !noalias !8763, !noundef !7 ; 2 uses
  %i.amv = icmp sgt i64 %i.amu, -1
  call void @llvm.assume(i1 %i.amv)
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.amu
  store i8 45, ptr %i.amw, align 1, !noalias !8764
  %i.amx = add nuw nsw i64 %i.akx, 4
  store i64 %i.amx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8771, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc125.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc125.i:                                      ; preds = %.noexc124.i
  %7 = add nuw nsw i32 %i.ei, %6
  %8 = lshr i32 %7, 1
  %9 = trunc i32 %8 to i8
  %i.amy = and i8 %9, 31                          ; 2 uses
  %i.amz = udiv i8 %i.amy, 10
  %i.ana = urem i8 %i.amy, 10
  %i.anb = or disjoint i8 %i.amz, 48
  %i.anc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8772, !noalias !8763, !nonnull !7, !noundef !7
  %i.and = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8772, !noalias !8763, !noundef !7 ; 2 uses
  %i.ane = icmp sgt i64 %i.and, -1
  call void @llvm.assume(i1 %i.ane)
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.and
  store i8 %i.anb, ptr %i.anf, align 1, !noalias !8764
  %i.ang = add nuw i64 %i.akx, 5
  store i64 %i.ang, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8772, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc126.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc126.i:                                      ; preds = %.noexc125.i
  %i.anh = or disjoint i8 %i.ana, 48
  %i.ani = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8773, !noalias !8763, !nonnull !7, !noundef !7
  %i.anj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8773, !noalias !8763, !noundef !7 ; 2 uses
  %i.ank = icmp sgt i64 %i.anj, -1
  call void @llvm.assume(i1 %i.ank)
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anj
  store i8 %i.anh, ptr %i.anl, align 1, !noalias !8764
  %i.anm = add nuw nsw i64 %i.akx, 6
  store i64 %i.anm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8773, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc127.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc127.i:                                      ; preds = %.noexc126.i
  %i.ann = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8774, !noalias !8763, !nonnull !7, !noundef !7
  %i.ano = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8774, !noalias !8763, !noundef !7 ; 2 uses
  %i.anp = icmp sgt i64 %i.ano, -1
  call void @llvm.assume(i1 %i.anp)
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.ano
  store i8 84, ptr %i.anq, align 1, !noalias !8764
  %i.anr = add nuw i64 %i.akx, 7                  ; 2 uses
  store i64 %i.anr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8774, !noalias !8763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8761
  store i32 %storemerge.i.i, ptr %i.j, align 4, !noalias !8761
  br i1 %i.fm, label %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit57.thread.i.i, label %bb.em

bb.em:                                            ; preds = %.noexc127.i
  %i.ans = icmp sgt i64 %i.anr, -1
  call void @llvm.assume(i1 %i.ans)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc129.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc129.i:                                      ; preds = %bb.em
  %i.ant = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8775, !noalias !8763, !nonnull !7, !noundef !7
  %i.anu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8775, !noalias !8763, !noundef !7 ; 2 uses
  %i.anv = icmp sgt i64 %i.anu, -1
  call void @llvm.assume(i1 %i.anv)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 %i.anu
  store i8 %i.fs, ptr %i.anw, align 1, !noalias !8764
  %i.anx = add nuw i64 %i.akx, 8
  store i64 %i.anx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8775, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc130.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc130.i:                                      ; preds = %.noexc129.i
  %i.any = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8776, !noalias !8763, !nonnull !7, !noundef !7
  %i.anz = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8776, !noalias !8763, !noundef !7 ; 2 uses
  %i.aoa = icmp sgt i64 %i.anz, -1
  call void @llvm.assume(i1 %i.aoa)
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 %i.anz
  store i8 %i.fu, ptr %i.aob, align 1, !noalias !8764
  %i.aoc = add nuw nsw i64 %i.akx, 9
  store i64 %i.aoc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8776, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc131.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc131.i:                                      ; preds = %.noexc130.i
  %i.aod = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8777, !noalias !8763, !nonnull !7, !noundef !7
  %i.aoe = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8777, !noalias !8763, !noundef !7 ; 2 uses
  %i.aof = icmp sgt i64 %i.aoe, -1
  call void @llvm.assume(i1 %i.aof)
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.aoe
  store i8 58, ptr %i.aog, align 1, !noalias !8764
  %i.aoh = add nuw nsw i64 %i.akx, 10
  store i64 %i.aoh, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8777, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc132.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc132.i:                                      ; preds = %.noexc131.i
  %i.aoi = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8778, !noalias !8763, !nonnull !7, !noundef !7
  %i.aoj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8778, !noalias !8763, !noundef !7 ; 2 uses
  %i.aok = icmp sgt i64 %i.aoj, -1
  call void @llvm.assume(i1 %i.aok)
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 %i.aoj
  store i8 %i.fx, ptr %i.aol, align 1, !noalias !8764
  %i.aom = add nuw i64 %i.akx, 11
  store i64 %i.aom, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8778, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc133.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc133.i:                                      ; preds = %.noexc132.i
  %i.aon = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8779, !noalias !8763, !nonnull !7, !noundef !7
  %i.aoo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8779, !noalias !8763, !noundef !7 ; 2 uses
  %i.aop = icmp sgt i64 %i.aoo, -1
  call void @llvm.assume(i1 %i.aop)
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aon, i64 %i.aoo
  store i8 %i.fz, ptr %i.aoq, align 1, !noalias !8764
  %i.aor = add nuw nsw i64 %i.akx, 12
  store i64 %i.aor, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8779, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc134.i:                                      ; preds = %.noexc133.i
  %i.aos = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8780, !noalias !8763, !nonnull !7, !noundef !7
  %i.aot = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8780, !noalias !8763, !noundef !7 ; 2 uses
  %i.aou = icmp sgt i64 %i.aot, -1
  call void @llvm.assume(i1 %i.aou)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aot
  store i8 58, ptr %i.aov, align 1, !noalias !8764
  %i.aow = add nuw nsw i64 %i.akx, 13
  store i64 %i.aow, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8780, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc135.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc135.i:                                      ; preds = %.noexc134.i
  %i.aox = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8781, !noalias !8763, !nonnull !7, !noundef !7
  %i.aoy = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8781, !noalias !8763, !noundef !7 ; 2 uses
  %i.aoz = icmp sgt i64 %i.aoy, -1
  call void @llvm.assume(i1 %i.aoz)
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aoy
  store i8 %i.gc, ptr %i.apa, align 1, !noalias !8764
  %i.apb = add nuw i64 %i.akx, 14
  store i64 %i.apb, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8781, !noalias !8763
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc136.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc136.i:                                      ; preds = %.noexc135.i
  %i.apc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8782, !noalias !8763, !nonnull !7, !noundef !7
  %i.apd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8782, !noalias !8763, !noundef !7 ; 2 uses
  %i.ape = icmp sgt i64 %i.apd, -1
  call void @llvm.assume(i1 %i.ape)
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.apd
  store i8 %i.ge, ptr %i.apf, align 1, !noalias !8764
  %i.apg = add nuw i64 %i.akx, 15
  store i64 %i.apg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8782, !noalias !8763
  %i.aph = load i32, ptr %i.j, align 4, !noalias !8761, !noundef !7 ; 5 uses
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.noexc140.i, %.noexc139.i, %.noexc138.i, %.noexc136.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8761
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.a, align 4, !noalias !8761
  %i.apj = invoke fastcc noundef zeroext i1 @"_ZN6chrono6format10formatting46_$LT$impl$u20$chrono..format..OffsetFormat$GT$6format17he53627d509e19dfdE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef %i.ep)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit57.thread.i.i: ; preds = %.noexc140.i, %.noexc139.i, %.noexc138.i, %.noexc127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8761
  br label %.noexc102.thread.i

bb.eo:                                            ; preds = %.noexc136.i
  %i.apk = urem i32 %i.aph, 1000000
  %i.apl = udiv i32 %i.aph, 1000000
  %i.apm = icmp eq i32 %i.apk, 0
  br i1 %i.apm, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8761
  store i32 %i.apl, ptr %i.h, align 4, !noalias !8761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8761
  store ptr %i.h, ptr %i.g, align 8, !noalias !8761
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE", ptr %.sroa.440.0..sroa_idx.i.i, align 8, !noalias !8761
  store ptr @935, ptr %i.i, align 8, !noalias !8761
  store i64 1, ptr %i.gp, align 8, !noalias !8761
  store ptr @936, ptr %i.gq, align 8, !noalias !8761
  store i64 1, ptr %i.gr, align 8, !noalias !8761
  store ptr %i.g, ptr %i.gs, align 8, !noalias !8761
  store i64 1, ptr %i.gt, align 8, !noalias !8761
  %i.apn = invoke noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hac88d7d2cbc0e1c7E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc138.i:                                      ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8761
  br i1 %i.apn, label %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit57.thread.i.i, label %bb.en

bb.eq:                                            ; preds = %bb.eo
  %i.apo = urem i32 %i.aph, 1000
  %i.app = udiv i32 %i.aph, 1000
  %i.apq = icmp eq i32 %i.apo, 0
  br i1 %i.apq, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8761
  store i32 %i.app, ptr %i.e, align 4, !noalias !8761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8761
  store ptr %i.e, ptr %i.d, align 8, !noalias !8761
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h01bbff3c14dc0e0cE", ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !8761
  store ptr @935, ptr %i.f, align 8, !noalias !8761
  store i64 1, ptr %i.gk, align 8, !noalias !8761
  store ptr @937, ptr %i.gl, align 8, !noalias !8761
  store i64 1, ptr %i.gm, align 8, !noalias !8761
  store ptr %i.d, ptr %i.gn, align 8, !noalias !8761
  store i64 1, ptr %i.go, align 8, !noalias !8761
end_hunk_2
