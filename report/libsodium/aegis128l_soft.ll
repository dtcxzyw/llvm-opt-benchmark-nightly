Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aegis128l_soft?download=true
inline.NumInlined: 98
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decrypt_detached:bb.a
  %i.dk = extractvalue { i64, i64 } %i.dj, 0      ; 2 uses
  %i.dl = extractvalue { i64, i64 } %i.dj, 1      ; 2 uses
  %i.dm = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.bq, i64 %i.br, i64 %i.cn, i64 %i.co) #6 ; 2 uses
  %i.dn = extractvalue { i64, i64 } %i.dm, 0
  %i.do = extractvalue { i64, i64 } %i.dm, 1
  %i.dp = xor i64 %i.dn, %i.bi                    ; 2 uses
  %i.dq = xor i64 %i.do, %i.bk                    ; 2 uses
  %i.dr = xor i64 %i.db, %i.bm                    ; 2 uses
  %i.ds = xor i64 %i.dc, %i.bo                    ; 2 uses
  %i.dt = add i64 %i.ax, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.dt, %6
  br i1 %.not, label %..preheader95_crit_edge, label %bb.b, !llvm.loop !16

bb.c:                                             ; preds = %.lr.ph133, %bb.c
  %i.du = phi i64 [ %.promoted164, %.lr.ph133 ], [ %i.fq, %bb.c ] ; 2 uses
  %i.dv = phi i64 [ %.promoted162, %.lr.ph133 ], [ %i.fl, %bb.c ] ; 2 uses
  %i.dw = phi i64 [ %.promoted160, %.lr.ph133 ], [ %i.fk, %bb.c ] ; 2 uses
  %i.dx = phi i64 [ %.promoted158, %.lr.ph133 ], [ %i.fi, %bb.c ] ; 2 uses
  %i.dy = phi i64 [ %.promoted156, %.lr.ph133 ], [ %i.fh, %bb.c ] ; 2 uses
  %i.dz = phi i64 [ %.promoted154, %.lr.ph133 ], [ %i.ff, %bb.c ] ; 2 uses
  %i.ea = phi i64 [ %.promoted152, %.lr.ph133 ], [ %i.fe, %bb.c ] ; 2 uses
  %i.eb = phi i64 [ %.promoted150, %.lr.ph133 ], [ %i.fs, %bb.c ] ; 2 uses
  %i.ec = phi i64 [ %.promoted148, %.lr.ph133 ], [ %i.fr, %bb.c ] ; 2 uses
  %i.ed = phi i64 [ %.promoted146, %.lr.ph133 ], [ %i.ez, %bb.c ] ; 2 uses
  %i.ee = phi i64 [ %.promoted144, %.lr.ph133 ], [ %i.ey, %bb.c ] ; 2 uses
  %i.ef = phi i64 [ %.promoted142, %.lr.ph133 ], [ %i.ew, %bb.c ] ; 2 uses
  %i.eg = phi i64 [ %.promoted140, %.lr.ph133 ], [ %i.ev, %bb.c ] ; 2 uses
  %.sroa.420.0.copyload.i80138 = phi i64 [ %.sroa.420.0..sroa_idx.i79.promoted, %.lr.ph133 ], [ %i.et, %bb.c ] ; 2 uses
  %.sroa.019.0.copyload.i78136 = phi i64 [ %.promoted135, %.lr.ph133 ], [ %i.es, %bb.c ] ; 2 uses
  %i.eh = phi i64 [ %i.v, %.lr.ph133 ], [ %i.ft, %bb.c ] ; 3 uses
  %.1132 = phi i64 [ %.052.lcssa, %.lr.ph133 ], [ %i.eh, %bb.c ]
  %i.ei = phi i64 [ %.promoted130, %.lr.ph133 ], [ %i.fp, %bb.c ] ; 2 uses
  %i.ej = getelementptr i8, ptr %5, i64 %.1132    ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 1
  %i.el = getelementptr i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 1
  %i.en = getelementptr i8, ptr %i.ej, i64 16
  %i.eo = load i64, ptr %i.en, align 1
  %i.ep = getelementptr i8, ptr %i.ej, i64 24
  %i.eq = load i64, ptr %i.ep, align 1
  %i.er = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.eg, i64 %i.ef, i64 %.sroa.019.0.copyload.i78136, i64 %.sroa.420.0.copyload.i80138) #6 ; 2 uses
  %i.es = extractvalue { i64, i64 } %i.er, 0      ; 2 uses
  %i.et = extractvalue { i64, i64 } %i.er, 1      ; 2 uses
  %i.eu = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.ee, i64 %i.ed, i64 %i.eg, i64 %i.ef) #6 ; 2 uses
  %i.ev = extractvalue { i64, i64 } %i.eu, 0      ; 2 uses
  %i.ew = extractvalue { i64, i64 } %i.eu, 1      ; 2 uses
  %i.ex = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.ec, i64 %i.eb, i64 %i.ee, i64 %i.ed) #6 ; 2 uses
  %i.ey = extractvalue { i64, i64 } %i.ex, 0      ; 2 uses
  %i.ez = extractvalue { i64, i64 } %i.ex, 1      ; 2 uses
  %i.fa = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.ea, i64 %i.dz, i64 %i.ec, i64 %i.eb) #6 ; 2 uses
  %i.fb = extractvalue { i64, i64 } %i.fa, 0
  %i.fc = extractvalue { i64, i64 } %i.fa, 1
  %i.fd = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.dy, i64 %i.dx, i64 %i.ea, i64 %i.dz) #6 ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.dw, i64 %i.dv, i64 %i.dy, i64 %i.dx) #6 ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = tail call { i64, i64 } @softaes_block_encrypt(i64 %i.ei, i64 %i.du, i64 %i.dw, i64 %i.dv) #6 ; 2 uses
  %i.fk = extractvalue { i64, i64 } %i.fj, 0      ; 2 uses
  %i.fl = extractvalue { i64, i64 } %i.fj, 1      ; 2 uses
  %i.fm = tail call { i64, i64 } @softaes_block_encrypt(i64 %.sroa.019.0.copyload.i78136, i64 %.sroa.420.0.copyload.i80138, i64 %i.ei, i64 %i.du) #6 ; 2 uses
  %i.fn = extractvalue { i64, i64 } %i.fm, 0
  %i.fo = extractvalue { i64, i64 } %i.fm, 1
  %i.fp = xor i64 %i.fn, %i.ek                    ; 2 uses
  %i.fq = xor i64 %i.fo, %i.em                    ; 2 uses
  %i.fr = xor i64 %i.fb, %i.eo                    ; 2 uses
  %i.fs = xor i64 %i.fc, %i.eq                    ; 2 uses
  %i.ft = add i64 %i.eh, 32                       ; 2 uses
  %.not65 = icmp ugt i64 %i.ft, %6
  br i1 %.not65, label %._crit_edge, label %bb.c, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c
  store i64 %i.es, ptr %i.w, align 16
  store i64 %i.et, ptr %.sroa.420.0..sroa_idx.i79, align 8
  store i64 %i.ev, ptr %i.x, align 16
  store i64 %i.ew, ptr %i.y, align 8
  store i64 %i.ey, ptr %i.z, align 16
  store i64 %i.ez, ptr %i.aa, align 8
  store i64 %i.fr, ptr %i.ab, align 16
  store i64 %i.fs, ptr %i.ac, align 8
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
  %.not68172 = icmp ult i64 %2, 32
  br i1 %.not68172, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  br i1 %.not67, label %.lr.ph174, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader, %.lr.ph170
  %i.iu = phi i64 [ %i.ix, %.lr.ph170 ], [ 32, %.preheader ] ; 3 uses
  %.2169 = phi i64 [ %i.iu, %.lr.ph170 ], [ 0, %.preheader ] ; 2 uses
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

