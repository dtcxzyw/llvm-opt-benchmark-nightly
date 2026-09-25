Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crypt?download=true
inline.NumInlined: 110
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9CryptData14DecryptBlock20EPh:bb.a
  %i.p = load i32, ptr %i.o, align 4              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2500 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = xor i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 8 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.u = lshr i32 %i.p, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i32 %i.p, 16
  %i.x = lshr i32 %i.p, 8
  %i.y = lshr i32 %i.k, 24
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i32 %i.k, 16
  %i.ab = lshr i32 %i.k, 8
  %i.ac = lshr i32 %i.f, 24
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = lshr i32 %i.f, 16
  %i.af = lshr i32 %i.f, 8
  %i.ag = lshr i32 %i.a, 24
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i32 %i.a, 16
  %i.aj = lshr i32 %i.a, 8
  %i.ak = xor i32 %i.ev, %i.c
  store i32 %i.ak, ptr %1, align 4, !tbaa !16
  %i.al = load i32, ptr %i.g, align 4, !tbaa !16
  %i.am = xor i32 %i.al, %i.gb
  store i32 %i.am, ptr %i.e, align 4, !tbaa !16
  %i.an = load i32, ptr %i.l, align 8, !tbaa !16
  %i.ao = xor i32 %i.an, %.03843
  store i32 %i.ao, ptr %i.j, align 4, !tbaa !16
  %i.ap = load i32, ptr %i.q, align 4, !tbaa !16
  %i.aq = xor i32 %i.ap, %.03744
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 16 uses
  %.promoted.i = load i32, ptr %i.b, align 8, !tbaa !16
  %.promoted10.i = load i32, ptr %i.g, align 4, !tbaa !16
  %.promoted11.i = load i32, ptr %i.l, align 8, !tbaa !16
  %.promoted12.i = load i32, ptr %i.q, align 4, !tbaa !16
  %i.as = and i32 %i.a, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = xor i32 %i.av, %.promoted.i
  %i.ax = and i32 %i.aj, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = xor i32 %i.ba, %.promoted10.i
  %i.bc = and i32 %i.ai, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = xor i32 %i.bf, %.promoted11.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ah
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = xor i32 %i.bi, %.promoted12.i
  %i.bk = and i32 %i.f, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = xor i32 %i.bn, %i.aw
  %i.bp = and i32 %i.af, 255
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = xor i32 %i.bs, %i.bb
  %i.bu = and i32 %i.ae, 255
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %i.by = xor i32 %i.bx, %i.bg
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ad
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !16
  %i.cb = xor i32 %i.ca, %i.bj
  %i.cc = and i32 %i.k, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = xor i32 %i.cf, %i.bo
  %i.ch = and i32 %i.ab, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !16
  %i.cl = xor i32 %i.ck, %i.bt
  %i.cm = and i32 %i.aa, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %i.cq = xor i32 %i.cp, %i.by
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.z
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16
  %i.ct = xor i32 %i.cs, %i.cb
  %i.cu = and i32 %i.p, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !16
  %i.cy = xor i32 %i.cx, %i.cg
  store i32 %i.cy, ptr %i.b, align 8, !tbaa !16
  %i.cz = and i32 %i.x, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !16
  %i.dd = xor i32 %i.dc, %i.cl
  store i32 %i.dd, ptr %i.g, align 4, !tbaa !16
  %i.de = and i32 %i.w, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !16
  %i.di = xor i32 %i.dh, %i.cq
  store i32 %i.di, ptr %i.l, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.v
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dl = xor i32 %i.dk, %i.ct
  store i32 %i.dl, ptr %i.q, align 4, !tbaa !16
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.045 = phi i32 [ 31, %bb.a ], [ %i.gc, %bb.c ] ; 3 uses
  %.03744 = phi i32 [ %i.s, %bb.a ], [ %i.gb, %bb.c ] ; 5 uses
  %.03843 = phi i32 [ %i.n, %bb.a ], [ %i.ev, %bb.c ] ; 5 uses
  %.03942 = phi i32 [ %i.i, %bb.a ], [ %.03744, %bb.c ]
  %.04041 = phi i32 [ %i.d, %bb.a ], [ %.03843, %bb.c ]
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %.03744, i32 %.03744, i32 11)
  %i.dn = add i32 %i.dm, %.03843
  %i.do = and i32 %.045, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !16 ; 2 uses
  %i.ds = xor i32 %i.dr, %i.dn                    ; 4 uses
  %i.dt = and i32 %i.ds, 255
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !12
  %i.dx = zext i8 %i.dw to i32
  %i.dy = lshr i32 %i.ds, 8
  %i.dz = and i32 %i.dy, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 8
  %i.ef = or disjoint i32 %i.ee, %i.dx
  %i.eg = lshr i32 %i.ds, 16
  %i.eh = and i32 %i.eg, 255
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 16
  %i.en = or disjoint i32 %i.ef, %i.em
  %i.eo = lshr i32 %i.ds, 24
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = or disjoint i32 %i.en, %i.et
  %i.ev = xor i32 %i.eu, %.04041                  ; 2 uses
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %.03843, i32 %.03843, i32 17)
  %i.ex = xor i32 %.03744, %i.ew
  %i.ey = add i32 %i.dr, %i.ex                    ; 4 uses
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = zext i8 %i.fc to i32
  %i.fe = lshr i32 %i.ey, 8
  %i.ff = and i32 %i.fe, 255
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !12
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = or disjoint i32 %i.fk, %i.fd
  %i.fm = lshr i32 %i.ey, 16
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !12
  %i.fr = zext i8 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 16
  %i.ft = or disjoint i32 %i.fl, %i.fs
  %i.fu = lshr i32 %i.ey, 24
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !12
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 24
  %i.ga = or disjoint i32 %i.ft, %i.fz
  %i.gb = xor i32 %i.ga, %.03942                  ; 2 uses
  %i.gc = add nsw i32 %.045, -1
  %.not = icmp eq i32 %.045, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !47
}

