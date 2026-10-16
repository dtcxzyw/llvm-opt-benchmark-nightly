Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E":bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !11, !noundef !7
  %.val = load ptr, ptr %i.g, align 8, !nonnull !7, !align !11, !noundef !7
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$anki..storage..sqlite.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17he156a510139601ecE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN8bitflags6parser8from_str17h0f7db2e5ffc561ebE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !range !26, !noundef !7
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8192)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !8193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bb, i64 40, i1 false), !noalias !8192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !8193
  invoke void @"_ZN98_$LT$chrono..format..strftime..StrftimeItems$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5e41ea4a4ebf5fc9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.bc = load i8, ptr %i.ay, align 8, !range !24, !noalias !8193, !noundef !7
  %.not231.not.i = icmp eq i8 %i.bc, 7
  br i1 %.not231.not.i, label %.loopexit17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !8191 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bg, align 8, !alias.scope !8191
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !8191 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !8191 ; 7 uses
  %i.bh = load i64, ptr %0, align 8, !range !9, !alias.scope !8191
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
  %.146.i.i = select i1 %i.ds, ptr @962, ptr @961 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.146.i.i, i64 2
  %.sroa.076.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 11 uses
  %.sroa.377.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 88 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.not138.i.i = icmp ne i32 %i.bf, 0             ; 20 uses
  %i.dx = lshr i32 %i.bf, 4
  %i.dy = and i32 %i.dx, 511                      ; 9 uses
  %i.dz = and i32 %i.bf, 7
  %i.ea = add nuw nsw i32 %i.dy, %i.dz
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.ea to i16
  %i.eb = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.ec = icmp samesign ult i16 %i.eb, 6          ; 2 uses
  %narrow42.i.i = add nuw nsw i16 %i.eb, 1
  %narrow43.i.i = select i1 %i.ec, i16 %narrow42.i.i, i16 0
  %i.ed = zext nneg i16 %narrow43.i.i to i64      ; 2 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr @960, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr @913, i64 %i.ed ; 2 uses
  %i.eh = lshr i32 %i.bf, 3                       ; 3 uses
  %i.ei = and i32 %i.eh, 1023                     ; 8 uses
  %i.ej = zext nneg i32 %i.ei to i64              ; 8 uses
  %i.ek = icmp samesign ult i32 %i.ei, 733        ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr @915, i64 %i.ej ; 7 uses
  %or.cond5.i.i = select i1 %.not138.i.i, i1 %i.bi, i1 false ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load i32, ptr %i.em, align 8, !alias.scope !8191 ; 7 uses
  %i.eo = ashr i32 %i.bf, 13                      ; 13 uses
  %or.cond.i112.i = icmp ult i32 %i.eo, 10000     ; 2 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.lhs.trunc.i115.i = trunc nuw nsw i32 %i.eo to i16 ; 2 uses
  %i.eu = udiv i16 %.lhs.trunc.i115.i, 100
  %i.ev = trunc nuw nsw i16 %i.eu to i8           ; 2 uses
  %i.ew = udiv i8 %i.ev, 10
  %i.ex = or disjoint i8 %i.ew, 48                ; 2 uses
  %i.ey = urem i8 %i.ev, 10
  %i.ez = or disjoint i8 %i.ey, 48                ; 2 uses
  %i.fa = urem i16 %.lhs.trunc.i115.i, 100
  %i.fb = trunc nuw nsw i16 %i.fa to i8           ; 2 uses
  %i.fc = udiv i8 %i.fb, 10
  %i.fd = or disjoint i8 %i.fc, 48                ; 2 uses
  %i.fe = urem i8 %i.fb, 10
  %i.ff = or disjoint i8 %i.fe, 48                ; 2 uses
  %i.fg = trunc i32 %i.eh to i8                   ; 2 uses
  %i.fh = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.fi = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.fj = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.fi, i32 %i.fj, i32 %.sroa.21.0.copyload.i.i
  %i.fk = trunc i32 %i.fh to i8                   ; 4 uses
  %i.fl = icmp ugt i8 %i.fk, 99                   ; 2 uses
  %i.fm = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.fn = zext i1 %i.fi to i32
  %.sroa.023.0.i.i = add nuw nsw i32 %i.fm, %i.fn
  %i.fo = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.fp = urem i32 %i.fo, 60                      ; 2 uses
  %i.fq = udiv i8 %i.fk, 10                       ; 2 uses
  %i.fr = or disjoint i8 %i.fq, 48                ; 2 uses
  %i.fs = urem i8 %i.fk, 10
  %i.ft = or disjoint i8 %i.fs, 48                ; 3 uses
  %i.fu = trunc nuw nsw i32 %i.fp to i8           ; 2 uses
  %i.fv = udiv i8 %i.fu, 10
  %i.fw = or disjoint i8 %i.fv, 48                ; 3 uses
  %i.fx = urem i8 %i.fu, 10
  %i.fy = or disjoint i8 %i.fx, 48                ; 3 uses
  %i.fz = trunc nuw nsw i32 %.sroa.023.0.i.i to i8 ; 2 uses
  %i.ga = udiv i8 %i.fz, 10
  %i.gb = or disjoint i8 %i.ga, 48
  %i.gc = urem i8 %i.fz, 10
  %i.gd = or disjoint i8 %i.gc, 48
  %.sroa.448.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gt = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.gu = add nuw nsw i32 %i.gt, %i.fm            ; 2 uses
  %i.gv = trunc nuw nsw i32 %i.gu to i8           ; 2 uses
  %i.gw = udiv i8 %i.gv, 10
  %i.gx = or disjoint i8 %i.gw, 48                ; 2 uses
  %i.gy = urem i8 %i.gv, 10
  %i.gz = or disjoint i8 %i.gy, 48                ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.hh = sext i32 %i.en to i64
  %i.hi = add nsw i32 %i.eo, -1
  %i.hj = icmp slt i32 %i.eo, 1                   ; 2 uses
  %i.hk = sub nsw i32 1, %i.eo
  %i.hl = udiv i32 %i.hk, 400
  %i.hm = add nuw nsw i32 %i.hl, 1                ; 2 uses
  %i.hn = mul nuw nsw i32 %i.hm, 400
  %.neg.i.i.i = mul nsw i32 %i.hm, -146097
  %i.ho = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.hp = add nuw nsw i32 %i.dy, -719163
  %..sroa.3.0.i.i = select i1 %.not.i60.i, i64 0, i64 %i.hh
  %i.hq = sub nsw i64 %i.ho, %..sroa.3.0.i.i
  %i.hr = zext nneg i32 %i.bj to i64
  %i.hs = icmp samesign ult i32 %i.gu, 10
  %i.ht = icmp samesign ult i32 %i.fp, 10
  %i.hu = urem i32 %i.fh, 12                      ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  %i.hw = trunc nuw nsw i32 %i.hu to i8
  %i.hx = select i1 %i.hv, i8 12, i8 %i.hw
  %.frozen.i.i = freeze i8 %i.hx                  ; 4 uses
  %.cmp8.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.hy = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.hz = select i1 %.cmp8.i.i, i8 49, i8 48
  %.urem9.i.i = add i8 %.frozen.i.i, -10
  %i.ia = select i1 %i.hy, i8 %.frozen.i.i, i8 %.urem9.i.i
  %i.ib = or disjoint i8 %i.ia, 48
  %i.ic = icmp ult i8 %i.fk, 10
  %i.id = add nuw nsw i8 %i.fq, 48
  %i.ie = zext nneg i32 %i.dy to i64
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.eb to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.if = trunc i32 %i.bf to i8
  %i.ig = and i8 %i.if, 15                        ; 4 uses
  %i.ih = trunc nuw nsw i32 %i.dy to i16
  %i.ii = add nuw nsw i16 %i.ih, 6
  %.lhs.trunc1.i130.i.i = sub nuw nsw i16 %i.ii, %i.eb ; 2 uses
  %i.ij = udiv i16 %.lhs.trunc1.i130.i.i, 7
  %i.ik = trunc nuw nsw i16 %i.ij to i8           ; 2 uses
  %i.il = udiv i8 %i.ik, 10
  %i.im = icmp samesign ult i16 %.lhs.trunc1.i130.i.i, 70
  %i.in = add nuw nsw i8 %i.il, 48
  %i.io = urem i8 %i.ik, 10
  %i.ip = or disjoint i8 %i.io, 48
  %spec.select.i119.i.i = zext nneg i16 %i.eb to i32 ; 2 uses
  %i.iq = add nuw nsw i32 %spec.select.i119.i.i, 7
  %.pn.i.i.i = select i1 %i.ec, i32 %i.iq, i32 %spec.select.i119.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.dy, 6
  %i.ir = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.is = trunc nsw i32 %i.ir to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.is, 6
  %i.it = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.iu = trunc nuw nsw i16 %i.it to i8           ; 2 uses
  %i.iv = udiv i8 %i.iu, 10
  %i.iw = icmp samesign ult i16 %i.it, 10
  %i.ix = add nuw nsw i8 %i.iv, 48
  %i.iy = urem i8 %i.iu, 10
  %i.iz = or disjoint i8 %i.iy, 48
  %i.ja = srem i32 %i.eo, 100                     ; 4 uses
  %i.jb = icmp slt i32 %i.ja, 0
  %i.jc = add nsw i32 %i.ja, 100
  %spec.select.i.i.i = select i1 %i.jb, i32 %i.jc, i32 %i.ja ; 2 uses
  %i.jd = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.je = udiv i8 %i.jd, 10
  %i.jf = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.jg = add nuw nsw i8 %i.je, 48
  %i.jh = urem i8 %i.jd, 10
  %i.ji = or disjoint i8 %i.jh, 48
  %i.jj = sdiv i32 %i.eo, 100
  %.lobit.i.i.i = ashr i32 %i.ja, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.jj
  %i.jk = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.jl = udiv i8 %i.jk, 10
  %i.jm = icmp ult i8 %i.jk, 10
  %i.jn = add nuw nsw i8 %i.jl, 48
  %i.jo = urem i8 %i.jk, 10
  %i.jp = or disjoint i8 %i.jo, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %spec.select.i = select i1 %i.hj, i32 %.neg.i.i.i, i32 0
  %i.jr = select i1 %i.hj, i32 %i.hn, i32 0
  %spec.select233.i = add nsw i32 %i.hi, %i.jr    ; 2 uses
  %i.js = sdiv i32 %spec.select233.i, 100         ; 2 uses
  %i.jt = mul nsw i32 %spec.select233.i, 1461
  %i.ju = ashr i32 %i.jt, 2
  %i.jv = ashr i32 %i.js, 2
  %i.jw = add nsw i32 %i.hp, %spec.select.i
  %i.jx = sub i32 %i.jw, %i.js
  %i.jy = add nsw i32 %i.jx, %i.ju
  %narrow.i.i = add nsw i32 %i.jy, %i.jv
  %i.jz = sext i32 %narrow.i.i to i64
  %i.ka = mul nsw i64 %i.jz, 86400
  %i.kb = add nsw i64 %i.hq, %i.ka
  %.285.i = select i1 %i.ds, ptr getelementptr inbounds nuw (i8, ptr @962, i64 2), ptr getelementptr inbounds nuw (i8, ptr @961, i64 2)
  %i.kc = shl nuw nsw i16 %i.eb, 3
  %switch.shiftamt = zext nneg i16 %i.kc to i56
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

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke, %.noexc11, %.noexc10, %.noexc9, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i2.i", %.invoke283.i, %bb.es, %bb.er, %bb.ep, %bb.en, %.noexc135.i, %.noexc134.i, %.noexc133.i, %.noexc132.i, %.noexc131.i, %.noexc130.i, %.noexc129.i, %bb.em, %.noexc126.i, %.noexc125.i, %.noexc124.i, %.noexc123.i, %.noexc122.i, %bb.el, %.noexc120.i, %.noexc119.i, %.noexc118.i, %_ZN6chrono6format10formatting14write_hundreds17h853608213e2ed4d3E.exit52.i.i, %bb.ek, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.i, %.noexc169.i, %.noexc168.i, %.noexc167.i, %.noexc166.i, %.noexc165.i, %.noexc164.i, %.noexc163.i, %.noexc162.i, %.noexc161.i, %bb.eh, %.noexc158.i, %.noexc157.i, %.noexc156.i, %.noexc155.i, %.noexc154.i, %.noexc153.i, %bb.eg, %bb.ef, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i145.i", %.noexc149.i, %bb.ee, %.noexc146.i, %bb.ec, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %bb.dr, %bb.do, %.noexc91.i, %bb.dn, %.noexc89.i, %bb.dm, %.noexc87.i, %bb.dl, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %.invoke282.i, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i", %bb.bq, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i", %bb.bn, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i158.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit157.i.i", %bb.bk, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i152.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit151.i.i", %bb.bh, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i146.i.i", %switch.lookup.i.i, %switch.lookup, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit143.i.i", %bb.be, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i138.i.i", %bb.bc, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit137.i.i", %bb.bb, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i132.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit125.i.i", %bb.ay, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i120.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit118.i.i", %bb.av, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i113.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit112.i.i", %bb.ar, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i107.i.i", %bb.am, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit106.i.i", %bb.ak, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i101.i.i", %bb.ai, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit99.i.i", %bb.ah, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i94.i.i", %bb.af, %bb.ae, %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit91.i.i", %bb.ad, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i86.i.i", %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit.i.i", %bb.aa, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i.i.i"
  %lpad.loopexit187.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke284.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit184.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit187.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$chrono..format..Item$GT$17h40b97c289809788aE"(ptr noalias noundef align 8 dereferenceable(24) %i.ax) #31
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !8193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !8193
  %i.kd = load i8, ptr %i.ax, align 8, !range !35, !noalias !8193, !noundef !7
  switch i8 %i.kd, label %default.unreachable [
    i8 0, label %.invoke283.i
    i8 1, label %.invoke283.i
    i8 2, label %.invoke283.i
    i8 3, label %.invoke283.i
    i8 4, label %bb.c
    i8 5, label %bb.br
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.aq, %bb.aj, %bb.ag, %bb.ac, %bb.z, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ke = load i8, ptr %i.hg, align 2, !range !36, !noalias !8193, !noundef !7 ; 14 uses
  %.val.i = load i8, ptr %i.bd, align 1, !range !8194, !noalias !8193, !noundef !7
  call void @llvm.experimental.noalias.scope.decl(metadata !8195)
  switch i8 %.val.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %.invoke.i, label %.loopexit

bb.e:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.y, label %.loopexit

bb.f:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.ab, label %.loopexit

bb.g:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.ae, label %.loopexit

bb.h:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.af, label %.loopexit

bb.i:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.ai, label %.loopexit

bb.j:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.al, label %.loopexit

bb.k:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.ao, label %.loopexit

bb.l:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.as, label %.loopexit

bb.m:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.aw, label %.loopexit

bb.n:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.az, label %.loopexit

bb.o:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %bb.bc, label %.loopexit

bb.p:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %switch.lookup, label %.loopexit

bb.q:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %switch.lookup.i.i, label %.loopexit

bb.r:                                             ; preds = %bb.c
  br i1 %.not138.i.i, label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke, label %.loopexit

bb.s:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.bf, label %.loopexit

bb.t:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.bi, label %.loopexit

bb.u:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.bl, label %.loopexit

bb.v:                                             ; preds = %bb.c
  br i1 %i.bi, label %bb.bo, label %.loopexit

bb.w:                                             ; preds = %bb.c
  br i1 %i.bi, label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke, label %.loopexit

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond5.i.i, label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke, label %.loopexit

.invoke.i:                                        ; preds = %.noexc13.i, %bb.d
  %i.kf = phi i32 [ %i.nl, %.noexc13.i ], [ %i.eo, %bb.d ] ; 4 uses
  %i.kg = add nsw i32 %i.kf, -1000
  %or.cond.i = icmp ult i32 %i.kg, 9000
  br i1 %or.cond.i, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i2.i", label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i

_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i: ; preds = %.invoke.i
  %i.kh = sext i32 %i.kf to i64
  %spec.select.i.i7 = icmp ugt i32 %i.kf, 9999
  br label %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke

_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i.invoke: ; preds = %bb.r, %bb.w, %bb.x, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i
  %i.ki = phi i64 [ 4, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i ], [ 9, %bb.w ], [ 3, %bb.r ], [ 9, %bb.x ]
  %i.kj = phi i64 [ %i.kh, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i ], [ %i.hr, %bb.w ], [ %i.ie, %bb.r ], [ %i.kb, %bb.x ]
  %i.kk = phi i1 [ %spec.select.i.i7, %_ZN4core3ops5range11RangeBounds8contains17hdc38347d8f1904e2E.exit.thread.i ], [ false, %bb.w ], [ false, %bb.r ], [ false, %bb.x ]
  %i.kl = invoke fastcc noundef zeroext i1 @"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric7write_n17h94c643237990f6e2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.ki, i64 noundef %i.kj, i8 noundef range(i8 0, 3) %i.ke, i1 noundef zeroext %i.kk)
          to label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric17h666d79de0ff1ab3bE.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i2.i": ; preds = %.invoke.i
  %.lhs.trunc.i = trunc nuw nsw i32 %i.kf to i16  ; 2 uses
  %i.km = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8196, !noundef !7 ; 5 uses
  %i.kn = icmp sgt i64 %i.km, -1
  call void @llvm.assume(i1 %i.kn)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc9:                                          ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i2.i"
  %i.ko = udiv i16 %.lhs.trunc.i, 100
  %i.kp = urem i16 %.lhs.trunc.i, 100
  %i.kq = trunc nuw nsw i16 %i.ko to i8           ; 2 uses
  %i.kr = udiv i8 %i.kq, 10
  %i.ks = urem i8 %i.kq, 10
  %i.kt = or disjoint i8 %i.kr, 48
  %i.ku = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8196, !nonnull !7, !noundef !7
  %i.kv = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8196, !noundef !7 ; 2 uses
  %i.kw = icmp sgt i64 %i.kv, -1
  call void @llvm.assume(i1 %i.kw)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kv
  store i8 %i.kt, ptr %i.kx, align 1
  %i.ky = add nuw nsw i64 %i.km, 1
  store i64 %i.ky, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8196
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc10:                                         ; preds = %.noexc9
  %i.kz = or disjoint i8 %i.ks, 48
  %i.la = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8197, !nonnull !7, !noundef !7
  %i.lb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8197, !noundef !7 ; 2 uses
  %i.lc = icmp sgt i64 %i.lb, -1
  call void @llvm.assume(i1 %i.lc)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.lb
  store i8 %i.kz, ptr %i.ld, align 1
  %i.le = add nuw nsw i64 %i.km, 2
  store i64 %i.le, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8197
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc11:                                         ; preds = %.noexc10
  %i.lf = trunc nuw nsw i16 %i.kp to i8           ; 2 uses
  %i.lg = udiv i8 %i.lf, 10
  %i.lh = urem i8 %i.lf, 10
end_hunk_0
begin_hunk_1_@"_ZN89_$LT$chrono..format..formatting..DelayedFormat$LT$I$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h038586a5caeb314cE":bb.a
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc52.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc52.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i158.i.i"
  %i.yf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8239, !nonnull !7, !noundef !7
  %i.yg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8239, !noundef !7 ; 2 uses
  %i.yh = icmp sgt i64 %i.yg, -1
  call void @llvm.assume(i1 %i.yh)
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.yg
  store i8 %i.fw, ptr %i.yi, align 1, !noalias !8202
  %i.yj = add nuw i64 %i.yd, 1                    ; 2 uses
  store i64 %i.yj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8239
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i"

bb.bn:                                            ; preds = %bb.bm
  %i.yk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8240, !noundef !7 ; 2 uses
  %i.yl = icmp sgt i64 %i.yk, -1
  call void @llvm.assume(i1 %i.yl)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc53.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc53.i:                                       ; preds = %bb.bn
  %i.ym = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8240, !nonnull !7, !noundef !7
  %i.yn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8240, !noundef !7 ; 2 uses
  %i.yo = icmp sgt i64 %i.yn, -1
  call void @llvm.assume(i1 %i.yo)
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yn
  store i8 32, ptr %i.yp, align 1, !noalias !8202
  %i.yq = add nuw i64 %i.yk, 1                    ; 2 uses
  store i64 %i.yq, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8240
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i": ; preds = %.noexc53.i, %.noexc52.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i159.i.i"
  %i.yr = phi i64 [ %.pre.i161.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i159.i.i" ], [ %i.yq, %.noexc53.i ], [ %i.yj, %.noexc52.i ] ; 2 uses
  %i.ys = icmp sgt i64 %i.yr, -1
  call void @llvm.assume(i1 %i.ys)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc54.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc54.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit163.i.i"
  %i.yt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8238, !nonnull !7, !noundef !7
  %i.yu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8238, !noundef !7 ; 2 uses
  %i.yv = icmp sgt i64 %i.yu, -1
  call void @llvm.assume(i1 %i.yv)
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.yu
  store i8 %i.fy, ptr %i.yw, align 1, !noalias !8202
  %i.yx = add nuw i64 %i.yr, 1
  store i64 %i.yx, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8238
  br label %.critedge.i

bb.bo:                                            ; preds = %bb.v
  br i1 %i.hs, label %bb.bp, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i"

bb.bp:                                            ; preds = %bb.bo
  switch i8 %i.ke, label %default.unreachable [
    i8 0, label %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i165.i.i"
    i8 2, label %bb.bq
    i8 1, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i"
  ]

"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i165.i.i": ; preds = %bb.bp
  %.pre.i167.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8241
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i": ; preds = %bb.bp, %bb.bo
  %i.yy = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8242, !noundef !7 ; 2 uses
  %i.yz = icmp sgt i64 %i.yy, -1
  call void @llvm.assume(i1 %i.yz)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc55.i:                                       ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i164.i.i"
  %i.za = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8242, !nonnull !7, !noundef !7
  %i.zb = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8242, !noundef !7 ; 2 uses
  %i.zc = icmp sgt i64 %i.zb, -1
  call void @llvm.assume(i1 %i.zc)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zb
  store i8 %i.gx, ptr %i.zd, align 1, !noalias !8202
  %i.ze = add nuw i64 %i.yy, 1                    ; 2 uses
  store i64 %i.ze, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8242
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i"

bb.bq:                                            ; preds = %bb.bp
  %i.zf = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8243, !noundef !7 ; 2 uses
  %i.zg = icmp sgt i64 %i.zf, -1
  call void @llvm.assume(i1 %i.zg)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc56.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc56.i:                                       ; preds = %bb.bq
  %i.zh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8243, !nonnull !7, !noundef !7
  %i.zi = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8243, !noundef !7 ; 2 uses
  %i.zj = icmp sgt i64 %i.zi, -1
  call void @llvm.assume(i1 %i.zj)
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 %i.zi
  store i8 32, ptr %i.zk, align 1, !noalias !8202
  %i.zl = add nuw i64 %i.zf, 1                    ; 2 uses
  store i64 %i.zl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8243
  br label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i"

"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i": ; preds = %.noexc56.i, %.noexc55.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i165.i.i"
  %i.zm = phi i64 [ %.pre.i167.i.i, %"._ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit2_crit_edge.i165.i.i" ], [ %i.zl, %.noexc56.i ], [ %i.ze, %.noexc55.i ] ; 2 uses
  %i.zn = icmp sgt i64 %i.zm, -1
  call void @llvm.assume(i1 %i.zn)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef 1)
          to label %.noexc57.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc57.i:                                       ; preds = %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric9write_two17hb8a82aa68ce206e3E.exit169.i.i"
  %i.zo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8241, !nonnull !7, !noundef !7
  %i.zp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8241, !noundef !7 ; 2 uses
  %i.zq = icmp sgt i64 %i.zp, -1
  call void @llvm.assume(i1 %i.zq)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.zp
  store i8 %i.gz, ptr %i.zr, align 1, !noalias !8202
  %i.zs = add nuw i64 %i.zm, 1
  store i64 %i.zs, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8241
  br label %.critedge.i

bb.br:                                            ; preds = %bb.b
  %.val6.i = load i8, ptr %i.bd, align 1, !range !8244, !noalias !8193, !noundef !7 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8245)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !8193
  %i.zt = add nsw i8 %.val6.i, -4
  %i.zu = icmp samesign ugt i8 %.val6.i, 3
  %narrow.i61.i = select i1 %i.zu, i8 %i.zt, i8 19 ; 2 uses
  switch i8 %narrow.i61.i, label %bb.bs [
    i8 0, label %bb.bt
    i8 1, label %bb.bu
    i8 2, label %bb.bv
    i8 3, label %bb.bw
    i8 4, label %bb.bx
    i8 5, label %bb.by
    i8 6, label %bb.bz
    i8 7, label %bb.ca
    i8 8, label %bb.cb
    i8 9, label %bb.cc
    i8 10, label %bb.cd
    i8 19, label %bb.ce
  ]

