Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.12?download=true
inline.NumInlined: 14059
inline.NumDeleted: 4214
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCscgRAwXFJnXP_4core3fmt7Display3fmtCs1LHh8CLbVkQ_11polars_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !255503, !noalias !255260
  invoke void @_RNvXs_NtNtCs9o5SvTbM2BP_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.be)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !255503

.noexc:                                           ; preds = %bb.a
  %i.bh = load i8, ptr %i.bd, align 8, !dbg !255503, !range !255264, !noalias !255260, !noundef !4885
  %.not244.not.i = icmp eq i8 %i.bh, 7, !dbg !255503
  br i1 %.not244.not.i, label %.loopexit23, label %.lr.ph.i, !dbg !255503

.lr.ph.i:                                         ; preds = %.noexc
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !255258, !noalias !255259 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bl, align 8, !alias.scope !255258, !noalias !255259
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !255258, !noalias !255259 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !255258, !noalias !255259 ; 7 uses
  %i.bm = load i64, ptr %0, align 8, !range !5038, !alias.scope !255258, !noalias !255259
  %.not.i66.i = icmp eq i64 %i.bm, -9223372036854775808 ; 4 uses
  %i.bn = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bo = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bp = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bq = urem i32 %i.bp, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.br = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.br to i16
  %i.bs = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bs to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bt = icmp eq i32 %i.bo, 0
  %i.bu = urem i32 %i.bo, 1000000
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = urem i32 %i.bo, 1000
  %i.bx = icmp eq i32 %i.bw, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.by = udiv i32 %i.bo, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bz = udiv i32 %i.bo, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ca = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.ca, ptr @82, ptr @81
  %i.cb = select i1 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @82, i64 2), ptr getelementptr inbounds nuw (i8, ptr @81, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.not140.i.i = icmp ne i32 %i.bk, 0             ; 20 uses
  %i.cg = lshr i32 %i.bk, 4
  %i.ch = and i32 %i.cg, 511                      ; 9 uses
  %i.ci = and i32 %i.bk, 7
  %i.cj = add nuw nsw i32 %i.ch, %i.ci
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cj to i16
  %i.ck = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cl = icmp samesign ult i16 %i.ck, 6          ; 2 uses
  %narrow42.i.i = add nuw nsw i16 %i.ck, 1
  %narrow43.i.i = select i1 %i.cl, i16 %narrow42.i.i, i16 0
  %i.cm = zext nneg i16 %narrow43.i.i to i64      ; 2 uses
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr @80, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr @72, i64 %i.cm ; 2 uses
  %i.cq = lshr i32 %i.bk, 3                       ; 3 uses
  %i.cr = and i32 %i.cq, 1023                     ; 8 uses
  %i.cs = zext nneg i32 %i.cr to i64              ; 8 uses
  %i.ct = icmp samesign ult i32 %i.cr, 733        ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr @47, i64 %i.cs ; 7 uses
  %or.cond5.i.i = select i1 %.not140.i.i, i1 %i.bn, i1 false ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !255258, !noalias !255259 ; 7 uses
  %i.cx = ashr i32 %i.bk, 13                      ; 13 uses
  %or.cond.i121.i = icmp ult i32 %i.cx, 10000     ; 2 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.lhs.trunc.i124.i = trunc nuw nsw i32 %i.cx to i16 ; 2 uses
  %i.cy = udiv i16 %.lhs.trunc.i124.i, 100
  %i.cz = trunc nuw nsw i16 %i.cy to i8           ; 2 uses
  %i.da = udiv i8 %i.cz, 10
  %i.db = or disjoint i8 %i.da, 48                ; 2 uses
  %i.dc = urem i8 %i.cz, 10
  %i.dd = or disjoint i8 %i.dc, 48                ; 2 uses
  %i.de = urem i16 %.lhs.trunc.i124.i, 100
  %i.df = trunc nuw nsw i16 %i.de to i8           ; 2 uses
  %i.dg = udiv i8 %i.df, 10
  %i.dh = or disjoint i8 %i.dg, 48                ; 2 uses
  %i.di = urem i8 %i.df, 10
  %i.dj = or disjoint i8 %i.di, 48                ; 2 uses
  %i.dk = trunc i32 %i.cq to i8                   ; 2 uses
  %i.dl = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dm = icmp ugt i32 %.sroa.21.0.copyload.i.i, 999999999 ; 2 uses
  %i.dn = add i32 %.sroa.21.0.copyload.i.i, -1000000000
  %storemerge.i.i = select i1 %i.dm, i32 %i.dn, i32 %.sroa.21.0.copyload.i.i
  %i.do = trunc i32 %i.dl to i8                   ; 4 uses
  %i.dp = icmp ugt i8 %i.do, 99                   ; 2 uses
  %i.dq = urem i32 %.sroa.10.0.copyload.i.i, 60   ; 2 uses
  %i.dr = zext i1 %i.dm to i32
  %.sroa.04.0.i.i = add nuw nsw i32 %i.dq, %i.dr
  %i.ds = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.dt = urem i32 %i.ds, 60                      ; 2 uses
  %i.du = udiv i8 %i.do, 10                       ; 2 uses
  %i.dv = or disjoint i8 %i.du, 48                ; 2 uses
  %i.dw = urem i8 %i.do, 10
  %i.dx = or disjoint i8 %i.dw, 48                ; 3 uses
  %i.dy = trunc nuw nsw i32 %i.dt to i8           ; 2 uses
  %i.dz = udiv i8 %i.dy, 10
  %i.ea = or disjoint i8 %i.dz, 48                ; 3 uses
  %i.eb = urem i8 %i.dy, 10
  %i.ec = or disjoint i8 %i.eb, 48                ; 3 uses
  %i.ed = trunc nuw nsw i32 %.sroa.04.0.i.i to i8 ; 2 uses
  %i.ee = udiv i8 %i.ed, 10
  %i.ef = or disjoint i8 %i.ee, 48
  %i.eg = urem i8 %i.ed, 10
  %i.eh = or disjoint i8 %i.eg, 48
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ei = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.ej = add nuw nsw i32 %i.ei, %i.dq            ; 2 uses
  %i.ek = trunc nuw nsw i32 %i.ej to i8           ; 2 uses
  %i.el = udiv i8 %i.ek, 10
  %i.em = or disjoint i8 %i.el, 48                ; 2 uses
  %i.en = urem i8 %i.ek, 10
  %i.eo = or disjoint i8 %i.en, 48                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.ew = sext i32 %i.cw to i64
  %.sroa.057.0.i.i = select i1 %.not.i66.i, i64 0, i64 %i.ew
  %i.ex = add nsw i32 %i.cx, -1
  %i.ey = icmp slt i32 %i.cx, 1                   ; 2 uses
  %i.ez = sub nsw i32 1, %i.cx
  %i.fa = udiv i32 %i.ez, 400
  %i.fb = add nuw nsw i32 %i.fa, 1                ; 2 uses
  %i.fc = mul nuw nsw i32 %i.fb, 400
  %.neg.i.i = mul nsw i32 %i.fb, -146097
  %i.fd = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.fe = add nuw nsw i32 %i.ch, -719163
  %i.ff = sub nsw i64 %i.fd, %.sroa.057.0.i.i
  %.sroa.426.0..sroa_idx.i190.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i191.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i193.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fi = zext nneg i32 %i.bo to i64
  %.sroa.426.0..sroa_idx.i182.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.445.0..sroa_idx.i183.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.430.0..sroa_idx.i185.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.439.0..sroa_idx.i186.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.434.0..sroa_idx.i187.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.fl = icmp samesign ult i32 %i.ej, 10
  %i.fm = icmp samesign ult i32 %i.dt, 10
  %i.fn = urem i32 %i.dl, 12                      ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = trunc nuw nsw i32 %i.fn to i8
  %i.fq = select i1 %i.fo, i8 12, i8 %i.fp
  %.frozen.i.i = freeze i8 %i.fq                  ; 4 uses
  %.cmp9.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.fr = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.fs = select i1 %.cmp9.i.i, i8 49, i8 48
  %.urem10.i.i = add i8 %.frozen.i.i, -10
  %i.ft = select i1 %i.fr, i8 %.frozen.i.i, i8 %.urem10.i.i
  %i.fu = or disjoint i8 %i.ft, 48
  %i.fv = icmp ult i8 %i.do, 10
  %i.fw = add nuw nsw i8 %i.du, 48
  %i.fx = zext nneg i32 %i.ch to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.ck to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.ga = trunc i32 %i.bk to i8
  %i.gb = and i8 %i.ga, 15                        ; 4 uses
  %i.gc = trunc nuw nsw i32 %i.ch to i16
  %i.gd = add nuw nsw i16 %i.gc, 6
  %.lhs.trunc1.i142.i.i = sub nuw nsw i16 %i.gd, %i.ck ; 2 uses
  %i.ge = udiv i16 %.lhs.trunc1.i142.i.i, 7
  %i.gf = trunc nuw nsw i16 %i.ge to i8           ; 2 uses
  %i.gg = udiv i8 %i.gf, 10
  %i.gh = icmp samesign ult i16 %.lhs.trunc1.i142.i.i, 70
  %2 = add nuw nsw i8 %i.gg, 48
  %i.gi = urem i8 %i.gf, 10
  %i.gj = or disjoint i8 %i.gi, 48
  %spec.select.i131.i.i = zext nneg i16 %i.ck to i32 ; 2 uses
  %i.gk = add nuw nsw i32 %spec.select.i131.i.i, 7
  %.pn.i.i.i = select i1 %i.cl, i32 %i.gk, i32 %spec.select.i131.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.ch, 6
  %i.gl = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.gm = trunc nsw i32 %i.gl to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.gm, 6
  %i.gn = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.go = trunc nuw nsw i16 %i.gn to i8           ; 2 uses
  %i.gp = udiv i8 %i.go, 10
  %i.gq = icmp samesign ult i16 %i.gn, 10
  %i.gr = add nuw nsw i8 %i.gp, 48
  %i.gs = urem i8 %i.go, 10
  %i.gt = or disjoint i8 %i.gs, 48
  %i.gu = srem i32 %i.cx, 100                     ; 4 uses
  %i.gv = icmp slt i32 %i.gu, 0
  %i.gw = add nsw i32 %i.gu, 100
  %spec.select.i.i.i = select i1 %i.gv, i32 %i.gw, i32 %i.gu ; 2 uses
  %i.gx = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.gy = udiv i8 %i.gx, 10
  %i.gz = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.ha = add nuw nsw i8 %i.gy, 48
  %i.hb = urem i8 %i.gx, 10
  %i.hc = or disjoint i8 %i.hb, 48
  %i.hd = sdiv i32 %i.cx, 100
  %.lobit.i.i.i = ashr i32 %i.gu, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.hd
  %i.he = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.hf = udiv i8 %i.he, 10
  %i.hg = icmp ult i8 %i.he, 10
  %i.hh = add nuw nsw i8 %i.hf, 48
  %i.hi = urem i8 %i.he, 10
  %i.hj = or disjoint i8 %i.hi, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  %spec.select.i = select i1 %i.ey, i32 %.neg.i.i, i32 0
  %i.hl = select i1 %i.ey, i32 %i.fc, i32 0
  %spec.select246.i = add nsw i32 %i.ex, %i.hl    ; 2 uses
  %i.hm = sdiv i32 %spec.select246.i, 100         ; 2 uses
  %i.hn = mul nsw i32 %spec.select246.i, 1461
  %i.ho = ashr i32 %i.hn, 2
  %i.hp = ashr i32 %i.hm, 2
  %i.hq = add i32 %i.fe, %spec.select.i
  %i.hr = sub i32 %i.hq, %i.hm
  %i.hs = add i32 %i.hr, %i.ho
  %narrow.i.i = add i32 %i.hs, %i.hp
  %i.ht = sext i32 %narrow.i.i to i64
  %i.hu = mul nsw i64 %i.ht, 86400
  %i.hv = add nsw i64 %i.ff, %i.hu
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ia = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0, !dbg !255504
  %i.ib = insertelement <2 x ptr> %i.ia, ptr %i.cb, i64 1, !dbg !255504
  %i.ic = shl nuw nsw i16 %i.ck, 3
  %switch.shiftamt = zext nneg i16 %i.ic to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b, !dbg !255503

.loopexit.i:                                      ; preds = %.noexc84.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc163.i.i, %.noexc161.i.i, %.noexc.peel.i.i
  %lpad.loopexit197.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.noexc11, %.noexc10, %.noexc9, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i2.i, %bb.fp, %bb.fn, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %.noexc144.i, %.noexc143.i, %.noexc142.i, %.noexc141.i, %.noexc140.i, %.noexc139.i, %.noexc138.i, %bb.fg, %.noexc135.i, %.noexc134.i, %.noexc133.i, %.noexc132.i, %.noexc131.i, %bb.ff, %.noexc129.i, %.noexc128.i, %.noexc127.i, %_RINvNtNtCs9o5SvTbM2BP_6chrono6format10formatting14write_hundredsNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit33.i.i, %bb.fe, %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs1LHh8CLbVkQ_11polars_core.exit.thread.i.i, %.noexc182.i, %.noexc181.i, %.noexc180.i, %.noexc179.i, %.noexc178.i, %.noexc177.i, %.noexc176.i, %.noexc175.i, %.noexc174.i, %bb.fb, %.noexc171.i, %.noexc170.i, %.noexc169.i, %.noexc168.i, %.noexc167.i, %.noexc166.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit15.i.i, %bb.fa, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i158.i, %.noexc162.i, %bb.ez, %.noexc159.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i153.i, %bb.ew, %bb.ev, %bb.eo, %bb.en, %bb.ek, %bb.ej, %bb.ei, %bb.ef, %.noexc97.i, %bb.ee, %.noexc95.i, %bb.ed, %.noexc93.i, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dv, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit159.i.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit156.i.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit153.i.i, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str.exit.i.i, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit181.i.i, %bb.cc, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i176.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit175.i.i, %bb.bz, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i170.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit169.i.i, %bb.bw, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i164.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit163.i.i, %bb.bt, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i158.i.i, %bb.bq, %bb.bp, %bb.bo, %switch.lookup.i.i, %switch.lookup, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit155.i.i, %bb.bm, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i150.i.i, %bb.bk, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit149.i.i, %bb.bj, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i144.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit137.i.i, %bb.bg, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i132.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit130.i.i, %bb.bd, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i125.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit124.i.i, %bb.az, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i119.i.i, %bb.au, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit118.i.i, %bb.as, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i113.i.i, %bb.aq, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit111.i.i, %bb.ap, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i106.i.i, %bb.an, %bb.am, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit103.i.i, %bb.al, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i98.i.i, %_RINvNvMNtNtCs9o5SvTbM2BP_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCsgZ49sUHp3tW_5alloc6string6StringECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.ai, %_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char.exit.i.i.i
  %lpad.loopexit200.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke295.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit197.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit200.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs9o5SvTbM2BP_6chrono6format4ItemECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #52, !dbg !255505
  br label %.body, !dbg !255506

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !255507, !noalias !255260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !dbg !255507, !noalias !255260
  %i.id = load i8, ptr %i.bc, align 8, !dbg !255508, !range !5602, !noalias !255260, !noundef !4885
  switch i8 %i.id, label %default.unreachable [
    i8 0, label %bb.fn
    i8 1, label %bb.fp
    i8 2, label %bb.fn
    i8 3, label %bb.fp
    i8 4, label %bb.c
    i8 5, label %bb.ck
    i8 6, label %.loopexit
  ], !dbg !255509

default.unreachable:                              ; preds = %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, %bb.cd, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bn, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.ay, %bb.ar, %bb.ao, %bb.ak, %bb.ah, %bb.z, %bb.y, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ie = load i8, ptr %i.ev, align 2, !dbg !255510, !range !5078, !noalias !255260, !noundef !4885 ; 18 uses
  %.val.i = load i8, ptr %i.bi, align 1, !dbg !255511, !range !6479, !noalias !255260, !noundef !4885
  call void @llvm.experimental.noalias.scope.decl(metadata !255265), !dbg !255511
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
  ], !dbg !255512

