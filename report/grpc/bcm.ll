Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@_ZL32ec_GFp_nistp256_cmp_x_coordinatePK11ec_group_stPK11EC_JACOBIANPK9EC_SCALAR:bb.a

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !96
  %i.p = or i64 %i.o, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i, !llvm.loop !1592

ec_GFp_simple_is_at_infinity.exit:                ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa51 = phi i64 [ %i.m, %middle.block ], [ %i.p, %.lr.ph.i.i ]
  %.not.i.not = icmp eq i64 %.lcssa51, 0
  br i1 %.not.i.not, label %ec_GFp_simple_is_at_infinity.exit.thread, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.a, ptr noundef nonnull %i.a, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.b, ptr noundef nonnull %i.b, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.q = load i64, ptr %i.c, align 16, !tbaa !96
  %i.r = zext i64 %i.q to i128                    ; 4 uses
  %i.s = mul nuw i128 %i.r, 18446744069414584321  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = mul nuw nsw i128 %i.r, 4294967295        ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw nsw i128 %i.v to i64
  %i.x = mul nuw i128 %i.r, 18446744073709551615  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = and i128 %i.u, 18446744073709551615
  %i.aa = add nuw nsw i128 %i.y, %i.z             ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = trunc nuw nsw i128 %i.ab to i64
  %i.ad = and i128 %i.x, 18446744073709551615
  %i.ae = add nuw nsw i128 %i.ad, %i.r
  %i.af = lshr i128 %i.ae, 64
  %i.ag = and i128 %i.aa, 18446744073709551615
  %i.ah = add nuw nsw i128 %i.af, %i.ag           ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = trunc nuw nsw i128 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !96
  %i.am = and i128 %i.ah, 18446744073709551615
  %i.an = zext i64 %i.al to i128
  %i.ao = add nuw nsw i128 %i.am, %i.an           ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = trunc nuw nsw i128 %i.ap to i64
  %i.ar = and i128 %i.ao, 18446744073709551615    ; 4 uses
  %i.as = mul nuw i128 %i.ar, 18446744069414584321 ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw i128 %i.at to i64
  %i.av = mul nuw nsw i128 %i.ar, 4294967295      ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw nsw i128 %i.aw to i64
  %i.ay = mul nuw i128 %i.ar, 18446744073709551615 ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = and i128 %i.av, 18446744073709551615
  %i.bb = add nuw nsw i128 %i.az, %i.ba           ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw nsw i128 %i.bc to i64
  %i.be = and i128 %i.ay, 18446744073709551615
  %i.bf = add nuw nsw i128 %i.be, %i.ar
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = add nuw nsw i64 %i.ac, %i.w
  %i.bi = add nuw nsw i64 %i.bh, %i.aj
  %i.bj = add nuw nsw i64 %i.bi, %i.aq
  %i.bk = zext nneg i64 %i.bj to i128
  %i.bl = add nuw nsw i128 %i.bg, %i.bk
  %i.bm = and i128 %i.bb, 18446744073709551615
  %i.bn = add nuw nsw i128 %i.bl, %i.bm           ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = add nuw nsw i64 %i.bd, %i.ax
  %i.bq = and i128 %i.s, 18446744073709551615
  %i.br = add nuw nsw i128 %i.bo, %i.bq
  %i.bs = zext nneg i64 %i.bp to i128
  %i.bt = add nuw nsw i128 %i.br, %i.bs           ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = and i128 %i.as, 18446744073709551615
  %i.bw = add nuw nsw i128 %i.bv, %i.t
  %i.bx = add nuw nsw i128 %i.bw, %i.bu           ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = trunc nuw nsw i128 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 16, !tbaa !96
  %i.cc = and i128 %i.bn, 18446744073709551615
  %i.cd = zext i64 %i.cb to i128
  %i.ce = add nuw nsw i128 %i.cc, %i.cd           ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = and i128 %i.bt, 18446744073709551615
  %i.ch = add nuw nsw i128 %i.cg, %i.cf           ; 2 uses
  %i.ci = lshr i128 %i.ch, 64
  %i.cj = and i128 %i.bx, 18446744073709551615
  %i.ck = add nuw nsw i128 %i.cj, %i.ci           ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = trunc nuw nsw i128 %i.cl to i64
  %i.cn = and i128 %i.ce, 18446744073709551615    ; 4 uses
  %i.co = mul nuw i128 %i.cn, 18446744069414584321 ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = mul nuw nsw i128 %i.cn, 4294967295      ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = trunc nuw nsw i128 %i.cs to i64
  %i.cu = mul nuw i128 %i.cn, 18446744073709551615 ; 2 uses
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = and i128 %i.cr, 18446744073709551615
  %i.cx = add nuw nsw i128 %i.cv, %i.cw           ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = trunc nuw nsw i128 %i.cy to i64
  %i.da = and i128 %i.cu, 18446744073709551615
  %i.db = add nuw nsw i128 %i.da, %i.cn
  %i.dc = lshr i128 %i.db, 64
  %i.dd = and i128 %i.ch, 18446744073709551615
  %i.de = add nuw nsw i128 %i.dc, %i.dd
  %i.df = and i128 %i.cx, 18446744073709551615
  %i.dg = add nuw nsw i128 %i.de, %i.df           ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = add nuw nsw i64 %i.cz, %i.ct
  %i.dj = and i128 %i.ck, 18446744073709551615
  %i.dk = add nuw nsw i128 %i.dh, %i.dj
  %i.dl = zext nneg i64 %i.di to i128
  %i.dm = add nuw nsw i128 %i.dk, %i.dl           ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = add nuw i64 %i.bz, %i.au
  %i.dp = add nuw i64 %i.do, %i.cm
  %i.dq = zext i64 %i.dp to i128
  %i.dr = and i128 %i.co, 18446744073709551615
  %i.ds = add nuw nsw i128 %i.dr, %i.dq
  %i.dt = add nuw nsw i128 %i.ds, %i.dn           ; 2 uses
  %i.du = lshr i128 %i.dt, 64
  %i.dv = trunc nuw nsw i128 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !96
  %i.dy = and i128 %i.dg, 18446744073709551615
  %i.dz = zext i64 %i.dx to i128
  %i.ea = add nuw nsw i128 %i.dy, %i.dz           ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = and i128 %i.dm, 18446744073709551615
  %i.ed = add nuw nsw i128 %i.ec, %i.eb           ; 2 uses
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = and i128 %i.dt, 18446744073709551615
  %i.eg = add nuw nsw i128 %i.ef, %i.ee           ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = trunc nuw nsw i128 %i.eh to i64
  %i.ej = and i128 %i.ea, 18446744073709551615    ; 4 uses
  %i.ek = mul nuw i128 %i.ej, 18446744069414584321 ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64
  %i.en = mul nuw nsw i128 %i.ej, 4294967295      ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = trunc nuw nsw i128 %i.eo to i64
  %i.eq = mul nuw i128 %i.ej, 18446744073709551615 ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = and i128 %i.en, 18446744073709551615
  %i.et = add nuw nsw i128 %i.er, %i.es           ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = trunc nuw nsw i128 %i.eu to i64
  %i.ew = and i128 %i.eq, 18446744073709551615
  %i.ex = add nuw nsw i128 %i.ew, %i.ej
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = and i128 %i.ed, 18446744073709551615
  %i.fa = add nuw nsw i128 %i.ey, %i.ez
  %i.fb = and i128 %i.et, 18446744073709551615
  %i.fc = add nuw nsw i128 %i.fa, %i.fb           ; 3 uses
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = lshr i128 %i.fc, 64
  %i.ff = add nuw nsw i64 %i.ev, %i.ep
  %i.fg = and i128 %i.eg, 18446744073709551615
  %i.fh = add nuw nsw i128 %i.fe, %i.fg
  %i.fi = zext nneg i64 %i.ff to i128
  %i.fj = add nuw nsw i128 %i.fh, %i.fi           ; 3 uses
  %i.fk = trunc i128 %i.fj to i64
  %i.fl = lshr i128 %i.fj, 64
  %i.fm = add nuw i64 %i.dv, %i.cq
  %i.fn = add nuw i64 %i.fm, %i.ei
  %i.fo = zext i64 %i.fn to i128
  %i.fp = and i128 %i.ek, 18446744073709551615
  %i.fq = add nuw nsw i128 %i.fp, %i.fo
  %i.fr = add nuw nsw i128 %i.fq, %i.fl           ; 3 uses
  %i.fs = trunc i128 %i.fr to i64
  %i.ft = lshr i128 %i.fr, 64
  %i.fu = trunc nuw nsw i128 %i.ft to i64
  %i.fv = add nuw i64 %i.fu, %i.em                ; 2 uses
  %i.fw = and i128 %i.fc, 18446744073709551615
  %i.fx = add nsw i128 %i.fw, -18446744073709551615 ; 2 uses
  %4 = trunc i128 %i.fx to i64
  %5 = lshr i128 %i.fx, 64
  %i.fy = and i128 %i.fj, 18446744073709551615
  %i.fz = sub nsw i128 0, %5
  %i.ga = and i128 %i.fz, 255
  %reass.sub.i = sub nsw i128 %i.fy, %i.ga
  %i.gb = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %6 = trunc i128 %i.gb to i64
  %7 = lshr i128 %i.gb, 64
  %i.gc = and i128 %i.fr, 18446744073709551615
  %i.gd = sub nsw i128 0, %7
  %i.ge = and i128 %i.gd, 255
  %i.gf = sub nsw i128 %i.gc, %i.ge               ; 2 uses
  %8 = trunc i128 %i.gf to i64
  %9 = lshr i128 %i.gf, 64
  %i.gg = zext i64 %i.fv to i128
  %i.gh = sub nsw i128 0, %9
  %i.gi = and i128 %i.gh, 255
  %.neg112.i = add nsw i128 %i.gg, -18446744069414584321
  %i.gj = sub nsw i128 %.neg112.i, %i.gi          ; 2 uses
  %10 = trunc i128 %i.gj to i64
  %11 = lshr i128 %i.gj, 64
  %i.gk = sub nsw i128 0, %11
  %i.gl = and i128 %i.gk, 255
  %i.gm = sub nsw i128 0, %i.gl
  %i.gn = lshr i128 %i.gm, 64
  %i.go = trunc i128 %i.gn to i8
  %i.gp = icmp ne i8 %i.go, 0
  %i.gq = sext i1 %i.gp to i64                    ; 2 uses
  %i.gr = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gq) #38, !srcloc !389 ; 4 uses
  %i.gs = and i64 %i.gr, %i.fd
  %i.gt = xor i64 %i.gq, -1
  %i.gu = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gt) #38, !srcloc !389 ; 4 uses
  %i.gv = and i64 %i.gu, %4
  %i.gw = or i64 %i.gv, %i.gs
  %i.gx = and i64 %i.gr, %i.fk
  %i.gy = and i64 %i.gu, %6
  %i.gz = or i64 %i.gy, %i.gx
  %i.ha = and i64 %i.gr, %i.fs
  %i.hb = and i64 %i.gu, %8
  %i.hc = or i64 %i.hb, %i.ha
  %i.hd = and i64 %i.fv, %i.gr
  %i.he = and i64 %i.gu, %10
  %i.hf = or i64 %i.he, %i.hd
  store i64 %i.gw, ptr %i.c, align 16, !tbaa !96
  store i64 %i.gz, ptr %i.ak, align 8, !tbaa !96
  store i64 %i.hc, ptr %i.ca, align 16, !tbaa !96
  store i64 %i.hf, ptr %i.dw, align 8, !tbaa !96
  %i.hg = load i128, ptr %i.b, align 16
  %i.hh = load i128, ptr %i.c, align 16
  %i.hi = xor i128 %i.hg, %i.hh
  %i.hj = getelementptr i8, ptr %i.b, i64 16
  %i.hk = getelementptr i8, ptr %i.c, i64 16
  %i.hl = load i128, ptr %i.hj, align 16
  %i.hm = load i128, ptr %i.hk, align 16
  %i.hn = xor i128 %i.hl, %i.hm
  %i.ho = or i128 %i.hi, %i.hn
  %i.hp = icmp ne i128 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.f, label %.preheader42.i

.preheader42.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !292 ; 2 uses
  %.not43.i = icmp samesign ult i32 %i.f, 4
  br i1 %.not43.i, label %.lr.ph59.i.preheader, label %.lr.ph.i

.lr.ph59.i.preheader:                             ; preds = %.preheader.i, %.preheader42.i
  %.158.i.ph = phi i64 [ %wide.trip.count.i.i, %.preheader42.i ], [ %i.ju, %.preheader.i ]
  %.12757.i.ph = phi ptr [ %i.ht, %.preheader42.i ], [ %i.js, %.preheader.i ]
  %.12956.i.ph = phi ptr [ %2, %.preheader42.i ], [ %i.jr, %.preheader.i ]
  %.13155.i.ph = phi ptr [ %3, %.preheader42.i ], [ %i.jt, %.preheader.i ]
  %.14154.i.ph = phi i64 [ 0, %.preheader42.i ], [ %i.jp, %.preheader.i ]
  br label %.lr.ph59.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %.not3453.i = icmp eq i64 %i.ju, 0
  br i1 %.not3453.i, label %bn_add_words.exit, label %.lr.ph59.i.preheader

.lr.ph.i:                                         ; preds = %.preheader42.i, %.lr.ph.i
  %.048.i = phi i64 [ %i.ju, %.lr.ph.i ], [ %wide.trip.count.i.i, %.preheader42.i ]
  %.02647.i = phi ptr [ %i.js, %.lr.ph.i ], [ %i.ht, %.preheader42.i ] ; 5 uses
  %.02846.i = phi ptr [ %i.jr, %.lr.ph.i ], [ %2, %.preheader42.i ] ; 5 uses
  %.03045.i = phi ptr [ %i.jt, %.lr.ph.i ], [ %3, %.preheader42.i ] ; 5 uses
  %.04044.i = phi i64 [ %i.jp, %.lr.ph.i ], [ 0, %.preheader42.i ]
  %i.hu = load i64, ptr %.02846.i, align 8, !tbaa !96
  %i.hv = load i64, ptr %.02647.i, align 8, !tbaa !96
  %i.hw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hu, i64 %i.hv) ; 2 uses
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %i.hy = extractvalue { i64, i1 } %i.hw, 0
  %i.hz = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.hy, i64 %.04044.i) ; 2 uses
  %i.ia = extractvalue { i64, i1 } %i.hz, 1
  %i.ib = extractvalue { i64, i1 } %i.hz, 0
  %i.ic = or i1 %i.hx, %i.ia
  %i.id = zext i1 %i.ic to i64
  store i64 %i.ib, ptr %.03045.i, align 8, !tbaa !96
  %i.ie = getelementptr inbounds nuw i8, ptr %.02846.i, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %.02647.i, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !96
  %i.ii = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.if, i64 %i.ih) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  %i.il = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ik, i64 %i.id) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0
  %i.io = or i1 %i.ij, %i.im
  %i.ip = zext i1 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %.03045.i, i64 8
  store i64 %i.in, ptr %i.iq, align 8, !tbaa !96
  %i.ir = getelementptr inbounds nuw i8, ptr %.02846.i, i64 16
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !96
  %i.it = getelementptr inbounds nuw i8, ptr %.02647.i, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !96
  %i.iv = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.is, i64 %i.iu) ; 2 uses
  %i.iw = extractvalue { i64, i1 } %i.iv, 1
  %i.ix = extractvalue { i64, i1 } %i.iv, 0
  %i.iy = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ix, i64 %i.ip) ; 2 uses
  %i.iz = extractvalue { i64, i1 } %i.iy, 1
  %i.ja = extractvalue { i64, i1 } %i.iy, 0
  %i.jb = or i1 %i.iw, %i.iz
  %i.jc = zext i1 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.03045.i, i64 16
  store i64 %i.ja, ptr %i.jd, align 8, !tbaa !96
  %i.je = getelementptr inbounds nuw i8, ptr %.02846.i, i64 24
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !96
  %i.jg = getelementptr inbounds nuw i8, ptr %.02647.i, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !96
  %i.ji = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jf, i64 %i.jh) ; 2 uses
  %i.jj = extractvalue { i64, i1 } %i.ji, 1
  %i.jk = extractvalue { i64, i1 } %i.ji, 0
  %i.jl = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jk, i64 %i.jc) ; 2 uses
  %i.jm = extractvalue { i64, i1 } %i.jl, 1
  %i.jn = extractvalue { i64, i1 } %i.jl, 0
  %i.jo = or i1 %i.jj, %i.jm
  %i.jp = zext i1 %i.jo to i64                    ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.03045.i, i64 24
  store i64 %i.jn, ptr %i.jq, align 8, !tbaa !96
  %i.jr = getelementptr inbounds nuw i8, ptr %.02846.i, i64 32 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.02647.i, i64 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.03045.i, i64 32 ; 2 uses
  %i.ju = add i64 %.048.i, -4                     ; 4 uses
  %.not.i12 = icmp ult i64 %i.ju, 4
  br i1 %.not.i12, label %.preheader.i, label %.lr.ph.i, !llvm.loop !11

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader, %.lr.ph59.i
  %.158.i = phi i64 [ %i.ki, %.lr.ph59.i ], [ %.158.i.ph, %.lr.ph59.i.preheader ]
  %.12757.i = phi ptr [ %i.kg, %.lr.ph59.i ], [ %.12757.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.12956.i = phi ptr [ %i.kf, %.lr.ph59.i ], [ %.12956.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.13155.i = phi ptr [ %i.kh, %.lr.ph59.i ], [ %.13155.i.ph, %.lr.ph59.i.preheader ] ; 2 uses
  %.14154.i = phi i64 [ %i.ke, %.lr.ph59.i ], [ %.14154.i.ph, %.lr.ph59.i.preheader ]
  %i.jv = load i64, ptr %.12956.i, align 8, !tbaa !96
  %i.jw = load i64, ptr %.12757.i, align 8, !tbaa !96
  %i.jx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jv, i64 %i.jw) ; 2 uses
  %i.jy = extractvalue { i64, i1 } %i.jx, 1
  %i.jz = extractvalue { i64, i1 } %i.jx, 0
  %i.ka = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.jz, i64 %.14154.i) ; 2 uses
  %i.kb = extractvalue { i64, i1 } %i.ka, 1
  %i.kc = extractvalue { i64, i1 } %i.ka, 0
  %i.kd = or i1 %i.jy, %i.kb
  %i.ke = zext i1 %i.kd to i64                    ; 2 uses
  store i64 %i.kc, ptr %.13155.i, align 8, !tbaa !96
  %i.kf = getelementptr inbounds nuw i8, ptr %.12956.i, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %.12757.i, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.13155.i, i64 8
  %i.ki = add nsw i64 %.158.i, -1                 ; 2 uses
  %.not34.i = icmp eq i64 %i.ki, 0
  br i1 %.not34.i, label %bn_add_words.exit, label %.lr.ph59.i, !llvm.loop !12

bn_add_words.exit:                                ; preds = %.lr.ph59.i, %.preheader.i
  %.032.i = phi i64 [ %i.jp, %.preheader.i ], [ %i.ke, %.lr.ph59.i ]
  %i.kj = icmp eq i64 %.032.i, 0
  br i1 %i.kj, label %bb.c, label %bn_less_than_words.exit.thread

bb.c:                                             ; preds = %bn_add_words.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !241
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.c, %.lr.ph.i.i13
  %.04353.i.i = phi i64 [ %i.lb, %.lr.ph.i.i13 ], [ 0, %bb.c ]
  %.04452.i.i = phi i64 [ %i.lc, %.lr.ph.i.i13 ], [ 0, %bb.c ] ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04452.i.i
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !96 ; 5 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.04452.i.i
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !96 ; 3 uses
  %i.kq = icmp eq i64 %i.kn, %i.kp
  %.neg.i.i.i.i.i = sext i1 %i.kq to i64
  %i.kr = xor i64 %i.kp, %i.kn
  %i.ks = sub i64 %i.kn, %i.kp
  %i.kt = xor i64 %i.ks, %i.kn
  %i.ku = or i64 %i.kt, %i.kr
  %i.kv = xor i64 %i.ku, %i.kn
  %.neg.i.i.i.i = ashr i64 %i.kv, 63
  %i.kw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !108
  %i.kx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.ky = and i64 %i.kx, %.04353.i.i
  %i.kz = xor i64 %i.kx, -1
  %i.la = and i64 %i.kw, %i.kz
  %i.lb = or disjoint i64 %i.ky, %i.la            ; 2 uses
  %i.lc = add nuw nsw i64 %.04452.i.i, 1          ; 2 uses
  %exitcond.not.i.i14 = icmp eq i64 %i.lc, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i14, label %bn_less_than_words.exit, label %.lr.ph.i.i13, !llvm.loop !9