bb.bs:                                            ; preds = %bb.dp, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.br
  br i1 %.not.i60.i, label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric17h666d79de0ff1ab3bE.exit.thread.sink.split.i", label %bb.du

bb.bt:                                            ; preds = %bb.br
  br i1 %.not138.i.i, label %bb.cf, label %bb.bs

bb.bu:                                            ; preds = %bb.br
  br i1 %.not138.i.i, label %bb.ci, label %bb.bs

bb.bv:                                            ; preds = %bb.br
  br i1 %.not138.i.i, label %bb.cl, label %bb.bs

bb.bw:                                            ; preds = %bb.br
  br i1 %.not138.i.i, label %bb.cm, label %bb.bs

bb.bx:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.cn, label %bb.bs

bb.by:                                            ; preds = %bb.br
  br i1 %i.bi, label %.invoke282.i, label %bb.bs

bb.bz:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.df, label %bb.bs

bb.ca:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.dl, label %bb.bs

bb.cb:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.dm, label %bb.bs

bb.cc:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.dn, label %bb.bs

bb.cd:                                            ; preds = %bb.br
  br i1 %.not.i60.i, label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$14format_numeric17h666d79de0ff1ab3bE.exit.thread.sink.split.i", label %bb.do

bb.ce:                                            ; preds = %bb.br
  br i1 %i.bi, label %bb.dp, label %bb.bs

