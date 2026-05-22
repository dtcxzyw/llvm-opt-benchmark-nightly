inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@scalar_decode_short:.preheader
  %i.js = icmp ult i64 %i.jr, %2
  br i1 %i.js, label %.lr.ph.5.3, label %._crit_edge.5

.lr.ph.5.3:                                       ; preds = %.lr.ph.5.2
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.jr
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !13
  %i.jv = zext i8 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 24
  %i.jx = or disjoint i64 %i.jw, %i.jq            ; 2 uses
  %i.jy = add nuw nsw i64 %.1.lcssa.4, 4          ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %2
  br i1 %i.jz, label %.lr.ph.5.4, label %._crit_edge.5

.lr.ph.5.4:                                       ; preds = %.lr.ph.5.3
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !13
  %i.kc = zext i8 %i.kb to i64
  %i.kd = shl nuw nsw i64 %i.kc, 32
  %i.ke = or disjoint i64 %i.kd, %i.jx            ; 2 uses
  %i.kf = add nuw nsw i64 %.1.lcssa.4, 5          ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %2
  br i1 %i.kg, label %.lr.ph.5.5, label %._crit_edge.5

.lr.ph.5.5:                                       ; preds = %.lr.ph.5.4
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 %i.kf
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !13
  %i.kj = zext i8 %i.ki to i64
  %i.kk = shl nuw nsw i64 %i.kj, 40
  %i.kl = or i64 %i.kk, %i.ke                     ; 2 uses
  %i.km = add nuw nsw i64 %.1.lcssa.4, 6          ; 3 uses
  %i.kn = icmp ult i64 %i.km, %2
  br i1 %i.kn, label %.lr.ph.5.6, label %._crit_edge.5

.lr.ph.5.6:                                       ; preds = %.lr.ph.5.5
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %i.km
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !13
  %i.kq = zext i8 %i.kp to i64
  %i.kr = shl nuw nsw i64 %i.kq, 48
  %i.ks = or i64 %i.kr, %i.kl                     ; 2 uses
  %i.kt = add nuw nsw i64 %.1.lcssa.4, 7          ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %2
  br i1 %i.ku, label %.lr.ph.5.7, label %._crit_edge.5

