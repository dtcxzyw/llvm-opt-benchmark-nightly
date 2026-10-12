Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.04?download=true
inline.NumInlined: 817
inline.NumDeleted: 335
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2220
  store i64 0, ptr %i.bg, align 8, !noalias !2220
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 103 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2220
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 176 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2220
  call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2223
  store ptr @183, ptr %i.bf, align 8, !noalias !2223
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2223
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2223
  invoke void @_RNvXs_NtNtCsff3niNi8lqe_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !2220

.noexc.i.i:                                       ; preds = %_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit
  %i.co = load i8, ptr %i.be, align 8, !range !2224, !noalias !2223, !noundef !5
  %.not242.not.i.i.i = icmp eq i8 %i.co, -1
  br i1 %.not242.not.i.i.i, label %.loopexit23.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.cq = load i64, ptr %i.bn, align 8, !range !8, !alias.scope !2225, !noalias !2226
  %.not.i66.i.i.i = icmp eq i64 %i.cq, -1         ; 2 uses
  %i.cr = urem i32 %i.cd, 1000000000              ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cs = udiv i32 %i.cd, 1000
  %i.ct = urem i32 %i.cs, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cu = udiv i32 %i.cd, 1000000
  %.lhs.trunc13.i.i.i.i = trunc nuw nsw i32 %i.cu to i16
  %i.cv = urem i16 %.lhs.trunc13.i.i.i.i, 1000
  %.zext14.i.i.i.i = zext nneg i16 %i.cv to i32   ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.476.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.4106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.4102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.498.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cw = icmp eq i32 %i.cr, 0
  %i.cx = urem i32 %i.cr, 1000000
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = urem i32 %i.cr, 1000
  %i.da = icmp eq i32 %i.cz, 0
  %.sroa.494.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.db = udiv i32 %i.cr, 1000
  %.sroa.490.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dc = udiv i32 %i.cr, 1000000
  %.sroa.486.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dd = icmp ugt i32 %i.cb, 43199               ; 3 uses
  %.146.i.i.i.i = select i1 %i.dd, ptr @48, ptr @47
  %i.de = select i1 %i.dd, ptr getelementptr inbounds nuw (i8, ptr @48, i64 2), ptr getelementptr inbounds nuw (i8, ptr @47, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.dj = lshr i32 %i.bz, 4
  %i.dk = and i32 %i.dj, 511                      ; 9 uses
  %i.dl = and i32 %i.bz, 7
  %i.dm = add nuw nsw i32 %i.dk, %i.dl
  %.lhs.trunc9.i.i.i.i = trunc nuw nsw i32 %i.dm to i16
  %i.dn = urem i16 %.lhs.trunc9.i.i.i.i, 7        ; 6 uses
  %i.do = icmp samesign ult i16 %i.dn, 6          ; 2 uses
  %narrow40.i.i.i.i = add nuw nsw i16 %i.dn, 1
  %narrow41.i.i.i.i = select i1 %i.do, i16 %narrow40.i.i.i.i, i16 0
  %i.dp = zext nneg i16 %narrow41.i.i.i.i to i64  ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr @46, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr @38, i64 %i.dp ; 2 uses
  %i.dt = lshr i32 %i.bz, 3                       ; 3 uses
  %i.du = and i32 %i.dt, 1023                     ; 8 uses
  %i.dv = zext nneg i32 %i.du to i64              ; 8 uses
  %i.dw = icmp samesign ult i32 %i.du, 733        ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr @13, i64 %i.dv ; 7 uses
  %i.dy = ashr i32 %i.bz, 13                      ; 13 uses
  %or.cond.i122.i.i.i = icmp ult i32 %i.dy, 10000 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.lhs.trunc.i126.i.i.i = trunc nuw nsw i32 %i.dy to i16 ; 2 uses
  %i.dz = udiv i16 %.lhs.trunc.i126.i.i.i, 100
  %i.ea = trunc nuw nsw i16 %i.dz to i8           ; 2 uses
  %i.eb = udiv i8 %i.ea, 10
  %i.ec = or disjoint i8 %i.eb, 48                ; 2 uses
  %i.ed = urem i8 %i.ea, 10
  %i.ee = or disjoint i8 %i.ed, 48                ; 2 uses
  %i.ef = urem i16 %.lhs.trunc.i126.i.i.i, 100
  %i.eg = trunc nuw nsw i16 %i.ef to i8           ; 2 uses
  %i.eh = udiv i8 %i.eg, 10
  %i.ei = or disjoint i8 %i.eh, 48                ; 2 uses
  %i.ej = urem i8 %i.eg, 10
  %i.ek = or disjoint i8 %i.ej, 48                ; 2 uses
  %i.el = trunc i32 %i.dt to i8                   ; 2 uses
  %i.em = udiv i32 %i.cb, 3600                    ; 2 uses
  %i.en = icmp ugt i32 %i.cd, 999999999           ; 2 uses
  %i.eo = add i32 %i.cd, -1000000000
  %storemerge.i.i.i.i = select i1 %i.en, i32 %i.eo, i32 %i.cd ; 6 uses
  %i.ep = trunc i32 %i.em to i8                   ; 4 uses
  %i.eq = icmp ugt i8 %i.ep, 99                   ; 2 uses
  %i.er = urem i32 %i.cb, 60                      ; 2 uses
  %i.es = zext i1 %i.en to i32
  %.sroa.04.0.i.i.i.i = add nuw nsw i32 %i.er, %i.es
  %i.et = udiv i32 %i.cb, 60
  %i.eu = urem i32 %i.et, 60                      ; 2 uses
  %i.ev = udiv i8 %i.ep, 10                       ; 2 uses
  %i.ew = or disjoint i8 %i.ev, 48                ; 2 uses
  %i.ex = trunc nuw nsw i32 %i.eu to i8           ; 2 uses
  %i.ey = udiv i8 %i.ex, 10
  %i.ez = or disjoint i8 %i.ey, 48                ; 3 uses
  %i.fa = trunc nuw nsw i32 %.sroa.04.0.i.i.i.i to i8 ; 2 uses
  %i.fb = udiv i8 %i.fa, 10
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = icmp eq i32 %storemerge.i.i.i.i, 0
  %i.fe = urem i32 %storemerge.i.i.i.i, 1000000
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = urem i32 %storemerge.i.i.i.i, 1000
  %i.fh = icmp eq i32 %i.fg, 0
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fi = udiv i32 %storemerge.i.i.i.i, 1000
  %.sroa.425.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fj = udiv i32 %storemerge.i.i.i.i, 1000000
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fk = udiv i32 %i.cd, 1000000000
  %i.fl = add nuw nsw i32 %i.fk, %i.er            ; 2 uses
  %i.fm = trunc nuw nsw i32 %i.fl to i8           ; 2 uses
  %i.fn = udiv i8 %i.fm, 10
  %i.fo = or disjoint i8 %i.fn, 48                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.fw = add nsw i32 %i.dy, -1
  %i.fx = icmp slt i32 %i.dy, 1                   ; 2 uses
  %i.fy = sub nsw i32 1, %i.dy
  %i.fz = udiv i32 %i.fy, 400
  %i.ga = add nuw nsw i32 %i.fz, 1                ; 2 uses
  %i.gb = mul nuw nsw i32 %i.ga, 400
  %.neg.i.i.i.i = mul nsw i32 %i.ga, -146097
  %i.gc = zext i32 %i.cb to i64
  %i.gd = add nuw nsw i32 %i.dk, -719163
  %.sroa.426.0..sroa_idx.i194.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.445.0..sroa_idx.i195.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.430.0..sroa_idx.i198.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.439.0..sroa_idx.i199.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.434.0..sroa_idx.i201.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gg = zext nneg i32 %i.cr to i64
  %.sroa.426.0..sroa_idx.i183.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.445.0..sroa_idx.i184.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.430.0..sroa_idx.i187.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.439.0..sroa_idx.i188.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.434.0..sroa_idx.i190.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.gj = icmp samesign ult i32 %i.fl, 10
  %i.gk = icmp samesign ult i32 %i.eu, 10
  %i.gl = urem i32 %i.em, 12                      ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  %i.gn = trunc nuw nsw i32 %i.gl to i8
  %i.go = select i1 %i.gm, i8 12, i8 %i.gn        ; 4 uses
  %.cmp9.i.i.i.i = icmp samesign ugt i8 %i.go, 9
  %i.gp = icmp samesign ult i8 %i.go, 10          ; 2 uses
  %i.gq = select i1 %.cmp9.i.i.i.i, i8 49, i8 48
  %.urem10.i.i.i.i = add nsw i8 %i.go, -10
  %i.gr = select i1 %i.gp, i8 %i.go, i8 %.urem10.i.i.i.i
  %i.gs = or disjoint i8 %i.gr, 48
  %i.gt = icmp ult i8 %i.ep, 10
  %i.gu = add nuw nsw i8 %i.ev, 48
  %i.gv = zext nneg i32 %i.dk to i64
  %.sroa.426.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.445.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.430.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.439.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %switch.idx.cast.i.i.i.i = trunc nuw nsw i16 %i.dn to i8
  %switch.offset.i.i.i.i = add nuw nsw i8 %switch.idx.cast.i.i.i.i, 49
  %i.gy = trunc i32 %i.bz to i8
  %i.gz = and i8 %i.gy, 15                        ; 4 uses
  %i.ha = trunc nuw nsw i32 %i.dk to i16
  %i.hb = add nuw nsw i16 %i.ha, 6
  %.lhs.trunc1.i142.i.i.i.i = sub nuw nsw i16 %i.hb, %i.dn ; 2 uses
  %i.hc = udiv i16 %.lhs.trunc1.i142.i.i.i.i, 7
  %i.hd = trunc nuw nsw i16 %i.hc to i8           ; 2 uses
  %i.he = udiv i8 %i.hd, 10
  %i.hf = icmp samesign ult i16 %.lhs.trunc1.i142.i.i.i.i, 70
  %2 = or disjoint i8 %i.he, 48
  %spec.select.i131.i.i.i.i = zext nneg i16 %i.dn to i32 ; 2 uses
  %i.hg = add nuw nsw i32 %spec.select.i131.i.i.i.i, 7
  %.pn.i.i.i.i.i = select i1 %i.do, i32 %i.hg, i32 %spec.select.i131.i.i.i.i
  %.sroa.0.0.neg.i.i.i.i.i = add nuw nsw i32 %i.dk, 6
  %i.hh = sub nsw i32 %.sroa.0.0.neg.i.i.i.i.i, %.pn.i.i.i.i.i
  %i.hi = trunc nsw i32 %i.hh to i16
  %.lhs.trunc1.i.i.i.i.i = add nsw i16 %i.hi, 6
  %i.hj = sdiv i16 %.lhs.trunc1.i.i.i.i.i, 7      ; 2 uses
  %i.hk = trunc nsw i16 %i.hj to i8               ; 2 uses
  %i.hl = udiv i8 %i.hk, 10
  %i.hm = icmp samesign ult i16 %i.hj, 10
  %i.hn = add nuw nsw i8 %i.hl, 48
  %i.ho = srem i32 %i.dy, 100                     ; 4 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %i.hq = add nsw i32 %i.ho, 100
  %spec.select.i.i.i.i.i = select i1 %i.hp, i32 %i.hq, i32 %i.ho ; 2 uses
  %i.hr = trunc nsw i32 %spec.select.i.i.i.i.i to i8 ; 2 uses
  %i.hs = udiv i8 %i.hr, 10
  %i.ht = icmp samesign ult i32 %spec.select.i.i.i.i.i, 10
  %i.hu = add nuw nsw i8 %i.hs, 48
  %i.hv = sdiv i32 %i.dy, 100
  %.lobit.i.i.i.i.i = ashr i32 %i.ho, 31
  %.sroa.0.0.i.i.i.i.i = add nsw i32 %.lobit.i.i.i.i.i, %i.hv
  %i.hw = trunc i32 %.sroa.0.0.i.i.i.i.i to i8    ; 3 uses
  %i.hx = udiv i8 %i.hw, 10
  %i.hy = icmp ult i8 %i.hw, 10
  %i.hz = add nuw nsw i8 %i.hx, 48
  %i.ia = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.ib = insertelement <8 x i8> %i.ia, i8 %i.ex, i64 1
  %i.ic = insertelement <8 x i8> %i.ib, i8 %i.fa, i64 2
  %i.id = insertelement <8 x i8> %i.ic, i8 %i.fm, i64 3
  %i.ie = insertelement <8 x i8> %i.id, i8 %i.hd, i64 4
  %i.if = insertelement <8 x i8> %i.ie, i8 %i.hk, i64 5
  %i.ig = insertelement <8 x i8> %i.if, i8 %i.hr, i64 6
  %i.ih = insertelement <8 x i8> %i.ig, i8 %i.hw, i64 7
  %i.ii = urem <8 x i8> %i.ih, splat (i8 10)      ; 8 uses
  %3 = extractelement <8 x i8> %i.ii, i64 0
  %4 = or disjoint i8 %3, 48                      ; 3 uses
  %5 = extractelement <8 x i8> %i.ii, i64 1
  %6 = or disjoint i8 %5, 48                      ; 3 uses
  %7 = extractelement <8 x i8> %i.ii, i64 2
  %8 = or disjoint i8 %7, 48
  %i.ij = extractelement <8 x i8> %i.ii, i64 3
  %i.ik = or disjoint i8 %i.ij, 48                ; 2 uses
  %i.il = extractelement <8 x i8> %i.ii, i64 4
  %i.im = or disjoint i8 %i.il, 48
  %i.in = extractelement <8 x i8> %i.ii, i64 5
  %i.io = or disjoint i8 %i.in, 48
  %i.ip = extractelement <8 x i8> %i.ii, i64 6
  %i.iq = or disjoint i8 %i.ip, 48
  %9 = extractelement <8 x i8> %i.ii, i64 7
  %10 = or disjoint i8 %9, 48
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 4 uses
  %spec.select.i.i.i = select i1 %i.fx, i32 %.neg.i.i.i.i, i32 0
  %i.is = select i1 %i.fx, i32 %i.gb, i32 0
  %spec.select244.i.i.i = add nsw i32 %i.fw, %i.is ; 2 uses
  %i.it = sdiv i32 %spec.select244.i.i.i, 100     ; 2 uses
  %i.iu = mul nsw i32 %spec.select244.i.i.i, 1461
  %i.iv = ashr i32 %i.iu, 2
  %i.iw = ashr i32 %i.it, 2
  %i.ix = add i32 %i.gd, %spec.select.i.i.i
  %i.iy = sub i32 %i.ix, %i.it
  %i.iz = add i32 %i.iy, %i.iv
  %narrow.i.i.i.i = add i32 %i.iz, %i.iw
  %i.ja = sext i32 %narrow.i.i.i.i to i64
  %i.jb = mul nsw i64 %i.ja, 86400
  %i.jc = add nsw i64 %i.jb, %i.gc
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.jh = insertelement <2 x ptr> poison, ptr %.146.i.i.i.i, i64 0
  %i.ji = insertelement <2 x ptr> %i.jh, ptr %i.de, i64 1
  %i.jj = shl nuw nsw i16 %i.dn, 3
  %switch.shiftamt = zext nneg i16 %i.jj to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.h

.loopexit.i.i.i:                                  ; preds = %.noexc84.i.i.i, %.noexc.i.i.i.i4
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %.noexc163.i.i.i.i, %.noexc162.i.i.i.i, %.noexc160.i.i.i.i, %.noexc.peel.i.i.i.i
  %lpad.loopexit196.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i: ; preds = %bb.dc, %bb.da, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i, %bb.cx, %.noexc146.i.i.i, %.noexc145.i.i.i, %.noexc144.i.i.i, %.noexc143.i.i.i, %.noexc142.i.i.i, %.noexc141.i.i.i, %.noexc140.i.i.i, %bb.cw, %.noexc137.i.i.i, %.noexc136.i.i.i, %.noexc135.i.i.i, %.noexc134.i.i.i, %.noexc133.i.i.i, %bb.cv, %.noexc131.i.i.i, %.noexc130.i.i.i, %.noexc129.i.i.i, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i, %bb.cu, %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i, %.noexc182.i.i.i, %.noexc181.i.i.i, %.noexc180.i.i.i, %.noexc179.i.i.i, %.noexc178.i.i.i, %.noexc177.i.i.i, %.noexc176.i.i.i, %.noexc175.i.i.i, %.noexc174.i.i.i, %bb.cr, %.noexc171.i.i.i, %.noexc170.i.i.i, %.noexc169.i.i.i, %.noexc168.i.i.i, %.noexc167.i.i.i, %.noexc166.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i, %bb.cq, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i, %.noexc162.i.i.i, %bb.cp, %.noexc159.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit206.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit202.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit198.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit194.i.i.i.i, %.noexc98.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit190.i.i.i.i, %.noexc96.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit185.i.i.i.i, %.noexc94.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit180.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit175.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit171.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i, %bb.ce, %bb.cc, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit159.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i, %bb.bf, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i, %bb.bc, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i, %bb.az, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i, %bb.aw, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i, %switch.lookup.i.i.i.i, %switch.lookup, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i, %bb.as, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i, %bb.aq, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i, %bb.ap, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i, %bb.am, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i, %bb.aj, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i, %bb.af, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i, %bb.ab, %bb.aa, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i, %bb.x, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i, %bb.v, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i, %bb.u, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i, %bb.s, %bb.r, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i, %bb.q, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %bb.n, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i, %.noexc11.i.i, %.noexc10.i.i, %.noexc9.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i, %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
  %lpad.loopexit199.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i: ; preds = %.invoke290.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit196.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit199.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bd) #24, !noalias !2227
  br label %.body.i.i