bb.cf:                                            ; preds = %bb.bt
  br i1 %i.ek, label %bb.cg, label %.invoke284.i

bb.cg:                                            ; preds = %bb.cf
  %i.zv = load i8, ptr %i.el, align 1, !noalias !8246, !noundef !7
  %i.zw = zext i8 %i.zv to i32
  %i.zx = add nuw nsw i32 %i.ei, %i.zw
  %i.zy = lshr i32 %i.zx, 6
  %i.zz = add nsw i32 %i.zy, -1                   ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = icmp ult i32 %i.zz, 12
  br i1 %i.aab, label %bb.ch, label %.invoke284.i

bb.ch:                                            ; preds = %bb.cg
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr @930, i64 %i.aaa
  %i.aad = load ptr, ptr %i.aac, align 8, !noalias !8246, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 3
  br label %.invoke282.i

.invoke282.i:                                     ; preds = %bb.by, %bb.cm, %bb.cl, %bb.ck, %bb.ch
  %i.aaf = phi ptr [ %i.aad, %bb.ch ], [ %i.aap, %bb.ck ], [ %i.aat, %bb.cl ], [ %i.aav, %bb.cm ], [ %.146.i.i, %bb.by ]
  %i.aag = phi ptr [ %i.aae, %bb.ch ], [ %i.aas, %bb.ck ], [ %i.aau, %bb.cl ], [ %i.aax, %bb.cm ], [ %.285.i, %bb.by ]
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 1 %i.aaf, ptr noundef nonnull readonly %i.aag)
          to label %"_ZN6chrono6format10formatting22DelayedFormat$LT$I$GT$12format_fixed17h613322555a4b9faeE.exit.thread.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ci:                                            ; preds = %bb.bu
  br i1 %i.ek, label %bb.cj, label %.invoke284.i

