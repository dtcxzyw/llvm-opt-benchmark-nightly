Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aegis128l_soft?download=true
inline.NumInlined: 98
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decrypt_detached:bb.a
  store i64 %i.fe, ptr %i.ad, align 16
  store i64 %i.ff, ptr %i.ae, align 8
  store i64 %i.fh, ptr %i.af, align 16
  store i64 %i.fi, ptr %i.ag, align 8
  store i64 %i.fk, ptr %i.ah, align 16
  store i64 %i.fl, ptr %i.ai, align 8
  store i64 %i.fq, ptr %i.aj, align 8
  store i64 %i.fp, ptr %9, align 16
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %.preheader95
  %.1.lcssa = phi i64 [ %i.eh, %._crit_edge ], [ %.052.lcssa, %.preheader95 ]
  %i.fu = and i64 %6, 31                          ; 2 uses
  %.not66 = icmp eq i64 %i.fu, 0
  br i1 %.not66, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, i8 noundef 0, i64 noundef 32, i1 noundef false) #6
  %i.fv = getelementptr i8, ptr %5, i64 %.1.lcssa
  %i.fw = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fv, i64 noundef range(i64 1, 32) %i.fu, i64 noundef 32) #6, !alias.scope !32 ; 0 uses
  %i.fx = load i64, ptr %i.c, align 32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %.sroa.019.0.copyload.i81 = load i64, ptr %i.gb, align 16 ; 2 uses
  %.sroa.420.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 2 uses
  %.sroa.420.0.copyload.i83 = load i64, ptr %.sroa.420.0..sroa_idx.i82, align 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 16
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 3 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.gr = load <2 x i64>, ptr %i.ga, align 16
  %i.gs = call { i64, i64 } @softaes_block_encrypt(i64 %i.gd, i64 %i.gf, i64 %.sroa.019.0.copyload.i81, i64 %.sroa.420.0.copyload.i83) #6 ; 2 uses
  %i.gt = extractvalue { i64, i64 } %i.gs, 0
  %i.gu = extractvalue { i64, i64 } %i.gs, 1
  store i64 %i.gt, ptr %i.gb, align 16
  store i64 %i.gu, ptr %.sroa.420.0..sroa_idx.i82, align 8
  %i.gv = load i64, ptr %i.gg, align 16
  %i.gw = load i64, ptr %i.gh, align 8
  %i.gx = load i64, ptr %i.gc, align 16
  %i.gy = load i64, ptr %i.ge, align 8
  %i.gz = call { i64, i64 } @softaes_block_encrypt(i64 %i.gv, i64 %i.gw, i64 %i.gx, i64 %i.gy) #6 ; 2 uses
  %i.ha = extractvalue { i64, i64 } %i.gz, 0
  %i.hb = extractvalue { i64, i64 } %i.gz, 1
  store i64 %i.ha, ptr %i.gc, align 16
  store i64 %i.hb, ptr %i.ge, align 8
  %i.hc = load i64, ptr %i.gi, align 16
  %i.hd = load i64, ptr %i.gj, align 8
  %i.he = load i64, ptr %i.gg, align 16
  %i.hf = load i64, ptr %i.gh, align 8
  %i.hg = call { i64, i64 } @softaes_block_encrypt(i64 %i.hc, i64 %i.hd, i64 %i.he, i64 %i.hf) #6 ; 2 uses
  %i.hh = extractvalue { i64, i64 } %i.hg, 0
  %i.hi = extractvalue { i64, i64 } %i.hg, 1
  store i64 %i.hh, ptr %i.gg, align 16
  store i64 %i.hi, ptr %i.gh, align 8
  %i.hj = load i64, ptr %i.gk, align 16
  %i.hk = load i64, ptr %i.gl, align 8
  %i.hl = load i64, ptr %i.gi, align 16
  %i.hm = load i64, ptr %i.gj, align 8
  %i.hn = call { i64, i64 } @softaes_block_encrypt(i64 %i.hj, i64 %i.hk, i64 %i.hl, i64 %i.hm) #6 ; 2 uses
  %i.ho = extractvalue { i64, i64 } %i.hn, 0
  %i.hp = extractvalue { i64, i64 } %i.hn, 1
  store i64 %i.ho, ptr %i.gi, align 16
  store i64 %i.hp, ptr %i.gj, align 8
  %i.hq = load i64, ptr %i.gm, align 16
  %i.hr = load i64, ptr %i.gn, align 8
  %i.hs = load i64, ptr %i.gk, align 16
  %i.ht = load i64, ptr %i.gl, align 8
  %i.hu = call { i64, i64 } @softaes_block_encrypt(i64 %i.hq, i64 %i.hr, i64 %i.hs, i64 %i.ht) #6 ; 2 uses
  %i.hv = extractvalue { i64, i64 } %i.hu, 0
  %i.hw = extractvalue { i64, i64 } %i.hu, 1
  store i64 %i.hv, ptr %i.gk, align 16
  store i64 %i.hw, ptr %i.gl, align 8
  %i.hx = load i64, ptr %i.go, align 16
  %i.hy = load i64, ptr %i.gp, align 8
  %i.hz = load i64, ptr %i.gm, align 16
  %i.ia = load i64, ptr %i.gn, align 8
  %i.ib = call { i64, i64 } @softaes_block_encrypt(i64 %i.hx, i64 %i.hy, i64 %i.hz, i64 %i.ia) #6 ; 2 uses
  %i.ic = extractvalue { i64, i64 } %i.ib, 0
  %i.id = extractvalue { i64, i64 } %i.ib, 1
  store i64 %i.ic, ptr %i.gm, align 16
  store i64 %i.id, ptr %i.gn, align 8
  %i.ie = load i64, ptr %9, align 16
  %i.if = load i64, ptr %i.gq, align 8
  %i.ig = load i64, ptr %i.go, align 16
  %i.ih = load i64, ptr %i.gp, align 8
  %i.ii = call { i64, i64 } @softaes_block_encrypt(i64 %i.ie, i64 %i.if, i64 %i.ig, i64 %i.ih) #6 ; 2 uses
  %i.ij = extractvalue { i64, i64 } %i.ii, 0
  %i.ik = extractvalue { i64, i64 } %i.ii, 1
  store i64 %i.ij, ptr %i.go, align 16
  store i64 %i.ik, ptr %i.gp, align 8
  %i.il = load i64, ptr %9, align 16
  %i.im = load i64, ptr %i.gq, align 8
  %i.in = call { i64, i64 } @softaes_block_encrypt(i64 %.sroa.019.0.copyload.i81, i64 %.sroa.420.0.copyload.i83, i64 %i.il, i64 %i.im) #6 ; 2 uses
  %i.io = extractvalue { i64, i64 } %i.in, 0
  %i.ip = extractvalue { i64, i64 } %i.in, 1
  %i.iq = xor i64 %i.io, %i.fx
  %i.ir = xor i64 %i.ip, %i.fz
  store i64 %i.iq, ptr %9, align 16
  store i64 %i.ir, ptr %i.gq, align 8
  %i.is = load <2 x i64>, ptr %i.gi, align 16
  %i.it = xor <2 x i64> %i.is, %i.gr
  store <2 x i64> %i.it, ptr %i.gi, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not67 = icmp eq ptr %0, null                  ; 3 uses
  %.not68172 = icmp ult i64 %2, 32                ; 2 uses
  br i1 %.not67, label %.preheader, label %.preheader93

