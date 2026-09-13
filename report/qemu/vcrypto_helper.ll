Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vcrypto_helper?download=true
inline.NumInlined: 368
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@helper_vsm4k_vi:bb.a
  %i.ei = xor i32 %i.eh, %i.cw
  %i.ej = xor i32 %i.ei, %i.eg                    ; 4 uses
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i32
  %i.ep = lshr i32 %i.ej, 8
  %i.eq = and i32 %i.ep, 255
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.ev, %i.eo
  %i.ex = lshr i32 %i.ej, 16
  %i.ey = and i32 %i.ex, 255
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 16
  %i.fe = or disjoint i32 %i.ew, %i.fd
  %i.ff = lshr i32 %i.ej, 24
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw i32 %i.fj, 24
  %i.fl = or disjoint i32 %i.fe, %i.fk            ; 5 uses
  %i.fm = tail call noundef i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 13)
  %i.fn = tail call noundef i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 23)
  %i.fo = xor i32 %i.fn, %i.fm
  %i.fp = xor i32 %i.fo, %.8..sroa.7.0.copyload
  %i.fq = xor i32 %i.fp, %i.fl                    ; 2 uses
  store i32 %i.fq, ptr %.sroa.14.8..sroa_idx106, align 8
  %i.fr = xor i32 %i.cw, %i.ar
  %i.fs = xor i32 %i.fr, %i.eg
  %i.ft = xor i32 %i.fs, %i.fq                    ; 4 uses
  %i.fu = and i32 %i.ft, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i32
  %i.fz = lshr i32 %i.ft, 8
  %i.ga = and i32 %i.fz, 255
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 8
  %i.gg = or disjoint i32 %i.gf, %i.fy
  %i.gh = lshr i32 %i.ft, 16
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = zext i8 %i.gl to i32
  %i.gn = shl nuw nsw i32 %i.gm, 16
  %i.go = or disjoint i32 %i.gg, %i.gn
  %i.gp = lshr i32 %i.ft, 24
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl nuw i32 %i.gt, 24
  %i.gv = or disjoint i32 %i.go, %i.gu            ; 5 uses
  %i.gw = tail call noundef i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 13)
  %i.gx = tail call noundef i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 23)
  %i.gy = xor i32 %i.gx, %i.gw
  %i.gz = xor i32 %i.gy, %.12..sroa.10.0.copyload
  %i.ha = xor i32 %i.gz, %i.gv
  store i32 %i.ha, ptr %.sroa.14.12..sroa_idx107, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep75, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.14, i64 %i.bi, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader60.preheader, !llvm.loop !118

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4r_vv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 5 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2                         ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 4608
  %.val = load i64, ptr %i.h, align 16
  %i.i = shl i32 %3, 3
  %i.j = and i32 %i.i, 2040
  %i.k = add nuw nsw i32 %i.j, 8
  %i.l = trunc i64 %.val to i32
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 7
  %i.o = shl i32 %3, 18
  %i.p = ashr i32 %i.o, 29
  %reass.sub = sub nsw i32 %i.p, %i.n
  %i.q = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.r = add nsw i32 %i.q, 2
  %i.s = shl nuw nsw i32 %i.k, %i.r
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.d, 2                         ; 2 uses
  %i.u = icmp samesign ult i32 %i.t, %i.g
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = zext i32 %i.d to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = and i64 %i.w, 17179869168
  %i.y = and i32 %i.d, -4                         ; 2 uses
  %i.z = add i32 %i.y, 4
  %i.aa = and i64 %i.v, 4294967292
  %i.ab = or disjoint i64 %i.aa, 1
  %i.ac = sub nuw nsw i32 -4, %i.y
  %i.ad = or disjoint i32 %i.ac, 3
  %scevgep60 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = sub nuw nsw i32 %i.g, %i.t
  %wide.trip.count = zext nneg i32 %i.ae to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.af = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  store i32 0, ptr %i.c, align 4
  %i.ag = lshr i32 %3, 14
  %i.ah = and i32 %i.ag, 1
  %i.ai = shl i32 %i.af, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef %i.s) #12
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.lr.ph ] ; 4 uses
  %i.aj = shl nuw nsw i64 %indvar, 4
  %i.ak = add nuw nsw i64 %i.x, %i.aj             ; 2 uses
  %scevgep59 = getelementptr i8, ptr %0, i64 %i.ak ; 2 uses
  %i.al = shl nuw nsw i64 %indvar, 2              ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.z, %i.am
  %i.ao = add nuw nsw i64 %i.ab, %i.al
  %i.ap = trunc i64 %i.ao to i32
  %umax61 = tail call i32 @llvm.umax.i32(i32 %i.an, i32 %i.ap)
  %indvar.tr = trunc i64 %indvar to i32
  %i.aq = shl i32 %indvar.tr, 2
  %i.ar = sub i32 %i.ad, %i.aq
  %i.as = add i32 %umax61, %i.ar                  ; 3 uses
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2                ; 3 uses
  %i.av = add nuw nsw i64 %i.au, 4                ; 5 uses
  %scevgep = getelementptr nuw i8, ptr %1, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aw = icmp ugt i32 %i.as, 2
  %i.ax = sub nsw i64 12, %i.au
  %i.ay = select i1 %i.aw, i64 0, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.a, i64 %i.av
  call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %i.ay, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.av, i1 false)
  %i.ba = icmp ugt i32 %i.as, 6
  %i.bb = sub nsw i64 28, %i.au
  %i.bc = select i1 %i.ba, i64 0, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.av
  call void @llvm.memset.p0.i64(ptr align 4 %i.bd, i8 0, i64 %i.bc, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, i64 %i.av, i1 false)
  call fastcc void @do_sm4_round(ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, ptr noundef nonnull align 16 dereferenceable(1) %scevgep60, i64 %i.av, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !119

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @do_sm4_round(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((16, 32)) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %2 = getelementptr i8, ptr %1, i64 16
  %i.e = getelementptr i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr %0, align 4
  %i.h = xor i32 %i.b, %i.g
  %i.i = xor i32 %i.h, %i.d
  %i.j = xor i32 %i.i, %i.f                       ; 4 uses
  %i.k = and i32 %i.j, 255
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = lshr i32 %i.j, 8
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.o
  %i.x = lshr i32 %i.j, 16
  %i.y = and i32 %i.x, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = or disjoint i32 %i.w, %i.ad
  %i.af = lshr i32 %i.j, 24
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw i32 %i.aj, 24
  %i.al = or disjoint i32 %i.ae, %i.ak            ; 9 uses
  %i.am = load i32, ptr %1, align 4
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 2)
  %i.ao = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 10)
  %i.ap = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 18)
  %i.aq = tail call noundef i32 @llvm.fshl.i32(i32 %i.al, i32 %i.al, i32 24)
  %i.ar = xor i32 %i.am, %i.ao
  %i.as = xor i32 %i.ar, %i.an
  %i.at = xor i32 %i.as, %i.ap
  %i.au = xor i32 %i.at, %i.aq
  %i.av = xor i32 %i.au, %i.al                    ; 4 uses
  store i32 %i.av, ptr %2, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %3 = getelementptr i8, ptr %1, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = xor i32 %i.d, %i.ay
  %i.ba = xor i32 %i.az, %i.f
  %i.bb = xor i32 %i.ba, %i.av                    ; 4 uses
  %i.bc = and i32 %i.bb, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = lshr i32 %i.bb, 8
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = or disjoint i32 %i.bn, %i.bg
  %i.bp = lshr i32 %i.bb, 16
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bo, %i.bv
  %i.bx = lshr i32 %i.bb, 24
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw i32 %i.cb, 24
  %i.cd = or disjoint i32 %i.bw, %i.cc            ; 9 uses
  %i.ce = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 2)
  %i.cf = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 10)
  %i.cg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 18)
  %i.ch = tail call noundef i32 @llvm.fshl.i32(i32 %i.cd, i32 %i.cd, i32 24)
  %i.ci = xor i32 %i.cf, %i.ce
  %i.cj = xor i32 %i.ci, %i.cg
  %i.ck = xor i32 %i.cj, %i.ch
  %i.cl = xor i32 %i.ck, %i.b
  %i.cm = xor i32 %i.cl, %i.cd                    ; 3 uses
  store i32 %i.cm, ptr %3, align 4
  %4 = getelementptr i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = xor i32 %i.f, %i.co
  %i.cq = xor i32 %i.cp, %i.av
  %i.cr = xor i32 %i.cq, %i.cm                    ; 4 uses
  %i.cs = and i32 %i.cr, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = lshr i32 %i.cr, 8
  %i.cy = and i32 %i.cx, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 8
  %i.de = or disjoint i32 %i.dd, %i.cw
  %i.df = lshr i32 %i.cr, 16
  %i.dg = and i32 %i.df, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = or disjoint i32 %i.de, %i.dl
  %i.dn = lshr i32 %i.cr, 24
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 24
  %i.dt = or disjoint i32 %i.dm, %i.ds            ; 9 uses
  %i.du = load i32, ptr %i.c, align 4
  %i.dv = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 2)
  %i.dw = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 10)
  %i.dx = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 18)
  %i.dy = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.dt, i32 24)
  %i.dz = xor i32 %i.du, %i.dw
  %i.ea = xor i32 %i.dz, %i.dv
  %i.eb = xor i32 %i.ea, %i.dx
  %i.ec = xor i32 %i.eb, %i.dy
  %i.ed = xor i32 %i.ec, %i.dt                    ; 2 uses
  store i32 %i.ed, ptr %4, align 4
  %5 = getelementptr i8, ptr %1, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = xor i32 %i.av, %i.ef
  %i.eh = xor i32 %i.eg, %i.cm
  %i.ei = xor i32 %i.eh, %i.ed                    ; 4 uses
  %i.ej = and i32 %i.ei, 255
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = lshr i32 %i.ei, 8
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = or disjoint i32 %i.eu, %i.en
  %i.ew = lshr i32 %i.ei, 16
  %i.ex = and i32 %i.ew, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 16
  %i.fd = or disjoint i32 %i.ev, %i.fc
  %i.fe = lshr i32 %i.ei, 24
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw i32 %i.fi, 24
  %i.fk = or disjoint i32 %i.fd, %i.fj            ; 9 uses
  %i.fl = load i32, ptr %i.aw, align 4
  %i.fm = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 2)
  %i.fn = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 10)
  %i.fo = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 18)
  %i.fp = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fk, i32 24)
  %i.fq = xor i32 %i.fl, %i.fn
  %i.fr = xor i32 %i.fq, %i.fm
  %i.fs = xor i32 %i.fr, %i.fo
  %i.ft = xor i32 %i.fs, %i.fp
  %i.fu = xor i32 %i.ft, %i.fk
  store i32 %i.fu, ptr %5, align 4
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_vsm4r_vs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %i.b = alloca [8 x i32], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4620 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4616 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i32 %i.f, 2                         ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 4608
  %.val = load i64, ptr %i.h, align 16
  %i.i = shl i32 %3, 3
  %i.j = and i32 %i.i, 2040
  %i.k = add nuw nsw i32 %i.j, 8
  %i.l = trunc i64 %.val to i32
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 7
  %i.o = shl i32 %3, 18
  %i.p = ashr i32 %i.o, 29
  %reass.sub = sub nsw i32 %i.p, %i.n
  %i.q = tail call i32 @llvm.smax.i32(i32 %reass.sub, i32 -2)
  %i.r = add nsw i32 %i.q, 2
  %i.s = shl nuw nsw i32 %i.k, %i.r
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = lshr i32 %i.d, 2                         ; 2 uses
  %i.u = icmp samesign ult i32 %i.t, %i.g
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.v = and i32 %i.d, -4                         ; 4 uses
  %i.w = add i32 %i.v, 4
  %i.x = or disjoint i32 %i.v, 1
  %i.y = xor i32 %i.v, -1
  %scevgep55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = sub nuw nsw i32 %i.g, %i.t
  %wide.trip.count = zext nneg i32 %i.z to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.e, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.aa = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.c ]
  store i32 0, ptr %i.c, align 4
  %i.ab = lshr i32 %3, 14
  %i.ac = and i32 %i.ab, 1
  %i.ad = shl i32 %i.aa, 2
  tail call void @vext_set_elems_1s(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.s) #12
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next62, %.lr.ph ] ; 3 uses
  %indvars.iv61.tr = trunc nuw i64 %indvars.iv61 to i32
  %i.ae = shl nuw i32 %indvars.iv61.tr, 2         ; 3 uses
  %i.af = add i32 %i.v, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %scevgep54 = getelementptr i8, ptr %0, i64 %i.ah ; 2 uses
  %i.ai = add i32 %i.w, %i.ae
  %i.aj = add i32 %i.x, %i.ae
  %umax56 = tail call i32 @llvm.umax.i32(i32 %i.ai, i32 %i.aj)
  %i.ak = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.al = shl i32 %i.ak, 2
  %i.am = sub i32 %i.y, %i.al
  %i.an = add i32 %umax56, %i.am                  ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  %i.ar = icmp ugt i32 %i.an, 6
  %i.as = sub nsw i64 28, %i.ap
  %i.at = select i1 %i.ar, i64 0, i64 %i.as
  %i.au = getelementptr i8, ptr %i.b, i64 %i.aq
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %i.at, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %scevgep54, i64 %i.aq, i1 false)
  call fastcc void @do_sm4_round(ptr noundef %i.a, ptr noundef %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep54, ptr noundef nonnull align 16 dereferenceable(1) %scevgep55, i64 %i.aq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !120

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bitreverse.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_MC_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_MC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_IMC_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #11 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  %i.b = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %i.a)
  store <2 x i64> %i.b, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_IMC_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