bb.cj:                                            ; preds = %bb.ci
  %i.aah = load i8, ptr %i.el, align 1, !noalias !8246, !noundef !7
  %i.aai = zext i8 %i.aah to i32
  %i.aaj = add nuw nsw i32 %i.ei, %i.aai
  %i.aak = lshr i32 %i.aaj, 6
  %i.aal = add nsw i32 %i.aak, -1                 ; 2 uses
  %i.aam = zext i32 %i.aal to i64                 ; 2 uses
  %i.aan = icmp ult i32 %i.aal, 12
  br i1 %i.aan, label %bb.ck, label %.invoke284.i

bb.ck:                                            ; preds = %bb.cj
  %i.aao = getelementptr inbounds nuw [16 x i8], ptr @951, i64 %i.aam ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !8246, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aar = load i64, ptr %i.aaq, align 8, !noalias !8246, !noundef !7
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aar
  br label %.invoke282.i

bb.cl:                                            ; preds = %bb.bv
  %i.aat = load ptr, ptr %i.eg, align 8, !noalias !8246, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 3
  br label %.invoke282.i

bb.cm:                                            ; preds = %bb.bw
  %i.aav = load ptr, ptr %i.ee, align 8, !noalias !8246, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aaw = load i64, ptr %i.ef, align 8, !noalias !8246, !noundef !7
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aaw
  br label %.invoke282.i