bb.h:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !2223
  %i.jk = load i8, ptr %i.bd, align 8, !range !23, !noalias !2223, !noundef !5
  switch i8 %i.jk, label %default.unreachable [
    i8 0, label %bb.da
    i8 1, label %bb.dc
    i8 2, label %bb.da
    i8 3, label %bb.dc
    i8 4, label %bb.i
    i8 5, label %bb.bh
    i8 6, label %.loopexit.i.i
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i, %bb.bg, %bb.be, %bb.bb, %bb.ay, %bb.av, %bb.at, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.ae, %bb.w, %bb.t, %bb.p, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.jl = load i8, ptr %i.fv, align 2, !range !11, !noalias !2223, !noundef !5 ; 18 uses
  %.val.i.i.i = load i8, ptr %i.cp, align 1, !range !2228, !noalias !2223, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  switch i8 %.val.i.i.i, label %default.unreachable [
    i8 0, label %.invoke.i.i.i
    i8 1, label %bb.l
    i8 2, label %bb.o
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.v
    i8 6, label %bb.y
    i8 7, label %bb.ac
    i8 8, label %bb.ag
    i8 9, label %bb.ak
    i8 10, label %bb.an
    i8 11, label %bb.aq
    i8 12, label %switch.lookup
    i8 13, label %switch.lookup.i.i.i.i
    i8 14, label %bb.at
    i8 15, label %bb.au
    i8 16, label %bb.ax
    i8 17, label %bb.ba
    i8 18, label %bb.bd
    i8 19, label %bb.bg
    i8 20, label %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  ]

.invoke.i.i.i:                                    ; preds = %bb.i, %.noexc12.i.i.i
  %i.jm = phi i32 [ %i.ma, %.noexc12.i.i.i ], [ %i.dy, %bb.i ] ; 4 uses
  %i.jn = add nsw i32 %i.jm, -1000
  %or.cond.i.i.i = icmp ult i32 %i.jn, 9000
  br i1 %or.cond.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i: ; preds = %.invoke.i.i.i
  %i.jo = sext i32 %i.jm to i64
  %spec.select.i.i7.i.i = icmp ugt i32 %i.jm, 9999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2220
  store i64 %i.jo, ptr %i.h, align 8, !noalias !2230
  br i1 %spec.select.i.i7.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  ]

bb.k:                                             ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2230
  store ptr %i.h, ptr %i.d, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jp = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.d)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc13.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jp, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2230
  store ptr %i.h, ptr %i.c, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.je, align 8, !noalias !2230
  store i16 4, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jq = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.c)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc14.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jq, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2230
  store ptr %i.h, ptr %i.b, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.jd, align 8, !noalias !2230
  store i16 4, ptr %.sroa.445.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jr = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.b)
          to label %.noexc15.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc15.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jr, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2230
  store ptr %i.h, ptr %i.g, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.js = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @82, ptr noundef nonnull %i.g)
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc16.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit60.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.js, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2230
  store ptr %i.h, ptr %i.f, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.jg, align 8, !noalias !2230
  store i16 5, ptr %.sroa.415.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.jt = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @83, ptr noundef nonnull %i.f)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2230
  store ptr %i.h, ptr %i.e, align 8, !noalias !2230
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2230
  store ptr null, ptr %i.jf, align 8, !noalias !2230
  store i16 5, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !2230
  %i.ju = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @84, ptr noundef nonnull %i.e)
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc18.i.i:                                     ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit68.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.ju, label %.loopexit.i.i, label %.critedge.i.i.i

