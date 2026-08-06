begin_hunk_0_@dlarft_:bb.a
  %i.dp = mul i32 %i.do, %i.ao
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dq
  %i.ds = mul nsw i32 %i.do, %i.k
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [8 x i8], ptr %i.m, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.dr, ptr noundef nonnull %5, ptr noundef %i.dv, ptr noundef nonnull %8) #3 ; 0 uses
  %i.dx = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.dz = sub nsw i32 %i.dx, %i.dy
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !8
  %i.ea = load i32, ptr %2, align 4, !tbaa !8
  %i.eb = sub nsw i32 %i.ea, %i.dx
  store i32 %i.eb, ptr %i.d, align 4, !tbaa !8
  %i.ec = add nsw i32 %i.dx, 1                    ; 2 uses
  %i.ed = add nsw i32 %i.ec, %i.g
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ee
  %i.eg = add nsw i32 %i.dy, 1                    ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.g
  %i.ei = add nsw i32 %i.eh, %i.ec
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ej
  %i.el = mul nsw i32 %i.eg, %i.k
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr [8 x i8], ptr %i.m, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %i.ep = call i32 @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.ef, ptr noundef nonnull %5, ptr noundef %i.ek, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.eo, ptr noundef nonnull %8) #3 ; 0 uses
  %i.eq = load i32, ptr %3, align 4, !tbaa !8
  %i.er = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.es = sub nsw i32 %i.eq, %i.er
  store i32 %i.es, ptr %i.c, align 4, !tbaa !8
  %i.et = add nsw i32 %i.er, 1
  %i.eu = mul nsw i32 %i.et, %i.k
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %i.m, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %i.ey = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.ex, ptr noundef nonnull %8) #3 ; 0 uses
  %i.ez = load i32, ptr %3, align 4, !tbaa !8
  %i.fa = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.fb = sub nsw i32 %i.ez, %i.fa
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !8
  %i.fc = add nsw i32 %i.fa, 1                    ; 2 uses
  %i.fd = mul nsw i32 %i.fc, %i.k                 ; 2 uses
  %i.fe = add nsw i32 %i.fd, %i.fc
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ff
  %i.fh = sext i32 %i.fd to i64
  %i.fi = getelementptr [8 x i8], ptr %i.m, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.fg, ptr noundef nonnull %8, ptr noundef %i.fj, ptr noundef nonnull %8) #3 ; 0 uses
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.fl = select i1 %not., i1 true, i1 %i.ae
  br i1 %i.fl, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fm = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) ; 0 uses
  %i.fn = load i32, ptr %2, align 4, !tbaa !8
  %i.fo = load i32, ptr %i.f, align 4, !tbaa !8   ; 3 uses
  %i.fp = sub nsw i32 %i.fn, %i.fo
  store i32 %i.fp, ptr %i.c, align 4, !tbaa !8
  %i.fq = load i32, ptr %3, align 4, !tbaa !8
  %i.fr = sub nsw i32 %i.fq, %i.fo
  store i32 %i.fr, ptr %i.d, align 4, !tbaa !8
  %i.fs = add nsw i32 %i.fo, 1                    ; 3 uses
  %i.ft = add i32 %i.g, 1                         ; 2 uses
  %i.fu = mul i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fv
  %i.fx = sext i32 %i.fs to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.fx
  %i.fz = add i32 %i.k, 1
  %i.ga = mul i32 %i.fs, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.gb
  %i.gd = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.fw, ptr noundef nonnull %5, ptr noundef nonnull %i.fy, ptr noundef %i.gc, ptr noundef nonnull %8) ; 0 uses
  %i.ge = load i32, ptr %3, align 4, !tbaa !8
  %i.gf = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.gg = sub nsw i32 %i.ge, %i.gf
  store i32 %i.gg, ptr %i.c, align 4, !tbaa !8
  %i.gh = add nsw i32 %i.gf, 1                    ; 2 uses
  %i.gi = mul nsw i32 %i.gh, %i.g
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr [8 x i8], ptr %i.i, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  %i.gm = mul nsw i32 %i.gh, %i.k
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr [8 x i8], ptr %i.m, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = call i32 @dlacpy_(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef %i.gl, ptr noundef nonnull %5, ptr noundef %i.gp, ptr noundef nonnull %8) #3 ; 0 uses
  %i.gr = load i32, ptr %3, align 4, !tbaa !8
  %i.gs = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.gt = sub nsw i32 %i.gr, %i.gs
  store i32 %i.gt, ptr %i.c, align 4, !tbaa !8
  %i.gu = add nsw i32 %i.gs, 1                    ; 2 uses
  %i.gv = mul i32 %i.gu, %i.ft
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.gw
  %i.gy = mul nsw i32 %i.gu, %i.k
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr [8 x i8], ptr %i.m, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  %i.hc = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.gx, ptr noundef nonnull %5, ptr noundef %i.hb, ptr noundef nonnull %8) #3 ; 0 uses
  %i.hd = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.he = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.hf = sub nsw i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.c, align 4, !tbaa !8
  %i.hg = load i32, ptr %2, align 4, !tbaa !8
  %i.hh = sub nsw i32 %i.hg, %i.hd
  store i32 %i.hh, ptr %i.d, align 4, !tbaa !8
  %i.hi = add nsw i32 %i.hd, 1
  %i.hj = mul nsw i32 %i.hi, %i.g                 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr [8 x i8], ptr %i.i, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = add nsw i32 %i.he, 1                    ; 2 uses
  %i.ho = add nsw i32 %i.hn, %i.hj
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.hp
  %i.hr = mul nsw i32 %i.hn, %i.k
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [8 x i8], ptr %i.m, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %i.hv = call i32 @dgemm_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.hm, ptr noundef nonnull %5, ptr noundef %i.hq, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.hu, ptr noundef nonnull %8) #3 ; 0 uses
  %i.hw = load i32, ptr %3, align 4, !tbaa !8
  %i.hx = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.hy = sub nsw i32 %i.hw, %i.hx
  store i32 %i.hy, ptr %i.c, align 4, !tbaa !8
  %i.hz = add nsw i32 %i.hx, 1
  %i.ia = mul nsw i32 %i.hz, %i.k
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr [8 x i8], ptr %i.m, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %i.ie = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %i.id, ptr noundef nonnull %8) #3 ; 0 uses
  %i.if = load i32, ptr %3, align 4, !tbaa !8
  %i.ig = load i32, ptr %i.f, align 4, !tbaa !8   ; 2 uses
  %i.ih = sub nsw i32 %i.if, %i.ig
  store i32 %i.ih, ptr %i.c, align 4, !tbaa !8
  %i.ii = add nsw i32 %i.ig, 1                    ; 2 uses
  %i.ij = mul nsw i32 %i.ii, %i.k                 ; 2 uses
  %i.ik = add nsw i32 %i.ij, %i.ii
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.il
  %i.in = sext i32 %i.ij to i64
  %i.io = getelementptr [8 x i8], ptr %i.m, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.im, ptr noundef nonnull %8, ptr noundef %i.ip, ptr noundef nonnull %8) #3 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ir = load i32, ptr %2, align 4, !tbaa !8
  %i.is = sub nsw i32 %i.ir, %i.aa
  store i32 %i.is, ptr %i.c, align 4, !tbaa !8
  %i.it = load i32, ptr %3, align 4, !tbaa !8
  %i.iu = sub nsw i32 %i.it, %i.aa
  store i32 %i.iu, ptr %i.d, align 4, !tbaa !8
  %i.iv = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8) ; 0 uses
  %i.iw = load i32, ptr %3, align 4, !tbaa !8
  %i.ix = load i32, ptr %i.f, align 4, !tbaa !8
  %i.iy = sub nsw i32 %i.iw, %i.ix
  %i.iz = add nsw i32 %i.iy, 1                    ; 6 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ja = mul nsw i32 %i.iz, %i.g
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr [8 x i8], ptr %i.i, i64 %i.jb
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  %i.je = sext i32 %i.iz to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.je
  %i.jg = add i32 %i.k, 1                         ; 4 uses
  %i.jh = mul i32 %i.iz, %i.jg
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ji
  %i.jk = call i32 @dlarft_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %i.jd, ptr noundef nonnull %5, ptr noundef nonnull %i.jf, ptr noundef %i.jj, ptr noundef nonnull %8) ; 0 uses
  %i.jl = load i32, ptr %3, align 4, !tbaa !8     ; 6 uses
  %i.jm = load i32, ptr %i.f, align 4, !tbaa !8   ; 13 uses
  %i.jn = sub nsw i32 %i.jl, %i.jm                ; 10 uses
  %.not393 = icmp slt i32 %i.jn, 1
  br i1 %.not393, label %.._crit_edge397.split_crit_edge, label %.lr.ph396