bb.cn:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !8246
  store i64 0, ptr %i.aw, align 8, !noalias !8246
  store i64 0, ptr %.sroa.076.sroa.3.0..sroa_idx.i.i, align 8, !noalias !8246
  store ptr %.146.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !8246
  store ptr %2, ptr %.sroa.377.0..sroa_idx.i.i, align 8, !noalias !8246
  br label %.peel.begin.i.i

.peel.begin.i.i:                                  ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i66.i", %bb.cn
  %.pre.i.i64.i = phi i64 [ %.pre.i.pre.i.i, %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E.exit.i66.i" ], [ 0, %bb.cn ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8247)
  %i.aay = trunc nuw i64 %.pre.i.i64.i to i1
  br i1 %i.aay, label %.noexc.peel.i.i, label %bb.cp

.noexc.peel.i.i:                                  ; preds = %.peel.begin.i.i
  %i.aaz = invoke noundef range(i32 0, 1114113) i32 @"_ZN82_$LT$core..char..ToLowercase$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5522ce30a137c387E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.i ; 2 uses

.noexc76.i:                                       ; preds = %.noexc.peel.i.i
  %.not.i.i.peel.i.i = icmp eq i32 %i.aaz, 1114112
  br i1 %.not.i.i.peel.i.i, label %bb.co, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f64cfaf0a9ea935E.exit.i.i"

bb.co:                                            ; preds = %.noexc76.i
  store i64 0, ptr %i.aw, align 8, !alias.scope !8248, !noalias !8246
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.peel.begin.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8249)
  %i.aba = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8250, !noalias !8246, !noundef !7 ; 7 uses
  %.not.i5.i.peel.i.i = icmp eq ptr %i.aba, null
  br i1 %.not.i5.i.peel.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread.i.i.i", label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8252
  call void @llvm.experimental.noalias.scope.decl(metadata !8253)
  call void @llvm.experimental.noalias.scope.decl(metadata !8254)
  %i.abb = load ptr, ptr %.sroa.377.0..sroa_idx.i.i, align 8, !alias.scope !8255, !noalias !8246, !nonnull !7, !noundef !7 ; 4 uses
  %.not.i.i.i.i.peel.i.i = icmp eq ptr %i.aba, %i.abb
  br i1 %.not.i.i.i.i.peel.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread22.i.i.i", label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 1 ; 3 uses
  store ptr %i.abc, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8255, !noalias !8246
  %i.abd = load i8, ptr %i.aba, align 1, !noalias !8256, !noundef !7 ; 5 uses
  %i.abe = icmp sgt i8 %i.abd, -1
  br i1 %i.abe, label %bb.cs, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.peel.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.peel.i.i": ; preds = %bb.cr
  %i.abf = and i8 %i.abd, 31
  %i.abg = zext nneg i8 %i.abf to i32             ; 3 uses
  %i.abh = icmp ne ptr %i.abc, %i.abb
  call void @llvm.assume(i1 %i.abh)
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aba, i64 2 ; 3 uses
  store ptr %i.abi, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8257, !noalias !8246
  %i.abj = load i8, ptr %i.abc, align 1, !noalias !8256, !noundef !7
  %i.abk = shl nuw nsw i32 %i.abg, 6
  %i.abl = and i8 %i.abj, 63
  %i.abm = zext nneg i8 %i.abl to i32             ; 2 uses
  %i.abn = or disjoint i32 %i.abk, %i.abm
  %i.abo = icmp samesign ugt i8 %i.abd, -33
  br i1 %i.abo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.peel.i.i", label %.noexc.i.i.preheader

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.peel.i.i"
  %i.abp = icmp ne ptr %i.abi, %i.abb
  call void @llvm.assume(i1 %i.abp)
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aba, i64 3 ; 3 uses
  store ptr %i.abq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8258, !noalias !8246
  %i.abr = load i8, ptr %i.abi, align 1, !noalias !8256, !noundef !7
  %i.abs = shl nuw nsw i32 %i.abm, 6
  %i.abt = and i8 %i.abr, 63
  %i.abu = zext nneg i8 %i.abt to i32
  %i.abv = or disjoint i32 %i.abs, %i.abu         ; 2 uses
  %i.abw = shl nuw nsw i32 %i.abg, 12
  %i.abx = or disjoint i32 %i.abv, %i.abw
  %i.aby = icmp samesign ugt i8 %i.abd, -17
  br i1 %i.aby, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.peel.i.i", label %.noexc.i.i.preheader

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.peel.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.peel.i.i"
  %i.abz = icmp ne ptr %i.abq, %i.abb
  call void @llvm.assume(i1 %i.abz)
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  store ptr %i.aca, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8259, !noalias !8246
  %i.acb = load i8, ptr %i.abq, align 1, !noalias !8256, !noundef !7
  %i.acc = shl nuw nsw i32 %i.abg, 18
  %i.acd = and i32 %i.acc, 1835008
  %i.ace = shl nuw nsw i32 %i.abv, 6
  %i.acf = and i8 %i.acb, 63
  %i.acg = zext nneg i8 %i.acf to i32
  %i.ach = or disjoint i32 %i.ace, %i.acg
  %i.aci = or disjoint i32 %i.ach, %i.acd         ; 2 uses
  %.not.i.i.i.peel.i.i = icmp eq i32 %i.aci, 1114112
  br i1 %.not.i.i.i.peel.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread22.i.i.i", label %.noexc.i.i.preheader