.noexc8.i.i:                                      ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit64.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2220
  br i1 %i.jt, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i: ; preds = %.invoke.i.i.i
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %i.jm to i16 ; 2 uses
  %i.jv = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220, !noundef !5 ; 6 uses
  %i.jw = icmp sgt i64 %i.jv, -1
  call void @llvm.assume(i1 %i.jw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc9.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc9.i.i:                                      ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i2.i.i.i
  %i.jx = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.jy = urem i16 %.lhs.trunc.i.i.i, 100
  %i.jz = trunc nuw nsw i16 %i.jx to i8           ; 2 uses
  %i.ka = udiv i8 %i.jz, 10
  %i.kb = urem i8 %i.jz, 10
  %i.kc = or disjoint i8 %i.ka, 48
  %i.kd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220, !nonnull !5, !noundef !5
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv
  store i8 %i.kc, ptr %i.ke, align 1, !noalias !2227
  %i.kf = add nuw nsw i64 %i.jv, 1                ; 2 uses
  store i64 %i.kf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2231, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc10.i.i:                                     ; preds = %.noexc9.i.i
  %i.kg = or disjoint i8 %i.kb, 48
  %i.kh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2232, !noalias !2220, !nonnull !5, !noundef !5
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kf
  store i8 %i.kg, ptr %i.ki, align 1, !noalias !2227
  %i.kj = add nuw nsw i64 %i.jv, 2                ; 2 uses
  store i64 %i.kj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2232, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc11.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc11.i.i:                                     ; preds = %.noexc10.i.i
  %i.kk = trunc nuw nsw i16 %i.jy to i8           ; 2 uses
  %i.kl = udiv i8 %i.kk, 10
  %i.km = urem i8 %i.kk, 10
  %i.kn = or disjoint i8 %i.kl, 48
  %i.ko = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2233, !noalias !2220, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kj
  store i8 %i.kn, ptr %i.kp, align 1, !noalias !2227
  %i.kq = add nuw i64 %i.jv, 3                    ; 2 uses
  store i64 %i.kq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2233, !noalias !2220
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i: ; preds = %.noexc11.i.i
  %i.kr = or disjoint i8 %i.km, 48
  %i.ks = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2234, !noalias !2220, !nonnull !5, !noundef !5
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kq
  store i8 %i.kr, ptr %i.kt, align 1, !noalias !2227
  %i.ku = add nuw i64 %i.jv, 4
  store i64 %i.ku, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2234, !noalias !2220
  br label %.critedge.i.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.hy, label %bb.m, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i
    i8 2, label %bb.n
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i: ; preds = %bb.m
  %.pre.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.kv = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236, !noundef !5 ; 3 uses
  %i.kw = icmp sgt i64 %i.kv, -1
  call void @llvm.assume(i1 %i.kw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc6.i.i.i:                                    ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i.i
  %i.kx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236, !nonnull !5, !noundef !5
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 %i.hz, ptr %i.ky, align 1, !noalias !2238
  %i.kz = add nuw i64 %i.kv, 1                    ; 2 uses
  store i64 %i.kz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2237, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.la = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236, !noundef !5 ; 3 uses
  %i.lb = icmp sgt i64 %i.la, -1
  call void @llvm.assume(i1 %i.lb)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc7.i.i.i:                                    ; preds = %bb.n
  %i.lc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236, !nonnull !5, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  store i8 32, ptr %i.ld, align 1, !noalias !2238
  %i.le = add nuw i64 %i.la, 1                    ; 2 uses
  store i64 %i.le, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2239, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %.noexc7.i.i.i, %.noexc6.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i
  %i.lf = phi i64 [ %.pre.i.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i.i.i.i.i ], [ %i.le, %.noexc7.i.i.i ], [ %i.kz, %.noexc6.i.i.i ] ; 3 uses
  %i.lg = icmp sgt i64 %i.lf, -1
  call void @llvm.assume(i1 %i.lg)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc8.i.i.i:                                    ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i
  %i.lh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236, !nonnull !5, !noundef !5
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lf
  store i8 %10, ptr %i.li, align 1, !noalias !2238
  %i.lj = add nuw i64 %i.lf, 1
  store i64 %i.lj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2235, !noalias !2236
  br label %.critedge.i.i.i

bb.o:                                             ; preds = %bb.i
  br i1 %i.ht, label %bb.p, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i

bb.p:                                             ; preds = %bb.o
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i
    i8 2, label %bb.q
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i: ; preds = %bb.p
  %.pre.i101.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.lk = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236, !noundef !5 ; 3 uses
  %i.ll = icmp sgt i64 %i.lk, -1
  call void @llvm.assume(i1 %i.ll)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc9.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc9.i.i.i:                                    ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i98.i.i.i.i
  %i.lm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236, !nonnull !5, !noundef !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lk
  store i8 %i.hu, ptr %i.ln, align 1, !noalias !2238
  %i.lo = add nuw i64 %i.lk, 1                    ; 2 uses
  store i64 %i.lo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2241, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.lp = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236, !noundef !5 ; 3 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  call void @llvm.assume(i1 %i.lq)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc10.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc10.i.i.i:                                   ; preds = %bb.q
  %i.lr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236, !nonnull !5, !noundef !5
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  store i8 32, ptr %i.ls, align 1, !noalias !2238
  %i.lt = add nuw i64 %i.lp, 1                    ; 2 uses
  store i64 %i.lt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2242, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i: ; preds = %.noexc10.i.i.i, %.noexc9.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i
  %i.lu = phi i64 [ %.pre.i101.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i99.i.i.i.i ], [ %i.lt, %.noexc10.i.i.i ], [ %i.lo, %.noexc9.i.i.i ] ; 3 uses
  %i.lv = icmp sgt i64 %i.lu, -1
  call void @llvm.assume(i1 %i.lv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc11.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit103.i.i.i.i
  %i.lw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236, !nonnull !5, !noundef !5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 %i.iq, ptr %i.lx, align 1, !noalias !2238
  %i.ly = add nuw i64 %i.lu, 1
  store i64 %i.ly, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2240, !noalias !2236
  br label %.critedge.i.i.i

bb.r:                                             ; preds = %bb.i
  %i.lz = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc12.i.i.i:                                   ; preds = %bb.r
  %i.ma = ashr i32 %i.lz, 10
  br label %.invoke.i.i.i

bb.s:                                             ; preds = %bb.i
  %i.mb = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc14.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc14.i.i.i:                                   ; preds = %bb.s
  %i.mc = ashr i32 %i.mb, 10                      ; 2 uses
  %i.md = sdiv i32 %i.mc, 100
  %i.me = srem i32 %i.mc, 100
  %.lobit.i104.i.i.i.i = ashr i32 %i.me, 31
  %.sroa.0.0.i105.i.i.i.i = add nsw i32 %.lobit.i104.i.i.i.i, %i.md
  %i.mf = trunc i32 %.sroa.0.0.i105.i.i.i.i to i8 ; 3 uses
  %i.mg = udiv i8 %i.mf, 10
  %i.mh = urem i8 %i.mf, 10
  %i.mi = icmp ult i8 %i.mf, 10
  br i1 %i.mi, label %bb.t, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i

bb.t:                                             ; preds = %.noexc14.i.i.i
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i
    i8 2, label %bb.u
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i: ; preds = %bb.t
  %.pre.i109.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i: ; preds = %bb.t, %.noexc14.i.i.i
  %i.mj = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236, !noundef !5 ; 3 uses
  %i.mk = icmp sgt i64 %i.mj, -1
  call void @llvm.assume(i1 %i.mk)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc15.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i106.i.i.i.i
  %i.ml = add nuw nsw i8 %i.mg, 48
  %i.mm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236, !nonnull !5, !noundef !5
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mj
  store i8 %i.ml, ptr %i.mn, align 1, !noalias !2238
  %i.mo = add nuw i64 %i.mj, 1                    ; 2 uses
  store i64 %i.mo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2244, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.mp = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236, !noundef !5 ; 3 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  call void @llvm.assume(i1 %i.mq)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc16.i.i.i:                                   ; preds = %bb.u
  %i.mr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236, !nonnull !5, !noundef !5
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mp
  store i8 32, ptr %i.ms, align 1, !noalias !2238
  %i.mt = add nuw i64 %i.mp, 1                    ; 2 uses
  store i64 %i.mt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2245, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i: ; preds = %.noexc16.i.i.i, %.noexc15.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i
  %i.mu = phi i64 [ %.pre.i109.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i107.i.i.i.i ], [ %i.mt, %.noexc16.i.i.i ], [ %i.mo, %.noexc15.i.i.i ] ; 3 uses
  %i.mv = icmp sgt i64 %i.mu, -1
  call void @llvm.assume(i1 %i.mv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc17.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit111.i.i.i.i
  %i.mw = or disjoint i8 %i.mh, 48
  %i.mx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236, !nonnull !5, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mu
  store i8 %i.mw, ptr %i.my, align 1, !noalias !2238
  %i.mz = add nuw i64 %i.mu, 1
  store i64 %i.mz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2243, !noalias !2236
  br label %.critedge.i.i.i

bb.v:                                             ; preds = %bb.i
  %i.na = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc18.i.i.i:                                   ; preds = %bb.v
  %i.nb = ashr i32 %i.na, 10
  %i.nc = srem i32 %i.nb, 100                     ; 3 uses
  %i.nd = icmp slt i32 %i.nc, 0
  %i.ne = add nsw i32 %i.nc, 100
  %spec.select.i112.i.i.i.i = select i1 %i.nd, i32 %i.ne, i32 %i.nc ; 2 uses
  %i.nf = trunc nuw nsw i32 %spec.select.i112.i.i.i.i to i8 ; 2 uses
  %i.ng = udiv i8 %i.nf, 10
  %i.nh = urem i8 %i.nf, 10
  %i.ni = icmp samesign ult i32 %spec.select.i112.i.i.i.i, 10
  br i1 %i.ni, label %bb.w, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i

bb.w:                                             ; preds = %.noexc18.i.i.i
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i
    i8 2, label %bb.x
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i: ; preds = %bb.w
  %.pre.i116.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i: ; preds = %bb.w, %.noexc18.i.i.i
  %i.nj = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236, !noundef !5 ; 3 uses
  %i.nk = icmp sgt i64 %i.nj, -1
  call void @llvm.assume(i1 %i.nk)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc19.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i113.i.i.i.i
  %i.nl = add nuw nsw i8 %i.ng, 48
  %i.nm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236, !nonnull !5, !noundef !5
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nj
  store i8 %i.nl, ptr %i.nn, align 1, !noalias !2238
  %i.no = add nuw i64 %i.nj, 1                    ; 2 uses
  store i64 %i.no, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2247, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.np = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236, !noundef !5 ; 3 uses
  %i.nq = icmp sgt i64 %i.np, -1
  call void @llvm.assume(i1 %i.nq)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc20.i.i.i:                                   ; preds = %bb.x
  %i.nr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236, !nonnull !5, !noundef !5
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.np
  store i8 32, ptr %i.ns, align 1, !noalias !2238
  %i.nt = add nuw i64 %i.np, 1                    ; 2 uses
  store i64 %i.nt, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2248, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i: ; preds = %.noexc20.i.i.i, %.noexc19.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i
  %i.nu = phi i64 [ %.pre.i116.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i.i.i ], [ %i.nt, %.noexc20.i.i.i ], [ %i.no, %.noexc19.i.i.i ] ; 3 uses
  %i.nv = icmp sgt i64 %i.nu, -1
  call void @llvm.assume(i1 %i.nv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc21.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc21.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit118.i.i.i.i
  %i.nw = or disjoint i8 %i.nh, 48
  %i.nx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236, !nonnull !5, !noundef !5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.nu
  store i8 %i.nw, ptr %i.ny, align 1, !noalias !2238
  %i.nz = add nuw i64 %i.nu, 1
  store i64 %i.nz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2246, !noalias !2236
  br label %.critedge.i.i.i

bb.y:                                             ; preds = %bb.i
  br i1 %i.dw, label %bb.z, label %.invoke290.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.oa = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.ob = zext i8 %i.oa to i32
  %i.oc = add nuw nsw i32 %i.du, %i.ob
  %i.od = lshr i32 %i.oc, 6
  %i.oe = add nsw i32 %i.od, -1
  %i.of = udiv i32 %i.oe, 3
  %i.og = add nuw nsw i32 %i.of, 49               ; 2 uses
  %i.oh = and i32 %i.og, 255                      ; 2 uses
  %i.oi = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2250, !noalias !2236, !noundef !5 ; 4 uses
  %i.oj = icmp sgt i64 %i.oi, -1
  call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp samesign ult i32 %i.oh, 128
  %i.ol = trunc i32 %i.og to i8                   ; 2 uses
  br i1 %i.ok, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 2)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc22.i.i.i:                                   ; preds = %bb.aa
  %i.om = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2250, !noalias !2236, !nonnull !5, !noundef !5
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.oi ; 2 uses
  %i.oo = and i8 %i.ol, 63
  %i.op = or disjoint i8 %i.oo, -128
  %i.oq = lshr i32 %i.oh, 6
  %i.or = trunc nuw nsw i32 %i.oq to i8
  %i.os = or disjoint i8 %i.or, -64
  store i8 %i.os, ptr %i.on, align 1, !noalias !2238
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  store i8 %i.op, ptr %i.ot, align 1, !noalias !2238
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

end_hunk_0
begin_hunk_1_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  unreachable

bb.ac:                                            ; preds = %bb.i
  br i1 %i.dw, label %bb.ad, label %.invoke290.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.pa = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.pb = zext i8 %i.pa to i32
  %i.pc = add nuw nsw i32 %i.du, %i.pb            ; 3 uses
  %i.pd = lshr i32 %i.pc, 6
  %i.pe = trunc nuw nsw i32 %i.pd to i8           ; 2 uses
  %.cmp.i.i.i.i = icmp samesign ugt i32 %i.pc, 639
  %i.pf = icmp samesign ult i32 %i.pc, 640        ; 2 uses
  br i1 %i.pf, label %bb.ae, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i
    i8 2, label %bb.af
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i: ; preds = %bb.ae
  %.pre.i122.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.pg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236, !noundef !5 ; 3 uses
  %i.ph = icmp sgt i64 %i.pg, -1
  call void @llvm.assume(i1 %i.ph)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc25.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i119.i.i.i.i
  %i.pi = select i1 %.cmp.i.i.i.i, i8 49, i8 48
  %i.pj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236, !nonnull !5, !noundef !5
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pg
  store i8 %i.pi, ptr %i.pk, align 1, !noalias !2238
  %i.pl = add nuw i64 %i.pg, 1                    ; 2 uses
  store i64 %i.pl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2252, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.pm = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236, !noundef !5 ; 3 uses
  %i.pn = icmp sgt i64 %i.pm, -1
  call void @llvm.assume(i1 %i.pn)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc26.i.i.i:                                   ; preds = %bb.af
  %i.po = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236, !nonnull !5, !noundef !5
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pm
  store i8 32, ptr %i.pp, align 1, !noalias !2238
  %i.pq = add nuw i64 %i.pm, 1                    ; 2 uses
  store i64 %i.pq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2253, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i: ; preds = %.noexc26.i.i.i, %.noexc25.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i
  %i.pr = phi i64 [ %.pre.i122.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i.i.i ], [ %i.pq, %.noexc26.i.i.i ], [ %i.pl, %.noexc25.i.i.i ] ; 3 uses
  %i.ps = icmp sgt i64 %i.pr, -1
  call void @llvm.assume(i1 %i.ps)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc27.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc27.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit124.i.i.i.i
  %.urem.i.i.i.i = add nsw i8 %i.pe, -10
  %i.pt = select i1 %i.pf, i8 %i.pe, i8 %.urem.i.i.i.i
  %i.pu = or disjoint i8 %i.pt, 48
  %i.pv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236, !nonnull !5, !noundef !5
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pr
  store i8 %i.pu, ptr %i.pw, align 1, !noalias !2238
  %i.px = add nuw i64 %i.pr, 1
  store i64 %i.px, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2251, !noalias !2236
  br label %.critedge.i.i.i

bb.ag:                                            ; preds = %bb.i
  br i1 %i.dw, label %bb.ah, label %.invoke290.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.py = load i8, ptr %i.dx, align 1, !noalias !2249, !noundef !5
  %i.pz = add i8 %i.py, %i.el
  %i.qa = lshr i8 %i.pz, 1
  %i.qb = and i8 %i.qa, 31                        ; 3 uses
  %i.qc = udiv i8 %i.qb, 10
  %i.qd = urem i8 %i.qb, 10
  %i.qe = icmp samesign ult i8 %i.qb, 10
  br i1 %i.qe, label %bb.ai, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i
    i8 2, label %bb.aj
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i: ; preds = %bb.ai
  %.pre.i128.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %i.qf = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236, !noundef !5 ; 3 uses
  %i.qg = icmp sgt i64 %i.qf, -1
  call void @llvm.assume(i1 %i.qg)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc29.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i125.i.i.i.i
  %i.qh = or disjoint i8 %i.qc, 48
  %i.qi = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236, !nonnull !5, !noundef !5
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qf
  store i8 %i.qh, ptr %i.qj, align 1, !noalias !2238
  %i.qk = add nuw i64 %i.qf, 1                    ; 2 uses
  store i64 %i.qk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2255, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ql = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236, !noundef !5 ; 3 uses
  %i.qm = icmp sgt i64 %i.ql, -1
  call void @llvm.assume(i1 %i.qm)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc30.i.i.i:                                   ; preds = %bb.aj
  %i.qn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236, !nonnull !5, !noundef !5
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.ql
  store i8 32, ptr %i.qo, align 1, !noalias !2238
  %i.qp = add nuw i64 %i.ql, 1                    ; 2 uses
  store i64 %i.qp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2256, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i: ; preds = %.noexc30.i.i.i, %.noexc29.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i
  %i.qq = phi i64 [ %.pre.i128.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i.i.i ], [ %i.qp, %.noexc30.i.i.i ], [ %i.qk, %.noexc29.i.i.i ] ; 3 uses
  %i.qr = icmp sgt i64 %i.qq, -1
  call void @llvm.assume(i1 %i.qr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc31.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc31.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit130.i.i.i.i
  %i.qs = or disjoint i8 %i.qd, 48
  %i.qt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236, !nonnull !5, !noundef !5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qq
  store i8 %i.qs, ptr %i.qu, align 1, !noalias !2238
  %i.qv = add nuw i64 %i.qq, 1
  store i64 %i.qv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2254, !noalias !2236
  br label %.critedge.i.i.i

bb.ak:                                            ; preds = %bb.i
  br i1 %i.hm, label %bb.al, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i
    i8 2, label %bb.am
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i: ; preds = %bb.al
  %.pre.i135.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i: ; preds = %bb.al, %bb.ak
  %i.qw = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236, !noundef !5 ; 3 uses
  %i.qx = icmp sgt i64 %i.qw, -1
  call void @llvm.assume(i1 %i.qx)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc33.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc33.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i132.i.i.i.i
  %i.qy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236, !nonnull !5, !noundef !5
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qw
  store i8 %i.hn, ptr %i.qz, align 1, !noalias !2238
  %i.ra = add nuw i64 %i.qw, 1                    ; 2 uses
  store i64 %i.ra, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2258, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.rb = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236, !noundef !5 ; 3 uses
  %i.rc = icmp sgt i64 %i.rb, -1
  call void @llvm.assume(i1 %i.rc)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc34.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc34.i.i.i:                                   ; preds = %bb.am
  %i.rd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236, !nonnull !5, !noundef !5
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rb
  store i8 32, ptr %i.re, align 1, !noalias !2238
  %i.rf = add nuw i64 %i.rb, 1                    ; 2 uses
  store i64 %i.rf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2259, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i: ; preds = %.noexc34.i.i.i, %.noexc33.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i
  %i.rg = phi i64 [ %.pre.i135.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i.i.i ], [ %i.rf, %.noexc34.i.i.i ], [ %i.ra, %.noexc33.i.i.i ] ; 3 uses
  %i.rh = icmp sgt i64 %i.rg, -1
  call void @llvm.assume(i1 %i.rh)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc35.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc35.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit137.i.i.i.i
  %i.ri = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236, !nonnull !5, !noundef !5
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rg
  store i8 %i.io, ptr %i.rj, align 1, !noalias !2238
  %i.rk = add nuw i64 %i.rg, 1
  store i64 %i.rk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2257, !noalias !2236
  br label %.critedge.i.i.i

bb.an:                                            ; preds = %bb.i
  br i1 %i.hf, label %bb.ao, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i
    i8 2, label %bb.ap
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i: ; preds = %bb.ao
  %.pre.i147.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i: ; preds = %bb.ao, %bb.an
  %i.rl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236, !noundef !5 ; 3 uses
  %i.rm = icmp sgt i64 %i.rl, -1
  call void @llvm.assume(i1 %i.rm)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc36.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc36.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i144.i.i.i.i
  %i.rn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236, !nonnull !5, !noundef !5
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rl
  store i8 %2, ptr %i.ro, align 1, !noalias !2238
  %i.rp = add nuw i64 %i.rl, 1                    ; 2 uses
  store i64 %i.rp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2261, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.rq = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236, !noundef !5 ; 3 uses
  %i.rr = icmp sgt i64 %i.rq, -1
  call void @llvm.assume(i1 %i.rr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc37.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc37.i.i.i:                                   ; preds = %bb.ap
  %i.rs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236, !nonnull !5, !noundef !5
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rq
  store i8 32, ptr %i.rt, align 1, !noalias !2238
  %i.ru = add nuw i64 %i.rq, 1                    ; 2 uses
  store i64 %i.ru, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2262, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i: ; preds = %.noexc37.i.i.i, %.noexc36.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i
  %i.rv = phi i64 [ %.pre.i147.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i.i.i ], [ %i.ru, %.noexc37.i.i.i ], [ %i.rp, %.noexc36.i.i.i ] ; 3 uses
  %i.rw = icmp sgt i64 %i.rv, -1
  call void @llvm.assume(i1 %i.rw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc38.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc38.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit149.i.i.i.i
  %i.rx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236, !nonnull !5, !noundef !5
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rv
  store i8 %i.im, ptr %i.ry, align 1, !noalias !2238
  %i.rz = add nuw i64 %i.rv, 1
  store i64 %i.rz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2260, !noalias !2236
  br label %.critedge.i.i.i

bb.aq:                                            ; preds = %bb.i
  %i.sa = invoke noundef i32 @_RNvMNtNtCsff3niNi8lqe_6chrono5naive7isoweekNtB2_7IsoWeek8from_yof(i32 noundef %i.dy, i32 noundef %i.dk, i8 noundef %i.gz)
          to label %.noexc39.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc39.i.i.i:                                   ; preds = %bb.aq
  %i.sb = lshr i32 %i.sa, 4
  %i.sc = trunc i32 %i.sb to i8
  %i.sd = and i8 %i.sc, 63                        ; 3 uses
  %i.se = udiv i8 %i.sd, 10
  %i.sf = urem i8 %i.sd, 10
  %i.sg = icmp samesign ult i8 %i.sd, 10
  br i1 %i.sg, label %bb.ar, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i

bb.ar:                                            ; preds = %.noexc39.i.i.i
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i
    i8 2, label %bb.as
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i: ; preds = %bb.ar
  %.pre.i153.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i: ; preds = %bb.ar, %.noexc39.i.i.i
  %i.sh = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236, !noundef !5 ; 3 uses
  %i.si = icmp sgt i64 %i.sh, -1
  call void @llvm.assume(i1 %i.si)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc40.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc40.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i150.i.i.i.i
  %i.sj = or disjoint i8 %i.se, 48
  %i.sk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236, !nonnull !5, !noundef !5
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sh
  store i8 %i.sj, ptr %i.sl, align 1, !noalias !2238
  %i.sm = add nuw i64 %i.sh, 1                    ; 2 uses
  store i64 %i.sm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2264, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.sn = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236, !noundef !5 ; 3 uses
  %i.so = icmp sgt i64 %i.sn, -1
  call void @llvm.assume(i1 %i.so)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc41.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc41.i.i.i:                                   ; preds = %bb.as
  %i.sp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236, !nonnull !5, !noundef !5
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sn
  store i8 32, ptr %i.sq, align 1, !noalias !2238
  %i.sr = add nuw i64 %i.sn, 1                    ; 2 uses
  store i64 %i.sr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2265, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i: ; preds = %.noexc41.i.i.i, %.noexc40.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i
  %i.ss = phi i64 [ %.pre.i153.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i151.i.i.i.i ], [ %i.sr, %.noexc41.i.i.i ], [ %i.sm, %.noexc40.i.i.i ] ; 3 uses
  %i.st = icmp sgt i64 %i.ss, -1
  call void @llvm.assume(i1 %i.st)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc42.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc42.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit155.i.i.i.i
  %i.su = or disjoint i8 %i.sf, 48
  %i.sv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236, !nonnull !5, !noundef !5
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ss
  store i8 %i.su, ptr %i.sw, align 1, !noalias !2238
  %i.sx = add nuw i64 %i.ss, 1
  store i64 %i.sx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2263, !noalias !2236
  br label %.critedge.i.i.i

switch.lookup:                                    ; preds = %bb.i
  %i.sy = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236, !noundef !5 ; 3 uses
  %i.sz = icmp sgt i64 %i.sy, -1
  call void @llvm.assume(i1 %i.sz)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc43.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc43.i.i.i:                                   ; preds = %switch.lookup
  %i.ta = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236, !nonnull !5, !noundef !5
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.sy
  store i8 %switch.masked, ptr %i.tb, align 1, !noalias !2238
  %i.tc = add nuw i64 %i.sy, 1
  store i64 %i.tc, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2266, !noalias !2236
  br label %.critedge.i.i.i

switch.lookup.i.i.i.i:                            ; preds = %bb.i
  %i.td = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236, !noundef !5 ; 3 uses
  %i.te = icmp sgt i64 %i.td, -1
  call void @llvm.assume(i1 %i.te)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc44.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc44.i.i.i:                                   ; preds = %switch.lookup.i.i.i.i
  %i.tf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236, !nonnull !5, !noundef !5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.td
  store i8 %switch.offset.i.i.i.i, ptr %i.tg, align 1, !noalias !2238
  %i.th = add nuw i64 %i.td, 1
  store i64 %i.th, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2267, !noalias !2236
  br label %.critedge.i.i.i

bb.at:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2249
  store i64 %i.gv, ptr %i.bc, align 8, !noalias !2268
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2268
  store ptr %i.bc, ptr %i.bb, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.ti = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.bb)
          to label %.noexc45.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc45.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.ti, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2268
  store ptr %i.bc, ptr %i.ba, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  store ptr null, ptr %i.gx, align 8, !noalias !2268
  store i16 3, ptr %.sroa.439.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.tj = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.ba)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2268
  store ptr %i.bc, ptr %i.az, align 8, !noalias !2268
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  store ptr null, ptr %i.gw, align 8, !noalias !2268
  store i16 3, ptr %.sroa.445.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2268
  %i.tk = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.az)
          to label %.noexc47.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc47.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.tk, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !2249
  br i1 %i.tj, label %.loopexit.i.i, label %.critedge.i.i.i

bb.au:                                            ; preds = %bb.i
  br i1 %i.gt, label %bb.av, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i

bb.av:                                            ; preds = %bb.au
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i
    i8 2, label %bb.aw
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i: ; preds = %bb.av
  %.pre.i161.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.tl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236, !noundef !5 ; 3 uses
  %i.tm = icmp sgt i64 %i.tl, -1
  call void @llvm.assume(i1 %i.tm)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc48.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc48.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i.i
  %i.tn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236, !nonnull !5, !noundef !5
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tl
  store i8 %i.gu, ptr %i.to, align 1, !noalias !2238
  %i.tp = add nuw i64 %i.tl, 1                    ; 2 uses
  store i64 %i.tp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2270, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.tq = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236, !noundef !5 ; 3 uses
  %i.tr = icmp sgt i64 %i.tq, -1
  call void @llvm.assume(i1 %i.tr)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc49.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc49.i.i.i:                                   ; preds = %bb.aw
  %i.ts = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236, !nonnull !5, !noundef !5
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.tq
  store i8 32, ptr %i.tt, align 1, !noalias !2238
  %i.tu = add nuw i64 %i.tq, 1                    ; 2 uses
  store i64 %i.tu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2271, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i: ; preds = %.noexc49.i.i.i, %.noexc48.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i
  %i.tv = phi i64 [ %.pre.i161.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i159.i.i.i.i ], [ %i.tu, %.noexc49.i.i.i ], [ %i.tp, %.noexc48.i.i.i ] ; 3 uses
  %i.tw = icmp sgt i64 %i.tv, -1
  call void @llvm.assume(i1 %i.tw)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc50.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc50.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit163.i.i.i.i
  %i.tx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236, !nonnull !5, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tv
  store i8 %4, ptr %i.ty, align 1, !noalias !2238
  %i.tz = add nuw i64 %i.tv, 1
  store i64 %i.tz, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2269, !noalias !2236
  br label %.critedge.i.i.i

bb.ax:                                            ; preds = %bb.i
  br i1 %i.gp, label %bb.ay, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i
    i8 2, label %bb.az
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i: ; preds = %bb.ay
  %.pre.i167.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.ua = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236, !noundef !5 ; 3 uses
  %i.ub = icmp sgt i64 %i.ua, -1
  call void @llvm.assume(i1 %i.ub)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc51.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc51.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i164.i.i.i.i
  %i.uc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236, !nonnull !5, !noundef !5
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ua
  store i8 %i.gq, ptr %i.ud, align 1, !noalias !2238
  %i.ue = add nuw i64 %i.ua, 1                    ; 2 uses
  store i64 %i.ue, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2273, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.uf = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236, !noundef !5 ; 3 uses
  %i.ug = icmp sgt i64 %i.uf, -1
  call void @llvm.assume(i1 %i.ug)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc52.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc52.i.i.i:                                   ; preds = %bb.az
  %i.uh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236, !nonnull !5, !noundef !5
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uf
  store i8 32, ptr %i.ui, align 1, !noalias !2238
  %i.uj = add nuw i64 %i.uf, 1                    ; 2 uses
  store i64 %i.uj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2274, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i: ; preds = %.noexc52.i.i.i, %.noexc51.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i
  %i.uk = phi i64 [ %.pre.i167.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i165.i.i.i.i ], [ %i.uj, %.noexc52.i.i.i ], [ %i.ue, %.noexc51.i.i.i ] ; 3 uses
  %i.ul = icmp sgt i64 %i.uk, -1
  call void @llvm.assume(i1 %i.ul)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc53.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc53.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit169.i.i.i.i
  %i.um = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236, !nonnull !5, !noundef !5
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.uk
  store i8 %i.gs, ptr %i.un, align 1, !noalias !2238
  %i.uo = add nuw i64 %i.uk, 1
  store i64 %i.uo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2272, !noalias !2236
  br label %.critedge.i.i.i

bb.ba:                                            ; preds = %bb.i
  br i1 %i.gk, label %bb.bb, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i
    i8 2, label %bb.bc
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i: ; preds = %bb.bb
  %.pre.i173.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.up = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236, !noundef !5 ; 3 uses
  %i.uq = icmp sgt i64 %i.up, -1
  call void @llvm.assume(i1 %i.uq)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc54.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc54.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i170.i.i.i.i
  %i.ur = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236, !nonnull !5, !noundef !5
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.up
  store i8 %i.ez, ptr %i.us, align 1, !noalias !2238
  %i.ut = add nuw i64 %i.up, 1                    ; 2 uses
  store i64 %i.ut, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2276, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.uu = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236, !noundef !5 ; 3 uses
  %i.uv = icmp sgt i64 %i.uu, -1
  call void @llvm.assume(i1 %i.uv)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc55.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc55.i.i.i:                                   ; preds = %bb.bc
  %i.uw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236, !nonnull !5, !noundef !5
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uu
  store i8 32, ptr %i.ux, align 1, !noalias !2238
  %i.uy = add nuw i64 %i.uu, 1                    ; 2 uses
  store i64 %i.uy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2277, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i: ; preds = %.noexc55.i.i.i, %.noexc54.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i
  %i.uz = phi i64 [ %.pre.i173.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i171.i.i.i.i ], [ %i.uy, %.noexc55.i.i.i ], [ %i.ut, %.noexc54.i.i.i ] ; 3 uses
  %i.va = icmp sgt i64 %i.uz, -1
  call void @llvm.assume(i1 %i.va)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc56.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc56.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit175.i.i.i.i
  %i.vb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236, !nonnull !5, !noundef !5
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.uz
  store i8 %6, ptr %i.vc, align 1, !noalias !2238
  %i.vd = add nuw i64 %i.uz, 1
  store i64 %i.vd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2275, !noalias !2236
  br label %.critedge.i.i.i

bb.bd:                                            ; preds = %bb.i
  br i1 %i.gj, label %bb.be, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i
    i8 2, label %bb.bf
    i8 1, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i
  ]

._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i: ; preds = %bb.be
  %.pre.i179.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i: ; preds = %bb.be, %bb.bd
  %i.ve = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236, !noundef !5 ; 3 uses
  %i.vf = icmp sgt i64 %i.ve, -1
  call void @llvm.assume(i1 %i.vf)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc57.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc57.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i176.i.i.i.i
  %i.vg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236, !nonnull !5, !noundef !5
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.ve
  store i8 %i.fo, ptr %i.vh, align 1, !noalias !2238
  %i.vi = add nuw i64 %i.ve, 1                    ; 2 uses
  store i64 %i.vi, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2279, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.vj = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236, !noundef !5 ; 3 uses
  %i.vk = icmp sgt i64 %i.vj, -1
  call void @llvm.assume(i1 %i.vk)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc58.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc58.i.i.i:                                   ; preds = %bb.bf
  %i.vl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236, !nonnull !5, !noundef !5
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vj
  store i8 32, ptr %i.vm, align 1, !noalias !2238
  %i.vn = add nuw i64 %i.vj, 1                    ; 2 uses
  store i64 %i.vn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2280, !noalias !2236
  br label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i: ; preds = %.noexc58.i.i.i, %.noexc57.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i
  %i.vo = phi i64 [ %.pre.i179.i.i.i.i, %._RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit2_crit_edge.i177.i.i.i.i ], [ %i.vn, %.noexc58.i.i.i ], [ %i.vi, %.noexc57.i.i.i ] ; 3 uses
  %i.vp = icmp sgt i64 %i.vo, -1
  call void @llvm.assume(i1 %i.vp)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc59.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc59.i.i.i:                                   ; preds = %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit181.i.i.i.i
  %i.vq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236, !nonnull !5, !noundef !5
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vo
  store i8 %i.ik, ptr %i.vr, align 1, !noalias !2238
  %i.vs = add nuw i64 %i.vo, 1
  store i64 %i.vs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2278, !noalias !2236
  br label %.critedge.i.i.i

bb.bg:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2249
  store i64 %i.gg, ptr %i.ay, align 8, !noalias !2281
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2281
  store ptr %i.ay, ptr %i.ax, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i190.i.i.i.i, align 8, !noalias !2281
  %i.vt = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.ax)
          to label %.noexc60.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc60.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i189.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.vt, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2281
  store ptr %i.ay, ptr %i.aw, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i187.i.i.i.i, align 8, !noalias !2281
  store ptr null, ptr %i.gi, align 8, !noalias !2281
  store i16 9, ptr %.sroa.439.0..sroa_idx.i188.i.i.i.i, align 8, !noalias !2281
  %i.vu = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.aw)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2281
  store ptr %i.ay, ptr %i.av, align 8, !noalias !2281
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i183.i.i.i.i, align 8, !noalias !2281
  store ptr null, ptr %i.gh, align 8, !noalias !2281
  store i16 9, ptr %.sroa.445.0..sroa_idx.i184.i.i.i.i, align 8, !noalias !2281
  %i.vv = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.av)
          to label %.noexc62.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc62.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i182.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.vv, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i186.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2249
  br i1 %i.vu, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2249
  store i64 %i.jc, ptr %i.au, align 8, !noalias !2282
  switch i8 %i.jl, label %default.unreachable [
    i8 0, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i
    i8 1, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i
    i8 2, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i
  ]

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2282
  store ptr %i.au, ptr %i.at, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx.i201.i.i.i.i, align 8, !noalias !2282
  %i.vw = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @52, ptr noundef nonnull %i.at)
          to label %.noexc63.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc63.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit.i200.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vw, label %.loopexit.i.i, label %.critedge.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2282
  store ptr %i.au, ptr %i.as, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx.i198.i.i.i.i, align 8, !noalias !2282
  store ptr null, ptr %i.gf, align 8, !noalias !2282
  store i16 9, ptr %.sroa.439.0..sroa_idx.i199.i.i.i.i, align 8, !noalias !2282
  %i.vx = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @80, ptr noundef nonnull %i.as)
          to label %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i: ; preds = %_RNvMNtNtCsff3niNi8lqe_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2282
  store ptr %i.au, ptr %i.ar, align 8, !noalias !2282
  store ptr @_RNvXse_NtNtNtCskKLDkoKarTP_4core3fmt3num3impxNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx.i194.i.i.i.i, align 8, !noalias !2282
  store ptr null, ptr %i.ge, align 8, !noalias !2282
  store i16 9, ptr %.sroa.445.0..sroa_idx.i195.i.i.i.i, align 8, !noalias !2282
  %i.vy = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @81, ptr noundef nonnull %i.ar)
          to label %.noexc65.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc65.i.i.i:                                   ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit56.i193.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vy, label %.loopexit.i.i, label %.critedge.i.i.i