; Function Attrs: mustprogress uwtable
define void @_ZN9CryptData8SetKey30EbP11SecPasswordPKwPKh(ptr noundef nonnull align 8 dereferenceable(2516) %0, i1 noundef zeroext %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 11 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [1032 x i8], align 16             ; 6 uses
  %5 = alloca %struct.sha1_context, align 8       ; 7 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %6 = alloca %struct.sha1_context, align 8       ; 4 uses
  %i.e = alloca [5 x i32], align 16               ; 4 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %cond = icmp eq ptr %4, null
  %i.g = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %2) ; 2 uses
  br i1 %cond, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !50, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.split.us.1, label %.split51.us

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.l, label %bb.c, label %.split.us.2

bb.c:                                             ; preds = %.split.us.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50, !range !29, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split.us.2, label %.split51.us

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.q, label %bb.d, label %.split.us.3

bb.d:                                             ; preds = %.split.us.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i8, ptr %i.r, align 8, !tbaa !50, !range !29, !noundef !30
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split.us.3, label %.split51.us

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.split.us.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = load i8, ptr %i.w, align 8, !tbaa !50, !range !29, !noundef !30
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.split51.us

bb.f:                                             ; preds = %.split.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split.1

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = load i64, ptr %4, align 1
  %i.af = icmp ne i64 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.split51.us, label %.split.1