.._crit_edge397.split_crit_edge:                  ; preds = %bb.k
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %._crit_edge397.split

.lr.ph396:                                        ; preds = %bb.k
  store i32 %i.jm, ptr %i.d, align 4, !tbaa !8
  %.not370388 = icmp slt i32 %i.jm, 1
  %.pre427 = load i32, ptr %2, align 4, !tbaa !8  ; 5 uses
  br i1 %.not370388, label %._crit_edge397.split, label %.lr.ph396.split

.lr.ph396.split:                                  ; preds = %.lr.ph396
  %invariant.op398 = sub i32 %.pre427, %i.jl
  %i.jo = add nuw i32 %i.jm, 1
  %i.jp = add i32 %i.jl, 1
  %i.jq = sub i32 %i.jp, %i.jm
  %wide.trip.count = zext i32 %i.jo to i64        ; 3 uses
  %i.jr = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %i.js = add i32 %i.k, %i.jl
  %i.jt = add i32 %i.js, 1
  %i.ju = sub i32 %i.jt, %i.jm
  %i.jv = add i32 %.pre427, 2
  %i.jw = sub i32 %i.jv, %i.jm
  %i.jx = shl nsw i64 %i.l, 3
  %i.jy = add i64 %i.jx, %i.b
  %i.jz = add i64 %i.jy, 16
  %i.ka = add i32 %i.k, %i.jl
  %i.kb = add i32 %i.ka, 1
  %i.kc = sub i32 %i.kb, %i.jm
  %i.kd = add i32 %.pre427, 2
  %i.ke = sub i32 %i.kd, %i.jm
  %i.kf = zext nneg i32 %i.jm to i64              ; 5 uses
  %i.kg = zext nneg i32 %i.jm to i64
  %min.iters.check = icmp ult i32 %i.jm, 4
  %ident.check = icmp ne i32 %i.g, 1
  %i.kh = trunc i64 %i.jr to i32
  %i.ki = icmp ugt i64 %i.jr, 4294967295
  %9 = trunc i64 %i.jr to i32
  %invariant.op499 = or i1 %i.ki, %ident.check
  %min.iters.check442 = icmp ult i32 %i.jm, 16
  %n.mod.vf = and i64 %i.kf, 12
  %n.vec = and i64 %i.kf, 2147483632              ; 4 uses
  %i.kj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.kf
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec447 = and i64 %i.kf, 2147483644           ; 3 uses
  %i.kk = or disjoint i64 %n.vec447, 1
  %cmp.n451 = icmp eq i64 %n.vec447, %i.kf
  %invariant.op = add i32 1, %i.jn
  %invariant.op495 = add i32 2, %i.jn
  %invariant.op497 = add i32 3, %i.jn
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph396.split, %._crit_edge392
  %indvar = phi i32 [ 0, %.lr.ph396.split ], [ %indvar.next, %._crit_edge392 ] ; 5 uses
  %.1363394 = phi i32 [ 1, %.lr.ph396.split ], [ %i.nx, %._crit_edge392 ] ; 3 uses
  %invariant.op.reass = add i32 %.1363394, %invariant.op398 ; 7 uses
  %i.kl = mul nsw i32 %.1363394, %i.k             ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.km = add i32 %i.ke, %indvar
  %i.kn = sext i32 %i.km to i64
  %i.ko = shl nsw i64 %i.kn, 3
  %i.kp = add i64 %i.ko, %i.a
  %i.kq = mul i32 %i.k, %indvar
  %i.kr = add i32 %i.kc, %i.kq
  %i.ks = sext i32 %i.kr to i64
  %i.kt = shl nsw i64 %i.ks, 3
  %i.ku = add i64 %i.jz, %i.kt
  %i.kv = add i32 %i.jw, %indvar                  ; 2 uses
  %i.kw = mul i32 %i.k, %indvar
  %i.kx = add i32 %i.ju, %i.kw                    ; 2 uses
  %i.ky = add i32 %i.kx, %i.kh
  %i.kz = icmp slt i32 %i.ky, %i.kx
  %i.la = add i32 %i.kv, %9
  %i.lb = icmp slt i32 %i.la, %i.kv
  %.reass500 = or i1 %i.kz, %invariant.op499
  %i.lc = or i1 %i.lb, %.reass500
  %i.ld = sub i64 %i.kp, %i.ku
  %diff.check = icmp ugt i64 %i.ld, -128
  %or.cond490 = select i1 %i.lc, i1 true, i1 %diff.check
  br i1 %or.cond490, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check442, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.le = trunc i64 %index to i32
  %i.lf = or disjoint i32 %i.le, 1
  %i.lg = add nuw nsw i32 %i.jn, %i.lf            ; 2 uses
  %i.lh = add i32 %i.lg, %invariant.op.reass
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.li ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 96
  %wide.load = load <4 x double>, ptr %i.lj, align 8, !tbaa !9
  %wide.load443.a = load <4 x double>, ptr %i.lk, align 8, !tbaa !9
  %wide.load444.a = load <4 x double>, ptr %i.ll, align 8, !tbaa !9
  %wide.load445 = load <4 x double>, ptr %i.lm, align 8, !tbaa !9
  %i.ln = add nsw i32 %i.lg, %i.kl
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.lo ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 96
  store <4 x double> %wide.load, ptr %i.lp, align 8, !tbaa !9
  store <4 x double> %wide.load443.a, ptr %i.lq, align 8, !tbaa !9
  store <4 x double> %wide.load444.a, ptr %i.lr, align 8, !tbaa !9
  store <4 x double> %wide.load445, ptr %i.ls, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lt = icmp eq i64 %index.next, %n.vec
  br i1 %i.lt, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge392, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index448 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next450, %vec.epilog.vector.body ] ; 2 uses
  %i.lu = trunc i64 %index448 to i32
  %i.lv = or disjoint i32 %i.lu, 1
  %i.lw = add nuw nsw i32 %i.jn, %i.lv            ; 2 uses
  %i.lx = add i32 %i.lw, %invariant.op.reass
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ly
  %wide.load449 = load <4 x double>, ptr %i.lz, align 8, !tbaa !9
  %i.ma = add nsw i32 %i.lw, %i.kl
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mb
  store <4 x double> %wide.load449, ptr %i.mc, align 8, !tbaa !9
  %index.next450 = add nuw i64 %index448, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next450, %n.vec447
  br i1 %i.md, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n451, label %._crit_edge392, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check ], [ %i.kj, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ] ; 4 uses
  %i.me = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.mf = sub nsw i64 %i.kg, %indvars.iv.ph
  %xtraiter = and i64 %i.me, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mg = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.mh = add nuw nsw i32 %i.jn, %i.mg            ; 2 uses
  %i.mi = mul nsw i32 %i.mh, %i.g
  %.reass.prol = add i32 %i.mi, %invariant.op.reass
  %i.mj = sext i32 %.reass.prol to i64
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !9
  %i.mm = add nsw i32 %i.mh, %i.kl
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mn
  store double %i.ml, ptr %i.mo, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !29

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.mp = icmp ult i64 %i.mf, 3
  br i1 %i.mp, label %._crit_edge392, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv to i32
  %i.mr = add nuw nsw i32 %i.jn, %i.mq            ; 2 uses
  %i.ms = mul nsw i32 %i.mr, %i.g
  %.reass = add i32 %i.ms, %invariant.op.reass
  %i.mt = sext i32 %.reass to i64
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.mt
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !9
  %i.mw = add nsw i32 %i.mr, %i.kl
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.mx
  store double %i.mv, ptr %i.my, align 8, !tbaa !9
  %i.mz = trunc i64 %indvars.iv to i32
  %.reass494 = add i32 %i.mz, %invariant.op       ; 2 uses
  %i.na = mul nsw i32 %.reass494, %i.g
  %.reass.1 = add i32 %i.na, %invariant.op.reass
  %i.nb = sext i32 %.reass.1 to i64
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !9
  %i.ne = add nsw i32 %.reass494, %i.kl
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nf
  store double %i.nd, ptr %i.ng, align 8, !tbaa !9
  %i.nh = trunc i64 %indvars.iv to i32
  %.reass496 = add i32 %i.nh, %invariant.op495    ; 2 uses
  %i.ni = mul nsw i32 %.reass496, %i.g
  %.reass.2 = add i32 %i.ni, %invariant.op.reass
  %i.nj = sext i32 %.reass.2 to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nj
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !9
  %i.nm = add nsw i32 %.reass496, %i.kl
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nn
  store double %i.nl, ptr %i.no, align 8, !tbaa !9
  %i.np = trunc i64 %indvars.iv to i32
  %.reass498 = add i32 %i.np, %invariant.op497    ; 2 uses
  %i.nq = mul nsw i32 %.reass498, %i.g
  %.reass.3 = add i32 %i.nq, %invariant.op.reass
  %i.nr = sext i32 %.reass.3 to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nr
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !9
  %i.nu = add nsw i32 %.reass498, %i.kl
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.nv
  store double %i.nt, ptr %i.nw, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond413.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond413.not.3, label %._crit_edge392, label %vec.epilog.scalar.ph, !llvm.loop !30