bb.d:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.invoke.i, label %.loopexit, !dbg !255512

bb.e:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.ag, label %.loopexit, !dbg !255512

bb.f:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.aj, label %.loopexit, !dbg !255512

bb.g:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.am, label %.loopexit, !dbg !255512

bb.h:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.an, label %.loopexit, !dbg !255512

bb.i:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.aq, label %.loopexit, !dbg !255512

bb.j:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.at, label %.loopexit, !dbg !255512

bb.k:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.aw, label %.loopexit, !dbg !255512

bb.l:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.ba, label %.loopexit, !dbg !255512

bb.m:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.be, label %.loopexit, !dbg !255512

bb.n:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.bh, label %.loopexit, !dbg !255512

bb.o:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.bk, label %.loopexit, !dbg !255512

bb.p:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %switch.lookup, label %.loopexit, !dbg !255512

bb.q:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %switch.lookup.i.i, label %.loopexit, !dbg !255512

bb.r:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %bb.bn, label %.loopexit, !dbg !255512

bb.s:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.br, label %.loopexit, !dbg !255512

bb.t:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.bu, label %.loopexit, !dbg !255512

bb.u:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.bx, label %.loopexit, !dbg !255512

bb.v:                                             ; preds = %bb.c
  br i1 %i.bn, label %bb.ca, label %.loopexit, !dbg !255512

end_hunk_0