bb.cs:                                            ; preds = %bb.cr
  %i.acj = zext nneg i8 %i.abd to i32
  br label %.noexc.i.i.preheader

.noexc.i.i.preheader:                             ; preds = %bb.cs, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.peel.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.peel.i.i"
  %spec.select.i4.i.i.i.peel.sink.i.i.ph = phi i32 [ %i.abn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.peel.i.i" ], [ %i.abx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.peel.i.i" ], [ %i.aci, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.peel.i.i" ], [ %i.acj, %bb.cs ]
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i.backedge, %.noexc.i.i.preheader
  %spec.select.i4.i.i.i.peel.sink.i.i = phi i32 [ %spec.select.i4.i.i.i.peel.sink.i.i.ph, %.noexc.i.i.preheader ], [ %spec.select.i4.i.i.i.peel.sink.i.i.be, %.noexc.i.i.backedge ]
  invoke void @_ZN4core7unicode12unicode_data11conversions8to_lower17heaa09e0a0fa00871E(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.n, i32 noundef range(i32 0, 1114112) %spec.select.i4.i.i.i.peel.sink.i.i)
          to label %.noexc77.i unwind label %.loopexit.i

.noexc77.i:                                       ; preds = %.noexc.i.i
  %i.ack = load i32, ptr %i.du, align 8, !range !49, !noalias !8260, !noundef !7
  %i.acl = icmp eq i32 %i.ack, 0
  %i.acm = load i32, ptr %i.dv, align 4, !range !49, !noalias !8260
  %i.acn = icmp eq i32 %i.acm, 0
  %spec.select.i.i.i.i.i.peel.i.i = select i1 %i.acn, i64 1, i64 2
  %.sroa.4.0.i.i.i.i.i.peel.i.i = select i1 %i.acl, i64 %spec.select.i.i.i.i.i.peel.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.n, i64 12, i1 false), !noalias !8246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8261
  store i64 1, ptr %i.aw, align 8, !alias.scope !8247, !noalias !8246
  store i64 0, ptr %i.dt, align 8, !alias.scope !8247, !noalias !8246
  store i64 %.sroa.4.0.i.i.i.i.i.peel.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i, align 8, !alias.scope !8247, !noalias !8246
  %i.aco = invoke noundef range(i32 0, 1114113) i32 @"_ZN82_$LT$core..char..ToLowercase$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5522ce30a137c387E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %.noexc78.i unwind label %.loopexit.i ; 2 uses