_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i: ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit52.i197.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2249
  br i1 %i.vx, label %.loopexit.i.i, label %.critedge.i.i.i

bb.bh:                                            ; preds = %bb.h
  %.val5.i.i.i = load i8, ptr %i.cp, align 1, !range !2283, !noalias !2223, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.vz = add nsw i8 %.val5.i.i.i, -4
  %i.wa = icmp samesign ugt i8 %.val5.i.i.i, 3
  %narrow.i67.i.i.i = select i1 %i.wa, i8 %i.vz, i8 19 ; 4 uses
  switch i8 %narrow.i67.i.i.i, label %bb.bi [
    i8 0, label %bb.bk
    i8 1, label %bb.bm
    i8 2, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i
    i8 3, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit159.i.i.i.i
    i8 4, label %bb.bo
    i8 5, label %bb.cc
    i8 6, label %bb.cd
    i8 7, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit180.i.i.i.i
    i8 8, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit185.i.i.i.i
    i8 9, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit190.i.i.i.i
    i8 10, label %bb.bj
    i8 19, label %bb.cg
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not.i66.i.i.i, label %.loopexit.i.i, label %bb.ck

bb.bj:                                            ; preds = %bb.bh
  br i1 %.not.i66.i.i.i, label %.loopexit.i.i, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit194.i.i.i.i

bb.bk:                                            ; preds = %bb.bh
  br i1 %i.dw, label %bb.bl, label %.invoke290.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.wb = load i8, ptr %i.dx, align 1, !noalias !2285, !noundef !5
  %i.wc = zext i8 %i.wb to i32
  %i.wd = add nuw nsw i32 %i.du, %i.wc
  %i.we = lshr i32 %i.wd, 6
  %i.wf = add nsw i32 %i.we, -1                   ; 2 uses
  %i.wg = zext i32 %i.wf to i64                   ; 2 uses
  %i.wh = icmp ult i32 %i.wf, 12
  br i1 %i.wh, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i: ; preds = %bb.bl
  %i.wi = getelementptr inbounds nuw [16 x i8], ptr @12, i64 %i.wg
  %i.wj = load ptr, ptr %i.wi, align 8, !noalias !2285, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc76.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc76.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i.i
  %i.wk = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287, !noundef !5 ; 2 uses
  %i.wl = icmp sgt i64 %i.wk, -1
  call void @llvm.assume(i1 %i.wl)
  %i.wm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287, !nonnull !5, !noundef !5
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wn, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wj, i64 3, i1 false), !noalias !2288
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287
  %i.wo = add i64 %.pre.i.i.i.i.i.i.i, 3
  store i64 %i.wo, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2286, !noalias !2287
  br label %.critedge.i.i.i