.preheader93:                                     ; preds = %bb.f
  br i1 %.not68172, label %.loopexit, label %.lr.ph170

.preheader:                                       ; preds = %bb.f
  br i1 %.not68172, label %.loopexit, label %.lr.ph174

.lr.ph170:                                        ; preds = %.preheader93, %.lr.ph170
  %i.iu = phi i64 [ %i.ix, %.lr.ph170 ], [ 32, %.preheader93 ] ; 3 uses
  %.2169 = phi i64 [ %i.iu, %.lr.ph170 ], [ 0, %.preheader93 ] ; 2 uses
  %i.iv = getelementptr i8, ptr %0, i64 %.2169
  %i.iw = getelementptr i8, ptr %1, i64 %.2169
  call fastcc void @aegis128l_dec(ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef %9)
  %i.ix = add i64 %i.iu, 32                       ; 2 uses
  %.not69 = icmp ugt i64 %i.ix, %2
  br i1 %.not69, label %.loopexit, label %.lr.ph170, !llvm.loop !21

.lr.ph174:                                        ; preds = %.preheader, %.lr.ph174
  %i.iy = phi i64 [ %i.ja, %.lr.ph174 ], [ 32, %.preheader ] ; 3 uses
  %.3173 = phi i64 [ %i.iy, %.lr.ph174 ], [ 0, %.preheader ]
  %i.iz = getelementptr i8, ptr %1, i64 %.3173
  call fastcc void @aegis128l_dec(ptr noundef nonnull %i.d, ptr noundef %i.iz, ptr noundef %9)
  %i.ja = add i64 %i.iy, 32                       ; 2 uses
  %.not68 = icmp ugt i64 %i.ja, %2
  br i1 %.not68, label %.loopexit, label %.lr.ph174, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph170, %.lr.ph174, %.preheader93, %.preheader
  %.4 = phi i64 [ %i.iy, %.lr.ph174 ], [ 0, %.preheader ], [ 0, %.preheader93 ], [ %i.iu, %.lr.ph170 ] ; 3 uses
  %i.jb = and i64 %2, 31                          ; 9 uses
  %.not70 = icmp eq i64 %i.jb, 0
  br i1 %.not70, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  br i1 %.not67, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jc = getelementptr i8, ptr %0, i64 %.4
  %i.jd = getelementptr i8, ptr %1, i64 %.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 noundef 0, i64 noundef 32, i1 noundef false) #6
  %i.je = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.jd, i64 noundef range(i64 1, 32) %i.jb, i64 noundef 32) #6, !alias.scope !33 ; 0 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.jt = load <2 x i64>, ptr %i.b, align 16
  %i.ju = load <2 x i64>, ptr %i.jh, align 16     ; 4 uses
  %i.jv = load <2 x i64>, ptr %i.jj, align 16
  %i.jw = load <2 x i64>, ptr %i.jn, align 16     ; 2 uses
  %i.jx = load <2 x i64>, ptr %i.jp, align 16
  %i.jy = and <2 x i64> %i.jx, %i.jw
  %i.jz = xor <2 x i64> %i.jt, %i.jv
  %i.ka = xor <2 x i64> %i.jz, %i.jy
  %i.kb = xor <2 x i64> %i.ka, %i.ju
  store <2 x i64> %i.kb, ptr %i.b, align 16
  %i.kc = load <2 x i64>, ptr %i.jg, align 16
  %i.kd = load <2 x i64>, ptr %i.jl, align 16
  %i.ke = xor <2 x i64> %i.kd, %i.kc
  %i.kf = load <2 x i64>, ptr %i.jr, align 16     ; 3 uses
  %i.kg = and <2 x i64> %i.kf, %i.ju
  %i.kh = xor <2 x i64> %i.ke, %i.kg
  %i.ki = xor <2 x i64> %i.kh, %i.jw
  store <2 x i64> %i.ki, ptr %i.jg, align 16
  %i.kj = getelementptr i8, ptr %i.b, i64 %i.jb
  %i.kk = sub nuw nsw i64 32, %i.jb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kj, i8 noundef 0, i64 noundef %i.kk, i1 noundef false) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.jc, ptr noundef nonnull align 16 %i.b, i64 noundef range(i64 1, 32) %i.jb, i1 noundef false) #6
  %i.kl = load i64, ptr %i.b, align 16
  %i.km = load i64, ptr %i.jf, align 8
  %10 = extractelement <2 x i64> %i.kf, i64 0     ; 2 uses
  %11 = extractelement <2 x i64> %i.kf, i64 1     ; 2 uses
  %12 = extractelement <2 x i64> %i.ju, i64 0
  %13 = extractelement <2 x i64> %i.ju, i64 1
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %17 = load <2 x i64>, ptr %i.jg, align 16
  %i.kn = call { i64, i64 } @softaes_block_encrypt(i64 %12, i64 %13, i64 %10, i64 %11) #6 ; 2 uses
  %i.ko = extractvalue { i64, i64 } %i.kn, 0
  %i.kp = extractvalue { i64, i64 } %i.kn, 1
  store i64 %i.ko, ptr %i.jr, align 16
  store i64 %i.kp, ptr %i.js, align 8
  %i.kq = load i64, ptr %i.jl, align 16
  %i.kr = load i64, ptr %i.jm, align 8
  %i.ks = load i64, ptr %i.jh, align 16
  %i.kt = load i64, ptr %i.ji, align 8
  %i.ku = call { i64, i64 } @softaes_block_encrypt(i64 %i.kq, i64 %i.kr, i64 %i.ks, i64 %i.kt) #6 ; 2 uses
  %i.kv = extractvalue { i64, i64 } %i.ku, 0
  %i.kw = extractvalue { i64, i64 } %i.ku, 1
  store i64 %i.kv, ptr %i.jh, align 16
  store i64 %i.kw, ptr %i.ji, align 8
  %i.kx = load i64, ptr %14, align 16
  %i.ky = load i64, ptr %15, align 8
  %i.kz = load i64, ptr %i.jl, align 16
  %i.la = load i64, ptr %i.jm, align 8
  %i.lb = call { i64, i64 } @softaes_block_encrypt(i64 %i.kx, i64 %i.ky, i64 %i.kz, i64 %i.la) #6 ; 2 uses
  %i.lc = extractvalue { i64, i64 } %i.lb, 0
  %i.ld = extractvalue { i64, i64 } %i.lb, 1
  store i64 %i.lc, ptr %i.jl, align 16
  store i64 %i.ld, ptr %i.jm, align 8
  %i.le = load i64, ptr %i.jp, align 16
  %i.lf = load i64, ptr %i.jq, align 8
  %i.lg = load i64, ptr %14, align 16
  %i.lh = load i64, ptr %15, align 8
  %i.li = call { i64, i64 } @softaes_block_encrypt(i64 %i.le, i64 %i.lf, i64 %i.lg, i64 %i.lh) #6 ; 2 uses
  %i.lj = extractvalue { i64, i64 } %i.li, 0
  %i.lk = extractvalue { i64, i64 } %i.li, 1
  store i64 %i.lj, ptr %14, align 16
  store i64 %i.lk, ptr %15, align 8
  %i.ll = load i64, ptr %i.jn, align 16
  %i.lm = load i64, ptr %i.jo, align 8
  %i.ln = load i64, ptr %i.jp, align 16
  %i.lo = load i64, ptr %i.jq, align 8
  %i.lp = call { i64, i64 } @softaes_block_encrypt(i64 %i.ll, i64 %i.lm, i64 %i.ln, i64 %i.lo) #6 ; 2 uses
  %i.lq = extractvalue { i64, i64 } %i.lp, 0
  %i.lr = extractvalue { i64, i64 } %i.lp, 1
  store i64 %i.lq, ptr %i.jp, align 16
  store i64 %i.lr, ptr %i.jq, align 8
  %i.ls = load i64, ptr %i.jj, align 16
  %i.lt = load i64, ptr %i.jk, align 8
  %i.lu = load i64, ptr %i.jn, align 16
  %i.lv = load i64, ptr %i.jo, align 8
  %i.lw = call { i64, i64 } @softaes_block_encrypt(i64 %i.ls, i64 %i.lt, i64 %i.lu, i64 %i.lv) #6 ; 2 uses
  %i.lx = extractvalue { i64, i64 } %i.lw, 0
  %i.ly = extractvalue { i64, i64 } %i.lw, 1
  store i64 %i.lx, ptr %i.jn, align 16
  store i64 %i.ly, ptr %i.jo, align 8
  %i.lz = load i64, ptr %9, align 16
  %i.ma = load i64, ptr %16, align 8
  %i.mb = load i64, ptr %i.jj, align 16
  %i.mc = load i64, ptr %i.jk, align 8
  %i.md = call { i64, i64 } @softaes_block_encrypt(i64 %i.lz, i64 %i.ma, i64 %i.mb, i64 %i.mc) #6 ; 2 uses
  %i.me = extractvalue { i64, i64 } %i.md, 0
  %i.mf = extractvalue { i64, i64 } %i.md, 1
  store i64 %i.me, ptr %i.jj, align 16
  store i64 %i.mf, ptr %i.jk, align 8
  %i.mg = load i64, ptr %9, align 16
  %i.mh = load i64, ptr %16, align 8
  %i.mi = call { i64, i64 } @softaes_block_encrypt(i64 %10, i64 %11, i64 %i.mg, i64 %i.mh) #6 ; 2 uses
  %i.mj = extractvalue { i64, i64 } %i.mi, 0
  %i.mk = extractvalue { i64, i64 } %i.mi, 1
  %i.ml = xor i64 %i.mj, %i.kl
  %i.mm = xor i64 %i.mk, %i.km
  store i64 %i.ml, ptr %9, align 16
  store i64 %i.mm, ptr %16, align 8
  %i.mn = load <2 x i64>, ptr %14, align 16
  %i.mo = xor <2 x i64> %i.mn, %17
  store <2 x i64> %i.mo, ptr %14, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.mp = getelementptr i8, ptr %1, i64 %.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #6
  %i.mq = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.mp, i64 noundef range(i64 1, 32) %i.jb, i64 noundef 32) #6, !alias.scope !34 ; 0 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.nf = load <2 x i64>, ptr %i.a, align 16
  %i.ng = load <2 x i64>, ptr %i.mt, align 16     ; 4 uses
  %i.nh = load <2 x i64>, ptr %i.mv, align 16
  %i.ni = load <2 x i64>, ptr %i.mz, align 16     ; 2 uses
  %i.nj = load <2 x i64>, ptr %i.nb, align 16
  %i.nk = and <2 x i64> %i.nj, %i.ni
  %i.nl = xor <2 x i64> %i.nf, %i.nh
  %i.nm = xor <2 x i64> %i.nl, %i.nk
  %i.nn = xor <2 x i64> %i.nm, %i.ng
  store <2 x i64> %i.nn, ptr %i.a, align 16
  %i.no = load <2 x i64>, ptr %i.ms, align 16
  %i.np = load <2 x i64>, ptr %i.mx, align 16
  %i.nq = xor <2 x i64> %i.np, %i.no
  %i.nr = load <2 x i64>, ptr %i.nd, align 16     ; 3 uses
  %i.ns = and <2 x i64> %i.nr, %i.ng
  %i.nt = xor <2 x i64> %i.nq, %i.ns
  %i.nu = xor <2 x i64> %i.nt, %i.ni
  store <2 x i64> %i.nu, ptr %i.ms, align 16
  %i.nv = getelementptr i8, ptr %i.a, i64 %i.jb
  %i.nw = sub nuw nsw i64 32, %i.jb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nv, i8 noundef 0, i64 noundef %i.nw, i1 noundef false) #6
  %i.nx = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 32) %i.jb, i64 noundef 32) #6, !alias.scope !35 ; 0 uses
  %i.ny = load i64, ptr %i.a, align 16
  %i.nz = load i64, ptr %i.mr, align 8
  %18 = extractelement <2 x i64> %i.nr, i64 0     ; 2 uses
  %19 = extractelement <2 x i64> %i.nr, i64 1     ; 2 uses
  %20 = extractelement <2 x i64> %i.ng, i64 0
  %21 = extractelement <2 x i64> %i.ng, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %23 = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %25 = load <2 x i64>, ptr %i.ms, align 16
  %i.oa = call { i64, i64 } @softaes_block_encrypt(i64 %20, i64 %21, i64 %18, i64 %19) #6 ; 2 uses
  %i.ob = extractvalue { i64, i64 } %i.oa, 0
  %i.oc = extractvalue { i64, i64 } %i.oa, 1
  store i64 %i.ob, ptr %i.nd, align 16
  store i64 %i.oc, ptr %i.ne, align 8
  %i.od = load i64, ptr %i.mx, align 16
  %i.oe = load i64, ptr %i.my, align 8
  %i.of = load i64, ptr %i.mt, align 16
  %i.og = load i64, ptr %i.mu, align 8
  %i.oh = call { i64, i64 } @softaes_block_encrypt(i64 %i.od, i64 %i.oe, i64 %i.of, i64 %i.og) #6 ; 2 uses
  %i.oi = extractvalue { i64, i64 } %i.oh, 0
  %i.oj = extractvalue { i64, i64 } %i.oh, 1
  store i64 %i.oi, ptr %i.mt, align 16
  store i64 %i.oj, ptr %i.mu, align 8
  %i.ok = load i64, ptr %22, align 16
  %i.ol = load i64, ptr %23, align 8
  %i.om = load i64, ptr %i.mx, align 16
  %i.on = load i64, ptr %i.my, align 8
  %i.oo = call { i64, i64 } @softaes_block_encrypt(i64 %i.ok, i64 %i.ol, i64 %i.om, i64 %i.on) #6 ; 2 uses
  %i.op = extractvalue { i64, i64 } %i.oo, 0
  %i.oq = extractvalue { i64, i64 } %i.oo, 1
  store i64 %i.op, ptr %i.mx, align 16
  store i64 %i.oq, ptr %i.my, align 8
  %i.or = load i64, ptr %i.nb, align 16
  %i.os = load i64, ptr %i.nc, align 8
  %i.ot = load i64, ptr %22, align 16
  %i.ou = load i64, ptr %23, align 8
  %i.ov = call { i64, i64 } @softaes_block_encrypt(i64 %i.or, i64 %i.os, i64 %i.ot, i64 %i.ou) #6 ; 2 uses
  %i.ow = extractvalue { i64, i64 } %i.ov, 0
  %i.ox = extractvalue { i64, i64 } %i.ov, 1
  store i64 %i.ow, ptr %22, align 16
  store i64 %i.ox, ptr %23, align 8
  %i.oy = load i64, ptr %i.mz, align 16
  %i.oz = load i64, ptr %i.na, align 8
  %i.pa = load i64, ptr %i.nb, align 16
  %i.pb = load i64, ptr %i.nc, align 8
  %i.pc = call { i64, i64 } @softaes_block_encrypt(i64 %i.oy, i64 %i.oz, i64 %i.pa, i64 %i.pb) #6 ; 2 uses
  %i.pd = extractvalue { i64, i64 } %i.pc, 0
  %i.pe = extractvalue { i64, i64 } %i.pc, 1
  store i64 %i.pd, ptr %i.nb, align 16
  store i64 %i.pe, ptr %i.nc, align 8
  %i.pf = load i64, ptr %i.mv, align 16
  %i.pg = load i64, ptr %i.mw, align 8
  %i.ph = load i64, ptr %i.mz, align 16
  %i.pi = load i64, ptr %i.na, align 8
  %i.pj = call { i64, i64 } @softaes_block_encrypt(i64 %i.pf, i64 %i.pg, i64 %i.ph, i64 %i.pi) #6 ; 2 uses
  %i.pk = extractvalue { i64, i64 } %i.pj, 0
  %i.pl = extractvalue { i64, i64 } %i.pj, 1
  store i64 %i.pk, ptr %i.mz, align 16
  store i64 %i.pl, ptr %i.na, align 8
  %i.pm = load i64, ptr %9, align 16
  %i.pn = load i64, ptr %24, align 8
  %i.po = load i64, ptr %i.mv, align 16
  %i.pp = load i64, ptr %i.mw, align 8
  %i.pq = call { i64, i64 } @softaes_block_encrypt(i64 %i.pm, i64 %i.pn, i64 %i.po, i64 %i.pp) #6 ; 2 uses
  %i.pr = extractvalue { i64, i64 } %i.pq, 0
  %i.ps = extractvalue { i64, i64 } %i.pq, 1
  store i64 %i.pr, ptr %i.mv, align 16
  store i64 %i.ps, ptr %i.mw, align 8
  %i.pt = load i64, ptr %9, align 16
  %i.pu = load i64, ptr %24, align 8
  %i.pv = call { i64, i64 } @softaes_block_encrypt(i64 %18, i64 %19, i64 %i.pt, i64 %i.pu) #6 ; 2 uses
  %i.pw = extractvalue { i64, i64 } %i.pv, 0
  %i.px = extractvalue { i64, i64 } %i.pv, 1
  %i.py = xor i64 %i.pw, %i.ny
  %i.pz = xor i64 %i.px, %i.nz
  store i64 %i.py, ptr %9, align 16
  store i64 %i.pz, ptr %24, align 8
  %i.qa = load <2 x i64>, ptr %22, align 16
  %i.qb = xor <2 x i64> %i.qa, %25
  store <2 x i64> %i.qb, ptr %22, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.loopexit
  call fastcc void @aegis128l_mac(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef %6, i64 noundef %2, ptr noundef %9)
  switch i64 %4, label %.thread [
    i64 16, label %bb.k
    i64 32, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.qc = call i32 @crypto_verify_16(ptr noundef nonnull %i.e, ptr noundef %3) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.qd = call i32 @crypto_verify_32(ptr noundef nonnull %i.e, ptr noundef %3) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.qc, %bb.k ], [ %i.qd, %bb.l ] ; 2 uses
  %.not71 = icmp eq i32 %.0, 0
  br i1 %.not71, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.j, %bb.m
  %.092 = phi i32 [ %.0, %bb.m ], [ -1, %bb.j ]   ; 2 uses
  br i1 %.not67, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %2, i1 noundef false) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  fence acquire
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.n, %bb.o
  %.053 = phi i32 [ 0, %bb.o ], [ %.092, %bb.n ], [ %.092, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aegis128l_init(i64 %.0.val, i64 %.8.val, i64 %.0.val1, i64 %.8.val3, ptr nofree noundef nonnull captures(none) initializes((0, 128)) %0) unnamed_addr #2 {
bb.a:
  %i.a = xor i64 %.0.val1, %.0.val                ; 2 uses
  %i.b = xor i64 %.8.val3, %.8.val                ; 2 uses
  store i64 %i.a, ptr %0, align 4
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %.sroa.48.0..sroa_idx, align 4
  %i.c = getelementptr i8, ptr %0, i64 16
  store i64 -1067420811828642341, ptr %i.c, align 4
  %.sroa.632.0..sroa_idx = getelementptr i8, ptr %0, i64 24
  store i64 -2510557285622673120, ptr %.sroa.632.0..sroa_idx, align 4
  %i.d = getelementptr i8, ptr %0, i64 32
  store i64 939006032783409408, ptr %i.d, align 4
  %.sroa.637.0..sroa_idx = getelementptr i8, ptr %0, i64 40
  store i64 7095959494080274965, ptr %.sroa.637.0..sroa_idx, align 4
  %i.e = getelementptr i8, ptr %0, i64 48
  store i64 -1067420811828642341, ptr %i.e, align 4
  %.sroa.632.0..sroa_idx33 = getelementptr i8, ptr %0, i64 56
  store i64 -2510557285622673120, ptr %.sroa.632.0..sroa_idx33, align 4
  %i.f = getelementptr i8, ptr %0, i64 64
  store i64 %i.a, ptr %i.f, align 4
  %.sroa.46.0..sroa_idx = getelementptr i8, ptr %0, i64 72
  store i64 %i.b, ptr %.sroa.46.0..sroa_idx, align 4
  %i.g = getelementptr i8, ptr %0, i64 80
  %i.h = xor i64 %.0.val, 939006032783409408      ; 2 uses
  %i.i = xor i64 %.8.val, 7095959494080274965     ; 2 uses
  store i64 %i.h, ptr %i.g, align 4
  %.sroa.44.0..sroa_idx = getelementptr i8, ptr %0, i64 88
  store i64 %i.i, ptr %.sroa.44.0..sroa_idx, align 4
  %i.j = getelementptr i8, ptr %0, i64 96
  %i.k = xor i64 %.0.val, -1067420811828642341
  %i.l = xor i64 %.8.val, -2510557285622673120
  store i64 %i.k, ptr %i.j, align 4
  %.sroa.42.0..sroa_idx = getelementptr i8, ptr %0, i64 104
  store i64 %i.l, ptr %.sroa.42.0..sroa_idx, align 4
  %i.m = getelementptr i8, ptr %0, i64 112
  store i64 %i.h, ptr %i.m, align 4
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %0, i64 120
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 4
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  tail call fastcc void @aegis128l_update(ptr noundef %0, i64 %.0.val1, i64 %.8.val3, i64 %.0.val, i64 %.8.val)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aegis128l_enc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 1                ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 1              ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 1              ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 1              ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 96
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %i.j = getelementptr i8, ptr %2, i64 104
  %i.k = load i64, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 4
  %i.n = getelementptr i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 4
  %i.p = getelementptr i8, ptr %2, i64 80
  %i.q = load i64, ptr %i.p, align 4
  %i.r = getelementptr i8, ptr %2, i64 88
  %i.s = load i64, ptr %i.r, align 4
  %i.t = getelementptr i8, ptr %2, i64 32
  %i.u = load i64, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 40
  %i.w = load i64, ptr %i.v, align 4              ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 48
  %i.y = load i64, ptr %i.x, align 4
  %i.z = getelementptr i8, ptr %2, i64 56
  %i.aa = load i64, ptr %i.z, align 4
  %i.ab = and i64 %i.y, %i.u
  %i.ac = and i64 %i.aa, %i.w
  %i.ad = xor i64 %i.m, %i.ab
  %i.ae = xor i64 %i.ad, %i.a
  %i.af = xor i64 %i.ae, %i.i                     ; 2 uses
  %i.ag = xor i64 %i.o, %i.ac
  %i.ah = xor i64 %i.ag, %i.c
  %i.ai = xor i64 %i.ah, %i.k                     ; 2 uses
  %i.aj = getelementptr i8, ptr %2, i64 112
  %i.ak = load i64, ptr %i.aj, align 4
  %i.al = getelementptr i8, ptr %2, i64 120
  %i.am = load i64, ptr %i.al, align 4
  %i.an = and i64 %i.ak, %i.i
  %i.ao = and i64 %i.am, %i.k
  %i.ap = xor i64 %i.q, %i.an
  %i.aq = xor i64 %i.ap, %i.e
  %i.ar = xor i64 %i.aq, %i.u                     ; 2 uses
  %i.as = xor i64 %i.s, %i.ao
  %i.at = xor i64 %i.as, %i.g
  %i.au = xor i64 %i.at, %i.w                     ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.af to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.af, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.ai to i32
  %.sroa.5.8.extract.shift.i = lshr i64 %i.ai, 32
  %.sroa.5.8.extract.trunc.i = trunc nuw i64 %.sroa.5.8.extract.shift.i to i32
  store i32 %.sroa.0.0.extract.trunc.i, ptr %0, align 1
  %i.av = getelementptr i8, ptr %0, i64 4
  store i32 %.sroa.2.0.extract.trunc.i, ptr %i.av, align 1
  %i.aw = getelementptr i8, ptr %0, i64 8
  store i32 %.sroa.3.8.extract.trunc.i, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %0, i64 12
  store i32 %.sroa.5.8.extract.trunc.i, ptr %i.ax, align 1
  %i.ay = getelementptr i8, ptr %0, i64 16
  %.sroa.0.0.extract.trunc.i66 = trunc i64 %i.ar to i32
  %.sroa.2.0.extract.shift.i67 = lshr i64 %i.ar, 32
  %.sroa.2.0.extract.trunc.i68 = trunc nuw i64 %.sroa.2.0.extract.shift.i67 to i32
  %.sroa.3.8.extract.trunc.i69 = trunc i64 %i.au to i32
  %.sroa.5.8.extract.shift.i70 = lshr i64 %i.au, 32
  %.sroa.5.8.extract.trunc.i71 = trunc nuw i64 %.sroa.5.8.extract.shift.i70 to i32
  store i32 %.sroa.0.0.extract.trunc.i66, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %0, i64 20
  store i32 %.sroa.2.0.extract.trunc.i68, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %0, i64 24
  store i32 %.sroa.3.8.extract.trunc.i69, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %0, i64 28
  store i32 %.sroa.5.8.extract.trunc.i71, ptr %i.bb, align 1
  tail call fastcc void @aegis128l_update(ptr noundef %2, i64 %i.a, i64 %i.c, i64 %i.e, i64 %i.g)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal fastcc void @aegis128l_mac(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %3, 3
  %i.b = shl i64 %2, 3
  %i.c = getelementptr i8, ptr %4, i64 32         ; 3 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %4, i64 40
  %i.f = load i64, ptr %i.e, align 4
  %i.g = xor i64 %i.d, %i.b                       ; 14 uses
  %i.h = xor i64 %i.f, %i.a                       ; 14 uses
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  tail call fastcc void @aegis128l_update(ptr noundef %4, i64 %i.g, i64 %i.h, i64 %i.g, i64 %i.h)
  switch i64 %1, label %bb.d [
end_hunk_0