._crit_edge392:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.nx = add nuw i32 %.1363394, 1                ; 2 uses
  %exitcond414.not = icmp eq i32 %i.nx, %i.jq
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond414.not, label %._crit_edge397.split, label %iter.check, !llvm.loop !31

._crit_edge397.split:                             ; preds = %._crit_edge392, %.._crit_edge397.split_crit_edge, %.lr.ph396
  %i.ny = phi i32 [ %.pre, %.._crit_edge397.split_crit_edge ], [ %.pre427, %.lr.ph396 ], [ %.pre427, %._crit_edge392 ]
  store i32 %i.jn, ptr %i.c, align 4, !tbaa !8
  %i.nz = add i32 %i.g, 1
  %i.oa = sub i32 %i.nz, %i.jl
  %i.ob = add i32 %i.oa, %i.ny
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.oc
  %i.oe = add i32 %i.jg, %i.jn
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.of
  %i.oh = call i32 @dtrmm_(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b13, ptr noundef %i.od, ptr noundef nonnull %5, ptr noundef %i.og, ptr noundef nonnull %8) #3 ; 0 uses
  %i.oi = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.oj = load i32, ptr %i.f, align 4, !tbaa !8
  %i.ok = sub nsw i32 %i.oi, %i.oj                ; 2 uses
  store i32 %i.ok, ptr %i.c, align 4, !tbaa !8
  %i.ol = load i32, ptr %2, align 4, !tbaa !8
  %i.om = sub nsw i32 %i.ol, %i.oi
  store i32 %i.om, ptr %i.d, align 4, !tbaa !8
  %i.on = add nsw i32 %i.ok, 1                    ; 2 uses
  %i.oo = mul nsw i32 %i.on, %i.g
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr [8 x i8], ptr %i.i, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 8
  %i.os = add nsw i32 %i.on, %i.k
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ot
  %i.ov = call i32 @dgemm_(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b13, ptr noundef %i.or, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull @c_b13, ptr noundef %i.ou, ptr noundef nonnull %8) #3 ; 0 uses
  %i.ow = load i32, ptr %3, align 4, !tbaa !8
  %i.ox = load i32, ptr %i.f, align 4, !tbaa !8
  %i.oy = sub nsw i32 %i.ow, %i.ox                ; 2 uses
  store i32 %i.oy, ptr %i.c, align 4, !tbaa !8
  %i.oz = add nsw i32 %i.oy, 1                    ; 2 uses
  %i.pa = mul i32 %i.oz, %i.jg
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.pb
  %i.pd = add nsw i32 %i.oz, %i.k
  %i.pe = sext i32 %i.pd to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.pe
  %i.pg = call i32 @dtrmm_(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull @c_b22, ptr noundef %i.pc, ptr noundef nonnull %8, ptr noundef %i.pf, ptr noundef nonnull %8) #3 ; 0 uses
  %i.ph = load i32, ptr %3, align 4, !tbaa !8
  %i.pi = load i32, ptr %i.f, align 4, !tbaa !8
end_hunk_0