bn_less_than_words.exit:                          ; preds = %.lr.ph.i.i13
  %i.ld = and i64 %i.lb, 2147483648
  %.not11 = icmp eq i64 %i.ld, 0
  br i1 %.not11, label %bn_less_than_words.exit.thread, label %bb.d

bb.d:                                             ; preds = %bn_less_than_words.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.b, ptr noundef nonnull %i.b, ptr noundef %i.a)
  %i.le = load i128, ptr %i.b, align 16
  %i.lf = load i128, ptr %i.c, align 16
  %i.lg = xor i128 %i.le, %i.lf
  %i.lh = getelementptr i8, ptr %i.b, i64 16
  %i.li = getelementptr i8, ptr %i.c, i64 16
  %i.lj = load i128, ptr %i.lh, align 16
  %i.lk = load i128, ptr %i.li, align 16
  %i.ll = xor i128 %i.lj, %i.lk
  %i.lm = or i128 %i.lg, %i.ll
  %i.ln = icmp ne i128 %i.lm, 0
  %i.lo = zext i1 %i.ln to i32
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.e, label %bn_less_than_words.exit.thread

bn_less_than_words.exit.thread:                   ; preds = %bb.d, %bn_less_than_words.exit, %bn_add_words.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bn_less_than_words.exit.thread
  %.0 = phi i32 [ 0, %bn_less_than_words.exit.thread ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %ec_GFp_simple_is_at_infinity.exit.thread

end_hunk_0
begin_hunk_1_@_ZL13fiat_p256_mulPmPKmS1_:bb.a
  %i.eg = and i128 %i.dz, 18446744073709551615
  %i.eh = add nuw nsw i128 %i.eg, %i.dt
  %i.ei = lshr i128 %i.eh, 64
  %i.ej = and i128 %i.dc, 18446744073709551615
  %i.ek = add nuw nsw i128 %i.ej, %i.ei
  %i.el = and i128 %i.ec, 18446744073709551615
  %i.em = add nuw nsw i128 %i.ek, %i.el           ; 2 uses
  %i.en = lshr i128 %i.em, 64
  %i.eo = and i128 %i.dh, 18446744073709551615
  %i.ep = add nuw nsw i128 %i.eo, %i.en
  %i.eq = zext nneg i64 %i.ef to i128
  %i.er = add nuw nsw i128 %i.ep, %i.eq           ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = and i128 %i.dm, 18446744073709551615
  %i.eu = and i128 %i.du, 18446744073709551615
  %i.ev = add nuw nsw i128 %i.es, %i.eu
  %i.ew = add nuw nsw i128 %i.ev, %i.et           ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = and i128 %i.dq, 18446744073709551615
  %i.ez = add nuw nsw i128 %i.ex, %i.dv
  %i.fa = add nuw nsw i128 %i.ez, %i.ey           ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = trunc nuw nsw i128 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, %i.ds
  %i.fe = zext i64 %i.d to i128                   ; 4 uses
  %i.ff = mul nuw i128 %i.k, %i.fe                ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = trunc nuw i128 %i.fg to i64
  %i.fi = mul nuw i128 %i.q, %i.fe                ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = mul nuw i128 %i.v, %i.fe                ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = mul nuw i128 %i.z, %i.fe                ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = and i128 %i.fk, 18446744073709551615
  %i.fp = add nuw nsw i128 %i.fn, %i.fo           ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = and i128 %i.fi, 18446744073709551615
  %i.fs = add nuw nsw i128 %i.fl, %i.fr
  %i.ft = add nuw nsw i128 %i.fs, %i.fq           ; 2 uses
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = and i128 %i.ff, 18446744073709551615
  %i.fw = add nuw nsw i128 %i.fj, %i.fv
  %i.fx = add nuw nsw i128 %i.fw, %i.fu           ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = trunc nuw nsw i128 %i.fy to i64
  %i.ga = add nuw i64 %i.fz, %i.fh
  %i.gb = and i128 %i.em, 18446744073709551615
  %i.gc = and i128 %i.fm, 18446744073709551615
  %i.gd = add nuw nsw i128 %i.gb, %i.gc           ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = and i128 %i.er, 18446744073709551615
  %i.gg = and i128 %i.fp, 18446744073709551615
  %i.gh = add nuw nsw i128 %i.ge, %i.gg
  %i.gi = add nuw nsw i128 %i.gh, %i.gf           ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = and i128 %i.ew, 18446744073709551615
  %i.gl = and i128 %i.ft, 18446744073709551615
  %i.gm = add nuw nsw i128 %i.gj, %i.gl
  %i.gn = add nuw nsw i128 %i.gm, %i.gk           ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = and i128 %i.fa, 18446744073709551615
  %i.gq = and i128 %i.fx, 18446744073709551615
  %i.gr = add nuw nsw i128 %i.go, %i.gq
  %i.gs = add nuw nsw i128 %i.gr, %i.gp           ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = zext nneg i64 %i.fd to i128
  %i.gv = zext i64 %i.ga to i128
  %i.gw = add nuw nsw i128 %i.gu, %i.gv
  %i.gx = add nuw nsw i128 %i.gw, %i.gt           ; 2 uses
  %i.gy = lshr i128 %i.gx, 64
  %i.gz = trunc nuw nsw i128 %i.gy to i64
  %i.ha = and i128 %i.gd, 18446744073709551615    ; 4 uses
  %i.hb = mul nuw i128 %i.ha, 18446744069414584321 ; 2 uses
  %i.hc = lshr i128 %i.hb, 64
  %i.hd = mul nuw nsw i128 %i.ha, 4294967295      ; 2 uses
  %i.he = lshr i128 %i.hd, 64
  %i.hf = trunc nuw nsw i128 %i.he to i64
  %i.hg = mul nuw i128 %i.ha, 18446744073709551615 ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = and i128 %i.hd, 18446744073709551615
  %i.hj = add nuw nsw i128 %i.hh, %i.hi           ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = trunc nuw nsw i128 %i.hk to i64
  %i.hm = add nuw nsw i64 %i.hl, %i.hf
  %i.hn = and i128 %i.hg, 18446744073709551615
  %i.ho = add nuw nsw i128 %i.hn, %i.ha
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = and i128 %i.gi, 18446744073709551615
  %i.hr = add nuw nsw i128 %i.hq, %i.hp
  %i.hs = and i128 %i.hj, 18446744073709551615
  %i.ht = add nuw nsw i128 %i.hr, %i.hs           ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = and i128 %i.gn, 18446744073709551615
  %i.hw = add nuw nsw i128 %i.hv, %i.hu
  %i.hx = zext nneg i64 %i.hm to i128
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = and i128 %i.gs, 18446744073709551615
  %i.ib = and i128 %i.hb, 18446744073709551615
  %i.ic = add nuw nsw i128 %i.hz, %i.ib
  %i.id = add nuw nsw i128 %i.ic, %i.ia           ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = and i128 %i.gx, 18446744073709551615
  %i.ig = add nuw nsw i128 %i.ie, %i.hc
  %i.ih = add nuw nsw i128 %i.ig, %i.if           ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = trunc nuw nsw i128 %i.ii to i64
  %i.ik = add nuw nsw i64 %i.ij, %i.gz
  %i.il = zext i64 %i.f to i128                   ; 4 uses
  %i.im = mul nuw i128 %i.k, %i.il                ; 2 uses
  %i.in = lshr i128 %i.im, 64
  %i.io = trunc nuw i128 %i.in to i64
  %i.ip = mul nuw i128 %i.q, %i.il                ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = mul nuw i128 %i.v, %i.il                ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = mul nuw i128 %i.z, %i.il                ; 2 uses
  %i.iu = lshr i128 %i.it, 64
  %i.iv = and i128 %i.ir, 18446744073709551615
  %i.iw = add nuw nsw i128 %i.iu, %i.iv           ; 2 uses
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = and i128 %i.ip, 18446744073709551615
  %i.iz = add nuw nsw i128 %i.is, %i.iy
  %i.ja = add nuw nsw i128 %i.iz, %i.ix           ; 2 uses
  %i.jb = lshr i128 %i.ja, 64
  %i.jc = and i128 %i.im, 18446744073709551615
  %i.jd = add nuw nsw i128 %i.iq, %i.jc
  %i.je = add nuw nsw i128 %i.jd, %i.jb           ; 2 uses
  %i.jf = lshr i128 %i.je, 64
  %i.jg = trunc nuw nsw i128 %i.jf to i64
  %i.jh = add nuw i64 %i.jg, %i.io
  %i.ji = and i128 %i.ht, 18446744073709551615
  %i.jj = and i128 %i.it, 18446744073709551615
  %i.jk = add nuw nsw i128 %i.ji, %i.jj           ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = and i128 %i.hy, 18446744073709551615
  %i.jn = and i128 %i.iw, 18446744073709551615
  %i.jo = add nuw nsw i128 %i.jl, %i.jn
  %i.jp = add nuw nsw i128 %i.jo, %i.jm           ; 2 uses
  %i.jq = lshr i128 %i.jp, 64
  %i.jr = and i128 %i.id, 18446744073709551615
  %i.js = and i128 %i.ja, 18446744073709551615
  %i.jt = add nuw nsw i128 %i.jq, %i.js
  %i.ju = add nuw nsw i128 %i.jt, %i.jr           ; 2 uses
  %i.jv = lshr i128 %i.ju, 64
  %i.jw = and i128 %i.ih, 18446744073709551615
  %i.jx = and i128 %i.je, 18446744073709551615
  %i.jy = add nuw nsw i128 %i.jv, %i.jx
  %i.jz = add nuw nsw i128 %i.jy, %i.jw           ; 2 uses
  %i.ka = lshr i128 %i.jz, 64
  %i.kb = zext nneg i64 %i.ik to i128
  %i.kc = zext i64 %i.jh to i128
  %i.kd = add nuw nsw i128 %i.kb, %i.kc
  %i.ke = add nuw nsw i128 %i.kd, %i.ka           ; 2 uses
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw nsw i128 %i.kf to i64
  %i.kh = and i128 %i.jk, 18446744073709551615    ; 4 uses
  %i.ki = mul nuw i128 %i.kh, 18446744069414584321 ; 2 uses
  %i.kj = lshr i128 %i.ki, 64
  %i.kk = mul nuw nsw i128 %i.kh, 4294967295      ; 2 uses
  %i.kl = lshr i128 %i.kk, 64
  %i.km = trunc nuw nsw i128 %i.kl to i64
  %i.kn = mul nuw i128 %i.kh, 18446744073709551615 ; 2 uses
  %i.ko = lshr i128 %i.kn, 64
  %i.kp = and i128 %i.kk, 18446744073709551615
  %i.kq = add nuw nsw i128 %i.ko, %i.kp           ; 2 uses
  %i.kr = lshr i128 %i.kq, 64
  %i.ks = trunc nuw nsw i128 %i.kr to i64
  %i.kt = add nuw nsw i64 %i.ks, %i.km
  %i.ku = and i128 %i.kn, 18446744073709551615
  %i.kv = add nuw nsw i128 %i.ku, %i.kh
  %i.kw = lshr i128 %i.kv, 64
  %i.kx = and i128 %i.jp, 18446744073709551615
  %i.ky = add nuw nsw i128 %i.kx, %i.kw
  %i.kz = and i128 %i.kq, 18446744073709551615
  %i.la = add nuw nsw i128 %i.ky, %i.kz           ; 3 uses
  %i.lb = trunc i128 %i.la to i64
  %i.lc = lshr i128 %i.la, 64
  %i.ld = and i128 %i.ju, 18446744073709551615
  %i.le = add nuw nsw i128 %i.ld, %i.lc
  %i.lf = zext nneg i64 %i.kt to i128
  %i.lg = add nuw nsw i128 %i.le, %i.lf           ; 3 uses
  %i.lh = trunc i128 %i.lg to i64
  %i.li = lshr i128 %i.lg, 64
  %i.lj = and i128 %i.jz, 18446744073709551615
  %i.lk = and i128 %i.ki, 18446744073709551615
  %i.ll = add nuw nsw i128 %i.li, %i.lk
  %i.lm = add nuw nsw i128 %i.ll, %i.lj           ; 3 uses
  %i.ln = trunc i128 %i.lm to i64
  %i.lo = lshr i128 %i.lm, 64
  %i.lp = and i128 %i.ke, 18446744073709551615
  %i.lq = add nuw nsw i128 %i.lo, %i.kj
  %i.lr = add nuw nsw i128 %i.lq, %i.lp           ; 3 uses
  %i.ls = trunc i128 %i.lr to i64
  %i.lt = lshr i128 %i.lr, 64
  %i.lu = trunc nuw nsw i128 %i.lt to i64
  %i.lv = add nuw nsw i64 %i.lu, %i.kg
  %i.lw = and i128 %i.la, 18446744073709551615
  %i.lx = add nsw i128 %i.lw, -18446744073709551615 ; 2 uses
  %3 = trunc i128 %i.lx to i64
  %4 = lshr i128 %i.lx, 64
  %i.ly = and i128 %i.lg, 18446744073709551615
  %i.lz = sub nsw i128 0, %4
  %i.ma = and i128 %i.lz, 255
  %reass.sub = sub nsw i128 %i.ly, %i.ma
  %i.mb = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %5 = trunc i128 %i.mb to i64
  %6 = lshr i128 %i.mb, 64
  %i.mc = and i128 %i.lm, 18446744073709551615
  %i.md = sub nsw i128 0, %6
  %i.me = and i128 %i.md, 255
  %i.mf = sub nsw i128 %i.mc, %i.me               ; 2 uses
  %7 = trunc i128 %i.mf to i64
  %8 = lshr i128 %i.mf, 64
  %i.mg = and i128 %i.lr, 18446744073709551615
  %i.mh = sub nsw i128 0, %8
  %i.mi = and i128 %i.mh, 255
  %.neg237 = add nsw i128 %i.mg, -18446744069414584321
  %i.mj = sub nsw i128 %.neg237, %i.mi            ; 2 uses
  %9 = trunc i128 %i.mj to i64
  %10 = lshr i128 %i.mj, 64
  %i.mk = zext nneg i64 %i.lv to i128
  %i.ml = sub nsw i128 0, %10
  %i.mm = and i128 %i.ml, 255
  %i.mn = sub nsw i128 %i.mk, %i.mm
  %i.mo = lshr i128 %i.mn, 64
  %i.mp = trunc i128 %i.mo to i8
  %i.mq = icmp ne i8 %i.mp, 0
  %i.mr = sext i1 %i.mq to i64                    ; 2 uses
  %i.ms = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mr) #38, !srcloc !389 ; 4 uses
  %i.mt = and i64 %i.ms, %i.lb
  %i.mu = xor i64 %i.mr, -1
  %i.mv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mu) #38, !srcloc !389 ; 4 uses
  %i.mw = and i64 %i.mv, %3
  %i.mx = or i64 %i.mw, %i.mt
  %i.my = and i64 %i.ms, %i.lh
  %i.mz = and i64 %i.mv, %5
  %i.na = or i64 %i.mz, %i.my
  %i.nb = and i64 %i.ms, %i.ln
  %i.nc = and i64 %i.mv, %7
  %i.nd = or i64 %i.nc, %i.nb
  %i.ne = and i64 %i.ms, %i.ls
  %i.nf = and i64 %i.mv, %9
  %i.ng = or i64 %i.nf, %i.ne
  store i64 %i.mx, ptr %0, align 8, !tbaa !96
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.na, ptr %i.nh, align 8, !tbaa !96
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !96
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ng, ptr %i.nj, align 8, !tbaa !96
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16fiat_p256_squarePmPKm(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96
  %i.g = load i64, ptr %1, align 8, !tbaa !96
  %i.h = zext i64 %i.g to i128                    ; 5 uses
  %i.i = zext i64 %i.f to i128                    ; 5 uses
  %i.j = mul nuw i128 %i.h, %i.i                  ; 2 uses
  %i.k = lshr i128 %i.j, 64                       ; 2 uses
  %i.l = trunc nuw i128 %i.k to i64
  %i.m = zext i64 %i.d to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.h, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64                       ; 2 uses
  %i.p = zext i64 %i.b to i128                    ; 5 uses
  %i.q = mul nuw i128 %i.h, %i.p                  ; 2 uses
  %i.r = lshr i128 %i.q, 64                       ; 2 uses
  %i.s = mul nuw i128 %i.h, %i.h                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = and i128 %i.q, 18446744073709551615      ; 2 uses
  %i.v = add nuw nsw i128 %i.t, %i.u              ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = and i128 %i.n, 18446744073709551615      ; 2 uses
  %i.y = add nuw nsw i128 %i.x, %i.r
  %i.z = add nuw nsw i128 %i.y, %i.w              ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = and i128 %i.j, 18446744073709551615     ; 2 uses
  %i.ac = add nuw nsw i128 %i.ab, %i.o
  %i.ad = add nuw nsw i128 %i.ac, %i.aa           ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = trunc nuw nsw i128 %i.ae to i64
  %i.ag = add nuw i64 %i.af, %i.l
  %i.ah = and i128 %i.s, 18446744073709551615     ; 4 uses
  %i.ai = mul nuw i128 %i.ah, 18446744069414584321 ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = mul nuw nsw i128 %i.ah, 4294967295      ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = trunc nuw nsw i128 %i.al to i64
  %i.an = mul nuw i128 %i.ah, 18446744073709551615 ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = and i128 %i.ak, 18446744073709551615
  %i.aq = add nuw nsw i128 %i.ao, %i.ap           ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = trunc nuw nsw i128 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, %i.am
  %i.au = and i128 %i.an, 18446744073709551615
  %i.av = add nuw nsw i128 %i.au, %i.ah
  %i.aw = lshr i128 %i.av, 64
  %i.ax = and i128 %i.v, 18446744073709551615
  %i.ay = add nuw nsw i128 %i.aw, %i.ax
  %i.az = and i128 %i.aq, 18446744073709551615
  %i.ba = add nuw nsw i128 %i.ay, %i.az           ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = and i128 %i.z, 18446744073709551615
  %i.bd = add nuw nsw i128 %i.bb, %i.bc
  %i.be = zext nneg i64 %i.at to i128
  %i.bf = add nuw nsw i128 %i.bd, %i.be           ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = and i128 %i.ad, 18446744073709551615
  %i.bi = and i128 %i.ai, 18446744073709551615
  %i.bj = add nuw nsw i128 %i.bh, %i.bi
  %i.bk = add nuw nsw i128 %i.bj, %i.bg           ; 2 uses
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = zext i64 %i.ag to i128
  %i.bn = add nuw nsw i128 %i.aj, %i.bm
  %i.bo = add nuw nsw i128 %i.bn, %i.bl           ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = mul nuw i128 %i.i, %i.p                 ; 2 uses
  %i.br = lshr i128 %i.bq, 64                     ; 2 uses
  %i.bs = trunc nuw i128 %i.br to i64
  %i.bt = mul nuw i128 %i.m, %i.p                 ; 2 uses
  %i.bu = lshr i128 %i.bt, 64                     ; 2 uses
  %i.bv = mul nuw i128 %i.p, %i.p                 ; 2 uses
  %i.bw = lshr i128 %i.bv, 64
  %i.bx = and i128 %i.bv, 18446744073709551615
  %i.by = add nuw nsw i128 %i.r, %i.bx            ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = and i128 %i.bt, 18446744073709551615    ; 2 uses
  %i.cb = add nuw nsw i128 %i.ca, %i.bw
  %i.cc = add nuw nsw i128 %i.cb, %i.bz           ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = and i128 %i.bq, 18446744073709551615    ; 2 uses
  %i.cf = add nuw nsw i128 %i.ce, %i.bu
  %i.cg = add nuw nsw i128 %i.cf, %i.cd           ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = trunc nuw nsw i128 %i.ch to i64
  %i.cj = add nuw i64 %i.ci, %i.bs
  %i.ck = and i128 %i.ba, 18446744073709551615
  %i.cl = add nuw nsw i128 %i.ck, %i.u            ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = and i128 %i.bf, 18446744073709551615
  %i.co = and i128 %i.by, 18446744073709551615
  %i.cp = add nuw nsw i128 %i.cm, %i.co
  %i.cq = add nuw nsw i128 %i.cp, %i.cn           ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = and i128 %i.bk, 18446744073709551615
  %i.ct = and i128 %i.cc, 18446744073709551615
  %i.cu = add nuw nsw i128 %i.cr, %i.ct
  %i.cv = add nuw nsw i128 %i.cu, %i.cs           ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = and i128 %i.bo, 18446744073709551615
  %i.cy = and i128 %i.cg, 18446744073709551615
  %i.cz = add nuw nsw i128 %i.cw, %i.cy
  %i.da = add nuw nsw i128 %i.cz, %i.cx           ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = zext i64 %i.cj to i128
  %i.dd = add nuw nsw i128 %i.bp, %i.dc
  %i.de = add nuw nsw i128 %i.dd, %i.db           ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = trunc nuw nsw i128 %i.df to i64
  %i.dh = and i128 %i.cl, 18446744073709551615    ; 4 uses
  %i.di = mul nuw i128 %i.dh, 18446744069414584321 ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %i.dk = mul nuw nsw i128 %i.dh, 4294967295      ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw nsw i128 %i.dl to i64
  %i.dn = mul nuw i128 %i.dh, 18446744073709551615 ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = and i128 %i.dk, 18446744073709551615
  %i.dq = add nuw nsw i128 %i.do, %i.dp           ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = trunc nuw nsw i128 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, %i.dm
  %i.du = and i128 %i.dn, 18446744073709551615
  %i.dv = add nuw nsw i128 %i.du, %i.dh
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = and i128 %i.cq, 18446744073709551615
  %i.dy = add nuw nsw i128 %i.dx, %i.dw
  %i.dz = and i128 %i.dq, 18446744073709551615
  %i.ea = add nuw nsw i128 %i.dy, %i.dz           ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = and i128 %i.cv, 18446744073709551615
  %i.ed = add nuw nsw i128 %i.ec, %i.eb
  %i.ee = zext nneg i64 %i.dt to i128
  %i.ef = add nuw nsw i128 %i.ed, %i.ee           ; 2 uses
  %i.eg = lshr i128 %i.ef, 64
  %i.eh = and i128 %i.da, 18446744073709551615
  %i.ei = and i128 %i.di, 18446744073709551615
  %i.ej = add nuw nsw i128 %i.eg, %i.ei
  %i.ek = add nuw nsw i128 %i.ej, %i.eh           ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = and i128 %i.de, 18446744073709551615
  %i.en = add nuw nsw i128 %i.el, %i.dj
  %i.eo = add nuw nsw i128 %i.en, %i.em           ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = trunc nuw nsw i128 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, %i.dg
  %i.es = mul nuw i128 %i.i, %i.m                 ; 2 uses
  %i.et = lshr i128 %i.es, 64                     ; 2 uses
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = mul nuw i128 %i.m, %i.m                 ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = add nuw nsw i128 %i.o, %i.ca            ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = and i128 %i.ev, 18446744073709551615
  %i.fa = add nuw nsw i128 %i.ez, %i.bu
  %i.fb = add nuw nsw i128 %i.fa, %i.ey           ; 2 uses
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = and i128 %i.es, 18446744073709551615    ; 2 uses
  %i.fe = add nuw nsw i128 %i.fd, %i.ew
  %i.ff = add nuw nsw i128 %i.fe, %i.fc           ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = trunc nuw nsw i128 %i.fg to i64
  %i.fi = add nuw i64 %i.fh, %i.eu
  %i.fj = and i128 %i.ea, 18446744073709551615
  %i.fk = add nuw nsw i128 %i.fj, %i.x            ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = and i128 %i.ef, 18446744073709551615
  %i.fn = and i128 %i.ex, 18446744073709551615
  %i.fo = add nuw nsw i128 %i.fl, %i.fn
  %i.fp = add nuw nsw i128 %i.fo, %i.fm           ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = and i128 %i.ek, 18446744073709551615
  %i.fs = and i128 %i.fb, 18446744073709551615
  %i.ft = add nuw nsw i128 %i.fq, %i.fs
  %i.fu = add nuw nsw i128 %i.ft, %i.fr           ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = and i128 %i.eo, 18446744073709551615
  %i.fx = and i128 %i.ff, 18446744073709551615
  %i.fy = add nuw nsw i128 %i.fv, %i.fx
  %i.fz = add nuw nsw i128 %i.fy, %i.fw           ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = zext nneg i64 %i.er to i128
  %i.gc = zext i64 %i.fi to i128
  %i.gd = add nuw nsw i128 %i.gb, %i.gc
  %i.ge = add nuw nsw i128 %i.gd, %i.ga           ; 2 uses
  %i.gf = lshr i128 %i.ge, 64
  %i.gg = trunc nuw nsw i128 %i.gf to i64
  %i.gh = and i128 %i.fk, 18446744073709551615    ; 4 uses
  %i.gi = mul nuw i128 %i.gh, 18446744069414584321 ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = mul nuw nsw i128 %i.gh, 4294967295      ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc nuw nsw i128 %i.gl to i64
  %i.gn = mul nuw i128 %i.gh, 18446744073709551615 ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = and i128 %i.gk, 18446744073709551615
  %i.gq = add nuw nsw i128 %i.go, %i.gp           ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = trunc nuw nsw i128 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gs, %i.gm
  %i.gu = and i128 %i.gn, 18446744073709551615
  %i.gv = add nuw nsw i128 %i.gu, %i.gh
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = and i128 %i.fp, 18446744073709551615
  %i.gy = add nuw nsw i128 %i.gx, %i.gw
  %i.gz = and i128 %i.gq, 18446744073709551615
  %i.ha = add nuw nsw i128 %i.gy, %i.gz           ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = and i128 %i.fu, 18446744073709551615
  %i.hd = add nuw nsw i128 %i.hc, %i.hb
  %i.he = zext nneg i64 %i.gt to i128
  %i.hf = add nuw nsw i128 %i.hd, %i.he           ; 2 uses
  %i.hg = lshr i128 %i.hf, 64
  %i.hh = and i128 %i.fz, 18446744073709551615
  %i.hi = and i128 %i.gi, 18446744073709551615
  %i.hj = add nuw nsw i128 %i.hg, %i.hi
  %i.hk = add nuw nsw i128 %i.hj, %i.hh           ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = and i128 %i.ge, 18446744073709551615
  %i.hn = add nuw nsw i128 %i.hl, %i.gj
  %i.ho = add nuw nsw i128 %i.hn, %i.hm           ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = trunc nuw nsw i128 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, %i.gg
  %i.hs = mul nuw i128 %i.i, %i.i                 ; 2 uses
  %i.ht = lshr i128 %i.hs, 64
  %i.hu = trunc nuw i128 %i.ht to i64
  %i.hv = add nuw nsw i128 %i.k, %i.ce            ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = add nuw nsw i128 %i.fd, %i.br
  %i.hy = add nuw nsw i128 %i.hx, %i.hw           ; 2 uses
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = and i128 %i.hs, 18446744073709551615
  %i.ib = add nuw nsw i128 %i.ia, %i.et
  %i.ic = add nuw nsw i128 %i.ib, %i.hz           ; 2 uses
  %i.id = lshr i128 %i.ic, 64
  %i.ie = trunc nuw nsw i128 %i.id to i64
  %i.if = add nuw i64 %i.ie, %i.hu
  %i.ig = and i128 %i.ha, 18446744073709551615
  %i.ih = add nuw nsw i128 %i.ig, %i.ab           ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = and i128 %i.hf, 18446744073709551615
  %i.ik = and i128 %i.hv, 18446744073709551615
  %i.il = add nuw nsw i128 %i.ii, %i.ik
  %i.im = add nuw nsw i128 %i.il, %i.ij           ; 2 uses
  %i.in = lshr i128 %i.im, 64
  %i.io = and i128 %i.hk, 18446744073709551615
  %i.ip = and i128 %i.hy, 18446744073709551615
  %i.iq = add nuw nsw i128 %i.in, %i.ip
  %i.ir = add nuw nsw i128 %i.iq, %i.io           ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = and i128 %i.ho, 18446744073709551615
  %i.iu = and i128 %i.ic, 18446744073709551615
  %i.iv = add nuw nsw i128 %i.is, %i.iu
  %i.iw = add nuw nsw i128 %i.iv, %i.it           ; 2 uses
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = zext nneg i64 %i.hr to i128
  %i.iz = zext i64 %i.if to i128
  %i.ja = add nuw nsw i128 %i.iy, %i.iz
  %i.jb = add nuw nsw i128 %i.ja, %i.ix           ; 2 uses
  %i.jc = lshr i128 %i.jb, 64
  %i.jd = trunc nuw nsw i128 %i.jc to i64
  %i.je = and i128 %i.ih, 18446744073709551615    ; 4 uses
  %i.jf = mul nuw i128 %i.je, 18446744069414584321 ; 2 uses
  %i.jg = lshr i128 %i.jf, 64
  %i.jh = mul nuw nsw i128 %i.je, 4294967295      ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = trunc nuw nsw i128 %i.ji to i64
  %i.jk = mul nuw i128 %i.je, 18446744073709551615 ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = and i128 %i.jh, 18446744073709551615
  %i.jn = add nuw nsw i128 %i.jl, %i.jm           ; 2 uses
  %i.jo = lshr i128 %i.jn, 64
  %i.jp = trunc nuw nsw i128 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, %i.jj
  %i.jr = and i128 %i.jk, 18446744073709551615
  %i.js = add nuw nsw i128 %i.jr, %i.je
  %i.jt = lshr i128 %i.js, 64
  %i.ju = and i128 %i.im, 18446744073709551615
  %i.jv = add nuw nsw i128 %i.ju, %i.jt
  %i.jw = and i128 %i.jn, 18446744073709551615
  %i.jx = add nuw nsw i128 %i.jv, %i.jw           ; 3 uses
  %i.jy = trunc i128 %i.jx to i64
  %i.jz = lshr i128 %i.jx, 64
  %i.ka = and i128 %i.ir, 18446744073709551615
  %i.kb = add nuw nsw i128 %i.ka, %i.jz
  %i.kc = zext nneg i64 %i.jq to i128
  %i.kd = add nuw nsw i128 %i.kb, %i.kc           ; 3 uses
  %i.ke = trunc i128 %i.kd to i64
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = and i128 %i.iw, 18446744073709551615
  %i.kh = and i128 %i.jf, 18446744073709551615
  %i.ki = add nuw nsw i128 %i.kf, %i.kh
  %i.kj = add nuw nsw i128 %i.ki, %i.kg           ; 3 uses
  %i.kk = trunc i128 %i.kj to i64
  %i.kl = lshr i128 %i.kj, 64
  %i.km = and i128 %i.jb, 18446744073709551615
  %i.kn = add nuw nsw i128 %i.kl, %i.jg
  %i.ko = add nuw nsw i128 %i.kn, %i.km           ; 3 uses
  %i.kp = trunc i128 %i.ko to i64
  %i.kq = lshr i128 %i.ko, 64
  %i.kr = trunc nuw nsw i128 %i.kq to i64
  %i.ks = add nuw nsw i64 %i.kr, %i.jd
  %i.kt = and i128 %i.jx, 18446744073709551615
  %i.ku = add nsw i128 %i.kt, -18446744073709551615 ; 2 uses
  %2 = trunc i128 %i.ku to i64
  %3 = lshr i128 %i.ku, 64
  %i.kv = and i128 %i.kd, 18446744073709551615
  %i.kw = sub nsw i128 0, %3
  %i.kx = and i128 %i.kw, 255
  %reass.sub = sub nsw i128 %i.kv, %i.kx
  %i.ky = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %4 = trunc i128 %i.ky to i64
  %5 = lshr i128 %i.ky, 64
  %i.kz = and i128 %i.kj, 18446744073709551615
  %i.la = sub nsw i128 0, %5
  %i.lb = and i128 %i.la, 255
  %i.lc = sub nsw i128 %i.kz, %i.lb               ; 2 uses
  %6 = trunc i128 %i.lc to i64
  %7 = lshr i128 %i.lc, 64
  %i.ld = and i128 %i.ko, 18446744073709551615
  %i.le = sub nsw i128 0, %7
  %i.lf = and i128 %i.le, 255
  %.neg237 = add nsw i128 %i.ld, -18446744069414584321
  %i.lg = sub nsw i128 %.neg237, %i.lf            ; 2 uses
  %8 = trunc i128 %i.lg to i64
  %9 = lshr i128 %i.lg, 64
  %i.lh = zext nneg i64 %i.ks to i128
  %i.li = sub nsw i128 0, %9
  %i.lj = and i128 %i.li, 255
  %i.lk = sub nsw i128 %i.lh, %i.lj
  %i.ll = lshr i128 %i.lk, 64
  %i.lm = trunc i128 %i.ll to i8
  %i.ln = icmp ne i8 %i.lm, 0
  %i.lo = sext i1 %i.ln to i64                    ; 2 uses
  %i.lp = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lo) #38, !srcloc !389 ; 4 uses
  %i.lq = and i64 %i.lp, %i.jy
  %i.lr = xor i64 %i.lo, -1
  %i.ls = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lr) #38, !srcloc !389 ; 4 uses
  %i.lt = and i64 %i.ls, %2
  %i.lu = or i64 %i.lt, %i.lq
  %i.lv = and i64 %i.lp, %i.ke
  %i.lw = and i64 %i.ls, %4
  %i.lx = or i64 %i.lw, %i.lv
  %i.ly = and i64 %i.lp, %i.kk
  %i.lz = and i64 %i.ls, %6
  %i.ma = or i64 %i.lz, %i.ly
  %i.mb = and i64 %i.lp, %i.kp
  %i.mc = and i64 %i.ls, %8
  %i.md = or i64 %i.mc, %i.mb
  store i64 %i.lu, ptr %0, align 8, !tbaa !96
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lx, ptr %i.me, align 8, !tbaa !96
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ma, ptr %i.mf, align 8, !tbaa !96
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.md, ptr %i.mg, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL19fiat_p256_point_addPmS_S_PKmS1_S1_iS1_S1_S1_(ptr nofree noundef nonnull captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #18 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 9 uses
  %i.c = alloca [4 x i64], align 16               ; 5 uses
  %i.d = alloca [4 x i64], align 16               ; 9 uses
  %i.e = alloca [4 x i64], align 16               ; 12 uses
  %i.f = alloca [4 x i64], align 16               ; 10 uses
  %i.g = alloca [4 x i64], align 16               ; 15 uses
  %i.h = alloca [4 x i64], align 16               ; 9 uses
  %i.i = alloca [4 x i64], align 16               ; 7 uses
  %i.j = alloca [4 x i64], align 16               ; 8 uses
  %i.k = alloca [4 x i64], align 16               ; 4 uses
  %i.l = alloca [4 x i64], align 16               ; 7 uses
  %i.m = alloca [4 x i64], align 16               ; 8 uses
  %i.n = alloca [4 x i64], align 16               ; 10 uses
  %i.o = alloca [4 x i64], align 16               ; 8 uses
  %i.p = alloca [4 x i64], align 16               ; 7 uses
  %i.q = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.r = load i64, ptr %5, align 8, !tbaa !96     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !96   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !96   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96   ; 3 uses
  %i.y = or i64 %i.t, %i.r
  %i.z = or i64 %i.y, %i.v
  %i.aa = or i64 %i.z, %i.x
  %i.ab = load i64, ptr %9, align 8, !tbaa !96    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %i.ai = or i64 %i.ad, %i.ab
  %i.aj = or i64 %i.ai, %i.af
  %i.ak = or i64 %i.aj, %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.d, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.h, ptr noundef nonnull %9)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.e, ptr noundef nonnull %3, ptr noundef %i.h)
  %add.narrowed.i = add i64 %i.ab, %i.r           ; 3 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %i.r
  %i.al = zext i1 %add.narrowed.overflow.i to i128
  %i.am = zext i64 %i.t to i128
  %i.an = zext i64 %i.ad to i128
  %i.ao = add nuw nsw i128 %i.an, %i.am
  %i.ap = add nuw nsw i128 %i.ao, %i.al           ; 3 uses
  %i.aq = trunc i128 %i.ap to i64
  %i.ar = lshr i128 %i.ap, 64
  %i.as = zext i64 %i.v to i128
  %i.at = zext i64 %i.af to i128
  %i.au = add nuw nsw i128 %i.at, %i.as
  %i.av = add nuw nsw i128 %i.au, %i.ar           ; 3 uses
  %i.aw = trunc i128 %i.av to i64
  %i.ax = lshr i128 %i.av, 64
  %i.ay = zext i64 %i.x to i128
  %i.az = zext i64 %i.ah to i128
  %i.ba = add nuw nsw i128 %i.az, %i.ay
  %i.bb = add nuw nsw i128 %i.ba, %i.ax           ; 3 uses
  %i.bc = trunc i128 %i.bb to i64
  %i.bd = lshr i128 %i.bb, 64
  %i.be = zext i64 %add.narrowed.i to i128
  %i.bf = add nsw i128 %i.be, -18446744073709551615 ; 2 uses
  %10 = trunc i128 %i.bf to i64
  %11 = lshr i128 %i.bf, 64
  %i.bg = and i128 %i.ap, 18446744073709551615
  %i.bh = sub nsw i128 0, %11
  %i.bi = and i128 %i.bh, 255
  %reass.sub.i = sub nsw i128 %i.bg, %i.bi
  %i.bj = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %12 = trunc i128 %i.bj to i64
  %13 = lshr i128 %i.bj, 64
  %i.bk = and i128 %i.av, 18446744073709551615
  %i.bl = sub nsw i128 0, %13
  %i.bm = and i128 %i.bl, 255
  %i.bn = sub nsw i128 %i.bk, %i.bm               ; 2 uses
  %14 = trunc i128 %i.bn to i64
  %15 = lshr i128 %i.bn, 64
  %i.bo = and i128 %i.bb, 18446744073709551615
  %i.bp = sub nsw i128 0, %15
  %i.bq = and i128 %i.bp, 255
  %reass.sub42.i = sub nsw i128 %i.bo, %i.bq
  %i.br = add nsw i128 %reass.sub42.i, -18446744069414584321 ; 2 uses
  %16 = trunc i128 %i.br to i64
  %17 = lshr i128 %i.br, 64
  %i.bs = sub nsw i128 0, %17
  %i.bt = and i128 %i.bs, 255
  %i.bu = sub nsw i128 %i.bd, %i.bt
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = trunc i128 %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %i.by = sext i1 %i.bx to i64                    ; 2 uses
  %i.bz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.by) #38, !srcloc !389 ; 4 uses
  %i.ca = and i64 %i.bz, %add.narrowed.i
  %i.cb = xor i64 %i.by, -1
  %i.cc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.cb) #38, !srcloc !389 ; 4 uses
  %i.cd = and i64 %i.cc, %10
  %i.ce = or i64 %i.cd, %i.ca
  %i.cf = and i64 %i.bz, %i.aq
  %i.cg = and i64 %i.cc, %12
  %i.ch = or i64 %i.cg, %i.cf
  %i.ci = and i64 %i.bz, %i.aw
  %i.cj = and i64 %i.cc, %14
  %i.ck = or i64 %i.cj, %i.ci
  %i.cl = and i64 %i.bz, %i.bc
  %i.cm = and i64 %i.cc, %16
  %i.cn = or i64 %i.cm, %i.cl
  store i64 %i.ce, ptr %i.g, align 16, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %i.ch, ptr %i.co, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 %i.ck, ptr %i.cp, align 16, !tbaa !96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store i64 %i.cn, ptr %i.cq, align 8, !tbaa !96
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.g, ptr noundef nonnull %i.g)
  %i.cr = load i64, ptr %i.g, align 16, !tbaa !96
  %i.cs = load i64, ptr %i.d, align 16, !tbaa !96
  %i.ct = zext i64 %i.cr to i128
  %i.cu = zext i64 %i.cs to i128
  %i.cv = sub nsw i128 %i.ct, %i.cu               ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !96
  %i.da = zext i64 %i.cx to i128
  %i.db = sub nsw i128 0, %i.cw
  %i.dc = and i128 %i.db, 255
  %i.dd = zext i64 %i.cz to i128
  %i.de = add nuw nsw i128 %i.dc, %i.dd
  %i.df = sub nsw i128 %i.da, %i.de               ; 2 uses
  %i.dg = lshr i128 %i.df, 64
  %i.dh = load i64, ptr %i.cp, align 16, !tbaa !96
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dj = load i64, ptr %i.di, align 16, !tbaa !96
  %i.dk = zext i64 %i.dh to i128
  %i.dl = sub nsw i128 0, %i.dg
  %i.dm = and i128 %i.dl, 255
  %i.dn = zext i64 %i.dj to i128
  %i.do = add nuw nsw i128 %i.dm, %i.dn
  %i.dp = sub nsw i128 %i.dk, %i.do               ; 2 uses
  %i.dq = lshr i128 %i.dp, 64
  %i.dr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !96
  %i.du = zext i64 %i.dr to i128
  %i.dv = sub nsw i128 0, %i.dq
  %i.dw = and i128 %i.dv, 255
  %i.dx = zext i64 %i.dt to i128
  %i.dy = add nuw nsw i128 %i.dw, %i.dx
  %i.dz = sub nsw i128 %i.du, %i.dy               ; 2 uses
  %i.ea = and i128 %i.dz, 4703919738795935662080
  %i.eb = icmp ne i128 %i.ea, 0
  %i.ec = sext i1 %i.eb to i64                    ; 2 uses
  %i.ed = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ec) #38, !srcloc !389 ; 3 uses
  %i.ee = xor i64 %i.ec, -1
  %i.ef = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ee) #38, !srcloc !389 ; 0 uses
  %i.eg = and i128 %i.cv, 18446744073709551615
  %i.eh = zext i64 %i.ed to i128
  %i.ei = add nuw nsw i128 %i.eg, %i.eh           ; 2 uses
  %i.ej = lshr i128 %i.ei, 64
  %i.ek = and i64 %i.ed, 4294967295
  %i.el = and i128 %i.df, 18446744073709551615
  %i.em = zext nneg i64 %i.ek to i128
  %i.en = add nuw nsw i128 %i.el, %i.em
  %i.eo = add nuw nsw i128 %i.en, %i.ej           ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = and i128 %i.dp, 18446744073709551615
  %i.er = add nuw nsw i128 %i.ep, %i.eq           ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = and i64 %i.ed, -4294967295
  %i.eu = add nsw i128 %i.es, %i.dz
  %i.ev = trunc i128 %i.eu to i64
  %i.ew = add i64 %i.et, %i.ev
  %i.ex = load i64, ptr %i.h, align 16, !tbaa !96
  %i.ey = and i128 %i.ei, 18446744073709551615
  %i.ez = zext i64 %i.ex to i128
  %i.fa = sub nsw i128 %i.ey, %i.ez               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !96
  %i.fe = and i128 %i.eo, 18446744073709551615
  %i.ff = sub nsw i128 0, %i.fb
  %i.fg = and i128 %i.ff, 255
  %i.fh = zext i64 %i.fd to i128
  %i.fi = add nuw nsw i128 %i.fg, %i.fh
  %i.fj = sub nsw i128 %i.fe, %i.fi               ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fm = load i64, ptr %i.fl, align 16, !tbaa !96
  %i.fn = and i128 %i.er, 18446744073709551615
  %i.fo = sub nsw i128 0, %i.fk
  %i.fp = and i128 %i.fo, 255
  %i.fq = zext i64 %i.fm to i128
  %i.fr = add nuw nsw i128 %i.fp, %i.fq
  %i.fs = sub nsw i128 %i.fn, %i.fr               ; 2 uses
  %i.ft = lshr i128 %i.fs, 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !96
  %i.fw = zext i64 %i.ew to i128
  %i.fx = sub nsw i128 0, %i.ft
  %i.fy = and i128 %i.fx, 255
  %i.fz = zext i64 %i.fv to i128
  %i.ga = add nuw nsw i128 %i.fy, %i.fz
  %i.gb = sub nsw i128 %i.fw, %i.ga               ; 2 uses
  %i.gc = and i128 %i.gb, 4703919738795935662080
  %i.gd = icmp ne i128 %i.gc, 0
  %i.ge = sext i1 %i.gd to i64                    ; 2 uses
  %i.gf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ge) #38, !srcloc !389 ; 3 uses
  %i.gg = xor i64 %i.ge, -1
  %i.gh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gg) #38, !srcloc !389 ; 0 uses
  %i.gi = and i128 %i.fa, 18446744073709551615
  %i.gj = zext i64 %i.gf to i128
  %i.gk = add nuw nsw i128 %i.gi, %i.gj           ; 2 uses
  %i.gl = trunc i128 %i.gk to i64
  %i.gm = lshr i128 %i.gk, 64
  %i.gn = and i64 %i.gf, 4294967295
  %i.go = and i128 %i.fj, 18446744073709551615
  %i.gp = zext nneg i64 %i.gn to i128
  %i.gq = add nuw nsw i128 %i.go, %i.gp
  %i.gr = add nuw nsw i128 %i.gq, %i.gm           ; 2 uses
  %i.gs = trunc i128 %i.gr to i64
  %i.gt = lshr i128 %i.gr, 64
  %i.gu = and i128 %i.fs, 18446744073709551615
  %i.gv = add nuw nsw i128 %i.gt, %i.gu           ; 2 uses
  %i.gw = trunc i128 %i.gv to i64
  %i.gx = lshr i128 %i.gv, 64
  %i.gy = and i64 %i.gf, -4294967295
  %i.gz = add nsw i128 %i.gx, %i.gb
  %i.ha = trunc i128 %i.gz to i64
  %i.hb = add i64 %i.gy, %i.ha
  store i64 %i.gl, ptr %i.g, align 16, !tbaa !96
  store i64 %i.gs, ptr %i.co, align 8, !tbaa !96
  store i64 %i.gw, ptr %i.cp, align 16, !tbaa !96
  store i64 %i.hb, ptr %i.cq, align 8, !tbaa !96
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.f, ptr noundef nonnull %9, ptr noundef %i.h)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.f, ptr noundef nonnull %i.f, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  %.pre = load i64, ptr %i.e, align 16, !tbaa !96
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre144 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !96
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.pre146 = load i64, ptr %.phi.trans.insert145, align 16, !tbaa !96
  %.phi.trans.insert147 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.pre148 = load i64, ptr %.phi.trans.insert147, align 8, !tbaa !96
  %i.hc = load <2 x i64>, ptr %i.f, align 16, !tbaa !96
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.hd = load i64, ptr %3, align 8, !tbaa !96    ; 2 uses
  store i64 %i.hd, ptr %i.e, align 16, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !96 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !96
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !96 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.hi, ptr %i.hj, align 16, !tbaa !96
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !96 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !96
  %add.narrowed.i43 = shl i64 %i.r, 1             ; 2 uses
  %.lobit = lshr i64 %i.r, 63
  %i.hn = zext nneg i64 %.lobit to i128
  %i.ho = zext i64 %i.t to i128                   ; 2 uses
  %reass.add = shl nuw nsw i128 %i.ho, 1
  %i.hp = or disjoint i128 %reass.add, %i.hn      ; 2 uses
  %i.hq = trunc i128 %i.hp to i64
  %i.hr = lshr i128 %i.ho, 63
  %i.hs = zext i64 %i.v to i128                   ; 2 uses
  %i.ht = shl nuw nsw i128 %i.hs, 1
  %i.hu = or disjoint i128 %i.ht, %i.hr           ; 2 uses
  %i.hv = trunc i128 %i.hu to i64
  %i.hw = lshr i128 %i.hs, 63
  %i.hx = zext i64 %i.x to i128                   ; 2 uses
  %i.hy = shl nuw nsw i128 %i.hx, 1
  %i.hz = or disjoint i128 %i.hy, %i.hw           ; 2 uses
  %i.ia = trunc i128 %i.hz to i64
  %i.ib = lshr i128 %i.hx, 63
  %i.ic = or disjoint i64 %add.narrowed.i43, 1
  %i.id = and i128 %i.hp, 18446744073709551615
  %i.ie = add nsw i128 %i.id, -4294967296         ; 2 uses
  %18 = trunc i128 %i.ie to i64
  %19 = lshr i128 %i.ie, 64
  %i.if = and i128 %i.hu, 18446744073709551615
  %i.ig = sub nsw i128 0, %19
  %i.ih = and i128 %i.ig, 255
  %i.ii = sub nsw i128 %i.if, %i.ih               ; 2 uses
  %20 = trunc i128 %i.ii to i64
  %21 = lshr i128 %i.ii, 64
  %i.ij = and i128 %i.hz, 18446744073709551615
  %i.ik = sub nsw i128 0, %21
  %i.il = and i128 %i.ik, 255
  %reass.sub42.i46 = sub nsw i128 %i.ij, %i.il
  %i.im = add nsw i128 %reass.sub42.i46, -18446744069414584321 ; 2 uses
  %22 = trunc i128 %i.im to i64
  %23 = lshr i128 %i.im, 64
  %i.in = sub nsw i128 0, %23
  %i.io = and i128 %i.in, 255
  %i.ip = sub nsw i128 %i.ib, %i.io
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = trunc i128 %i.iq to i8
  %i.is = icmp ne i8 %i.ir, 0
  %i.it = sext i1 %i.is to i64                    ; 2 uses
  %i.iu = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.it) #38, !srcloc !389 ; 4 uses
  %i.iv = and i64 %i.iu, %add.narrowed.i43
  %i.iw = xor i64 %i.it, -1
  %i.ix = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.iw) #38, !srcloc !389 ; 4 uses
  %i.iy = and i64 %i.ix, %i.ic
  %i.iz = or i64 %i.iy, %i.iv
  %i.ja = and i64 %i.iu, %i.hq
  %i.jb = and i64 %i.ix, %18
  %i.jc = or i64 %i.jb, %i.ja
  %i.jd = and i64 %i.iu, %i.hv
  %i.je = and i64 %i.ix, %20
  %i.jf = or i64 %i.je, %i.jd
  %i.jg = and i64 %i.iu, %i.ia
  %i.jh = and i64 %i.ix, %22
  %i.ji = or i64 %i.jh, %i.jg
  store i64 %i.iz, ptr %i.g, align 16, !tbaa !96
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.jc, ptr %i.jj, align 8, !tbaa !96
  %i.jk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.jf, ptr %i.jk, align 16, !tbaa !96
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ji, ptr %i.jl, align 8, !tbaa !96
  %i.jm = load <4 x i64>, ptr %4, align 8, !tbaa !96 ; 2 uses
  store <4 x i64> %i.jm, ptr %i.f, align 16, !tbaa !96
  %i.jn = shufflevector <4 x i64> %i.jm, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.jo = phi i64 [ %i.hl, %bb.c ], [ %.pre148, %bb.b ]
  %i.jp = phi i64 [ %i.hi, %bb.c ], [ %.pre146, %bb.b ]
  %i.jq = phi i64 [ %i.hf, %bb.c ], [ %.pre144, %bb.b ]
  %i.jr = phi i64 [ %i.hd, %bb.c ], [ %.pre, %bb.b ]
  %i.js = phi <2 x i64> [ %i.jn, %bb.c ], [ %i.hc, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.i, ptr noundef %7, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.jt = load i64, ptr %i.i, align 16, !tbaa !96
  %i.ju = zext i64 %i.jt to i128
  %i.jv = zext i64 %i.jr to i128
  %i.jw = sub nsw i128 %i.ju, %i.jv               ; 2 uses
  %i.jx = lshr i128 %i.jw, 64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !96
  %i.ka = zext i64 %i.jz to i128
  %i.kb = sub nsw i128 0, %i.jx
  %i.kc = and i128 %i.kb, 255
  %i.kd = zext i64 %i.jq to i128
  %i.ke = add nuw nsw i128 %i.kc, %i.kd
  %i.kf = sub nsw i128 %i.ka, %i.ke               ; 2 uses
  %i.kg = lshr i128 %i.kf, 64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ki = load i64, ptr %i.kh, align 16, !tbaa !96
  %i.kj = zext i64 %i.ki to i128
  %i.kk = sub nsw i128 0, %i.kg
  %i.kl = and i128 %i.kk, 255
  %i.km = zext i64 %i.jp to i128
  %i.kn = add nuw nsw i128 %i.kl, %i.km
  %i.ko = sub nsw i128 %i.kj, %i.kn               ; 2 uses
  %i.kp = lshr i128 %i.ko, 64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !96
  %i.ks = zext i64 %i.kr to i128
  %i.kt = sub nsw i128 0, %i.kp
  %i.ku = and i128 %i.kt, 255
  %i.kv = zext i64 %i.jo to i128
  %i.kw = add nuw nsw i128 %i.ku, %i.kv
  %i.kx = sub nsw i128 %i.ks, %i.kw               ; 2 uses
  %i.ky = and i128 %i.kx, 4703919738795935662080
  %i.kz = icmp ne i128 %i.ky, 0
  %i.la = sext i1 %i.kz to i64                    ; 2 uses
  %i.lb = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.la) #38, !srcloc !389 ; 3 uses
  %i.lc = xor i64 %i.la, -1
  %i.ld = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lc) #38, !srcloc !389 ; 0 uses
  %i.le = and i128 %i.jw, 18446744073709551615
  %i.lf = zext i64 %i.lb to i128
  %i.lg = add nuw nsw i128 %i.le, %i.lf           ; 2 uses
  %i.lh = trunc i128 %i.lg to i64                 ; 4 uses
  %i.li = lshr i128 %i.lg, 64
  %i.lj = and i64 %i.lb, 4294967295
  %i.lk = and i128 %i.kf, 18446744073709551615
  %i.ll = zext nneg i64 %i.lj to i128
  %i.lm = add nuw nsw i128 %i.lk, %i.ll
  %i.ln = add nuw nsw i128 %i.lm, %i.li           ; 3 uses
  %i.lo = trunc i128 %i.ln to i64                 ; 2 uses
  %i.lp = lshr i128 %i.ln, 64
  %i.lq = and i128 %i.ko, 18446744073709551615
  %i.lr = add nuw nsw i128 %i.lp, %i.lq           ; 3 uses
  %i.ls = trunc i128 %i.lr to i64                 ; 2 uses
  %i.lt = lshr i128 %i.lr, 64
  %i.lu = and i64 %i.lb, -4294967295
  %i.lv = add nsw i128 %i.lt, %i.kx
  %i.lw = trunc i128 %i.lv to i64
  %i.lx = add i64 %i.lu, %i.lw                    ; 3 uses
  store i64 %i.lh, ptr %i.j, align 16, !tbaa !96
  %i.ly = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.lo, ptr %i.ly, align 8, !tbaa !96
  %i.lz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ls, ptr %i.lz, align 16, !tbaa !96
  %i.ma = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %i.lx, ptr %i.ma, align 8, !tbaa !96
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.c, ptr noundef nonnull %i.j, ptr noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.k, ptr noundef nonnull %5, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.l, ptr noundef %8, ptr noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #36
  %i.mb = load i64, ptr %i.l, align 16, !tbaa !96
  %i.mc = zext i64 %i.mb to i128
  %i.md = extractelement <2 x i64> %i.js, i64 0
  %i.me = zext i64 %i.md to i128
  %i.mf = sub nsw i128 %i.mc, %i.me               ; 2 uses
  %i.mg = lshr i128 %i.mf, 64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !96
  %i.mj = zext i64 %i.mi to i128
  %i.mk = sub nsw i128 0, %i.mg
  %i.ml = and i128 %i.mk, 255
  %i.mm = extractelement <2 x i64> %i.js, i64 1
  %i.mn = zext i64 %i.mm to i128
  %i.mo = add nuw nsw i128 %i.ml, %i.mn
  %i.mp = sub nsw i128 %i.mj, %i.mo               ; 2 uses
  %i.mq = lshr i128 %i.mp, 64
  %i.mr = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ms = load i64, ptr %i.mr, align 16, !tbaa !96
  %i.mt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.mu = load i64, ptr %i.mt, align 16, !tbaa !96
  %i.mv = zext i64 %i.ms to i128
  %i.mw = sub nsw i128 0, %i.mq
  %i.mx = and i128 %i.mw, 255
  %i.my = zext i64 %i.mu to i128
  %i.mz = add nuw nsw i128 %i.mx, %i.my
  %i.na = sub nsw i128 %i.mv, %i.mz               ; 2 uses
  %i.nb = lshr i128 %i.na, 64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !96
  %i.ne = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !96
  %i.ng = zext i64 %i.nd to i128
  %i.nh = sub nsw i128 0, %i.nb
  %i.ni = and i128 %i.nh, 255
  %i.nj = zext i64 %i.nf to i128
  %i.nk = add nuw nsw i128 %i.ni, %i.nj
  %i.nl = sub nsw i128 %i.ng, %i.nk               ; 2 uses
  %i.nm = and i128 %i.nl, 4703919738795935662080
  %i.nn = icmp ne i128 %i.nm, 0
  %i.no = sext i1 %i.nn to i64                    ; 2 uses
  %i.np = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.no) #38, !srcloc !389 ; 3 uses
  %i.nq = xor i64 %i.no, -1
  %i.nr = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.nq) #38, !srcloc !389 ; 0 uses
  %i.ns = and i128 %i.mf, 18446744073709551615
  %i.nt = zext i64 %i.np to i128
  %i.nu = add nuw nsw i128 %i.ns, %i.nt           ; 2 uses
  %i.nv = trunc i128 %i.nu to i64                 ; 2 uses
  %i.nw = lshr i128 %i.nu, 64
  %i.nx = and i64 %i.np, 4294967295
  %i.ny = and i128 %i.mp, 18446744073709551615
  %i.nz = zext nneg i64 %i.nx to i128
  %i.oa = add nuw nsw i128 %i.ny, %i.nz
  %i.ob = add nuw nsw i128 %i.oa, %i.nw           ; 2 uses
  %i.oc = lshr i128 %i.ob, 64
  %i.od = and i128 %i.na, 18446744073709551615
  %i.oe = add nuw nsw i128 %i.oc, %i.od           ; 2 uses
  %i.of = lshr i128 %i.oe, 64
  %i.og = and i64 %i.np, -4294967295
  %i.oh = add nsw i128 %i.of, %i.nl
  %i.oi = trunc i128 %i.oh to i64
  %i.oj = add i64 %i.og, %i.oi
  %i.ok = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %add.narrowed.i47 = shl i64 %i.nv, 1            ; 2 uses
  %.lobit57 = lshr i64 %i.nv, 63
  %i.on = zext nneg i64 %.lobit57 to i128
  %i.oo = shl nuw nsw i128 %i.ob, 1
  %reass.add58 = and i128 %i.oo, 36893488147419103230 ; 2 uses
  %i.op = or disjoint i128 %reass.add58, %i.on    ; 2 uses
  %i.oq = trunc i128 %i.op to i64
  %i.or = lshr i128 %reass.add58, 64
  %i.os = shl nuw nsw i128 %i.oe, 1
  %i.ot = and i128 %i.os, 36893488147419103230    ; 2 uses
  %i.ou = or disjoint i128 %i.ot, %i.or           ; 2 uses
  %i.ov = trunc i128 %i.ou to i64
  %i.ow = lshr i128 %i.ot, 64
  %i.ox = zext i64 %i.oj to i128                  ; 2 uses
  %i.oy = shl nuw nsw i128 %i.ox, 1
  %i.oz = or disjoint i128 %i.oy, %i.ow           ; 2 uses
  %i.pa = trunc i128 %i.oz to i64
  %i.pb = lshr i128 %i.ox, 63
  %i.pc = or disjoint i64 %add.narrowed.i47, 1
  %i.pd = and i128 %i.op, 18446744073709551615
  %i.pe = add nsw i128 %i.pd, -4294967296         ; 2 uses
  %24 = trunc i128 %i.pe to i64
  %25 = lshr i128 %i.pe, 64
  %i.pf = and i128 %i.ou, 18446744073709551615
  %i.pg = sub nsw i128 0, %25
  %i.ph = and i128 %i.pg, 255
  %i.pi = sub nsw i128 %i.pf, %i.ph               ; 2 uses
  %26 = trunc i128 %i.pi to i64
  %27 = lshr i128 %i.pi, 64
  %i.pj = and i128 %i.oz, 18446744073709551615
  %i.pk = sub nsw i128 0, %27
  %i.pl = and i128 %i.pk, 255
  %reass.sub42.i50 = sub nsw i128 %i.pj, %i.pl
  %i.pm = add nsw i128 %reass.sub42.i50, -18446744069414584321 ; 2 uses
  %28 = trunc i128 %i.pm to i64
  %29 = lshr i128 %i.pm, 64
  %i.pn = sub nsw i128 0, %29
  %i.po = and i128 %i.pn, 255
  %i.pp = sub nsw i128 %i.pb, %i.po
  %i.pq = lshr i128 %i.pp, 64
  %i.pr = trunc i128 %i.pq to i8
  %i.ps = icmp ne i8 %i.pr, 0
  %i.pt = sext i1 %i.ps to i64                    ; 2 uses
  %i.pu = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.pt) #38, !srcloc !389 ; 4 uses
  %i.pv = and i64 %i.pu, %add.narrowed.i47
  %i.pw = xor i64 %i.pt, -1
  %i.px = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.pw) #38, !srcloc !389 ; 4 uses
  %i.py = and i64 %i.px, %i.pc
  %i.pz = or i64 %i.py, %i.pv                     ; 2 uses
  %i.qa = and i64 %i.pu, %i.oq
  %i.qb = and i64 %i.px, %24
  %i.qc = or i64 %i.qb, %i.qa                     ; 2 uses
  %i.qd = and i64 %i.pu, %i.ov
  %i.qe = and i64 %i.px, %26
  %i.qf = or i64 %i.qe, %i.qd                     ; 2 uses
  %i.qg = and i64 %i.pu, %i.pa
  %i.qh = and i64 %i.px, %28
  %i.qi = or i64 %i.qh, %i.qg                     ; 2 uses
  store i64 %i.pz, ptr %i.m, align 16, !tbaa !96
  store i64 %i.qc, ptr %i.ok, align 8, !tbaa !96
  store i64 %i.qf, ptr %i.ol, align 16, !tbaa !96
  store i64 %i.qi, ptr %i.om, align 8, !tbaa !96
  %i.qj = or i64 %i.lo, %i.lh
  %i.qk = or i64 %i.qj, %i.ls
  %i.ql = or i64 %i.qk, %i.lx
  %i.qm = or i64 %i.ql, %i.pz
  %i.qn = or i64 %i.qm, %i.qc
  %i.qo = or i64 %i.qn, %i.qf
  %i.qp = or i64 %i.qo, %i.qi
  %i.qq = icmp eq i64 %i.qp, 0
  %i.qr = icmp ne i64 %i.aa, 0                    ; 2 uses
  %i.qs = icmp ne i64 %i.ak, 0                    ; 2 uses
  %i.qt = and i1 %i.qs, %i.qq
  %i.qu = and i1 %i.qt, %i.qr
  %i.qv = sext i1 %i.qu to i64
  %i.qw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.qv) #38, !srcloc !108
  %.not42 = icmp eq i64 %i.qw, 0
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL22fiat_p256_point_doublePmS_S_PKmS1_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #36
  %add.narrowed.i53 = shl i64 %i.lh, 1            ; 2 uses
  %.lobit59 = lshr i64 %i.lh, 63
  %i.qx = zext nneg i64 %.lobit59 to i128
  %i.qy = shl nuw nsw i128 %i.ln, 1
  %reass.add60 = and i128 %i.qy, 36893488147419103230 ; 2 uses
  %i.qz = or disjoint i128 %reass.add60, %i.qx    ; 2 uses
  %i.ra = trunc i128 %i.qz to i64
  %i.rb = lshr i128 %reass.add60, 64
  %i.rc = shl nuw nsw i128 %i.lr, 1
  %i.rd = and i128 %i.rc, 36893488147419103230    ; 2 uses
  %i.re = or disjoint i128 %i.rd, %i.rb           ; 2 uses
  %i.rf = trunc i128 %i.re to i64
  %i.rg = lshr i128 %i.rd, 64
  %i.rh = zext i64 %i.lx to i128                  ; 2 uses
  %i.ri = shl nuw nsw i128 %i.rh, 1
  %i.rj = or disjoint i128 %i.ri, %i.rg           ; 2 uses
  %i.rk = trunc i128 %i.rj to i64
  %i.rl = lshr i128 %i.rh, 63
  %i.rm = or disjoint i64 %add.narrowed.i53, 1
  %i.rn = and i128 %i.qz, 18446744073709551615
  %i.ro = add nsw i128 %i.rn, -4294967296         ; 2 uses
  %30 = trunc i128 %i.ro to i64
  %31 = lshr i128 %i.ro, 64
  %i.rp = and i128 %i.re, 18446744073709551615
  %i.rq = sub nsw i128 0, %31
  %i.rr = and i128 %i.rq, 255
  %i.rs = sub nsw i128 %i.rp, %i.rr               ; 2 uses
  %32 = trunc i128 %i.rs to i64
  %33 = lshr i128 %i.rs, 64
  %i.rt = and i128 %i.rj, 18446744073709551615
  %i.ru = sub nsw i128 0, %33
  %i.rv = and i128 %i.ru, 255
  %reass.sub42.i56 = sub nsw i128 %i.rt, %i.rv
  %i.rw = add nsw i128 %reass.sub42.i56, -18446744069414584321 ; 2 uses
  %34 = trunc i128 %i.rw to i64
  %35 = lshr i128 %i.rw, 64
  %i.rx = sub nsw i128 0, %35
  %i.ry = and i128 %i.rx, 255
  %i.rz = sub nsw i128 %i.rl, %i.ry
  %i.sa = lshr i128 %i.rz, 64
  %i.sb = trunc i128 %i.sa to i8
  %i.sc = icmp ne i8 %i.sb, 0
  %i.sd = sext i1 %i.sc to i64                    ; 2 uses
  %i.se = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.sd) #38, !srcloc !389 ; 4 uses
  %i.sf = and i64 %i.se, %add.narrowed.i53
  %i.sg = xor i64 %i.sd, -1
  %i.sh = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.sg) #38, !srcloc !389 ; 4 uses
  %i.si = and i64 %i.sh, %i.rm
  %i.sj = or i64 %i.si, %i.sf
  %i.sk = and i64 %i.se, %i.ra
  %i.sl = and i64 %i.sh, %30
  %i.sm = or i64 %i.sl, %i.sk
  %i.sn = and i64 %i.se, %i.rf
  %i.so = and i64 %i.sh, %32
  %i.sp = or i64 %i.so, %i.sn
  %i.sq = and i64 %i.se, %i.rk
  %i.sr = and i64 %i.sh, %34
  %i.ss = or i64 %i.sr, %i.sq
  store i64 %i.sj, ptr %i.n, align 16, !tbaa !96
  %i.st = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.sm, ptr %i.st, align 8, !tbaa !96
  %i.su = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.sp, ptr %i.su, align 16, !tbaa !96
  %i.sv = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.ss, ptr %i.sv, align 8, !tbaa !96
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.n, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.o, ptr noundef nonnull %i.j, ptr noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.p, ptr noundef nonnull %i.e, ptr noundef %i.n)
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.a, ptr noundef nonnull %i.m)
  %i.sw = load i64, ptr %i.a, align 16, !tbaa !96
  %i.sx = load i64, ptr %i.o, align 16, !tbaa !96
  %i.sy = zext i64 %i.sw to i128
  %i.sz = zext i64 %i.sx to i128
  %i.ta = sub nsw i128 %i.sy, %i.sz               ; 2 uses
  %i.tb = lshr i128 %i.ta, 64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !96
  %i.te = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !96
  %i.tg = zext i64 %i.td to i128
  %i.th = sub nsw i128 0, %i.tb
  %i.ti = and i128 %i.th, 255
  %i.tj = zext i64 %i.tf to i128
  %i.tk = add nuw nsw i128 %i.ti, %i.tj
  %i.tl = sub nsw i128 %i.tg, %i.tk               ; 2 uses
  %i.tm = lshr i128 %i.tl, 64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.to = load i64, ptr %i.tn, align 16, !tbaa !96
  %i.tp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.tq = load i64, ptr %i.tp, align 16, !tbaa !96
  %i.tr = zext i64 %i.to to i128
  %i.ts = sub nsw i128 0, %i.tm
  %i.tt = and i128 %i.ts, 255
  %i.tu = zext i64 %i.tq to i128
  %i.tv = add nuw nsw i128 %i.tt, %i.tu
  %i.tw = sub nsw i128 %i.tr, %i.tv               ; 2 uses
  %i.tx = lshr i128 %i.tw, 64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !96
  %i.ua = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !96
  %i.uc = zext i64 %i.tz to i128
  %i.ud = sub nsw i128 0, %i.tx
  %i.ue = and i128 %i.ud, 255
  %i.uf = zext i64 %i.ub to i128
  %i.ug = add nuw nsw i128 %i.ue, %i.uf
  %i.uh = sub nsw i128 %i.uc, %i.ug               ; 2 uses
  %i.ui = and i128 %i.uh, 4703919738795935662080
  %i.uj = icmp ne i128 %i.ui, 0
  %i.uk = sext i1 %i.uj to i64                    ; 2 uses
  %i.ul = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.uk) #38, !srcloc !389 ; 3 uses
  %i.um = xor i64 %i.uk, -1
  %i.un = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.um) #38, !srcloc !389 ; 0 uses
  %i.uo = and i128 %i.ta, 18446744073709551615
  %i.up = zext i64 %i.ul to i128
  %i.uq = add nuw nsw i128 %i.uo, %i.up           ; 2 uses
  %i.ur = lshr i128 %i.uq, 64
  %i.us = and i64 %i.ul, 4294967295
  %i.ut = and i128 %i.tl, 18446744073709551615
  %i.uu = zext nneg i64 %i.us to i128
  %i.uv = add nuw nsw i128 %i.ut, %i.uu
  %i.uw = add nuw nsw i128 %i.uv, %i.ur           ; 2 uses
  %i.ux = lshr i128 %i.uw, 64
  %i.uy = and i128 %i.tw, 18446744073709551615
  %i.uz = add nuw nsw i128 %i.ux, %i.uy           ; 2 uses
  %i.va = lshr i128 %i.uz, 64
  %i.vb = and i64 %i.ul, -4294967295
  %i.vc = add nsw i128 %i.va, %i.uh
  %i.vd = trunc i128 %i.vc to i64
  %i.ve = add i64 %i.vb, %i.vd
  %i.vf = load i64, ptr %i.p, align 16, !tbaa !96
  %i.vg = and i128 %i.uq, 18446744073709551615
  %i.vh = zext i64 %i.vf to i128                  ; 3 uses
  %i.vi = sub nsw i128 %i.vg, %i.vh               ; 2 uses
  %i.vj = lshr i128 %i.vi, 64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !96
  %i.vm = and i128 %i.uw, 18446744073709551615
  %i.vn = sub nsw i128 0, %i.vj
  %i.vo = and i128 %i.vn, 255
  %i.vp = zext i64 %i.vl to i128                  ; 3 uses
  %i.vq = add nuw nsw i128 %i.vo, %i.vp
  %i.vr = sub nsw i128 %i.vm, %i.vq               ; 2 uses
  %i.vs = lshr i128 %i.vr, 64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.vu = load i64, ptr %i.vt, align 16, !tbaa !96
  %i.vv = and i128 %i.uz, 18446744073709551615
  %i.vw = sub nsw i128 0, %i.vs
  %i.vx = and i128 %i.vw, 255
  %i.vy = zext i64 %i.vu to i128                  ; 3 uses
  %i.vz = add nuw nsw i128 %i.vx, %i.vy
  %i.wa = sub nsw i128 %i.vv, %i.vz               ; 2 uses
  %i.wb = lshr i128 %i.wa, 64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !96
  %i.we = zext i64 %i.ve to i128
  %i.wf = sub nsw i128 0, %i.wb
  %i.wg = and i128 %i.wf, 255
  %i.wh = zext i64 %i.wd to i128                  ; 3 uses
  %i.wi = add nuw nsw i128 %i.wg, %i.wh
  %i.wj = sub nsw i128 %i.we, %i.wi               ; 2 uses
  %i.wk = and i128 %i.wj, 4703919738795935662080
  %i.wl = icmp ne i128 %i.wk, 0
  %i.wm = sext i1 %i.wl to i64                    ; 2 uses
  %i.wn = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.wm) #38, !srcloc !389 ; 3 uses
  %i.wo = xor i64 %i.wm, -1
  %i.wp = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.wo) #38, !srcloc !389 ; 0 uses
  %i.wq = and i128 %i.vi, 18446744073709551615
  %i.wr = zext i64 %i.wn to i128
  %i.ws = add nuw nsw i128 %i.wq, %i.wr           ; 2 uses
  %i.wt = lshr i128 %i.ws, 64
  %i.wu = and i64 %i.wn, 4294967295
  %i.wv = and i128 %i.vr, 18446744073709551615
  %i.ww = zext nneg i64 %i.wu to i128
  %i.wx = add nuw nsw i128 %i.wv, %i.ww
  %i.wy = add nuw nsw i128 %i.wx, %i.wt           ; 2 uses
  %i.wz = lshr i128 %i.wy, 64
  %i.xa = and i128 %i.wa, 18446744073709551615
  %i.xb = add nuw nsw i128 %i.wz, %i.xa           ; 2 uses
  %i.xc = lshr i128 %i.xb, 64
  %i.xd = and i64 %i.wn, -4294967295
  %i.xe = add nsw i128 %i.xc, %i.wj
  %i.xf = trunc i128 %i.xe to i64
  %i.xg = add i64 %i.xd, %i.xf
  %i.xh = and i128 %i.ws, 18446744073709551615
  %i.xi = sub nsw i128 %i.xh, %i.vh               ; 2 uses
  %i.xj = lshr i128 %i.xi, 64
  %i.xk = and i128 %i.wy, 18446744073709551615
  %i.xl = sub nsw i128 0, %i.xj
  %i.xm = and i128 %i.xl, 255
  %i.xn = add nuw nsw i128 %i.xm, %i.vp
  %i.xo = sub nsw i128 %i.xk, %i.xn               ; 2 uses
  %i.xp = lshr i128 %i.xo, 64
  %i.xq = and i128 %i.xb, 18446744073709551615
  %i.xr = sub nsw i128 0, %i.xp
  %i.xs = and i128 %i.xr, 255
  %i.xt = add nuw nsw i128 %i.xs, %i.vy
  %i.xu = sub nsw i128 %i.xq, %i.xt               ; 2 uses
  %i.xv = lshr i128 %i.xu, 64
  %i.xw = zext i64 %i.xg to i128
  %i.xx = sub nsw i128 0, %i.xv
  %i.xy = and i128 %i.xx, 255
  %i.xz = add nuw nsw i128 %i.xy, %i.wh
  %i.ya = sub nsw i128 %i.xw, %i.xz               ; 2 uses
  %i.yb = and i128 %i.ya, 4703919738795935662080
  %i.yc = icmp ne i128 %i.yb, 0
  %i.yd = sext i1 %i.yc to i64                    ; 2 uses
  %i.ye = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.yd) #38, !srcloc !389 ; 3 uses
  %i.yf = xor i64 %i.yd, -1
  %i.yg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.yf) #38, !srcloc !389 ; 0 uses
  %i.yh = and i128 %i.xi, 18446744073709551615
  %i.yi = zext i64 %i.ye to i128
  %i.yj = and i64 %i.ye, 4294967295
  %i.yk = and i128 %i.xo, 18446744073709551615
  %i.yl = zext nneg i64 %i.yj to i128
  %i.ym = add nuw nsw i128 %i.yk, %i.yl
  %i.yn = add nuw nsw i128 %i.yh, %i.yi           ; 3 uses
  %i.yo = lshr i128 %i.yn, 64
  %i.yp = add nuw nsw i128 %i.ym, %i.yo           ; 3 uses
  %i.yq = insertelement <4 x i128> poison, i128 %i.yn, i64 0
  %i.yr = insertelement <4 x i128> %i.yq, i128 %i.yp, i64 1
  %i.ys = lshr i128 %i.yp, 64
  %i.yt = and i128 %i.xu, 18446744073709551615
  %i.yu = add nuw nsw i128 %i.ys, %i.yt           ; 3 uses
  %i.yv = trunc i128 %i.yu to i64
  %i.yw = lshr i128 %i.yu, 64
  %i.yx = and i64 %i.ye, -4294967295
  %i.yy = add nsw i128 %i.yw, %i.ya
  %i.yz = trunc i128 %i.yy to i64
  %i.za = add i64 %i.yx, %i.yz                    ; 2 uses
  %i.zb = and i128 %i.yn, 18446744073709551615
  %i.zc = sub nsw i128 %i.vh, %i.zb               ; 2 uses
  %i.zd = lshr i128 %i.zc, 64
  %i.ze = sub nsw i128 0, %i.zd
  %i.zf = and i128 %i.ze, 255
  %i.zg = and i128 %i.yp, 18446744073709551615
  %i.zh = add nuw nsw i128 %i.zg, %i.zf
  %i.zi = sub nsw i128 %i.vp, %i.zh               ; 2 uses
  %i.zj = lshr i128 %i.zi, 64
  %i.zk = sub nsw i128 0, %i.zj
  %i.zl = and i128 %i.zk, 255
  %i.zm = and i128 %i.yu, 18446744073709551615
  %i.zn = add nuw nsw i128 %i.zm, %i.zl
  %i.zo = sub nsw i128 %i.vy, %i.zn               ; 2 uses
  %i.zp = lshr i128 %i.zo, 64
  %i.zq = sub nsw i128 0, %i.zp
  %i.zr = and i128 %i.zq, 255
  %i.zs = zext i64 %i.za to i128
  %i.zt = add nuw nsw i128 %i.zr, %i.zs
  %i.zu = sub nsw i128 %i.wh, %i.zt               ; 2 uses
  %i.zv = and i128 %i.zu, 4703919738795935662080
  %i.zw = icmp ne i128 %i.zv, 0
  %i.zx = sext i1 %i.zw to i64                    ; 2 uses
  %i.zy = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.zx) #38, !srcloc !389 ; 3 uses
  %i.zz = xor i64 %i.zx, -1