.lr.ph.5.7:                                       ; preds = %.lr.ph.5.6
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 %i.kt
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !13
  %i.kx = zext i8 %i.kw to i64
  %i.ky = shl nuw i64 %i.kx, 56
  %i.kz = or i64 %i.ky, %i.ks
  %i.la = add nuw nsw i64 %.1.lcssa.4, 8
  br label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5, %.lr.ph.5.1, %.lr.ph.5.2, %.lr.ph.5.3, %.lr.ph.5.4, %.lr.ph.5.5, %.lr.ph.5.6, %.lr.ph.5.7, %._crit_edge.4
  %.1.lcssa.5 = phi i64 [ %.1.lcssa.4, %._crit_edge.4 ], [ %i.jd, %.lr.ph.5 ], [ %i.jk, %.lr.ph.5.1 ], [ %i.jr, %.lr.ph.5.2 ], [ %i.jy, %.lr.ph.5.3 ], [ %i.kf, %.lr.ph.5.4 ], [ %i.km, %.lr.ph.5.5 ], [ %i.kt, %.lr.ph.5.6 ], [ %i.la, %.lr.ph.5.7 ] ; 9 uses
  %.0.lcssa.5 = phi i64 [ 0, %._crit_edge.4 ], [ %i.jc, %.lr.ph.5 ], [ %i.jj, %.lr.ph.5.1 ], [ %i.jq, %.lr.ph.5.2 ], [ %i.jx, %.lr.ph.5.3 ], [ %i.ke, %.lr.ph.5.4 ], [ %i.kl, %.lr.ph.5.5 ], [ %i.ks, %.lr.ph.5.6 ], [ %i.kz, %.lr.ph.5.7 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.0.lcssa.5, ptr %i.lb, align 8, !tbaa !9
  %i.lc = icmp ult i64 %.1.lcssa.5, %2
  br i1 %i.lc, label %.lr.ph.6, label %._crit_edge.6

.lr.ph.6:                                         ; preds = %._crit_edge.5
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 %.1.lcssa.5
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !13
  %i.lf = zext i8 %i.le to i64                    ; 2 uses
  %i.lg = add nuw nsw i64 %.1.lcssa.5, 1          ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %2
  br i1 %i.lh, label %.lr.ph.6.1, label %._crit_edge.6

.lr.ph.6.1:                                       ; preds = %.lr.ph.6
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !13
  %i.lk = zext i8 %i.lj to i64
  %i.ll = shl nuw nsw i64 %i.lk, 8
  %i.lm = or disjoint i64 %i.ll, %i.lf            ; 2 uses
  %i.ln = add nuw nsw i64 %.1.lcssa.5, 2          ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %2
  br i1 %i.lo, label %.lr.ph.6.2, label %._crit_edge.6

.lr.ph.6.2:                                       ; preds = %.lr.ph.6.1
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ln
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !13
  %i.lr = zext i8 %i.lq to i64
  %i.ls = shl nuw nsw i64 %i.lr, 16
  %i.lt = or disjoint i64 %i.ls, %i.lm            ; 2 uses
  %i.lu = add nuw nsw i64 %.1.lcssa.5, 3          ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %2
  br i1 %i.lv, label %.lr.ph.6.3, label %._crit_edge.6

.lr.ph.6.3:                                       ; preds = %.lr.ph.6.2
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 %i.lu
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !13
  %i.ly = zext i8 %i.lx to i64
  %i.lz = shl nuw nsw i64 %i.ly, 24
  %i.ma = or disjoint i64 %i.lz, %i.lt            ; 2 uses
  %i.mb = add nuw nsw i64 %.1.lcssa.5, 4          ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %2
  br i1 %i.mc, label %.lr.ph.6.4, label %._crit_edge.6

.lr.ph.6.4:                                       ; preds = %.lr.ph.6.3
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 %i.mb
  %i.me = load i8, ptr %i.md, align 1, !tbaa !13
  %i.mf = zext i8 %i.me to i64
  %i.mg = shl nuw nsw i64 %i.mf, 32
  %i.mh = or disjoint i64 %i.mg, %i.ma            ; 2 uses
  %i.mi = add nuw nsw i64 %.1.lcssa.5, 5          ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %2
  br i1 %i.mj, label %.lr.ph.6.5, label %._crit_edge.6

.lr.ph.6.5:                                       ; preds = %.lr.ph.6.4
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 %i.mi
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !13
  %i.mm = zext i8 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 40
  %i.mo = or i64 %i.mn, %i.mh                     ; 2 uses
  %i.mp = add nuw nsw i64 %.1.lcssa.5, 6          ; 2 uses
  %i.mq = icmp ult i64 %i.mp, %2
  br i1 %i.mq, label %.lr.ph.6.6, label %._crit_edge.6

.lr.ph.6.6:                                       ; preds = %.lr.ph.6.5
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 %i.mp
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !13
  %i.mt = zext i8 %i.ms to i64
  %i.mu = shl nuw nsw i64 %i.mt, 48
  %i.mv = or i64 %i.mu, %i.mo                     ; 2 uses
  %i.mw = add nuw nsw i64 %.1.lcssa.5, 7          ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %2
  br i1 %i.mx, label %.lr.ph.6.7, label %._crit_edge.6

.lr.ph.6.7:                                       ; preds = %.lr.ph.6.6
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %i.mw
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i64
  %i.nb = shl nuw i64 %i.na, 56
  %i.nc = or i64 %i.nb, %i.mv
  br label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6, %.lr.ph.6.1, %.lr.ph.6.2, %.lr.ph.6.3, %.lr.ph.6.4, %.lr.ph.6.5, %.lr.ph.6.6, %.lr.ph.6.7, %._crit_edge.5
  %.0.lcssa.6 = phi i64 [ 0, %._crit_edge.5 ], [ %i.lf, %.lr.ph.6 ], [ %i.lm, %.lr.ph.6.1 ], [ %i.lt, %.lr.ph.6.2 ], [ %i.ma, %.lr.ph.6.3 ], [ %i.mh, %.lr.ph.6.4 ], [ %i.mo, %.lr.ph.6.5 ], [ %i.mv, %.lr.ph.6.6 ], [ %i.nc, %.lr.ph.6.7 ]
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.0.lcssa.6, ptr %i.nd, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_curve448_scalar_destroy(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  tail call void @OPENSSL_cleanse(ptr noundef %0, i64 noundef 56) #8
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ossl_curve448_scalar_decode_long(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca [1 x %struct.curve448_scalar_s], align 16 ; 17 uses
  %4 = alloca [1 x %struct.curve448_scalar_s], align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = urem i64 %2, 56                          ; 2 uses
  %i.c = sub nuw i64 %2, %i.b                     ; 2 uses
  %i.d = icmp eq i64 %i.b, 0
  %i.e = add i64 %i.c, -56
  %spec.select = select i1 %i.d, i64 %i.e, i64 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.g = sub i64 %2, %spec.select
  call fastcc void @scalar_decode_short(ptr noundef nonnull %3, ptr noundef %i.f, i64 noundef %i.g)
  %i.h = icmp eq i64 %2, 56
  br i1 %i.h, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not20 = icmp eq i64 %spec.select, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @sc_montmul(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull @ossl_curve448_scalar_one)
  tail call fastcc void @sc_montmul(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @sc_r2)
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 56) #8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.121 = phi i64 [ %spec.select, %.lr.ph ], [ %i.u, %bb.e ]
  %i.u = add i64 %.121, -56                       ; 3 uses
  call fastcc void @sc_montmul(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull @sc_r2)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  call fastcc void @scalar_decode_short(ptr noundef nonnull %4, ptr noundef readonly %i.v, i64 noundef 56)
  call fastcc void @sc_montmul(ptr noundef nonnull %4, ptr noundef nonnull readonly %4, ptr noundef nonnull @ossl_curve448_scalar_one)
  call fastcc void @sc_montmul(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull @sc_r2)
  %i.w = load i64, ptr %3, align 16, !tbaa !9     ; 2 uses
  %i.x = load i64, ptr %4, align 16, !tbaa !9
  %add.narrowed.i = add i64 %i.x, %i.w            ; 2 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %i.w
  %i.y = zext i1 %add.narrowed.overflow.i to i128
  %i.z = load i64, ptr %i.o, align 8, !tbaa !9
  %i.aa = zext i64 %i.z to i128
  %i.ab = add nuw nsw i128 %i.y, %i.aa
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !9
  %i.ad = zext i64 %i.ac to i128
  %i.ae = add nuw nsw i128 %i.ab, %i.ad           ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = load i64, ptr %i.p, align 16, !tbaa !9
  %i.ah = zext i64 %i.ag to i128
  %i.ai = add nuw nsw i128 %i.af, %i.ah
  %i.aj = load i64, ptr %i.j, align 16, !tbaa !9
  %i.ak = zext i64 %i.aj to i128
  %i.al = add nuw nsw i128 %i.ai, %i.ak           ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = load i64, ptr %i.q, align 8, !tbaa !9
  %i.ao = zext i64 %i.an to i128
  %i.ap = add nuw nsw i128 %i.am, %i.ao
  %i.aq = load i64, ptr %i.k, align 8, !tbaa !9
  %i.ar = zext i64 %i.aq to i128
  %i.as = add nuw nsw i128 %i.ap, %i.ar           ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = load i64, ptr %i.r, align 16, !tbaa !9
  %i.av = zext i64 %i.au to i128
  %i.aw = add nuw nsw i128 %i.at, %i.av
  %i.ax = load i64, ptr %i.l, align 16, !tbaa !9
  %i.ay = zext i64 %i.ax to i128
  %i.az = add nuw nsw i128 %i.aw, %i.ay           ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %i.bb = load i64, ptr %i.s, align 8, !tbaa !9
  %i.bc = zext i64 %i.bb to i128
  %i.bd = add nuw nsw i128 %i.ba, %i.bc
  %i.be = load i64, ptr %i.m, align 8, !tbaa !9
  %i.bf = zext i64 %i.be to i128
  %i.bg = add nuw nsw i128 %i.bd, %i.bf           ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = load i64, ptr %i.t, align 16, !tbaa !9
  %i.bj = zext i64 %i.bi to i128
  %i.bk = add nuw nsw i128 %i.bh, %i.bj
  %i.bl = load i64, ptr %i.n, align 16, !tbaa !9
  %i.bm = zext i64 %i.bl to i128
  %i.bn = add nuw nsw i128 %i.bk, %i.bm           ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = trunc nuw nsw i128 %i.bo to i64
  %i.bq = zext i64 %add.narrowed.i to i128
  %i.br = add nsw i128 %i.bq, -2556006723728458995 ; 2 uses
  %i.bs = ashr i128 %i.br, 64
  %i.bt = and i128 %i.ae, 18446744073709551615
  %i.bu = add nsw i128 %i.bs, -2408513697996967765
  %i.bv = add nsw i128 %i.bu, %i.bt               ; 2 uses
  %i.bw = ashr i128 %i.bv, 64
  %i.bx = and i128 %i.al, 18446744073709551615
  %i.by = add nsw i128 %i.bw, -14145484589129676432
  %i.bz = add nsw i128 %i.by, %i.bx               ; 2 uses
  %i.ca = ashr i128 %i.bz, 64
  %i.cb = and i128 %i.as, 18446744073709551615
  %i.cc = add nsw i128 %i.ca, -18446744071508206569
  %i.cd = add nsw i128 %i.cc, %i.cb               ; 2 uses
  %i.ce = ashr i128 %i.cd, 64
  %i.cf = and i128 %i.az, 18446744073709551615
  %i.cg = add nsw i128 %i.ce, -18446744073709551615
  %i.ch = add nsw i128 %i.cg, %i.cf               ; 2 uses
  %i.ci = ashr i128 %i.ch, 64
  %i.cj = and i128 %i.bg, 18446744073709551615
  %i.ck = add nsw i128 %i.ci, -18446744073709551615
  %i.cl = add nsw i128 %i.ck, %i.cj               ; 2 uses
  %i.cm = ashr i128 %i.cl, 64
  %i.cn = and i128 %i.bn, 18446744073709551615
  %i.co = add nsw i128 %i.cm, -4611686018427387903
  %i.cp = add nsw i128 %i.co, %i.cn               ; 2 uses
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = add nsw i64 %i.cr, %i.bp                ; 6 uses
  %i.ct = and i128 %i.br, 18446744073709551615
  %i.cu = and i64 %i.cs, 2556006723728458995
  %i.cv = zext nneg i64 %i.cu to i128
  %i.cw = add nuw nsw i128 %i.ct, %i.cv           ; 2 uses
  %i.cx = trunc i128 %i.cw to i64
  store i64 %i.cx, ptr %3, align 16, !tbaa !9
  %i.cy = lshr i128 %i.cw, 64
  %i.cz = and i128 %i.bv, 18446744073709551615
  %i.da = and i64 %i.cs, 2408513697996967765
  %i.db = zext nneg i64 %i.da to i128
  %i.dc = add nuw nsw i128 %i.cz, %i.db
  %i.dd = add nuw nsw i128 %i.dc, %i.cy           ; 2 uses
  %i.de = trunc i128 %i.dd to i64
  store i64 %i.de, ptr %i.o, align 8, !tbaa !9
  %i.df = lshr i128 %i.dd, 64
  %i.dg = and i128 %i.bz, 18446744073709551615
  %i.dh = and i64 %i.cs, -4301259484579875184
  %i.di = zext i64 %i.dh to i128
  %i.dj = add nuw nsw i128 %i.dg, %i.di
  %i.dk = add nuw nsw i128 %i.dj, %i.df           ; 2 uses
  %i.dl = trunc i128 %i.dk to i64
  store i64 %i.dl, ptr %i.p, align 16, !tbaa !9
  %i.dm = lshr i128 %i.dk, 64
  %i.dn = and i128 %i.cd, 18446744073709551615
  %i.do = and i64 %i.cs, -2201345047
  %i.dp = zext i64 %i.do to i128
  %i.dq = add nuw nsw i128 %i.dn, %i.dp
  %i.dr = add nuw nsw i128 %i.dq, %i.dm           ; 2 uses
  %i.ds = trunc i128 %i.dr to i64
  store i64 %i.ds, ptr %i.q, align 8, !tbaa !9
  %i.dt = lshr i128 %i.dr, 64
  %i.du = and i128 %i.ch, 18446744073709551615
  %i.dv = zext i64 %i.cs to i128                  ; 2 uses
  %i.dw = add nuw nsw i128 %i.du, %i.dv
  %i.dx = add nuw nsw i128 %i.dw, %i.dt           ; 2 uses
  %i.dy = trunc i128 %i.dx to i64
  store i64 %i.dy, ptr %i.r, align 16, !tbaa !9
  %i.dz = lshr i128 %i.dx, 64
  %i.ea = and i128 %i.cl, 18446744073709551615
  %i.eb = add nuw nsw i128 %i.ea, %i.dv
  %i.ec = add nuw nsw i128 %i.eb, %i.dz           ; 2 uses
  %i.ed = trunc i128 %i.ec to i64
  store i64 %i.ed, ptr %i.s, align 8, !tbaa !9
  %i.ee = lshr i128 %i.ec, 64
  %i.ef = add nsw i128 %i.ee, %i.cp
  %i.eg = and i64 %i.cs, 4611686018427387903
  %i.eh = trunc i128 %i.ef to i64
  %i.ei = add i64 %i.eg, %i.eh
  store i64 %i.ei, ptr %i.t, align 16, !tbaa !9
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.e, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 16 dereferenceable(56) %3, i64 56, i1 false), !tbaa.struct !15
  call void @OPENSSL_cleanse(ptr noundef nonnull %3, i64 noundef 56) #8
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 56) #8
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ossl_curve448_scalar_encode(ptr noundef writeonly captures(none) initializes((0, 56)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
.preheader:
  %i.a = load i64, ptr %1, align 8, !tbaa !9
  %i.b = trunc i64 %i.a to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !13
  %i.c = load i64, ptr %1, align 8, !tbaa !9
  %i.d = lshr i64 %i.c, 8
  %i.e = trunc i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !13
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  %i.h = lshr i64 %i.g, 16
  %i.i = trunc i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.i, ptr %i.j, align 1, !tbaa !13
  %i.k = load i64, ptr %1, align 8, !tbaa !9
  %i.l = lshr i64 %i.k, 24
  %i.m = trunc i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.m, ptr %i.n, align 1, !tbaa !13
  %i.o = load i64, ptr %1, align 8, !tbaa !9
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc i64 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.q, ptr %i.r, align 1, !tbaa !13
  %i.s = load i64, ptr %1, align 8, !tbaa !9
  %i.t = lshr i64 %i.s, 40
  %i.u = trunc i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !13
  %i.w = load i64, ptr %1, align 8, !tbaa !9
  %i.x = lshr i64 %i.w, 48
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !13
  %i.aa = load i64, ptr %1, align 8, !tbaa !9
  %i.ab = lshr i64 %i.aa, 56
  %i.ac = trunc nuw i64 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !13
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.aj = lshr i64 %i.ai, 8
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !13
  %i.am = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.an = lshr i64 %i.am, 16
  %i.ao = trunc i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ar = lshr i64 %i.aq, 24
  %i.as = trunc i64 %i.ar to i8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.as, ptr %i.at, align 1, !tbaa !13
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.av = lshr i64 %i.au, 32
  %i.aw = trunc i64 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !13
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.az = lshr i64 %i.ay, 40
  %i.ba = trunc i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !13
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.bd = lshr i64 %i.bc, 48
  %i.be = trunc i64 %i.bd to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !13
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.bh = lshr i64 %i.bg, 56
  %i.bi = trunc nuw i64 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bm = trunc i64 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bp = lshr i64 %i.bo, 8
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !13
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !13
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.bx = lshr i64 %i.bw, 24
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !13
  %i.ca = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !13
  %i.ce = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.cf = lshr i64 %i.ce, 40
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !13
  %i.ci = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.cj = lshr i64 %i.ci, 48
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  %i.cm = load i64, ptr %i.bk, align 8, !tbaa !9
  %i.cn = lshr i64 %i.cm, 56
  %i.co = trunc nuw i64 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !13
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.cv = lshr i64 %i.cu, 8
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !13
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.cz = lshr i64 %i.cy, 16
  %i.da = trunc i64 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.da, ptr %i.db, align 1, !tbaa !13
  %i.dc = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.dd = lshr i64 %i.dc, 24
  %i.de = trunc i64 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.de, ptr %i.df, align 1, !tbaa !13
  %i.dg = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.dh = lshr i64 %i.dg, 32
  %i.di = trunc i64 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !13
  %i.dk = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.dl = lshr i64 %i.dk, 40
  %i.dm = trunc i64 %i.dl to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !13
  %i.do = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.dp = lshr i64 %i.do, 48
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !13
  %i.ds = load i64, ptr %i.cq, align 8, !tbaa !9
  %i.dt = lshr i64 %i.ds, 56
  %i.du = trunc nuw i64 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !13
  %i.ea = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.eb = lshr i64 %i.ea, 8
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !13
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.ef = lshr i64 %i.ee, 16
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !13
  %i.ei = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.ej = lshr i64 %i.ei, 24
  %i.ek = trunc i64 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !13
  %i.em = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.en = lshr i64 %i.em, 32
  %i.eo = trunc i64 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !13
  %i.eq = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.er = lshr i64 %i.eq, 40
  %i.es = trunc i64 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.es, ptr %i.et, align 1, !tbaa !13
  %i.eu = load i64, ptr %i.dw, align 8, !tbaa !9
  %i.ev = lshr i64 %i.eu, 48
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 38
end_hunk_0