.noexc78.i:                                       ; preds = %.noexc77.i
  %.not.i.i.i.i = icmp eq i32 %i.aco, 1114112
  br i1 %.not.i.i.i.i, label %bb.ct, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5f64cfaf0a9ea935E.exit.i.i"

bb.ct:                                            ; preds = %.noexc78.i
  store i64 0, ptr %i.aw, align 8, !alias.scope !8248, !noalias !8246
  call void @llvm.experimental.noalias.scope.decl(metadata !8262)
  %i.acp = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8263, !noalias !8246, !noundef !7 ; 7 uses
  %.not.i5.i.i.i = icmp eq ptr %i.acp, null
  br i1 %.not.i5.i.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !8264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !8265
  call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  call void @llvm.experimental.noalias.scope.decl(metadata !8267)
  %i.acq = load ptr, ptr %.sroa.377.0..sroa_idx.i.i, align 8, !alias.scope !8268, !noalias !8246, !nonnull !7, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.acp, %i.acq
  br i1 %.not.i.i.i.i.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread22.i.i.i", label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 1 ; 3 uses
  store ptr %i.acr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8268, !noalias !8246
  %i.acs = load i8, ptr %i.acp, align 1, !noalias !8269, !noundef !7 ; 5 uses
  %i.act = icmp sgt i8 %i.acs, -1
  br i1 %i.act, label %bb.cw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i": ; preds = %bb.cv
  %i.acu = and i8 %i.acs, 31
  %i.acv = zext nneg i8 %i.acu to i32             ; 3 uses
  %i.acw = icmp ne ptr %i.acr, %i.acq
  call void @llvm.assume(i1 %i.acw)
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acp, i64 2 ; 3 uses
  store ptr %i.acx, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8270, !noalias !8246
  %i.acy = load i8, ptr %i.acr, align 1, !noalias !8269, !noundef !7
  %i.acz = shl nuw nsw i32 %i.acv, 6
  %i.ada = and i8 %i.acy, 63
  %i.adb = zext nneg i8 %i.ada to i32             ; 2 uses
  %i.adc = or disjoint i32 %i.acz, %i.adb
  %i.add = icmp samesign ugt i8 %i.acs, -33
  br i1 %i.add, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i", label %.noexc.i.i.backedge