bb.bm:                                            ; preds = %bb.bh
  br i1 %i.dw, label %bb.bn, label %.invoke290.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.wp = load i8, ptr %i.dx, align 1, !noalias !2285, !noundef !5
  %i.wq = zext i8 %i.wp to i32
  %i.wr = add nuw nsw i32 %i.du, %i.wq
  %i.ws = lshr i32 %i.wr, 6
  %i.wt = add nsw i32 %i.ws, -1                   ; 2 uses
  %i.wu = zext i32 %i.wt to i64                   ; 2 uses
  %i.wv = icmp ult i32 %i.wt, 12
  br i1 %i.wv, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i: ; preds = %bb.bn
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr @29, i64 %i.wu ; 2 uses
  %i.wx = load ptr, ptr %i.ww, align 8, !noalias !2285, !nonnull !5, !noundef !5
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wz = load i64, ptr %i.wy, align 8, !noalias !2285, !noundef !5 ; 3 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.wz)
          to label %.noexc79.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc79.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit153.i.i.i.i
  %i.xa = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290, !noundef !5 ; 2 uses
  %i.xb = icmp sgt i64 %i.xa, -1
  call void @llvm.assume(i1 %i.xb)
  %i.xc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290, !nonnull !5, !noundef !5
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xd, ptr nonnull readonly align 1 %i.wx, i64 %i.wz, i1 false), !noalias !2288
  %.pre.i.i.i152.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290
  %i.xe = add i64 %.pre.i.i.i152.i.i.i.i, %i.wz
  store i64 %i.xe, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2289, !noalias !2290
  br label %.critedge.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i: ; preds = %bb.bh
  %i.xf = load ptr, ptr %i.ds, align 8, !noalias !2285, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc81.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc81.i.i.i:                                   ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit156.i.i.i.i
  %i.xg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2291, !noalias !2292, !noundef !5 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCskeugdADtBsi_12pingora_core9protocols4http4date14to_date_string:bb.a
  %i.ads = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %.noexc107.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc107.i.i.i:                                  ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2285
  br i1 %i.ads, label %.loopexit.i.i, label %.critedge.i.i.i

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  br i1 %or.cond.i122.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i, label %.loopexit.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i: ; preds = %bb.cn
  %i.adt = load ptr, ptr %i.ds, align 8, !noalias !2342, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc159.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc159.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i154.i.i.i
  %i.adu = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344, !noundef !5 ; 2 uses
  %i.adv = icmp sgt i64 %i.adu, -1
  call void @llvm.assume(i1 %i.adv)
  %i.adw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344, !nonnull !5, !noundef !5
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.adu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.adx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.adt, i64 3, i1 false), !noalias !2345
  %.pre.i.i.i.i157.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344
  %i.ady = add i64 %.pre.i.i.i.i157.i.i.i, 3
  store i64 %i.ady, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2343, !noalias !2344
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 2)
          to label %.noexc160.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc160.i.i.i:                                  ; preds = %.noexc159.i.i.i
  %i.adz = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347, !noundef !5 ; 2 uses
  %i.aea = icmp sgt i64 %i.adz, -1
  call void @llvm.assume(i1 %i.aea)
  %i.aeb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347, !nonnull !5, !noundef !5
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.adz
  store i16 8236, ptr %i.aec, align 1, !noalias !2345
  %.pre.i.i.i11.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347 ; 3 uses
  %i.aed = add i64 %.pre.i.i.i11.i.i.i.i, 2       ; 4 uses
  store i64 %i.aed, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2346, !noalias !2347
  br i1 %i.dw, label %bb.co, label %.invoke290.i.i.i