end_hunk_1
begin_hunk_2_@_ZL19fiat_p256_point_addPmS_S_PKmS1_S1_iS1_S1_S1_:bb.a
  %i.aew = trunc i128 %i.aev to i64
  %i.aex = add i64 %i.aeu, %i.aew
  %i.aey = sext i1 %i.qr to i64                   ; 2 uses
  %i.aez = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.aey) #38, !srcloc !389 ; 2 uses
  %i.afa = xor i64 %i.aey, -1
  %i.afb = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.afa) #38, !srcloc !389 ; 2 uses
  %i.afc = sext i1 %i.qs to i64                   ; 2 uses
  %i.afd = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.afc) #38, !srcloc !389 ; 2 uses
  %i.afe = xor i64 %i.afc, -1
  %i.aff = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.afe) #38, !srcloc !389 ; 2 uses
  %i.afg = load <4 x i64>, ptr %7, align 8, !tbaa !96
  %i.afh = insertelement <4 x i64> poison, i64 %i.aez, i64 0
  %i.afi = shufflevector <4 x i64> %i.afh, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afj = trunc <4 x i128> %i.yr to <4 x i64>
  %i.afk = insertelement <4 x i64> %i.afj, i64 %i.yv, i64 2
  %i.afl = insertelement <4 x i64> %i.afk, i64 %i.za, i64 3
  %i.afm = and <4 x i64> %i.afi, %i.afl
  %i.afn = insertelement <4 x i64> poison, i64 %i.afb, i64 0
  %i.afo = shufflevector <4 x i64> %i.afn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afp = and <4 x i64> %i.afo, %i.afg
  %i.afq = or <4 x i64> %i.afp, %i.afm
  %i.afr = load <4 x i64>, ptr %3, align 8, !tbaa !96
  %i.afs = insertelement <4 x i64> poison, i64 %i.afd, i64 0
  %i.aft = shufflevector <4 x i64> %i.afs, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afu = and <4 x i64> %i.aft, %i.afq
  %i.afv = insertelement <4 x i64> poison, i64 %i.aff, i64 0
  %i.afw = shufflevector <4 x i64> %i.afv, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afx = and <4 x i64> %i.afw, %i.afr
  %i.afy = or <4 x i64> %i.afx, %i.afu
  store <4 x i64> %i.afy, ptr %0, align 8, !tbaa !96
  %i.afz = load <4 x i64>, ptr %8, align 8, !tbaa !96
  %i.aga = trunc <4 x i128> %i.aeo to <4 x i64>
  %i.agb = insertelement <4 x i64> %i.aga, i64 %i.aes, i64 2
  %i.agc = insertelement <4 x i64> %i.agb, i64 %i.aex, i64 3
  %i.agd = and <4 x i64> %i.agc, %i.afi
  %i.age = and <4 x i64> %i.afz, %i.afo
  %i.agf = or <4 x i64> %i.age, %i.agd
  %i.agg = load <4 x i64>, ptr %4, align 8, !tbaa !96
  %i.agh = and <4 x i64> %i.agf, %i.aft
  %i.agi = and <4 x i64> %i.agg, %i.afw
  %i.agj = or <4 x i64> %i.agi, %i.agh
  store <4 x i64> %i.agj, ptr %1, align 8, !tbaa !96
  %i.agk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.agl = load <2 x i64>, ptr %9, align 8, !tbaa !96
  %i.agm = load <2 x i64>, ptr %i.c, align 16, !tbaa !96
  %i.agn = insertelement <2 x i64> poison, i64 %i.aez, i64 0
  %i.ago = shufflevector <2 x i64> %i.agn, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agp = and <2 x i64> %i.agm, %i.ago
  %i.agq = insertelement <2 x i64> poison, i64 %i.afb, i64 0
  %i.agr = shufflevector <2 x i64> %i.agq, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ags = and <2 x i64> %i.agl, %i.agr
  %i.agt = or <2 x i64> %i.agp, %i.ags
  %i.agu = load <2 x i64>, ptr %5, align 8, !tbaa !96
  %i.agv = insertelement <2 x i64> poison, i64 %i.afd, i64 0
  %i.agw = shufflevector <2 x i64> %i.agv, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agx = and <2 x i64> %i.agt, %i.agw
  %i.agy = insertelement <2 x i64> poison, i64 %i.aff, i64 0
  %i.agz = shufflevector <2 x i64> %i.agy, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aha = and <2 x i64> %i.agu, %i.agz
  %i.ahb = or <2 x i64> %i.aha, %i.agx
  %i.ahc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ahd = load <2 x i64>, ptr %i.ae, align 8, !tbaa !96
  %i.ahe = load <2 x i64>, ptr %i.agk, align 16, !tbaa !96
  %i.ahf = and <2 x i64> %i.ahe, %i.ago
  %i.ahg = and <2 x i64> %i.ahd, %i.agr
  %i.ahh = or <2 x i64> %i.ahf, %i.ahg
  %i.ahi = load <2 x i64>, ptr %i.u, align 8, !tbaa !96
  %i.ahj = and <2 x i64> %i.ahh, %i.agw
  %i.ahk = and <2 x i64> %i.ahi, %i.agz
  %i.ahl = or <2 x i64> %i.ahk, %i.ahj
  store <2 x i64> %i.ahb, ptr %2, align 8, !tbaa !96
  store <2 x i64> %i.ahl, ptr %i.ahc, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL22fiat_p256_point_doublePmS_S_PKmS1_S1_(ptr nofree noundef nonnull captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %1, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #18 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 12 uses
  %i.c = alloca [4 x i64], align 16               ; 7 uses
  %i.d = alloca [4 x i64], align 16               ; 9 uses
  %i.e = alloca [4 x i64], align 16               ; 7 uses
  %i.f = alloca [4 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.a, ptr noundef nonnull %5)
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.b, ptr noundef nonnull %4)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.c, ptr noundef nonnull %3, ptr noundef %i.b)
  %i.g = load i64, ptr %3, align 8, !tbaa !96     ; 3 uses
  %i.h = load i64, ptr %i.a, align 16, !tbaa !96  ; 3 uses
  %i.i = zext i64 %i.g to i128
  %i.j = zext i64 %i.h to i128
  %i.k = sub nsw i128 %i.i, %i.j                  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !96
  %i.q = zext i64 %i.n to i128                    ; 2 uses
  %i.r = sub nsw i128 0, %i.l
  %i.s = and i128 %i.r, 255
  %i.t = zext i64 %i.p to i128                    ; 3 uses
  %i.u = add nuw nsw i128 %i.s, %i.t
  %i.v = sub nsw i128 %i.q, %i.u                  ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 16, !tbaa !96
  %i.ab = zext i64 %i.y to i128                   ; 2 uses
  %i.ac = sub nsw i128 0, %i.w
  %i.ad = and i128 %i.ac, 255
  %i.ae = zext i64 %i.aa to i128                  ; 3 uses
  %i.af = add nuw nsw i128 %i.ad, %i.ae
  %i.ag = sub nsw i128 %i.ab, %i.af               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !96
  %i.am = zext i64 %i.aj to i128                  ; 2 uses
  %i.an = sub nsw i128 0, %i.ah
  %i.ao = and i128 %i.an, 255
  %i.ap = zext i64 %i.al to i128                  ; 3 uses
  %i.aq = add nuw nsw i128 %i.ao, %i.ap
  %i.ar = sub nsw i128 %i.am, %i.aq               ; 2 uses
  %i.as = and i128 %i.ar, 4703919738795935662080
  %i.at = icmp ne i128 %i.as, 0
  %i.au = sext i1 %i.at to i64                    ; 2 uses
  %i.av = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.au) #38, !srcloc !389 ; 3 uses
  %i.aw = xor i64 %i.au, -1
  %i.ax = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.aw) #38, !srcloc !389 ; 0 uses
  %i.ay = and i128 %i.k, 18446744073709551615
  %i.az = zext i64 %i.av to i128
  %i.ba = add nuw nsw i128 %i.ay, %i.az           ; 2 uses
  %i.bb = trunc i128 %i.ba to i64
  %i.bc = lshr i128 %i.ba, 64
  %i.bd = and i64 %i.av, 4294967295
  %i.be = and i128 %i.v, 18446744073709551615
  %i.bf = zext nneg i64 %i.bd to i128
  %i.bg = add nuw nsw i128 %i.be, %i.bf
  %i.bh = add nuw nsw i128 %i.bg, %i.bc           ; 2 uses
  %i.bi = trunc i128 %i.bh to i64
  %i.bj = lshr i128 %i.bh, 64
  %i.bk = and i128 %i.ag, 18446744073709551615
  %i.bl = add nuw nsw i128 %i.bj, %i.bk           ; 2 uses
  %i.bm = trunc i128 %i.bl to i64
  %i.bn = lshr i128 %i.bl, 64
  %i.bo = and i64 %i.av, -4294967295
  %i.bp = add nsw i128 %i.bn, %i.ar
  %i.bq = trunc i128 %i.bp to i64
  %i.br = add i64 %i.bo, %i.bq
  store i64 %i.bb, ptr %i.d, align 16, !tbaa !96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bs, align 8, !tbaa !96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.bm, ptr %i.bt, align 16, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 %i.br, ptr %i.bu, align 8, !tbaa !96
  %add.narrowed.i = add i64 %i.h, %i.g            ; 3 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %i.g
  %i.bv = zext i1 %add.narrowed.overflow.i to i128
  %i.bw = add nuw nsw i128 %i.bv, %i.q
  %i.bx = add nuw nsw i128 %i.bw, %i.t            ; 3 uses
  %i.by = trunc i128 %i.bx to i64
  %i.bz = lshr i128 %i.bx, 64
  %i.ca = add nuw nsw i128 %i.ae, %i.ab
  %i.cb = add nuw nsw i128 %i.ca, %i.bz           ; 3 uses
  %i.cc = trunc i128 %i.cb to i64
  %i.cd = lshr i128 %i.cb, 64
  %i.ce = add nuw nsw i128 %i.ap, %i.am
  %i.cf = add nuw nsw i128 %i.ce, %i.cd           ; 3 uses
  %i.cg = trunc i128 %i.cf to i64
  %i.ch = lshr i128 %i.cf, 64
  %i.ci = zext i64 %add.narrowed.i to i128
  %i.cj = add nsw i128 %i.ci, -18446744073709551615 ; 2 uses
  %6 = trunc i128 %i.cj to i64
  %7 = lshr i128 %i.cj, 64
  %i.ck = and i128 %i.bx, 18446744073709551615
  %i.cl = sub nsw i128 0, %7
  %i.cm = and i128 %i.cl, 255
  %reass.sub.i = sub nsw i128 %i.ck, %i.cm
  %i.cn = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %8 = trunc i128 %i.cn to i64
  %9 = lshr i128 %i.cn, 64
  %i.co = and i128 %i.cb, 18446744073709551615
  %i.cp = sub nsw i128 0, %9
  %i.cq = and i128 %i.cp, 255
  %i.cr = sub nsw i128 %i.co, %i.cq               ; 2 uses
  %10 = trunc i128 %i.cr to i64
  %11 = lshr i128 %i.cr, 64
  %i.cs = and i128 %i.cf, 18446744073709551615
  %i.ct = sub nsw i128 0, %11
  %i.cu = and i128 %i.ct, 255
  %reass.sub42.i = sub nsw i128 %i.cs, %i.cu
  %i.cv = add nsw i128 %reass.sub42.i, -18446744069414584321 ; 2 uses
  %12 = trunc i128 %i.cv to i64
  %13 = lshr i128 %i.cv, 64
  %i.cw = sub nsw i128 0, %13
  %i.cx = and i128 %i.cw, 255
  %i.cy = sub nsw i128 %i.ch, %i.cx
  %i.cz = lshr i128 %i.cy, 64
  %i.da = trunc i128 %i.cz to i8
  %i.db = icmp ne i8 %i.da, 0
  %i.dc = sext i1 %i.db to i64                    ; 2 uses
  %i.dd = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.dc) #38, !srcloc !389 ; 4 uses
  %i.de = and i64 %i.dd, %add.narrowed.i
  %i.df = xor i64 %i.dc, -1
  %i.dg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.df) #38, !srcloc !389 ; 4 uses
  %i.dh = and i64 %i.dg, %6
  %i.di = or i64 %i.dh, %i.de                     ; 4 uses
  %i.dj = and i64 %i.dd, %i.by
  %i.dk = and i64 %i.dg, %8
  %i.dl = or i64 %i.dk, %i.dj
  %i.dm = and i64 %i.dd, %i.cc
  %i.dn = and i64 %i.dg, %10
  %i.do = or i64 %i.dn, %i.dm
  %i.dp = and i64 %i.dd, %i.cg
  %i.dq = and i64 %i.dg, %12
  %i.dr = or i64 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %add.narrowed.i19 = shl i64 %i.di, 1            ; 2 uses
  %.lobit = lshr i64 %i.di, 63
  %i.dv = zext nneg i64 %.lobit to i128
  %i.dw = zext i64 %i.dl to i128                  ; 3 uses
  %reass.add = shl nuw nsw i128 %i.dw, 1
  %i.dx = or disjoint i128 %reass.add, %i.dv      ; 2 uses
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = lshr i128 %i.dw, 63
  %i.ea = zext i64 %i.do to i128                  ; 3 uses
  %i.eb = shl nuw nsw i128 %i.ea, 1
  %i.ec = or disjoint i128 %i.eb, %i.dz           ; 2 uses
  %i.ed = trunc i128 %i.ec to i64
  %i.ee = lshr i128 %i.ea, 63
  %i.ef = zext i64 %i.dr to i128                  ; 3 uses
  %i.eg = shl nuw nsw i128 %i.ef, 1
  %i.eh = or disjoint i128 %i.eg, %i.ee           ; 2 uses
  %i.ei = trunc i128 %i.eh to i64
  %i.ej = lshr i128 %i.ef, 63
  %i.ek = or disjoint i64 %add.narrowed.i19, 1
  %i.el = and i128 %i.dx, 18446744073709551615
  %i.em = add nsw i128 %i.el, -4294967296         ; 2 uses
  %14 = trunc i128 %i.em to i64
  %15 = lshr i128 %i.em, 64
  %i.en = and i128 %i.ec, 18446744073709551615
  %i.eo = sub nsw i128 0, %15
  %i.ep = and i128 %i.eo, 255
  %i.eq = sub nsw i128 %i.en, %i.ep               ; 2 uses
  %16 = trunc i128 %i.eq to i64
  %17 = lshr i128 %i.eq, 64
  %i.er = and i128 %i.eh, 18446744073709551615
  %i.es = sub nsw i128 0, %17
  %i.et = and i128 %i.es, 255
  %reass.sub42.i22 = sub nsw i128 %i.er, %i.et
  %i.eu = add nsw i128 %reass.sub42.i22, -18446744069414584321 ; 2 uses
  %18 = trunc i128 %i.eu to i64
  %19 = lshr i128 %i.eu, 64
  %i.ev = sub nsw i128 0, %19
  %i.ew = and i128 %i.ev, 255
  %i.ex = sub nsw i128 %i.ej, %i.ew
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = trunc i128 %i.ey to i8
  %i.fa = icmp ne i8 %i.ez, 0
  %i.fb = sext i1 %i.fa to i64                    ; 2 uses
  %i.fc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.fb) #38, !srcloc !389 ; 4 uses
  %i.fd = and i64 %i.fc, %add.narrowed.i19
  %i.fe = xor i64 %i.fb, -1
  %i.ff = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.fe) #38, !srcloc !389 ; 4 uses
  %i.fg = and i64 %i.ff, %i.ek
  %i.fh = or i64 %i.fg, %i.fd
  %i.fi = and i64 %i.fc, %i.dy
  %i.fj = and i64 %i.ff, %14
  %i.fk = or i64 %i.fj, %i.fi
  %i.fl = and i64 %i.fc, %i.ed
  %i.fm = and i64 %i.ff, %16
  %i.fn = or i64 %i.fm, %i.fl
  %i.fo = and i64 %i.fc, %i.ei
  %i.fp = and i64 %i.ff, %18
  %i.fq = or i64 %i.fp, %i.fo
  %add.narrowed.i23 = add i64 %i.fh, %i.di        ; 3 uses
  %add.narrowed.overflow.i24 = icmp ult i64 %add.narrowed.i23, %i.di
  %i.fr = zext i1 %add.narrowed.overflow.i24 to i128
  %i.fs = add nuw nsw i128 %i.fr, %i.dw
  %i.ft = zext i64 %i.fk to i128
  %i.fu = add nuw nsw i128 %i.fs, %i.ft           ; 3 uses
  %i.fv = trunc i128 %i.fu to i64
  %i.fw = lshr i128 %i.fu, 64
  %i.fx = zext i64 %i.fn to i128
  %i.fy = add nuw nsw i128 %i.fx, %i.ea
  %i.fz = add nuw nsw i128 %i.fy, %i.fw           ; 3 uses
  %i.ga = trunc i128 %i.fz to i64
  %i.gb = lshr i128 %i.fz, 64
  %i.gc = zext i64 %i.fq to i128
  %i.gd = add nuw nsw i128 %i.gb, %i.ef
  %i.ge = add nuw nsw i128 %i.gd, %i.gc           ; 3 uses
  %i.gf = trunc i128 %i.ge to i64
  %i.gg = lshr i128 %i.ge, 64
  %i.gh = zext i64 %add.narrowed.i23 to i128
  %i.gi = add nsw i128 %i.gh, -18446744073709551615 ; 2 uses
  %20 = trunc i128 %i.gi to i64
  %21 = lshr i128 %i.gi, 64
  %i.gj = and i128 %i.fu, 18446744073709551615
  %i.gk = sub nsw i128 0, %21
  %i.gl = and i128 %i.gk, 255
  %reass.sub.i25 = sub nsw i128 %i.gj, %i.gl
  %i.gm = add nsw i128 %reass.sub.i25, -4294967295 ; 2 uses
  %22 = trunc i128 %i.gm to i64
  %23 = lshr i128 %i.gm, 64
  %i.gn = and i128 %i.fz, 18446744073709551615
  %i.go = sub nsw i128 0, %23
  %i.gp = and i128 %i.go, 255
  %i.gq = sub nsw i128 %i.gn, %i.gp               ; 2 uses
  %24 = trunc i128 %i.gq to i64
  %25 = lshr i128 %i.gq, 64
  %i.gr = and i128 %i.ge, 18446744073709551615
  %i.gs = sub nsw i128 0, %25
  %i.gt = and i128 %i.gs, 255
  %reass.sub42.i26 = sub nsw i128 %i.gr, %i.gt
  %i.gu = add nsw i128 %reass.sub42.i26, -18446744069414584321 ; 2 uses
  %26 = trunc i128 %i.gu to i64
  %27 = lshr i128 %i.gu, 64
  %i.gv = sub nsw i128 0, %27
  %i.gw = and i128 %i.gv, 255
  %i.gx = sub nsw i128 %i.gg, %i.gw
  %i.gy = lshr i128 %i.gx, 64
  %i.gz = trunc i128 %i.gy to i8
  %i.ha = icmp ne i8 %i.gz, 0
  %i.hb = sext i1 %i.ha to i64                    ; 2 uses
  %i.hc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.hb) #38, !srcloc !389 ; 4 uses
  %i.hd = and i64 %add.narrowed.i23, %i.hc
  %i.he = xor i64 %i.hb, -1
  %i.hf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.he) #38, !srcloc !389 ; 4 uses
  %i.hg = and i64 %i.hf, %20
  %i.hh = or i64 %i.hg, %i.hd
  %i.hi = and i64 %i.hc, %i.fv
  %i.hj = and i64 %i.hf, %22
  %i.hk = or i64 %i.hj, %i.hi
  %i.hl = and i64 %i.hc, %i.ga
  %i.hm = and i64 %i.hf, %24
  %i.hn = or i64 %i.hm, %i.hl
  %i.ho = and i64 %i.hc, %i.gf
  %i.hp = and i64 %i.hf, %26
  %i.hq = or i64 %i.hp, %i.ho
  store i64 %i.hh, ptr %i.e, align 16, !tbaa !96
  store i64 %i.hk, ptr %i.ds, align 8, !tbaa !96
  store i64 %i.hn, ptr %i.dt, align 16, !tbaa !96
  store i64 %i.hq, ptr %i.du, align 8, !tbaa !96
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %i.f, ptr noundef nonnull %i.d, ptr noundef %i.e)
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %0, ptr noundef nonnull %i.f)
  %i.hr = load i64, ptr %i.c, align 16, !tbaa !96 ; 2 uses
  %add.narrowed.i27 = shl i64 %i.hr, 1            ; 2 uses
  %.lobit76 = lshr i64 %i.hr, 63
  %i.hs = zext nneg i64 %.lobit76 to i128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !96
  %i.hv = zext i64 %i.hu to i128                  ; 2 uses
  %reass.add77 = shl nuw nsw i128 %i.hv, 1
  %i.hw = or disjoint i128 %reass.add77, %i.hs    ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hv, 63
  %i.hz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ia = load i64, ptr %i.hz, align 16, !tbaa !96
  %i.ib = zext i64 %i.ia to i128                  ; 2 uses
  %i.ic = shl nuw nsw i128 %i.ib, 1
  %i.id = or disjoint i128 %i.ic, %i.hy           ; 2 uses
  %i.ie = trunc i128 %i.id to i64
  %i.if = lshr i128 %i.ib, 63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !96
  %i.ii = zext i64 %i.ih to i128                  ; 2 uses
  %i.ij = shl nuw nsw i128 %i.ii, 1
  %i.ik = or disjoint i128 %i.ij, %i.if           ; 2 uses
  %i.il = trunc i128 %i.ik to i64
  %i.im = lshr i128 %i.ii, 63
  %i.in = or disjoint i64 %add.narrowed.i27, 1
  %i.io = and i128 %i.hw, 18446744073709551615
  %i.ip = add nsw i128 %i.io, -4294967296         ; 2 uses
  %28 = trunc i128 %i.ip to i64
  %29 = lshr i128 %i.ip, 64
  %i.iq = and i128 %i.id, 18446744073709551615
  %i.ir = sub nsw i128 0, %29
  %i.is = and i128 %i.ir, 255
  %i.it = sub nsw i128 %i.iq, %i.is               ; 2 uses
  %30 = trunc i128 %i.it to i64
  %31 = lshr i128 %i.it, 64
  %i.iu = and i128 %i.ik, 18446744073709551615
  %i.iv = sub nsw i128 0, %31
  %i.iw = and i128 %i.iv, 255
  %reass.sub42.i30 = sub nsw i128 %i.iu, %i.iw
  %i.ix = add nsw i128 %reass.sub42.i30, -18446744069414584321 ; 2 uses
  %32 = trunc i128 %i.ix to i64
  %33 = lshr i128 %i.ix, 64
  %i.iy = sub nsw i128 0, %33
  %i.iz = and i128 %i.iy, 255
  %i.ja = sub nsw i128 %i.im, %i.iz
  %i.jb = lshr i128 %i.ja, 64
  %i.jc = trunc i128 %i.jb to i8
  %i.jd = icmp ne i8 %i.jc, 0
  %i.je = sext i1 %i.jd to i64                    ; 2 uses
  %i.jf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.je) #38, !srcloc !389 ; 4 uses
  %i.jg = and i64 %i.jf, %add.narrowed.i27
  %i.jh = xor i64 %i.je, -1
  %i.ji = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.jh) #38, !srcloc !389 ; 4 uses
  %i.jj = and i64 %i.ji, %i.in
  %i.jk = or i64 %i.jj, %i.jg                     ; 2 uses
  %i.jl = and i64 %i.jf, %i.hx
  %i.jm = and i64 %i.ji, %28
  %i.jn = or i64 %i.jm, %i.jl
  %i.jo = and i64 %i.jf, %i.ie
  %i.jp = and i64 %i.ji, %30
  %i.jq = or i64 %i.jp, %i.jo
  %i.jr = and i64 %i.jf, %i.il
  %i.js = and i64 %i.ji, %32
  %i.jt = or i64 %i.js, %i.jr
  %add.narrowed.i31 = shl i64 %i.jk, 1            ; 2 uses
  %.lobit78 = lshr i64 %i.jk, 63
  %i.ju = zext nneg i64 %.lobit78 to i128
  %i.jv = zext i64 %i.jn to i128                  ; 2 uses
  %reass.add79 = shl nuw nsw i128 %i.jv, 1
  %i.jw = or disjoint i128 %reass.add79, %i.ju    ; 2 uses
  %i.jx = trunc i128 %i.jw to i64
  %i.jy = lshr i128 %i.jv, 63
  %i.jz = zext i64 %i.jq to i128                  ; 2 uses
  %i.ka = shl nuw nsw i128 %i.jz, 1
  %i.kb = or disjoint i128 %i.ka, %i.jy           ; 2 uses
  %i.kc = trunc i128 %i.kb to i64
  %i.kd = lshr i128 %i.jz, 63
  %i.ke = zext i64 %i.jt to i128                  ; 2 uses
  %i.kf = shl nuw nsw i128 %i.ke, 1
  %i.kg = or disjoint i128 %i.kf, %i.kd           ; 2 uses
  %i.kh = trunc i128 %i.kg to i64
  %i.ki = lshr i128 %i.ke, 63
  %i.kj = or disjoint i64 %add.narrowed.i31, 1
  %i.kk = and i128 %i.jw, 18446744073709551615
  %i.kl = add nsw i128 %i.kk, -4294967296         ; 2 uses
  %34 = trunc i128 %i.kl to i64
  %35 = lshr i128 %i.kl, 64
  %i.km = and i128 %i.kb, 18446744073709551615
  %i.kn = sub nsw i128 0, %35
  %i.ko = and i128 %i.kn, 255
  %i.kp = sub nsw i128 %i.km, %i.ko               ; 2 uses
  %36 = trunc i128 %i.kp to i64
  %37 = lshr i128 %i.kp, 64
  %i.kq = and i128 %i.kg, 18446744073709551615
  %i.kr = sub nsw i128 0, %37
  %i.ks = and i128 %i.kr, 255
  %reass.sub42.i34 = sub nsw i128 %i.kq, %i.ks
  %i.kt = add nsw i128 %reass.sub42.i34, -18446744069414584321 ; 2 uses
  %38 = trunc i128 %i.kt to i64
  %39 = lshr i128 %i.kt, 64
  %i.ku = sub nsw i128 0, %39
  %i.kv = and i128 %i.ku, 255
  %i.kw = sub nsw i128 %i.ki, %i.kv
  %i.kx = lshr i128 %i.kw, 64
  %i.ky = trunc i128 %i.kx to i8
  %i.kz = icmp ne i8 %i.ky, 0
  %i.la = sext i1 %i.kz to i64                    ; 2 uses
  %i.lb = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.la) #38, !srcloc !389 ; 4 uses
  %i.lc = and i64 %add.narrowed.i31, %i.lb
  %i.ld = xor i64 %i.la, -1
  %i.le = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ld) #38, !srcloc !389 ; 4 uses
  %i.lf = and i64 %i.kj, %i.le
  %i.lg = or i64 %i.lf, %i.lc                     ; 3 uses
  %i.lh = and i64 %i.lb, %i.jx
  %i.li = and i64 %i.le, %34
  %i.lj = or i64 %i.li, %i.lh
  %i.lk = and i64 %i.lb, %i.kc
  %i.ll = and i64 %i.le, %36
  %i.lm = or i64 %i.ll, %i.lk
  %i.ln = and i64 %i.lb, %i.kh
  %i.lo = and i64 %i.le, %38
  %i.lp = or i64 %i.lo, %i.ln
  %add.narrowed.i35 = shl i64 %i.lg, 1            ; 2 uses
  %.lobit80 = lshr i64 %i.lg, 63
  %i.lq = zext nneg i64 %.lobit80 to i128
  %i.lr = zext i64 %i.lj to i128                  ; 3 uses
  %reass.add81 = shl nuw nsw i128 %i.lr, 1
  %i.ls = or disjoint i128 %reass.add81, %i.lq    ; 2 uses
  %i.lt = trunc i128 %i.ls to i64
  %i.lu = lshr i128 %i.lr, 63
  %i.lv = zext i64 %i.lm to i128                  ; 3 uses
  %i.lw = shl nuw nsw i128 %i.lv, 1
  %i.lx = or disjoint i128 %i.lw, %i.lu           ; 2 uses
  %i.ly = trunc i128 %i.lx to i64
  %i.lz = lshr i128 %i.lv, 63
  %i.ma = zext i64 %i.lp to i128                  ; 3 uses
  %i.mb = shl nuw nsw i128 %i.ma, 1
  %i.mc = or disjoint i128 %i.mb, %i.lz           ; 2 uses
  %i.md = trunc i128 %i.mc to i64
  %i.me = lshr i128 %i.ma, 63
  %i.mf = or disjoint i64 %add.narrowed.i35, 1
  %i.mg = and i128 %i.ls, 18446744073709551615
  %i.mh = add nsw i128 %i.mg, -4294967296         ; 2 uses
  %40 = trunc i128 %i.mh to i64
  %41 = lshr i128 %i.mh, 64
  %i.mi = and i128 %i.lx, 18446744073709551615
  %i.mj = sub nsw i128 0, %41
  %i.mk = and i128 %i.mj, 255
  %i.ml = sub nsw i128 %i.mi, %i.mk               ; 2 uses
  %42 = trunc i128 %i.ml to i64
  %43 = lshr i128 %i.ml, 64
  %i.mm = and i128 %i.mc, 18446744073709551615
  %i.mn = sub nsw i128 0, %43
  %i.mo = and i128 %i.mn, 255
  %reass.sub42.i38 = sub nsw i128 %i.mm, %i.mo
  %i.mp = add nsw i128 %reass.sub42.i38, -18446744069414584321 ; 2 uses
  %44 = trunc i128 %i.mp to i64
  %45 = lshr i128 %i.mp, 64
  %i.mq = sub nsw i128 0, %45
  %i.mr = and i128 %i.mq, 255
  %i.ms = sub nsw i128 %i.me, %i.mr
  %i.mt = lshr i128 %i.ms, 64
  %i.mu = trunc i128 %i.mt to i8
  %i.mv = icmp ne i8 %i.mu, 0
  %i.mw = sext i1 %i.mv to i64                    ; 2 uses
  %i.mx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mw) #38, !srcloc !389 ; 4 uses
  %i.my = and i64 %add.narrowed.i35, %i.mx
  %i.mz = xor i64 %i.mw, -1
  %i.na = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mz) #38, !srcloc !389 ; 4 uses
  %i.nb = and i64 %i.mf, %i.na
  %i.nc = or i64 %i.nb, %i.my
  %i.nd = and i64 %i.mx, %i.lt
  %i.ne = and i64 %i.na, %40
  %i.nf = or i64 %i.ne, %i.nd
  %i.ng = and i64 %i.mx, %i.ly
  %i.nh = and i64 %i.na, %42
  %i.ni = or i64 %i.nh, %i.ng
  %i.nj = and i64 %i.mx, %i.md
  %i.nk = and i64 %i.na, %44
  %i.nl = or i64 %i.nk, %i.nj
  %i.nm = load i64, ptr %0, align 8, !tbaa !96
  %i.nn = zext i64 %i.nm to i128
  %i.no = zext i64 %i.nc to i128
  %i.np = sub nsw i128 %i.nn, %i.no               ; 2 uses
  %i.nq = lshr i128 %i.np, 64
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !96
  %i.nt = zext i64 %i.ns to i128
  %i.nu = sub nsw i128 0, %i.nq
  %i.nv = and i128 %i.nu, 255
  %i.nw = zext i64 %i.nf to i128
  %i.nx = add nuw nsw i128 %i.nv, %i.nw
  %i.ny = sub nsw i128 %i.nt, %i.nx               ; 2 uses
  %i.nz = lshr i128 %i.ny, 64
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !96
  %i.oc = zext i64 %i.ob to i128
  %i.od = sub nsw i128 0, %i.nz
  %i.oe = and i128 %i.od, 255
  %i.of = zext i64 %i.ni to i128
  %i.og = add nuw nsw i128 %i.oe, %i.of
  %i.oh = sub nsw i128 %i.oc, %i.og               ; 2 uses
  %i.oi = lshr i128 %i.oh, 64
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !96
  %i.ol = zext i64 %i.ok to i128
  %i.om = sub nsw i128 0, %i.oi
  %i.on = and i128 %i.om, 255
  %i.oo = zext i64 %i.nl to i128
  %i.op = add nuw nsw i128 %i.on, %i.oo
  %i.oq = sub nsw i128 %i.ol, %i.op               ; 2 uses
  %i.or = and i128 %i.oq, 4703919738795935662080
  %i.os = icmp ne i128 %i.or, 0
  %i.ot = sext i1 %i.os to i64                    ; 2 uses
  %i.ou = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ot) #38, !srcloc !389 ; 3 uses
  %i.ov = xor i64 %i.ot, -1
  %i.ow = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ov) #38, !srcloc !389 ; 0 uses
  %i.ox = and i128 %i.np, 18446744073709551615
  %i.oy = zext i64 %i.ou to i128
  %i.oz = add nuw nsw i128 %i.ox, %i.oy           ; 2 uses
  %i.pa = trunc i128 %i.oz to i64
  %i.pb = lshr i128 %i.oz, 64
  %i.pc = and i64 %i.ou, 4294967295
  %i.pd = and i128 %i.ny, 18446744073709551615
  %i.pe = zext nneg i64 %i.pc to i128
  %i.pf = add nuw nsw i128 %i.pb, %i.pe
  %i.pg = add nuw nsw i128 %i.pf, %i.pd           ; 2 uses
  %i.ph = trunc i128 %i.pg to i64
  %i.pi = lshr i128 %i.pg, 64
  %i.pj = and i128 %i.oh, 18446744073709551615
  %i.pk = add nuw nsw i128 %i.pj, %i.pi           ; 2 uses
  %i.pl = trunc i128 %i.pk to i64
  %i.pm = lshr i128 %i.pk, 64
  %i.pn = and i64 %i.ou, -4294967295
  %i.po = add nsw i128 %i.oq, %i.pm
  %i.pp = trunc i128 %i.po to i64
  %i.pq = add i64 %i.pn, %i.pp
  store i64 %i.pa, ptr %0, align 8, !tbaa !96
  store i64 %i.ph, ptr %i.nr, align 8, !tbaa !96
  store i64 %i.pl, ptr %i.oa, align 8, !tbaa !96
  store i64 %i.pq, ptr %i.oj, align 8, !tbaa !96
  %i.pr = load i64, ptr %i.b, align 16, !tbaa !96 ; 4 uses
  %add.narrowed.i39 = add i64 %i.pr, %i.h         ; 3 uses
  %add.narrowed.overflow.i40 = icmp ult i64 %add.narrowed.i39, %i.pr
  %i.ps = zext i1 %add.narrowed.overflow.i40 to i128
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !96
  %i.pv = zext i64 %i.pu to i128                  ; 3 uses
  %i.pw = add nuw nsw i128 %i.pv, %i.t
  %i.px = add nuw nsw i128 %i.pw, %i.ps           ; 3 uses
  %i.py = trunc i128 %i.px to i64
  %i.pz = lshr i128 %i.px, 64
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.qb = load i64, ptr %i.qa, align 16, !tbaa !96
  %i.qc = zext i64 %i.qb to i128                  ; 3 uses
  %i.qd = add nuw nsw i128 %i.qc, %i.ae
  %i.qe = add nuw nsw i128 %i.qd, %i.pz           ; 3 uses
  %i.qf = trunc i128 %i.qe to i64
  %i.qg = lshr i128 %i.qe, 64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !96
  %i.qj = zext i64 %i.qi to i128                  ; 3 uses
  %i.qk = add nuw nsw i128 %i.qj, %i.ap
  %i.ql = add nuw nsw i128 %i.qk, %i.qg           ; 3 uses
  %i.qm = trunc i128 %i.ql to i64
  %i.qn = lshr i128 %i.ql, 64
  %i.qo = zext i64 %add.narrowed.i39 to i128
  %i.qp = add nsw i128 %i.qo, -18446744073709551615 ; 2 uses
  %46 = trunc i128 %i.qp to i64
  %47 = lshr i128 %i.qp, 64
  %i.qq = and i128 %i.px, 18446744073709551615
  %i.qr = sub nsw i128 0, %47
  %i.qs = and i128 %i.qr, 255
  %reass.sub.i41 = sub nsw i128 %i.qq, %i.qs
  %i.qt = add nsw i128 %reass.sub.i41, -4294967295 ; 2 uses
  %48 = trunc i128 %i.qt to i64
  %49 = lshr i128 %i.qt, 64
  %i.qu = and i128 %i.qe, 18446744073709551615
  %i.qv = sub nsw i128 0, %49
  %i.qw = and i128 %i.qv, 255
  %i.qx = sub nsw i128 %i.qu, %i.qw               ; 2 uses
  %50 = trunc i128 %i.qx to i64
  %51 = lshr i128 %i.qx, 64
  %i.qy = and i128 %i.ql, 18446744073709551615
  %i.qz = sub nsw i128 0, %51
  %i.ra = and i128 %i.qz, 255
  %reass.sub42.i42 = sub nsw i128 %i.qy, %i.ra
  %i.rb = add nsw i128 %reass.sub42.i42, -18446744069414584321 ; 2 uses
  %52 = trunc i128 %i.rb to i64
  %53 = lshr i128 %i.rb, 64
  %i.rc = sub nsw i128 0, %53
  %i.rd = and i128 %i.rc, 255
  %i.re = sub nsw i128 %i.qn, %i.rd
  %i.rf = lshr i128 %i.re, 64
  %i.rg = trunc i128 %i.rf to i8
  %i.rh = icmp ne i8 %i.rg, 0
  %i.ri = sext i1 %i.rh to i64                    ; 2 uses
  %i.rj = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ri) #38, !srcloc !389 ; 4 uses
  %i.rk = and i64 %i.rj, %add.narrowed.i39
  %i.rl = xor i64 %i.ri, -1
  %i.rm = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.rl) #38, !srcloc !389 ; 4 uses
  %i.rn = and i64 %i.rm, %46
  %i.ro = or i64 %i.rn, %i.rk
  %i.rp = and i64 %i.rj, %i.py
  %i.rq = and i64 %i.rm, %48
  %i.rr = or i64 %i.rq, %i.rp
  %i.rs = and i64 %i.rj, %i.qf
  %i.rt = and i64 %i.rm, %50
  %i.ru = or i64 %i.rt, %i.rs
  %i.rv = and i64 %i.rj, %i.qm
  %i.rw = and i64 %i.rm, %52
  %i.rx = or i64 %i.rw, %i.rv
  %i.ry = load i64, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.rz = load i64, ptr %5, align 8, !tbaa !96
  %add.narrowed.i43 = add i64 %i.rz, %i.ry        ; 3 uses
  %add.narrowed.overflow.i44 = icmp ult i64 %add.narrowed.i43, %i.ry
  %i.sa = zext i1 %add.narrowed.overflow.i44 to i128
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !96
  %i.sd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !96
  %i.sf = zext i64 %i.sc to i128
  %i.sg = add nuw nsw i128 %i.sa, %i.sf
  %i.sh = zext i64 %i.se to i128
  %i.si = add nuw nsw i128 %i.sg, %i.sh           ; 3 uses
  %i.sj = trunc i128 %i.si to i64
  %i.sk = lshr i128 %i.si, 64
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !96
  %i.sn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !96
  %i.sp = zext i64 %i.sm to i128
  %i.sq = zext i64 %i.so to i128
  %i.sr = add nuw nsw i128 %i.sq, %i.sp
  %i.ss = add nuw nsw i128 %i.sr, %i.sk           ; 3 uses
  %i.st = trunc i128 %i.ss to i64
  %i.su = lshr i128 %i.ss, 64
  %i.sv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !96
  %i.sx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !96
  %i.sz = zext i64 %i.sw to i128
  %i.ta = zext i64 %i.sy to i128
  %i.tb = add nuw nsw i128 %i.ta, %i.sz
  %i.tc = add nuw nsw i128 %i.tb, %i.su           ; 3 uses
  %i.td = trunc i128 %i.tc to i64
  %i.te = lshr i128 %i.tc, 64
  %i.tf = zext i64 %add.narrowed.i43 to i128
  %i.tg = add nsw i128 %i.tf, -18446744073709551615 ; 2 uses
  %54 = trunc i128 %i.tg to i64
  %55 = lshr i128 %i.tg, 64
  %i.th = and i128 %i.si, 18446744073709551615
  %i.ti = sub nsw i128 0, %55
  %i.tj = and i128 %i.ti, 255
  %reass.sub.i45 = sub nsw i128 %i.th, %i.tj
  %i.tk = add nsw i128 %reass.sub.i45, -4294967295 ; 2 uses
  %56 = trunc i128 %i.tk to i64
  %57 = lshr i128 %i.tk, 64
  %i.tl = and i128 %i.ss, 18446744073709551615
  %i.tm = sub nsw i128 0, %57
  %i.tn = and i128 %i.tm, 255
  %i.to = sub nsw i128 %i.tl, %i.tn               ; 2 uses
  %58 = trunc i128 %i.to to i64
  %59 = lshr i128 %i.to, 64
  %i.tp = and i128 %i.tc, 18446744073709551615
  %i.tq = sub nsw i128 0, %59
  %i.tr = and i128 %i.tq, 255
  %reass.sub42.i46 = sub nsw i128 %i.tp, %i.tr
  %i.ts = add nsw i128 %reass.sub42.i46, -18446744069414584321 ; 2 uses
  %60 = trunc i128 %i.ts to i64
  %61 = lshr i128 %i.ts, 64
  %i.tt = sub nsw i128 0, %61
  %i.tu = and i128 %i.tt, 255
  %i.tv = sub nsw i128 %i.te, %i.tu
  %i.tw = lshr i128 %i.tv, 64
  %i.tx = trunc i128 %i.tw to i8
  %i.ty = icmp ne i8 %i.tx, 0
  %i.tz = sext i1 %i.ty to i64                    ; 2 uses
  %i.ua = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.tz) #38, !srcloc !389 ; 4 uses
  %i.ub = and i64 %i.ua, %add.narrowed.i43
  %i.uc = xor i64 %i.tz, -1
  %i.ud = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.uc) #38, !srcloc !389 ; 4 uses
  %i.ue = and i64 %i.ud, %54
  %i.uf = or i64 %i.ue, %i.ub
  %i.ug = and i64 %i.ua, %i.sj
  %i.uh = and i64 %i.ud, %56
  %i.ui = or i64 %i.uh, %i.ug
  %i.uj = and i64 %i.ua, %i.st
  %i.uk = and i64 %i.ud, %58
  %i.ul = or i64 %i.uk, %i.uj
  %i.um = and i64 %i.ua, %i.td
  %i.un = and i64 %i.ud, %60
  %i.uo = or i64 %i.un, %i.um
  store i64 %i.uf, ptr %i.d, align 16, !tbaa !96
  store i64 %i.ui, ptr %i.bs, align 8, !tbaa !96
  store i64 %i.ul, ptr %i.bt, align 16, !tbaa !96
  store i64 %i.uo, ptr %i.bu, align 8, !tbaa !96
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %2, ptr noundef nonnull %i.d)
  %i.up = load i64, ptr %2, align 8, !tbaa !96
  %i.uq = zext i64 %i.up to i128
  %i.ur = zext i64 %i.ro to i128
  %i.us = sub nsw i128 %i.uq, %i.ur               ; 2 uses
  %i.ut = lshr i128 %i.us, 64
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !96
  %i.uw = zext i64 %i.uv to i128
  %i.ux = sub nsw i128 0, %i.ut
  %i.uy = and i128 %i.ux, 255
  %i.uz = zext i64 %i.rr to i128
  %i.va = add nuw nsw i128 %i.uy, %i.uz
  %i.vb = sub nsw i128 %i.uw, %i.va               ; 2 uses
  %i.vc = lshr i128 %i.vb, 64
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !96
  %i.vf = zext i64 %i.ve to i128
  %i.vg = sub nsw i128 0, %i.vc
  %i.vh = and i128 %i.vg, 255
  %i.vi = zext i64 %i.ru to i128
  %i.vj = add nuw nsw i128 %i.vh, %i.vi
  %i.vk = sub nsw i128 %i.vf, %i.vj               ; 2 uses
  %i.vl = lshr i128 %i.vk, 64
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !96
  %i.vo = zext i64 %i.vn to i128
  %i.vp = sub nsw i128 0, %i.vl
  %i.vq = and i128 %i.vp, 255
  %i.vr = zext i64 %i.rx to i128
  %i.vs = add nuw nsw i128 %i.vq, %i.vr
  %i.vt = sub nsw i128 %i.vo, %i.vs               ; 2 uses
  %i.vu = and i128 %i.vt, 4703919738795935662080
  %i.vv = icmp ne i128 %i.vu, 0
  %i.vw = sext i1 %i.vv to i64                    ; 2 uses
  %i.vx = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.vw) #38, !srcloc !389 ; 3 uses
  %i.vy = xor i64 %i.vw, -1
  %i.vz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.vy) #38, !srcloc !389 ; 0 uses
  %i.wa = and i128 %i.us, 18446744073709551615
  %i.wb = zext i64 %i.vx to i128
  %i.wc = add nuw nsw i128 %i.wa, %i.wb           ; 2 uses
  %i.wd = trunc i128 %i.wc to i64
  %i.we = lshr i128 %i.wc, 64
  %i.wf = and i64 %i.vx, 4294967295
  %i.wg = and i128 %i.vb, 18446744073709551615
  %i.wh = zext nneg i64 %i.wf to i128
  %i.wi = add nuw nsw i128 %i.wg, %i.wh
  %i.wj = add nuw nsw i128 %i.wi, %i.we           ; 2 uses
  %i.wk = trunc i128 %i.wj to i64
  %i.wl = lshr i128 %i.wj, 64
  %i.wm = and i128 %i.vk, 18446744073709551615
  %i.wn = add nuw nsw i128 %i.wl, %i.wm           ; 2 uses
  %i.wo = trunc i128 %i.wn to i64
  %i.wp = lshr i128 %i.wn, 64
  %i.wq = and i64 %i.vx, -4294967295
  %i.wr = add nsw i128 %i.wp, %i.vt
  %i.ws = trunc i128 %i.wr to i64
  %i.wt = add i64 %i.wq, %i.ws
  store i64 %i.wd, ptr %2, align 8, !tbaa !96
  store i64 %i.wk, ptr %i.uu, align 8, !tbaa !96
  store i64 %i.wo, ptr %i.vd, align 8, !tbaa !96
  store i64 %i.wt, ptr %i.vm, align 8, !tbaa !96
  %i.wu = load i64, ptr %0, align 8, !tbaa !96
  %i.wv = zext i64 %i.lg to i128
  %i.ww = zext i64 %i.wu to i128
  %i.wx = sub nsw i128 %i.wv, %i.ww               ; 2 uses
  %i.wy = lshr i128 %i.wx, 64
  %i.wz = load i64, ptr %i.nr, align 8, !tbaa !96
  %i.xa = sub nsw i128 0, %i.wy
  %i.xb = and i128 %i.xa, 255
  %i.xc = zext i64 %i.wz to i128
  %i.xd = add nuw nsw i128 %i.xb, %i.xc
  %i.xe = sub nsw i128 %i.lr, %i.xd               ; 2 uses
  %i.xf = lshr i128 %i.xe, 64
  %i.xg = load i64, ptr %i.oa, align 8, !tbaa !96
  %i.xh = sub nsw i128 0, %i.xf
  %i.xi = and i128 %i.xh, 255
  %i.xj = zext i64 %i.xg to i128
  %i.xk = add nuw nsw i128 %i.xi, %i.xj
  %i.xl = sub nsw i128 %i.lv, %i.xk               ; 2 uses
  %i.xm = lshr i128 %i.xl, 64
  %i.xn = load i64, ptr %i.oj, align 8, !tbaa !96
  %i.xo = sub nsw i128 0, %i.xm
  %i.xp = and i128 %i.xo, 255
  %i.xq = zext i64 %i.xn to i128
  %i.xr = add nuw nsw i128 %i.xp, %i.xq
  %i.xs = sub nsw i128 %i.ma, %i.xr               ; 2 uses
  %i.xt = and i128 %i.xs, 4703919738795935662080
  %i.xu = icmp ne i128 %i.xt, 0
  %i.xv = sext i1 %i.xu to i64                    ; 2 uses
  %i.xw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.xv) #38, !srcloc !389 ; 3 uses
  %i.xx = xor i64 %i.xv, -1
  %i.xy = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.xx) #38, !srcloc !389 ; 0 uses
  %i.xz = and i128 %i.wx, 18446744073709551615
  %i.ya = zext i64 %i.xw to i128
  %i.yb = add nuw nsw i128 %i.xz, %i.ya           ; 2 uses
  %i.yc = trunc i128 %i.yb to i64
  %i.yd = lshr i128 %i.yb, 64
  %i.ye = and i64 %i.xw, 4294967295
  %i.yf = and i128 %i.xe, 18446744073709551615
  %i.yg = zext nneg i64 %i.ye to i128
  %i.yh = add nuw nsw i128 %i.yf, %i.yg
  %i.yi = add nuw nsw i128 %i.yh, %i.yd           ; 2 uses
  %i.yj = trunc i128 %i.yi to i64
  %i.yk = lshr i128 %i.yi, 64
  %i.yl = and i128 %i.xl, 18446744073709551615
  %i.ym = add nuw nsw i128 %i.yk, %i.yl           ; 2 uses
  %i.yn = trunc i128 %i.ym to i64
  %i.yo = lshr i128 %i.ym, 64
  %i.yp = and i64 %i.xw, -4294967295
  %i.yq = add nsw i128 %i.yo, %i.xs
  %i.yr = trunc i128 %i.yq to i64
  %i.ys = add i64 %i.yp, %i.yr
  store i64 %i.yc, ptr %1, align 8, !tbaa !96
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.yj, ptr %i.yt, align 8, !tbaa !96
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.yn, ptr %i.yu, align 8, !tbaa !96
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store i64 %i.ys, ptr %i.yv, align 8, !tbaa !96
  %add.narrowed.i47 = shl i64 %i.pr, 1            ; 2 uses
  %.lobit82 = lshr i64 %i.pr, 63
  %i.yw = zext nneg i64 %.lobit82 to i128
  %reass.add83 = shl nuw nsw i128 %i.pv, 1
  %i.yx = or disjoint i128 %reass.add83, %i.yw    ; 2 uses
  %i.yy = trunc i128 %i.yx to i64
  %i.yz = lshr i128 %i.pv, 63
  %i.za = shl nuw nsw i128 %i.qc, 1
  %i.zb = or disjoint i128 %i.za, %i.yz           ; 2 uses
  %i.zc = trunc i128 %i.zb to i64
  %i.zd = lshr i128 %i.qc, 63
  %i.ze = shl nuw nsw i128 %i.qj, 1
  %i.zf = or disjoint i128 %i.ze, %i.zd           ; 2 uses
  %i.zg = trunc i128 %i.zf to i64
  %i.zh = lshr i128 %i.qj, 63
  %i.zi = or disjoint i64 %add.narrowed.i47, 1
  %i.zj = and i128 %i.yx, 18446744073709551615
  %i.zk = add nsw i128 %i.zj, -4294967296         ; 2 uses
  %62 = trunc i128 %i.zk to i64
  %63 = lshr i128 %i.zk, 64
  %i.zl = and i128 %i.zb, 18446744073709551615
  %i.zm = sub nsw i128 0, %63
  %i.zn = and i128 %i.zm, 255
  %i.zo = sub nsw i128 %i.zl, %i.zn               ; 2 uses
  %64 = trunc i128 %i.zo to i64
  %65 = lshr i128 %i.zo, 64
  %i.zp = and i128 %i.zf, 18446744073709551615
  %i.zq = sub nsw i128 0, %65
  %i.zr = and i128 %i.zq, 255
  %reass.sub42.i50 = sub nsw i128 %i.zp, %i.zr
  %i.zs = add nsw i128 %reass.sub42.i50, -18446744069414584321 ; 2 uses
  %66 = trunc i128 %i.zs to i64
  %67 = lshr i128 %i.zs, 64
  %i.zt = sub nsw i128 0, %67
  %i.zu = and i128 %i.zt, 255
  %i.zv = sub nsw i128 %i.zh, %i.zu
  %i.zw = lshr i128 %i.zv, 64
  %i.zx = trunc i128 %i.zw to i8
  %i.zy = icmp ne i8 %i.zx, 0
  %i.zz = sext i1 %i.zy to i64                    ; 2 uses
  %i.aaa = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.zz) #38, !srcloc !389 ; 4 uses
  %i.aab = and i64 %i.aaa, %add.narrowed.i47
  %i.aac = xor i64 %i.zz, -1
  %i.aad = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.aac) #38, !srcloc !389 ; 4 uses
  %i.aae = and i64 %i.aad, %i.zi
  %i.aaf = or i64 %i.aae, %i.aab
  %i.aag = and i64 %i.aaa, %i.yy
  %i.aah = and i64 %i.aad, %62
  %i.aai = or i64 %i.aah, %i.aag
  %i.aaj = and i64 %i.aaa, %i.zc
  %i.aak = and i64 %i.aad, %64
  %i.aal = or i64 %i.aak, %i.aaj
  %i.aam = and i64 %i.aaa, %i.zg
  %i.aan = and i64 %i.aad, %66
  %i.aao = or i64 %i.aan, %i.aam
  store i64 %i.aaf, ptr %i.b, align 16, !tbaa !96
  store i64 %i.aai, ptr %i.pt, align 8, !tbaa !96
  store i64 %i.aal, ptr %i.qa, align 16, !tbaa !96
  store i64 %i.aao, ptr %i.qh, align 8, !tbaa !96
  call fastcc void @_ZL16fiat_p256_squarePmPKm(ptr noundef %i.b, ptr noundef nonnull %i.b)
  call fastcc void @_ZL13fiat_p256_mulPmPKmS1_(ptr noundef %1, ptr noundef nonnull %i.f, ptr noundef %1)
  %i.aap = load i64, ptr %i.b, align 16, !tbaa !96 ; 2 uses
  %add.narrowed.i51 = shl i64 %i.aap, 1           ; 2 uses
  %.lobit84 = lshr i64 %i.aap, 63
  %i.aaq = zext nneg i64 %.lobit84 to i128
  %i.aar = load i64, ptr %i.pt, align 8, !tbaa !96
  %i.aas = zext i64 %i.aar to i128                ; 2 uses
  %reass.add85 = shl nuw nsw i128 %i.aas, 1
  %i.aat = or disjoint i128 %reass.add85, %i.aaq  ; 2 uses
  %i.aau = trunc i128 %i.aat to i64
  %i.aav = lshr i128 %i.aas, 63
  %i.aaw = load i64, ptr %i.qa, align 16, !tbaa !96
  %i.aax = zext i64 %i.aaw to i128                ; 2 uses
  %i.aay = shl nuw nsw i128 %i.aax, 1
  %i.aaz = or disjoint i128 %i.aay, %i.aav        ; 2 uses
  %i.aba = trunc i128 %i.aaz to i64
  %i.abb = lshr i128 %i.aax, 63
  %i.abc = load i64, ptr %i.qh, align 8, !tbaa !96
  %i.abd = zext i64 %i.abc to i128                ; 2 uses
  %i.abe = shl nuw nsw i128 %i.abd, 1
  %i.abf = or disjoint i128 %i.abe, %i.abb        ; 2 uses
  %i.abg = trunc i128 %i.abf to i64
  %i.abh = lshr i128 %i.abd, 63
  %i.abi = or disjoint i64 %add.narrowed.i51, 1
  %i.abj = and i128 %i.aat, 18446744073709551615
  %i.abk = add nsw i128 %i.abj, -4294967296       ; 2 uses
  %68 = trunc i128 %i.abk to i64
  %69 = lshr i128 %i.abk, 64
  %i.abl = and i128 %i.aaz, 18446744073709551615
  %i.abm = sub nsw i128 0, %69
  %i.abn = and i128 %i.abm, 255
  %i.abo = sub nsw i128 %i.abl, %i.abn            ; 2 uses
  %70 = trunc i128 %i.abo to i64
  %71 = lshr i128 %i.abo, 64
  %i.abp = and i128 %i.abf, 18446744073709551615
  %i.abq = sub nsw i128 0, %71
  %i.abr = and i128 %i.abq, 255
  %reass.sub42.i54 = sub nsw i128 %i.abp, %i.abr
  %i.abs = add nsw i128 %reass.sub42.i54, -18446744069414584321 ; 2 uses
  %72 = trunc i128 %i.abs to i64
  %73 = lshr i128 %i.abs, 64
  %i.abt = sub nsw i128 0, %73
  %i.abu = and i128 %i.abt, 255
  %i.abv = sub nsw i128 %i.abh, %i.abu
  %i.abw = lshr i128 %i.abv, 64
  %i.abx = trunc i128 %i.abw to i8
  %i.aby = icmp ne i8 %i.abx, 0
  %i.abz = sext i1 %i.aby to i64                  ; 2 uses
  %i.aca = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.abz) #38, !srcloc !389 ; 4 uses
  %i.acb = and i64 %i.aca, %add.narrowed.i51
  %i.acc = xor i64 %i.abz, -1
  %i.acd = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.acc) #38, !srcloc !389 ; 4 uses
  %i.ace = and i64 %i.acd, %i.abi
  %i.acf = or i64 %i.ace, %i.acb
  %i.acg = and i64 %i.aca, %i.aau
  %i.ach = and i64 %i.acd, %68
  %i.aci = or i64 %i.ach, %i.acg
  %i.acj = and i64 %i.aca, %i.aba
  %i.ack = and i64 %i.acd, %70
  %i.acl = or i64 %i.ack, %i.acj
  %i.acm = and i64 %i.aca, %i.abg
  %i.acn = and i64 %i.acd, %72
  %i.aco = or i64 %i.acn, %i.acm
  %i.acp = load i64, ptr %1, align 8, !tbaa !96
  %i.acq = zext i64 %i.acp to i128
  %i.acr = zext i64 %i.acf to i128
  %i.acs = sub nsw i128 %i.acq, %i.acr            ; 2 uses
  %i.act = lshr i128 %i.acs, 64
  %i.acu = load i64, ptr %i.yt, align 8, !tbaa !96
  %i.acv = zext i64 %i.acu to i128
  %i.acw = sub nsw i128 0, %i.act
  %i.acx = and i128 %i.acw, 255
  %i.acy = zext i64 %i.aci to i128
  %i.acz = add nuw nsw i128 %i.acx, %i.acy
  %i.ada = sub nsw i128 %i.acv, %i.acz            ; 2 uses
  %i.adb = lshr i128 %i.ada, 64
  %i.adc = load i64, ptr %i.yu, align 8, !tbaa !96
  %i.add = zext i64 %i.adc to i128
  %i.ade = sub nsw i128 0, %i.adb
  %i.adf = and i128 %i.ade, 255
  %i.adg = zext i64 %i.acl to i128
  %i.adh = add nuw nsw i128 %i.adf, %i.adg
  %i.adi = sub nsw i128 %i.add, %i.adh            ; 2 uses
  %i.adj = lshr i128 %i.adi, 64
  %i.adk = load i64, ptr %i.yv, align 8, !tbaa !96
  %i.adl = zext i64 %i.adk to i128
  %i.adm = sub nsw i128 0, %i.adj
  %i.adn = and i128 %i.adm, 255
  %i.ado = zext i64 %i.aco to i128
  %i.adp = add nuw nsw i128 %i.adn, %i.ado
  %i.adq = sub nsw i128 %i.adl, %i.adp            ; 2 uses
  %i.adr = and i128 %i.adq, 4703919738795935662080
  %i.ads = icmp ne i128 %i.adr, 0
  %i.adt = sext i1 %i.ads to i64                  ; 2 uses
  %i.adu = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.adt) #38, !srcloc !389 ; 3 uses
  %i.adv = xor i64 %i.adt, -1
  %i.adw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.adv) #38, !srcloc !389 ; 0 uses
  %i.adx = and i128 %i.acs, 18446744073709551615
  %i.ady = zext i64 %i.adu to i128
  %i.adz = add nuw nsw i128 %i.adx, %i.ady        ; 2 uses
  %i.aea = trunc i128 %i.adz to i64
  %i.aeb = lshr i128 %i.adz, 64
  %i.aec = and i64 %i.adu, 4294967295
  %i.aed = and i128 %i.ada, 18446744073709551615
  %i.aee = zext nneg i64 %i.aec to i128
  %i.aef = add nuw nsw i128 %i.aed, %i.aee
  %i.aeg = add nuw nsw i128 %i.aef, %i.aeb        ; 2 uses
  %i.aeh = trunc i128 %i.aeg to i64
  %i.aei = lshr i128 %i.aeg, 64
  %i.aej = and i128 %i.adi, 18446744073709551615
  %i.aek = add nuw nsw i128 %i.aei, %i.aej        ; 2 uses
  %i.ael = trunc i128 %i.aek to i64
  %i.aem = lshr i128 %i.aek, 64
  %i.aen = and i64 %i.adu, -4294967295
  %i.aeo = add nsw i128 %i.aem, %i.adq
  %i.aep = trunc i128 %i.aeo to i64
  %i.aeq = add i64 %i.aen, %i.aep
  store i64 %i.aea, ptr %1, align 8, !tbaa !96
  store i64 %i.aeh, ptr %i.yt, align 8, !tbaa !96
  store i64 %i.ael, ptr %i.yu, align 8, !tbaa !96
  store i64 %i.aeq, ptr %i.yv, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS0_11private_keyIXT_EXT0_EEEPKh(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [66 x i8], align 16               ; 16 uses
  %4 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.b = alloca [34 x i8], align 16               ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 8 uses
  %5 = alloca %struct.cbb_st, align 8             ; 4 uses
  %i.d = tail call ptr @OPENSSL_malloc(i64 noundef 48224) #36 ; 17 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_148mldsa_generate_key_external_entropy_no_self_testILi6ELi5EEEiPhPNS1_11private_keyIXT_EXT0_EEEPKhE9values_stNS1_11DeleterFreeIS9_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 6, ptr %i.e, align 16, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  store i8 5, ptr %i.f, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, i8 0, i64 224, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !320
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 136, ptr %i.i, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.b, i64 noundef 34)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %4, ptr noundef nonnull %i.c, i64 noundef 128)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 6240 ; 2 uses
  call fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi6ELi5EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5248 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 11 uses
  store i8 0, ptr %i.p, align 16, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 0, ptr %i.q, align 1, !tbaa !80
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.n, ptr noundef %i.a)
  store i8 1, ptr %i.p, align 16, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1152
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.r, ptr noundef %i.a)
  store i8 2, ptr %i.p, align 16, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2176
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.s, ptr noundef %i.a)
  store i8 3, ptr %i.p, align 16, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3200
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.t, ptr noundef %i.a)
  store i8 4, ptr %i.p, align 16, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4224
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.u, ptr noundef %i.a)
  store i8 5, ptr %i.p, align 16, !tbaa !80
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.o, ptr noundef %i.a)
  store i8 6, ptr %i.p, align 16, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6272
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.v, ptr noundef %i.a)
  store i8 7, ptr %i.p, align 16, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7296
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.w, ptr noundef %i.a)
  store i8 8, ptr %i.p, align 16, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8320
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.x, ptr noundef %i.a)
  store i8 9, ptr %i.p, align 16, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 9344
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.y, ptr noundef %i.a)
  store i8 10, ptr %i.p, align 16, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 10368
  call fastcc void @_ZN5mldsa12_GLOBAL__N_114scalar_uniformILi4EEEvPNS0_6scalarEPKh(ptr noundef nonnull %i.z, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 36960 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5120) %i.aa, ptr noundef nonnull readonly align 1 dereferenceable(5120) %i.n, i64 5120, i1 false)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 37984
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 39008
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 40032
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 41056
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110scalar_nttEPNS0_6scalarE(ptr noundef nonnull %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 42080 ; 5 uses
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE(ptr noundef nonnull %i.af, ptr noundef nonnull %i.m, ptr noundef nonnull %i.aa)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 43104
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 44128
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 45152
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 46176
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 47200
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_118scalar_inverse_nttEPNS0_6scalarE(ptr noundef nonnull %i.ak)
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi6EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr noundef nonnull %i.af, ptr noundef nonnull %i.af, ptr noundef nonnull %i.o)
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 11392
  tail call fastcc void @_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi6EEEvPNS0_6vectorIXT_EEES4_PKS3_(ptr noundef nonnull %i.al, ptr noundef nonnull %i.am, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.an = call i32 @CBB_init_fixed(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 1952) #36 ; 0 uses
  %i.ao = call fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_124mldsa_marshal_public_keyILi6EEEiP6cbb_stPKNS0_10public_keyIXT_EEE(ptr noundef nonnull %5, ptr noundef nonnull %i.d)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, i8 0, i64 224, i1 false)
  store i32 3, ptr %3, align 8, !tbaa !320
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !321
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i64 136, ptr %i.as, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef 1952)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.ap, i64 noundef 64)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
end_hunk_2