bb.cw:                                            ; preds = %bb.cv
  %i.ade = zext nneg i8 %i.acs to i32
  br label %.noexc.i.i.backedge

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i"
  %i.adf = icmp ne ptr %i.acx, %i.acq
  call void @llvm.assume(i1 %i.adf)
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acp, i64 3 ; 3 uses
  store ptr %i.adg, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8271, !noalias !8246
  %i.adh = load i8, ptr %i.acx, align 1, !noalias !8269, !noundef !7
  %i.adi = shl nuw nsw i32 %i.adb, 6
  %i.adj = and i8 %i.adh, 63
  %i.adk = zext nneg i8 %i.adj to i32
  %i.adl = or disjoint i32 %i.adi, %i.adk         ; 2 uses
  %i.adm = shl nuw nsw i32 %i.acv, 12
  %i.adn = or disjoint i32 %i.adl, %i.adm
  %i.ado = icmp samesign ugt i8 %i.acs, -17
  br i1 %i.ado, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i", label %.noexc.i.i.backedge

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i"
  %i.adp = icmp ne ptr %i.adg, %i.acq
  call void @llvm.assume(i1 %i.adp)
  %i.adq = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store ptr %i.adq, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !8272, !noalias !8246
  %i.adr = load i8, ptr %i.adg, align 1, !noalias !8269, !noundef !7
  %i.ads = shl nuw nsw i32 %i.acv, 18
  %i.adt = and i32 %i.ads, 1835008
  %i.adu = shl nuw nsw i32 %i.adl, 6
  %i.adv = and i8 %i.adr, 63
  %i.adw = zext nneg i8 %i.adv to i32
  %i.adx = or disjoint i32 %i.adu, %i.adw
  %i.ady = or disjoint i32 %i.adx, %i.adt         ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ady, 1114112
  br i1 %.not.i.i.i.i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread22.i.i.i", label %.noexc.i.i.backedge

.noexc.i.i.backedge:                              ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i", %bb.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i"
  %spec.select.i4.i.i.i.peel.sink.i.i.be = phi i32 [ %i.ady, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i" ], [ %i.adn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i" ], [ %i.adc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i" ], [ %i.ade, %bb.cw ]
  br label %.noexc.i.i, !llvm.loop !7998

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread22.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i", %bb.cu, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.peel.i.i", %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !8265
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17hc71239485e21b643E.exit.thread.i.i.i"
end_hunk_1