bb.co:                                            ; preds = %.noexc160.i.i.i
  %i.aee = load i8, ptr %i.dx, align 1, !noalias !2342, !noundef !5
  %i.aef = zext i8 %i.aee to i32                  ; 2 uses
  %i.aeg = add nuw nsw i32 %i.dt, %i.aef
  %i.aeh = lshr i32 %i.aeg, 1
  %i.aei = and i32 %i.aeh, 31                     ; 3 uses
  %i.aej = icmp samesign ult i32 %i.aei, 10
  %i.aek = icmp sgt i64 %i.aed, -1
  call void @llvm.assume(i1 %i.aek)
  br i1 %i.aej, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc162.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc162.i.i.i:                                  ; preds = %bb.cp
  %i.ael = trunc nuw nsw i32 %i.aei to i8         ; 2 uses
  %i.aem = udiv i8 %i.ael, 10
  %i.aen = urem i8 %i.ael, 10
  %i.aeo = or disjoint i8 %i.aem, 48
  %i.aep = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2348, !noalias !2349, !nonnull !5, !noundef !5
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aed
  store i8 %i.aeo, ptr %i.aeq, align 1, !noalias !2345
  %i.aer = add i64 %.pre.i.i.i11.i.i.i.i, 3       ; 2 uses
  store i64 %i.aer, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2348, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc163.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc163.i.i.i:                                  ; preds = %.noexc162.i.i.i
  %i.aes = or disjoint i8 %i.aen, 48
  %i.aet = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2350, !noalias !2349, !nonnull !5, !noundef !5
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aer
  store i8 %i.aes, ptr %i.aeu, align 1, !noalias !2345
  br label %bb.cq

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i: ; preds = %bb.co
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc164.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc164.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i158.i.i.i
  %i.aev = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2351, !noalias !2349, !nonnull !5, !noundef !5
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %i.aed
  %i.aex = trunc nuw nsw i32 %i.aei to i8
  %i.aey = or disjoint i8 %i.aex, 48
  store i8 %i.aey, ptr %i.aew, align 1, !noalias !2345
  br label %bb.cq

bb.cq:                                            ; preds = %.noexc164.i.i.i, %.noexc163.i.i.i
  %.sink.i.i.i.i = phi i64 [ 4, %.noexc163.i.i.i ], [ 3, %.noexc164.i.i.i ]
  %i.aez = add i64 %.sink.i.i.i.i, %.pre.i.i.i11.i.i.i.i ; 4 uses
  store i64 %i.aez, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2352, !noalias !2349
  %i.afa = icmp sgt i64 %i.aez, -1
  call void @llvm.assume(i1 %i.afa)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc165.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc165.i.i.i:                                  ; preds = %bb.cq
  %i.afb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2353, !noalias !2349, !nonnull !5, !noundef !5
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aez
  store i8 32, ptr %i.afc, align 1, !noalias !2345
  %i.afd = add nuw i64 %i.aez, 1
  store i64 %i.afd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2353, !noalias !2349
  %i.afe = add nuw nsw i32 %i.du, %i.aef
  %i.aff = lshr i32 %i.afe, 6
  %i.afg = add nsw i32 %i.aff, -1                 ; 2 uses
  %i.afh = zext i32 %i.afg to i64                 ; 2 uses
  %i.afi = icmp ult i32 %i.afg, 12
  br i1 %i.afi, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i, label %.invoke290.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i: ; preds = %.noexc165.i.i.i
  %i.afj = getelementptr inbounds nuw [16 x i8], ptr @12, i64 %i.afh
  %i.afk = load ptr, ptr %i.afj, align 8, !noalias !2342, !nonnull !5, !noundef !5
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 3)
          to label %.noexc166.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc166.i.i.i:                                  ; preds = %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit15.i.i.i.i
  %i.afl = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355, !noundef !5 ; 2 uses
  %i.afm = icmp sgt i64 %i.afl, -1
  call void @llvm.assume(i1 %i.afm)
  %i.afn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355, !nonnull !5, !noundef !5
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.afl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.afo, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.afk, i64 3, i1 false), !noalias !2345
  %.pre.i.i.i14.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355 ; 16 uses
  %i.afp = add nsw i64 %.pre.i.i.i14.i.i.i.i, 3   ; 2 uses
  store i64 %i.afp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2354, !noalias !2355
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc167.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc167.i.i.i:                                  ; preds = %.noexc166.i.i.i
  %i.afq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2356, !noalias !2349, !nonnull !5, !noundef !5
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afp
  store i8 32, ptr %i.afr, align 1, !noalias !2345
  %i.afs = add nsw i64 %.pre.i.i.i14.i.i.i.i, 4   ; 2 uses
  store i64 %i.afs, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2356, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc168.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc168.i.i.i:                                  ; preds = %.noexc167.i.i.i
  %i.aft = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2357, !noalias !2349, !nonnull !5, !noundef !5
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afs
  store i8 %i.ec, ptr %i.afu, align 1, !noalias !2345
  %i.afv = add i64 %.pre.i.i.i14.i.i.i.i, 5       ; 2 uses
  store i64 %i.afv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2357, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc169.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc169.i.i.i:                                  ; preds = %.noexc168.i.i.i
  %i.afw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2358, !noalias !2349, !nonnull !5, !noundef !5
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afv
  store i8 %i.ee, ptr %i.afx, align 1, !noalias !2345
  %i.afy = add nsw i64 %.pre.i.i.i14.i.i.i.i, 6   ; 2 uses
  store i64 %i.afy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2358, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc170.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc170.i.i.i:                                  ; preds = %.noexc169.i.i.i
  %i.afz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2359, !noalias !2349, !nonnull !5, !noundef !5
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 %i.afy
  store i8 %i.ei, ptr %i.aga, align 1, !noalias !2345
  %i.agb = add i64 %.pre.i.i.i14.i.i.i.i, 7       ; 2 uses
  store i64 %i.agb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2359, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc171.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc171.i.i.i:                                  ; preds = %.noexc170.i.i.i
  %i.agc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2360, !noalias !2349, !nonnull !5, !noundef !5
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 %i.agb
  store i8 %i.ek, ptr %i.agd, align 1, !noalias !2345
  %i.age = add nsw i64 %.pre.i.i.i14.i.i.i.i, 8   ; 2 uses
  store i64 %i.age, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2360, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc172.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc172.i.i.i:                                  ; preds = %.noexc171.i.i.i
  %i.agf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2361, !noalias !2349, !nonnull !5, !noundef !5
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 %i.age
  store i8 32, ptr %i.agg, align 1, !noalias !2345
  %i.agh = add i64 %.pre.i.i.i14.i.i.i.i, 9       ; 3 uses
  store i64 %i.agh, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2361, !noalias !2349
  br i1 %i.eq, label %.loopexit.i.i, label %bb.cr