.loopexit:                                        ; preds = %.lr.ph170, %.lr.ph174, %bb.f
  %.4 = phi i64 [ %i.iy, %.lr.ph174 ], [ 0, %bb.f ], [ %i.iu, %.lr.ph170 ] ; 3 uses
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
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.kq = load <2 x i64>, ptr %i.jg, align 16
  %i.kr = extractelement <2 x i64> %i.kf, i64 0   ; 2 uses
  %i.ks = extractelement <2 x i64> %i.kf, i64 1   ; 2 uses
  %i.kt = extractelement <2 x i64> %i.ju, i64 0
  %i.ku = extractelement <2 x i64> %i.ju, i64 1
  %i.kv = call { i64, i64 } @softaes_block_encrypt(i64 %i.kt, i64 %i.ku, i64 %i.kr, i64 %i.ks) #6 ; 2 uses
  %i.kw = extractvalue { i64, i64 } %i.kv, 0
  %i.kx = extractvalue { i64, i64 } %i.kv, 1
  store i64 %i.kw, ptr %i.jr, align 16
  store i64 %i.kx, ptr %i.js, align 8
  %i.ky = load i64, ptr %i.jl, align 16
  %i.kz = load i64, ptr %i.jm, align 8
  %i.la = load i64, ptr %i.jh, align 16
  %i.lb = load i64, ptr %i.ji, align 8
  %i.lc = call { i64, i64 } @softaes_block_encrypt(i64 %i.ky, i64 %i.kz, i64 %i.la, i64 %i.lb) #6 ; 2 uses
  %i.ld = extractvalue { i64, i64 } %i.lc, 0
  %i.le = extractvalue { i64, i64 } %i.lc, 1
  store i64 %i.ld, ptr %i.jh, align 16
  store i64 %i.le, ptr %i.ji, align 8
  %i.lf = load i64, ptr %i.kn, align 16
  %i.lg = load i64, ptr %i.ko, align 8
  %i.lh = load i64, ptr %i.jl, align 16
  %i.li = load i64, ptr %i.jm, align 8
  %i.lj = call { i64, i64 } @softaes_block_encrypt(i64 %i.lf, i64 %i.lg, i64 %i.lh, i64 %i.li) #6 ; 2 uses
  %i.lk = extractvalue { i64, i64 } %i.lj, 0
  %i.ll = extractvalue { i64, i64 } %i.lj, 1
  store i64 %i.lk, ptr %i.jl, align 16
  store i64 %i.ll, ptr %i.jm, align 8
  %i.lm = load i64, ptr %i.jp, align 16
  %i.ln = load i64, ptr %i.jq, align 8
  %i.lo = load i64, ptr %i.kn, align 16
  %i.lp = load i64, ptr %i.ko, align 8
  %i.lq = call { i64, i64 } @softaes_block_encrypt(i64 %i.lm, i64 %i.ln, i64 %i.lo, i64 %i.lp) #6 ; 2 uses
  %i.lr = extractvalue { i64, i64 } %i.lq, 0
  %i.ls = extractvalue { i64, i64 } %i.lq, 1
  store i64 %i.lr, ptr %i.kn, align 16
  store i64 %i.ls, ptr %i.ko, align 8
  %i.lt = load i64, ptr %i.jn, align 16
  %i.lu = load i64, ptr %i.jo, align 8
  %i.lv = load i64, ptr %i.jp, align 16
  %i.lw = load i64, ptr %i.jq, align 8
  %i.lx = call { i64, i64 } @softaes_block_encrypt(i64 %i.lt, i64 %i.lu, i64 %i.lv, i64 %i.lw) #6 ; 2 uses
  %i.ly = extractvalue { i64, i64 } %i.lx, 0
  %i.lz = extractvalue { i64, i64 } %i.lx, 1
  store i64 %i.ly, ptr %i.jp, align 16
  store i64 %i.lz, ptr %i.jq, align 8
  %i.ma = load i64, ptr %i.jj, align 16
  %i.mb = load i64, ptr %i.jk, align 8
  %i.mc = load i64, ptr %i.jn, align 16
  %i.md = load i64, ptr %i.jo, align 8
  %i.me = call { i64, i64 } @softaes_block_encrypt(i64 %i.ma, i64 %i.mb, i64 %i.mc, i64 %i.md) #6 ; 2 uses
  %i.mf = extractvalue { i64, i64 } %i.me, 0
  %i.mg = extractvalue { i64, i64 } %i.me, 1
  store i64 %i.mf, ptr %i.jn, align 16
  store i64 %i.mg, ptr %i.jo, align 8
  %i.mh = load i64, ptr %9, align 16
  %i.mi = load i64, ptr %i.kp, align 8
  %i.mj = load i64, ptr %i.jj, align 16
  %i.mk = load i64, ptr %i.jk, align 8
  %i.ml = call { i64, i64 } @softaes_block_encrypt(i64 %i.mh, i64 %i.mi, i64 %i.mj, i64 %i.mk) #6 ; 2 uses
  %i.mm = extractvalue { i64, i64 } %i.ml, 0
  %i.mn = extractvalue { i64, i64 } %i.ml, 1
  store i64 %i.mm, ptr %i.jj, align 16
  store i64 %i.mn, ptr %i.jk, align 8
  %i.mo = load i64, ptr %9, align 16
  %i.mp = load i64, ptr %i.kp, align 8
  %i.mq = call { i64, i64 } @softaes_block_encrypt(i64 %i.kr, i64 %i.ks, i64 %i.mo, i64 %i.mp) #6 ; 2 uses
  %i.mr = extractvalue { i64, i64 } %i.mq, 0
  %i.ms = extractvalue { i64, i64 } %i.mq, 1
  %i.mt = xor i64 %i.mr, %i.kl
  %i.mu = xor i64 %i.ms, %i.km
  store i64 %i.mt, ptr %9, align 16
  store i64 %i.mu, ptr %i.kp, align 8
  %i.mv = load <2 x i64>, ptr %i.kn, align 16
  %i.mw = xor <2 x i64> %i.mv, %i.kq
  store <2 x i64> %i.mw, ptr %i.kn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.mx = getelementptr i8, ptr %1, i64 %.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #6
  %i.my = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.mx, i64 noundef range(i64 1, 32) %i.jb, i64 noundef 32) #6, !alias.scope !34 ; 0 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 104 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.nn = load <2 x i64>, ptr %i.a, align 16
  %i.no = load <2 x i64>, ptr %i.nb, align 16     ; 4 uses
  %i.np = load <2 x i64>, ptr %i.nd, align 16
  %i.nq = load <2 x i64>, ptr %i.nh, align 16     ; 2 uses
  %i.nr = load <2 x i64>, ptr %i.nj, align 16
  %i.ns = and <2 x i64> %i.nr, %i.nq
  %i.nt = xor <2 x i64> %i.nn, %i.np
  %i.nu = xor <2 x i64> %i.nt, %i.ns
  %i.nv = xor <2 x i64> %i.nu, %i.no
  store <2 x i64> %i.nv, ptr %i.a, align 16
  %i.nw = load <2 x i64>, ptr %i.na, align 16
  %i.nx = load <2 x i64>, ptr %i.nf, align 16
  %i.ny = xor <2 x i64> %i.nx, %i.nw
  %i.nz = load <2 x i64>, ptr %i.nl, align 16     ; 3 uses
  %i.oa = and <2 x i64> %i.nz, %i.no
  %i.ob = xor <2 x i64> %i.ny, %i.oa
  %i.oc = xor <2 x i64> %i.ob, %i.nq
  store <2 x i64> %i.oc, ptr %i.na, align 16
  %i.od = getelementptr i8, ptr %i.a, i64 %i.jb
  %i.oe = sub nuw nsw i64 32, %i.jb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.od, i8 noundef 0, i64 noundef %i.oe, i1 noundef false) #6
  %i.of = call ptr @__memcpy_chk(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i64 noundef range(i64 1, 32) %i.jb, i64 noundef 32) #6, !alias.scope !35 ; 0 uses
  %i.og = load i64, ptr %i.a, align 16
  %i.oh = load i64, ptr %i.mz, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ol = load <2 x i64>, ptr %i.na, align 16
  %i.om = extractelement <2 x i64> %i.nz, i64 0   ; 2 uses
  %i.on = extractelement <2 x i64> %i.nz, i64 1   ; 2 uses
  %i.oo = extractelement <2 x i64> %i.no, i64 0
  %i.op = extractelement <2 x i64> %i.no, i64 1
  %i.oq = call { i64, i64 } @softaes_block_encrypt(i64 %i.oo, i64 %i.op, i64 %i.om, i64 %i.on) #6 ; 2 uses
  %i.or = extractvalue { i64, i64 } %i.oq, 0
  %i.os = extractvalue { i64, i64 } %i.oq, 1
  store i64 %i.or, ptr %i.nl, align 16
  store i64 %i.os, ptr %i.nm, align 8
  %i.ot = load i64, ptr %i.nf, align 16
  %i.ou = load i64, ptr %i.ng, align 8
  %i.ov = load i64, ptr %i.nb, align 16
  %i.ow = load i64, ptr %i.nc, align 8
  %i.ox = call { i64, i64 } @softaes_block_encrypt(i64 %i.ot, i64 %i.ou, i64 %i.ov, i64 %i.ow) #6 ; 2 uses
  %i.oy = extractvalue { i64, i64 } %i.ox, 0
  %i.oz = extractvalue { i64, i64 } %i.ox, 1
  store i64 %i.oy, ptr %i.nb, align 16
  store i64 %i.oz, ptr %i.nc, align 8
  %i.pa = load i64, ptr %i.oi, align 16
  %i.pb = load i64, ptr %i.oj, align 8
end_hunk_0