.split51.us:                                      ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.b, %bb.c, %bb.d, %bb.e
  %.us-phi = phi ptr [ %i.u, %bb.e ], [ %0, %bb.b ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %0, %bb.g ], [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @_Z11SecHideDataPvmbb(ptr noundef nonnull %i.a, i64 noundef 16, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.us-phi, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.u

.split.1:                                         ; preds = %.split.preheader, %bb.f, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.al, label %bb.h, label %.split.2

bb.h:                                             ; preds = %.split.1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i8, ptr %i.am, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.split.2

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = load i64, ptr %4, align 1
  %i.as = icmp ne i64 %i.aq, %i.ar
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.split51.us, label %.split.2

.split.2:                                         ; preds = %bb.i, %bb.h, %.split.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aw = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.av, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.aw, label %bb.j, label %.split.3

bb.j:                                             ; preds = %.split.2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !50, !range !29, !noundef !30
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %.split.3

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = load i64, ptr %4, align 1
  %i.bd = icmp ne i64 %i.bb, %i.bc
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.split51.us, label %.split.3

.split.3:                                         ; preds = %bb.k, %bb.j, %.split.2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bh = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.bh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.split.3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !50, !range !29, !noundef !30
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = load i64, ptr %4, align 1
  %i.bo = icmp ne i64 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.split51.us, label %.critedge

.critedge:                                        ; preds = %.split.3, %bb.l, %bb.m, %.split.us.3, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.br = tail call i64 @wcslen(ptr noundef %3) #17 ; 2 uses
  %i.bs = shl i64 %i.br, 1                        ; 4 uses
  %i.bt = call noundef ptr @_Z9WideToRawPKwmPhm(ptr noundef %3, i64 noundef %i.br, ptr noundef nonnull %i.c, i64 noundef %i.bs) ; 0 uses
  %i.bu = icmp ne ptr %4, null                    ; 3 uses
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  %i.bw = load i64, ptr %4, align 1
  store i64 %i.bw, ptr %i.bv, align 2
  %i.bx = add nuw nsw i64 %i.bs, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %.044 = phi i64 [ %i.bx, %bb.n ], [ %i.bs, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_Z9sha1_initP12sha1_context(ptr noundef nonnull %5)
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.p

.preheader:                                       ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @_Z9sha1_doneP12sha1_contextPj(ptr noundef nonnull %5, ptr noundef nonnull %i.f)
  %7 = load <4 x i8>, ptr %i.f, align 16, !tbaa !16
  store <4 x i8> %7, ptr %i.a, align 16, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %8 = load <4 x i8>, ptr %i.cb, align 4, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> %8, ptr %i.cc, align 4, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %9 = load <4 x i8>, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <4 x i8> %9, ptr %i.ce, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %10 = load <4 x i8>, ptr %i.cf, align 4, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store <4 x i8> %10, ptr %i.cg, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !31
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.cj ; 2 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIwSaIwEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.ck, ptr noundef nonnull align 8 dereferenceable(25) %2) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !32, !range !29, !noundef !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !32
  %i.cp = load i32, ptr %i.ch, align 8, !tbaa !31
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  %i.ct = zext i1 %i.bu to i8
  store i8 %i.ct, ptr %i.cs, align 8, !tbaa !50
  br i1 %i.bu, label %bb.s, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.r
  %.04353 = phi i32 [ 0, %bb.o ], [ %i.dg, %bb.r ] ; 6 uses
  call void @_Z18sha1_process_rar29P12sha1_contextPKhm(ptr noundef nonnull %5, ptr noundef nonnull %i.c, i64 noundef %.044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.cu = trunc i32 %.04353 to i8
  store i8 %i.cu, ptr %i.d, align 1, !tbaa !12
  %i.cv = lshr i32 %.04353, 8
  %i.cw = trunc i32 %i.cv to i8
  store i8 %i.cw, ptr %i.by, align 1, !tbaa !12
  %i.cx = lshr i32 %.04353, 16
  %i.cy = trunc nuw nsw i32 %i.cx to i8
  store i8 %i.cy, ptr %i.bz, align 1, !tbaa !12
  call void @_Z12sha1_processP12sha1_contextPKhm(ptr noundef nonnull %5, ptr noundef nonnull %i.d, i64 noundef 3)
  %i.cz = and i32 %.04353, 16383
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @_Z9sha1_doneP12sha1_contextPj(ptr noundef nonnull %6, ptr noundef nonnull %i.e)
  %i.db = load i32, ptr %i.ca, align 16, !tbaa !16
  %i.dc = trunc i32 %i.db to i8
  %i.dd = lshr exact i32 %.04353, 14
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.de
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.dg = add nuw nsw i32 %.04353, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, 262144
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !48

bb.s:                                             ; preds = %.preheader
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.di = load i64, ptr %4, align 1
  store i64 %i.di, ptr %i.dh, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @_Z11SecHideDataPvmbb(ptr noundef nonnull %i.dj, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.dk = load i32, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.do = add i32 %i.dk, 1
  %i.dp = and i32 %i.do, 3
  store i32 %i.dp, ptr %i.ch, align 8, !tbaa !31
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.c, i64 noundef 1032)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.u

bb.u:                                             ; preds = %.split51.us, %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @_ZN8Rijndael4InitEbPKhjS1_(ptr noundef nonnull align 4 dereferenceable(264) %i.dq, i1 noundef zeroext %1, ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef nonnull %i.b)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 16)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #3

declare void @_Z11SecHideDataPvmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_Z9WideToRawPKwmPhm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9sha1_initP12sha1_context(ptr noundef) local_unnamed_addr #3

declare void @_Z18sha1_process_rar29P12sha1_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z12sha1_processP12sha1_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9sha1_doneP12sha1_contextPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN8Rijndael4InitEbPKhjS1_(ptr noundef nonnull align 4 dereferenceable(264), i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z6pbkdf2PKhmS0_mPhS1_S1_j(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #2 {
.preheader:
  %i.a = alloca [68 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 15 uses
  %i.c = alloca [32 x i8], align 16               ; 14 uses
  %8 = alloca %struct.sha256_context, align 8     ; 5 uses
  %9 = alloca %struct.sha256_context, align 8     ; 5 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.g = tail call i64 @llvm.umin.i64(i64 %3, i64 64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %2, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.h, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.i = add nuw nsw i64 %3, 4
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.i, ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.j = add i32 %7, -1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i8 0, ptr %i.d, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i8 0, ptr %i.e, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %._crit_edge
  %.02529.1 = phi i32 [ %i.s, %.lr.ph.1 ], [ 0, %._crit_edge ]
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef %i.f, ptr noundef nonnull %8, ptr noundef nonnull %i.d, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %i.n = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.o = xor <16 x i8> %i.n, %i.m
  store <16 x i8> %i.o, ptr %i.c, align 16, !tbaa !12
  %i.p = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %i.q = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.r = xor <16 x i8> %i.q, %i.p
  store <16 x i8> %i.r, ptr %i.l, align 16, !tbaa !12
  %i.s = add nuw i32 %.02529.1, 1                 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.s, 16
  br i1 %exitcond.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !52

._crit_edge.1:                                    ; preds = %.lr.ph.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2, %._crit_edge.1
  %.02529.2 = phi i32 [ %i.z, %.lr.ph.2 ], [ 0, %._crit_edge.1 ]
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef %i.f, ptr noundef nonnull %8, ptr noundef nonnull %i.d, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.t = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %i.u = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.v = xor <16 x i8> %i.u, %i.t
  store <16 x i8> %i.v, ptr %i.c, align 16, !tbaa !12
  %i.w = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %i.x = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.y = xor <16 x i8> %i.x, %i.w
  store <16 x i8> %i.y, ptr %i.l, align 16, !tbaa !12
  %i.z = add nuw i32 %.02529.2, 1                 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.z, 16
  br i1 %exitcond.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !52

._crit_edge.2:                                    ; preds = %.lr.ph.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 68)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.c, i64 noundef 32)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 32)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.f, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

end_hunk_0