bb.cr:                                            ; preds = %.noexc172.i.i.i
  %i.agi = icmp sgt i64 %i.agh, -1
  call void @llvm.assume(i1 %i.agi)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc174.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc174.i.i.i:                                  ; preds = %bb.cr
  %i.agj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2362, !noalias !2349, !nonnull !5, !noundef !5
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agh
  store i8 %i.ew, ptr %i.agk, align 1, !noalias !2345
  %i.agl = add i64 %.pre.i.i.i14.i.i.i.i, 10      ; 2 uses
  store i64 %i.agl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2362, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc175.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc175.i.i.i:                                  ; preds = %.noexc174.i.i.i
  %i.agm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2363, !noalias !2349, !nonnull !5, !noundef !5
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 %i.agl
  store i8 %4, ptr %i.agn, align 1, !noalias !2345
  %i.ago = add nsw i64 %.pre.i.i.i14.i.i.i.i, 11  ; 2 uses
  store i64 %i.ago, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2363, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc176.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc176.i.i.i:                                  ; preds = %.noexc175.i.i.i
  %i.agp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2364, !noalias !2349, !nonnull !5, !noundef !5
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 %i.ago
  store i8 58, ptr %i.agq, align 1, !noalias !2345
  %i.agr = add nsw i64 %.pre.i.i.i14.i.i.i.i, 12  ; 2 uses
  store i64 %i.agr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2364, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc177.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc177.i.i.i:                                  ; preds = %.noexc176.i.i.i
  %i.ags = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2365, !noalias !2349, !nonnull !5, !noundef !5
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.agr
  store i8 %i.ez, ptr %i.agt, align 1, !noalias !2345
  %i.agu = add i64 %.pre.i.i.i14.i.i.i.i, 13      ; 2 uses
  store i64 %i.agu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2365, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc178.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc178.i.i.i:                                  ; preds = %.noexc177.i.i.i
  %i.agv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2366, !noalias !2349, !nonnull !5, !noundef !5
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 %i.agu
  store i8 %6, ptr %i.agw, align 1, !noalias !2345
  %i.agx = add nsw i64 %.pre.i.i.i14.i.i.i.i, 14  ; 2 uses
  store i64 %i.agx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2366, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc179.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc179.i.i.i:                                  ; preds = %.noexc178.i.i.i
  %i.agy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2367, !noalias !2349, !nonnull !5, !noundef !5
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 %i.agx
  store i8 58, ptr %i.agz, align 1, !noalias !2345
  %i.aha = add nsw i64 %.pre.i.i.i14.i.i.i.i, 15  ; 2 uses
  store i64 %i.aha, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2367, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc180.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc180.i.i.i:                                  ; preds = %.noexc179.i.i.i
  %i.ahb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2368, !noalias !2349, !nonnull !5, !noundef !5
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %i.aha
  store i8 %i.fo, ptr %i.ahc, align 1, !noalias !2345
  %i.ahd = add i64 %.pre.i.i.i14.i.i.i.i, 16      ; 2 uses
  store i64 %i.ahd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2368, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc181.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc181.i.i.i:                                  ; preds = %.noexc180.i.i.i
  %i.ahe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2369, !noalias !2349, !nonnull !5, !noundef !5
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahd
  store i8 %i.ik, ptr %i.ahf, align 1, !noalias !2345
  %i.ahg = add nsw i64 %.pre.i.i.i14.i.i.i.i, 17  ; 2 uses
  store i64 %i.ahg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2369, !noalias !2349
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc182.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc182.i.i.i:                                  ; preds = %.noexc181.i.i.i
  %i.ahh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2370, !noalias !2349, !nonnull !5, !noundef !5
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %i.ahg
  store i8 32, ptr %i.ahi, align 1, !noalias !2345
  %i.ahj = add i64 %.pre.i.i.i14.i.i.i.i, 18
  store i64 %i.ahj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2370, !noalias !2349
  %i.ahk = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) @66, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

bb.cs:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2372
  store i32 %i.dy, ptr %i.q, align 4, !noalias !2372
  br i1 %or.cond.i122.i.i.i, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i

_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i: ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2372
  store ptr %i.q, ptr %i.p, align 8, !noalias !2372
  store ptr @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.ahl = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @67, ptr noundef nonnull %i.p)
          to label %.noexc127.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc127.i.i.i:                                  ; preds = %_RINvYINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2372
  br i1 %i.ahl, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.noexc127.i.i.i
  %.pre.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc132.i.i.i, %bb.ct
  %i.ahm = phi i64 [ %i.aie, %.noexc132.i.i.i ], [ %.pre.i.i.i.i, %bb.ct ] ; 17 uses
  %i.ahn = icmp sgt i64 %i.ahm, -1
  call void @llvm.assume(i1 %i.ahn)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc128.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc128.i.i.i:                                  ; preds = %bb.cu
  %i.aho = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 %i.ahm
  store i8 45, ptr %i.ahp, align 1, !noalias !2375
  %i.ahq = add nuw i64 %i.ahm, 1                  ; 3 uses
  store i64 %i.ahq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2373, !noalias !2374
  br i1 %i.dw, label %bb.cv, label %.invoke290.i.i.i

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i: ; preds = %bb.cs
  %i.ahr = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374, !noundef !5 ; 6 uses
  %i.ahs = icmp sgt i64 %i.ahr, -1
  call void @llvm.assume(i1 %i.ahs)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc129.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc129.i.i.i:                                  ; preds = %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit33.i.i.i.i
  %i.aht = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahr
  store i8 %i.ec, ptr %i.ahu, align 1, !noalias !2375
  %i.ahv = add nuw nsw i64 %i.ahr, 1              ; 2 uses
  store i64 %i.ahv, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2376, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc130.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc130.i.i.i:                                  ; preds = %.noexc129.i.i.i
  %i.ahw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2377, !noalias !2374, !nonnull !5, !noundef !5
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 %i.ahv
  store i8 %i.ee, ptr %i.ahx, align 1, !noalias !2375
  %i.ahy = add nuw nsw i64 %i.ahr, 2              ; 2 uses
  store i64 %i.ahy, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2377, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc131.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc131.i.i.i:                                  ; preds = %.noexc130.i.i.i
  %i.ahz = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2378, !noalias !2374, !nonnull !5, !noundef !5
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.ahy
  store i8 %i.ei, ptr %i.aia, align 1, !noalias !2375
  %i.aib = add nuw i64 %i.ahr, 3                  ; 2 uses
  store i64 %i.aib, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2378, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc132.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc132.i.i.i:                                  ; preds = %.noexc131.i.i.i
  %i.aic = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2379, !noalias !2374, !nonnull !5, !noundef !5
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aic, i64 %i.aib
  store i8 %i.ek, ptr %i.aid, align 1, !noalias !2375
  %i.aie = add nuw i64 %i.ahr, 4                  ; 2 uses
  store i64 %i.aie, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2379, !noalias !2374
  br label %bb.cu

bb.cv:                                            ; preds = %.noexc128.i.i.i
  %i.aif = load i8, ptr %i.dx, align 1, !noalias !2372, !noundef !5 ; 2 uses
  %i.aig = icmp sgt i64 %i.ahq, -1
  call void @llvm.assume(i1 %i.aig)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc133.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc133.i.i.i:                                  ; preds = %bb.cv
  %i.aih = zext i8 %i.aif to i32
  %i.aii = add nuw nsw i32 %i.du, %i.aih          ; 3 uses
  %.cmp.i123.i.i.i = icmp samesign ugt i32 %i.aii, 639
  %i.aij = zext i1 %.cmp.i123.i.i.i to i8
  %i.aik = or disjoint i8 %i.aij, 48
  %i.ail = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2380, !noalias !2374, !nonnull !5, !noundef !5
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.ahq
  store i8 %i.aik, ptr %i.aim, align 1, !noalias !2375
  %i.ain = add nuw i64 %i.ahm, 2                  ; 2 uses
  store i64 %i.ain, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2380, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc134.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc134.i.i.i:                                  ; preds = %.noexc133.i.i.i
  %.cmp59.i.i.i.i = icmp samesign ult i32 %i.aii, 640
  %i.aio = lshr i32 %i.aii, 6
  %i.aip = trunc nuw nsw i32 %i.aio to i8         ; 2 uses
  %.urem.i124.i.i.i = add nsw i8 %i.aip, -10
  %i.aiq = select i1 %.cmp59.i.i.i.i, i8 %i.aip, i8 %.urem.i124.i.i.i
  %i.air = or disjoint i8 %i.aiq, 48
  %i.ais = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2381, !noalias !2374, !nonnull !5, !noundef !5
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ain
  store i8 %i.air, ptr %i.ait, align 1, !noalias !2375
  %i.aiu = add nuw nsw i64 %i.ahm, 3              ; 2 uses
  store i64 %i.aiu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2381, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc135.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc135.i.i.i:                                  ; preds = %.noexc134.i.i.i
  %i.aiv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2382, !noalias !2374, !nonnull !5, !noundef !5
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.aiu
  store i8 45, ptr %i.aiw, align 1, !noalias !2375
  %i.aix = add nuw nsw i64 %i.ahm, 4              ; 2 uses
  store i64 %i.aix, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2382, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc136.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc136.i.i.i:                                  ; preds = %.noexc135.i.i.i
  %i.aiy = add i8 %i.aif, %i.el
  %i.aiz = lshr i8 %i.aiy, 1
  %i.aja = and i8 %i.aiz, 31                      ; 2 uses
  %i.ajb = udiv i8 %i.aja, 10
  %i.ajc = urem i8 %i.aja, 10
  %i.ajd = or disjoint i8 %i.ajb, 48
  %i.aje = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2383, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 %i.aix
  store i8 %i.ajd, ptr %i.ajf, align 1, !noalias !2375
  %i.ajg = add nuw i64 %i.ahm, 5                  ; 2 uses
  store i64 %i.ajg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2383, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc137.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc137.i.i.i:                                  ; preds = %.noexc136.i.i.i
  %i.ajh = or disjoint i8 %i.ajc, 48
  %i.aji = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2384, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 %i.ajg
  store i8 %i.ajh, ptr %i.ajj, align 1, !noalias !2375
  %i.ajk = add nuw nsw i64 %i.ahm, 6              ; 2 uses
  store i64 %i.ajk, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2384, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc138.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc138.i.i.i:                                  ; preds = %.noexc137.i.i.i
  %i.ajl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2385, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 %i.ajk
  store i8 84, ptr %i.ajm, align 1, !noalias !2375
  %i.ajn = add nuw i64 %i.ahm, 7                  ; 3 uses
  store i64 %i.ajn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2385, !noalias !2374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2372
  store i32 %storemerge.i.i.i.i, ptr %i.o, align 4, !noalias !2372
  br i1 %i.eq, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc138.i.i.i
  %i.ajo = icmp sgt i64 %i.ajn, -1
  call void @llvm.assume(i1 %i.ajo)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc140.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc140.i.i.i:                                  ; preds = %bb.cw
  %i.ajp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2386, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.ajn
  store i8 %i.ew, ptr %i.ajq, align 1, !noalias !2375
  %i.ajr = add nuw i64 %i.ahm, 8                  ; 2 uses
  store i64 %i.ajr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2386, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc141.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc141.i.i.i:                                  ; preds = %.noexc140.i.i.i
  %i.ajs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2387, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %i.ajr
  store i8 %4, ptr %i.ajt, align 1, !noalias !2375
  %i.aju = add nuw nsw i64 %i.ahm, 9              ; 2 uses
  store i64 %i.aju, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2387, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc142.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc142.i.i.i:                                  ; preds = %.noexc141.i.i.i
  %i.ajv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2388, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.aju
  store i8 58, ptr %i.ajw, align 1, !noalias !2375
  %i.ajx = add nuw nsw i64 %i.ahm, 10             ; 2 uses
  store i64 %i.ajx, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2388, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc143.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc143.i.i.i:                                  ; preds = %.noexc142.i.i.i
  %i.ajy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2389, !noalias !2374, !nonnull !5, !noundef !5
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ajx
  store i8 %i.ez, ptr %i.ajz, align 1, !noalias !2375
  %i.aka = add nuw i64 %i.ahm, 11                 ; 2 uses
  store i64 %i.aka, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2389, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc144.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc144.i.i.i:                                  ; preds = %.noexc143.i.i.i
  %i.akb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2390, !noalias !2374, !nonnull !5, !noundef !5
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 %i.aka
  store i8 %6, ptr %i.akc, align 1, !noalias !2375
  %i.akd = add nuw nsw i64 %i.ahm, 12             ; 2 uses
  store i64 %i.akd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2390, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc145.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc145.i.i.i:                                  ; preds = %.noexc144.i.i.i
  %i.ake = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2391, !noalias !2374, !nonnull !5, !noundef !5
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akd
  store i8 58, ptr %i.akf, align 1, !noalias !2375
  %i.akg = add nuw nsw i64 %i.ahm, 13             ; 2 uses
  store i64 %i.akg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2391, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc146.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc146.i.i.i:                                  ; preds = %.noexc145.i.i.i
  %i.akh = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2392, !noalias !2374, !nonnull !5, !noundef !5
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 %i.akg
  store i8 %i.fc, ptr %i.aki, align 1, !noalias !2375
  %i.akj = add nuw i64 %i.ahm, 14                 ; 2 uses
  store i64 %i.akj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2392, !noalias !2374
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef 1)
          to label %.noexc147.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc147.i.i.i:                                  ; preds = %.noexc146.i.i.i
  %i.akk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2393, !noalias !2374, !nonnull !5, !noundef !5
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 %i.akj
  store i8 %8, ptr %i.akl, align 1, !noalias !2375
  %i.akm = add nuw i64 %i.ahm, 15
  store i64 %i.akm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2393, !noalias !2374
  br i1 %i.fd, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc151.i.i.i, %.noexc150.i.i.i, %.noexc149.i.i.i, %.noexc147.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2372
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.i, align 4, !noalias !2372
  %i.akn = invoke fastcc noundef zeroext i1 @_RINvMs0_NtNtCsff3niNi8lqe_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef 0)
          to label %.noexc148.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc148.i.i.i:                                  ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2372
  br i1 %i.akn, label %.loopexit.i.i, label %.critedge.i.i.i

bb.cy:                                            ; preds = %.noexc147.i.i.i
  br i1 %i.ff, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i, label %bb.cz

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i: ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2372
  store i32 %i.fj, ptr %i.n, align 4, !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2372
  store ptr %i.n, ptr %i.m, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.ako = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @68, ptr noundef nonnull %i.m)
          to label %.noexc149.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc149.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit45.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2372
  br i1 %i.ako, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.fh, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i, label %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2372
  store i32 %i.fi, ptr %i.l, align 4, !noalias !2372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2372
  store ptr %i.l, ptr %i.k, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.akp = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @69, ptr noundef nonnull %i.k)
          to label %.noexc150.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc150.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit49.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2372
  br i1 %i.akp, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i: ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2372
  store ptr %i.o, ptr %i.j, align 8, !noalias !2372
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !noalias !2372
  %i.akq = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @401, ptr noundef nonnull @70, ptr noundef nonnull %i.j)
          to label %.noexc151.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc151.i.i.i:                                  ; preds = %_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCskeugdADtBsi_12pingora_core.exit53.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2372
  br i1 %i.akq, label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i, label %bb.cx

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i: ; preds = %.noexc151.i.i.i, %.noexc150.i.i.i, %.noexc149.i.i.i, %.noexc138.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2372
  br label %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i

_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i: ; preds = %.noexc127.i.i.i, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit38.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2372
  br label %.loopexit.i.i

bb.da:                                            ; preds = %bb.h, %bb.h
  %.sroa.02.0.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !noalias !2223, !nonnull !5, !noundef !5
  %.sroa.3.0.i.i.i = load i64, ptr %i.ir, align 8, !noalias !2223, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc111.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc111.i.i.i:                                  ; preds = %bb.da
  %i.akr = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395, !noundef !5 ; 3 uses
  %i.aks = icmp sgt i64 %i.akr, -1
  call void @llvm.assume(i1 %i.aks)
  %.not.i.i.i110.i.i.i = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %.not.i.i.i110.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i, label %bb.db

bb.db:                                            ; preds = %.noexc111.i.i.i
  %i.akt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395, !nonnull !5, !noundef !5
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 %i.akr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aku, ptr nonnull readonly align 1 %.sroa.02.0.i.i.i, i64 %.sroa.3.0.i.i.i, i1 false), !noalias !2227
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i: ; preds = %bb.db, %.noexc111.i.i.i
  %i.akv = phi i64 [ %.pre.i.i.i.i.i.i, %bb.db ], [ %i.akr, %.noexc111.i.i.i ]
  %i.akw = add i64 %i.akv, %.sroa.3.0.i.i.i
  store i64 %i.akw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2394, !noalias !2395
  br label %.critedge.i.i.i

bb.dc:                                            ; preds = %bb.h, %bb.h
  %i.akx = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !noalias !2223, !nonnull !5, !noundef !5
  %i.aky = load i64, ptr %i.ir, align 8, !noalias !2223, !noundef !5 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %i.aky)
          to label %.noexc114.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i.i, !noalias !2227

.noexc114.i.i.i:                                  ; preds = %bb.dc
  %i.akz = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397, !noundef !5 ; 3 uses
  %i.ala = icmp sgt i64 %i.akz, -1
  call void @llvm.assume(i1 %i.ala)
  %.not.i.i.i112.i.i.i = icmp eq i64 %i.aky, 0
  br i1 %.not.i.i.i112.i.i.i, label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %.noexc114.i.i.i
  %i.alb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397, !nonnull !5, !noundef !5
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 %i.akz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.alc, ptr nonnull readonly align 1 %i.akx, i64 %i.aky, i1 false), !noalias !2227
  %.pre.i.i.i113.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397
  br label %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i

_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i: ; preds = %bb.dd, %.noexc114.i.i.i
  %i.ald = phi i64 [ %.pre.i.i.i113.i.i.i, %bb.dd ], [ %i.akz, %.noexc114.i.i.i ]
  %i.ale = add i64 %i.ald, %i.aky
  store i64 %i.ale, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2396, !noalias !2397
  br label %.critedge.i.i.i

_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i: ; preds = %.noexc182.i.i.i
  br i1 %i.ahk, label %.loopexit.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit115.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str.exit.i.i.i, %.noexc148.i.i.i, %.noexc107.i.i.i, %.noexc106.i.i.i, %.noexc105.i.i.i, %.noexc104.i.i.i, %.noexc103.i.i.i, %.noexc102.i.i.i, %.noexc101.i.i.i, %.noexc100.i.i.i, %.noexc99.i.i.i, %.noexc97.i.i.i, %.noexc95.i.i.i, %.noexc93.i.i.i, %.noexc92.i.i.i, %.split.i.i.i, %.split.thread.i.i.i, %.split.i.i.i.i, %.split123.i.i.i.i, %.loopexit.i.i.i.i, %.noexc82.i.i.i, %.noexc81.i.i.i, %.noexc79.i.i.i, %.noexc76.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i, %.noexc65.i.i.i, %.noexc63.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i, %.noexc62.i.i.i, %.noexc60.i.i.i, %.noexc59.i.i.i, %.noexc56.i.i.i, %.noexc53.i.i.i, %.noexc50.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %.noexc47.i.i.i, %.noexc45.i.i.i, %.noexc44.i.i.i, %.noexc43.i.i.i, %.noexc42.i.i.i, %.noexc38.i.i.i, %.noexc35.i.i.i, %.noexc31.i.i.i, %.noexc27.i.i.i, %_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char.exit.i.i.i.i, %.noexc21.i.i.i, %.noexc17.i.i.i, %.noexc11.i.i.i, %.noexc8.i.i.i, %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.thread.i.i, %.noexc8.i.i, %.noexc18.i.i, %.noexc16.i.i, %.noexc15.i.i, %.noexc14.i.i, %.noexc13.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.alf = load i8, ptr %i.bd, align 8, !range !23, !alias.scope !2398, !noalias !2223, !noundef !5
  switch i8 %i.alf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i [
    i8 1, label %bb.de
    i8 3, label %bb.df
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i: ; preds = %bb.df, %bb.de
  %.val1.sink.i118.i.i.i = phi i64 [ %.val3.i120.i.i.i, %bb.de ], [ %.val1.i116.i.i.i, %bb.df ]
  %.val.i119.i.i.i = load ptr, ptr %.sroa.03.0.i.i.i, align 8, !alias.scope !2398, !noalias !2223, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i119.i.i.i, i64 noundef range(i64 1, 0) %.val1.sink.i118.i.i.i, i64 noundef 1) #29, !noalias !2399
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i

bb.de:                                            ; preds = %.critedge.i.i.i
  %.val3.i120.i.i.i = load i64, ptr %i.ir, align 8, !alias.scope !2398, !noalias !2223, !noundef !5 ; 2 uses
  %i.alg = icmp eq i64 %.val3.i120.i.i.i, 0
  br i1 %i.alg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i

bb.df:                                            ; preds = %.critedge.i.i.i
  %.val1.i116.i.i.i = load i64, ptr %i.ir, align 8, !alias.scope !2398, !noalias !2223, !noundef !5 ; 2 uses
  %i.alh = icmp eq i64 %.val1.i116.i.i.i, 0
  br i1 %i.alh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i: ; preds = %bb.df, %bb.de, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECskeugdADtBsi_12pingora_core.exit.sink.split.i117.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2223
  invoke void @_RNvXs_NtNtCsff3niNi8lqe_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bf)
          to label %.noexc4.i.i unwind label %.loopexit22.i.i, !noalias !2227

.noexc4.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i
  %i.ali = load i8, ptr %i.be, align 8, !range !2224, !noalias !2223, !noundef !5
  %.not.not.i.i.i = icmp eq i8 %i.ali, -1
  br i1 %.not.not.i.i.i, label %.loopexit23.i.i, label %bb.h

.loopexit22.i.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsff3niNi8lqe_6chrono6format4ItemECskeugdADtBsi_12pingora_core.exit121.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit23.i.i, %_RINvMs5_NtCsff3niNi8lqe_6chrono8datetimeINtB6_8DateTimeNtNtNtB8_6offset3utc3UtcE17format_with_itemsNtNtNtB8_6format8strftime13StrftimeItemsNtB1D_4ItemECskeugdADtBsi_12pingora_core.exit
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit22.i.i, %.loopexit.split-lp.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit22.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #24
          to label %.body.i unwind label %bb.dl, !noalias !2400

.loopexit.i.i:                                    ; preds = %bb.cg, %_RINvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB3_13DelayedFormatNtNtB5_8strftime13StrftimeItemsE14format_numericNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i, %.noexc148.i.i.i, %.noexc172.i.i.i, %bb.cn, %.noexc107.i.i.i, %.noexc106.i.i.i, %bb.ck, %.noexc105.i.i.i, %.noexc104.i.i.i, %.noexc103.i.i.i, %.noexc102.i.i.i, %.noexc101.i.i.i, %.noexc100.i.i.i, %.noexc99.i.i.i, %.noexc97.i.i.i, %.noexc95.i.i.i, %.noexc93.i.i.i, %.noexc92.i.i.i, %.split.i.i.i, %bb.bj, %bb.bi, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit203.i.i.i.i, %.noexc65.i.i.i, %.noexc63.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit192.i.i.i.i, %.noexc62.i.i.i, %.noexc60.i.i.i, %_RINvNvMNtNtCsff3niNi8lqe_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i.i.i, %.noexc47.i.i.i, %.noexc45.i.i.i, %.noexc8.i.i, %.noexc18.i.i, %.noexc16.i.i, %.noexc15.i.i, %.noexc14.i.i, %.noexc13.i.i, %bb.h, %_RINvNtNtCsff3niNi8lqe_6chrono6format10formatting14write_hundredsNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2223
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i.i unwind label %bb.dg, !noalias !2227

bb.dg:                                            ; preds = %.loopexit.i.i
  %i.alj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body.i unwind label %bb.dh, !noalias !2227

bb.dh:                                            ; preds = %bb.dg
  %i.alk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !2227
  unreachable

.loopexit23.i.i:                                  ; preds = %.noexc4.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2223
  %i.all = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2220, !nonnull !5, !noundef !5
  %i.alm = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2220, !noundef !5
  %i.aln = invoke noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.all, i64 noundef %i.alm)
end_hunk_2
