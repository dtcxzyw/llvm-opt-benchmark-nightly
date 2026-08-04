inline.NumInlined: 482
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@PHP_XXH3_64_Final:bb.a
  %i.hw = add <2 x i64> %.sroa.31.3.i, %i.hv
  %i.hx = add <2 x i64> %i.hw, %i.hu              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hz = load <2 x i64>, ptr %i.hy, align 1, !tbaa !12, !noalias !255 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.ib = load <2 x i64>, ptr %i.ia, align 1, !tbaa !12, !noalias !255
  %i.ic = xor <2 x i64> %i.ib, %i.hz              ; 2 uses
  %i.id = bitcast <2 x i64> %i.ic to <4 x i32>
  %i.ie = and <2 x i64> %i.ic, splat (i64 4294967295)
  %i.if = and <4 x i32> %i.id, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner65 = shufflevector <4 x i32> %i.if, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ig = bitcast <4 x i32> %.inner65 to <2 x i64>
  %i.ih = mul nuw <2 x i64> %i.ie, %i.ig
  %i.ii = shufflevector <2 x i64> %i.hz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ij = add <2 x i64> %.sroa.45.3.i, %i.ii
  %i.ik = add <2 x i64> %i.ij, %i.ih              ; 2 uses
  %i.il = add nuw nsw i64 %.0.i27.i56.i, 1        ; 2 uses
  %exitcond67.not.i = icmp eq i64 %i.il, %i.o
  br i1 %exitcond67.not.i, label %XXH3_consumeStripes.exit.i.i, label %.lr.ph57.i, !llvm.loop !86

XXH3_consumeStripes.exit.i.i:                     ; preds = %.lr.ph54.i, %.lr.ph57.i, %bb.e, %XXH3_accumulate.exit36.i.i
  %.sroa.45.4.i = phi <2 x i64> [ %.sroa.45.0.copyload.i, %bb.e ], [ %i.ik, %.lr.ph57.i ], [ %i.dz, %XXH3_accumulate.exit36.i.i ], [ %i.ge, %.lr.ph54.i ]
  %.sroa.31.4.i = phi <2 x i64> [ %.sroa.31.0.copyload.i, %bb.e ], [ %i.hx, %.lr.ph57.i ], [ %i.dn, %XXH3_accumulate.exit36.i.i ], [ %i.fr, %.lr.ph54.i ]
  %.sroa.17.4.i = phi <2 x i64> [ %.sroa.17.0.copyload.i, %bb.e ], [ %i.hk, %.lr.ph57.i ], [ %i.db, %XXH3_accumulate.exit36.i.i ], [ %i.fe, %.lr.ph54.i ]
  %.sroa.0.4.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %bb.e ], [ %i.gx, %.lr.ph57.i ], [ %i.cp, %XXH3_accumulate.exit36.i.i ], [ %i.er, %.lr.ph54.i ]
  %i.im = zext i32 %i.k to i64
  %i.in = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.im ; 4 uses
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 -64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 4 uses
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -7
  %i.ir = load <2 x i64>, ptr %i.io, align 1, !tbaa !12, !noalias !258 ; 2 uses
  %i.is = load <2 x i64>, ptr %i.iq, align 1, !tbaa !12, !noalias !258
  %i.it = xor <2 x i64> %i.is, %i.ir              ; 2 uses
  %i.iu = bitcast <2 x i64> %i.it to <4 x i32>
  %i.iv = and <2 x i64> %i.it, splat (i64 4294967295)
  %i.iw = and <4 x i32> %i.iu, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner66 = shufflevector <4 x i32> %i.iw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ix = bitcast <4 x i32> %.inner66 to <2 x i64>
  %i.iy = mul nuw <2 x i64> %i.iv, %i.ix
  %i.iz = shufflevector <2 x i64> %i.ir, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = add <2 x i64> %.sroa.0.4.i, %i.iz
  %i.jb = add <2 x i64> %i.ja, %i.iy
  %i.jc = getelementptr inbounds i8, ptr %i.in, i64 -48
  %i.jd = load <2 x i64>, ptr %i.jc, align 1, !tbaa !12, !noalias !258 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 9
  %i.jf = load <2 x i64>, ptr %i.je, align 1, !tbaa !12, !noalias !258
  %i.jg = xor <2 x i64> %i.jf, %i.jd              ; 2 uses
  %i.jh = bitcast <2 x i64> %i.jg to <4 x i32>
  %i.ji = and <2 x i64> %i.jg, splat (i64 4294967295)
  %i.jj = and <4 x i32> %i.jh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner67 = shufflevector <4 x i32> %i.jj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jk = bitcast <4 x i32> %.inner67 to <2 x i64>
  %i.jl = mul nuw <2 x i64> %i.ji, %i.jk
  %i.jm = shufflevector <2 x i64> %i.jd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jn = add <2 x i64> %.sroa.17.4.i, %i.jm
  %i.jo = add <2 x i64> %i.jn, %i.jl
  %i.jp = getelementptr inbounds i8, ptr %i.in, i64 -32
  %i.jq = load <2 x i64>, ptr %i.jp, align 1, !tbaa !12, !noalias !258 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ip, i64 25
  %i.js = load <2 x i64>, ptr %i.jr, align 1, !tbaa !12, !noalias !258
  %i.jt = xor <2 x i64> %i.js, %i.jq              ; 2 uses
  %i.ju = bitcast <2 x i64> %i.jt to <4 x i32>
  %i.jv = and <2 x i64> %i.jt, splat (i64 4294967295)
  %i.jw = and <4 x i32> %i.ju, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner68 = shufflevector <4 x i32> %i.jw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.jx = bitcast <4 x i32> %.inner68 to <2 x i64>
  %i.jy = mul nuw <2 x i64> %i.jv, %i.jx
  %i.jz = shufflevector <2 x i64> %i.jq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = add <2 x i64> %.sroa.31.4.i, %i.jz
  %i.kb = add <2 x i64> %i.ka, %i.jy
  %i.kc = getelementptr inbounds i8, ptr %i.in, i64 -16
  %i.kd = load <2 x i64>, ptr %i.kc, align 1, !tbaa !12, !noalias !258 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ip, i64 41
  %i.kf = load <2 x i64>, ptr %i.ke, align 1, !tbaa !12, !noalias !258
  %i.kg = xor <2 x i64> %i.kf, %i.kd              ; 2 uses
  %i.kh = bitcast <2 x i64> %i.kg to <4 x i32>
  %i.ki = and <2 x i64> %i.kg, splat (i64 4294967295)
  %i.kj = and <4 x i32> %i.kh, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner69 = shufflevector <4 x i32> %i.kj, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.kk = bitcast <4 x i32> %.inner69 to <2 x i64>
  %i.kl = mul nuw <2 x i64> %i.ki, %i.kk
  %i.km = shufflevector <2 x i64> %i.kd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kn = add <2 x i64> %.sroa.45.4.i, %i.km
  %i.ko = add <2 x i64> %i.kn, %i.kl
  br label %XXH3_digest_long.exit.i

XXH3_accumulate_512_sse2.exit.i.i:                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.kp = sub nuw nsw i32 64, %i.k
  %i.kq = zext nneg i32 %i.kp to i64              ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ks = sub nsw i64 0, %i.kq
  %i.kt = getelementptr inbounds i8, ptr %i.j, i64 %i.ks
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.kt, i64 %i.kq, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kq
  %i.kv = zext nneg i32 %i.k to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull readonly align 1 %i.kr, i64 %i.kv, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.kx = load i64, ptr %i.kw, align 32, !tbaa !56
  %i.ky = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.kx ; 4 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -7
  %i.la = load <2 x i64>, ptr %i.a, align 16, !tbaa !12, !noalias !261 ; 2 uses
  %i.lb = load <2 x i64>, ptr %i.kz, align 1, !tbaa !12, !noalias !261
  %i.lc = xor <2 x i64> %i.lb, %i.la              ; 2 uses
  %i.ld = bitcast <2 x i64> %i.lc to <4 x i32>
  %i.le = and <2 x i64> %i.lc, splat (i64 4294967295)
  %i.lf = and <4 x i32> %i.ld, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner70 = shufflevector <4 x i32> %i.lf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lg = bitcast <4 x i32> %.inner70 to <2 x i64>
  %i.lh = mul nuw <2 x i64> %i.le, %i.lg
  %i.li = shufflevector <2 x i64> %i.la, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.lj = add <2 x i64> %.sroa.0.0.copyload.i, %i.li
  %i.lk = add <2 x i64> %i.lj, %i.lh
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lm = load <2 x i64>, ptr %i.ll, align 16, !tbaa !12, !noalias !261 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 9
  %i.lo = load <2 x i64>, ptr %i.ln, align 1, !tbaa !12, !noalias !261
  %i.lp = xor <2 x i64> %i.lo, %i.lm              ; 2 uses
  %i.lq = bitcast <2 x i64> %i.lp to <4 x i32>
  %i.lr = and <2 x i64> %i.lp, splat (i64 4294967295)
  %i.ls = and <4 x i32> %i.lq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner71 = shufflevector <4 x i32> %i.ls, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.lt = bitcast <4 x i32> %.inner71 to <2 x i64>
  %i.lu = mul nuw <2 x i64> %i.lr, %i.lt
  %i.lv = shufflevector <2 x i64> %i.lm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = add <2 x i64> %.sroa.17.0.copyload.i, %i.lv
  %i.lx = add <2 x i64> %i.lw, %i.lu
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.lz = load <2 x i64>, ptr %i.ly, align 16, !tbaa !12, !noalias !261 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ky, i64 25
  %i.mb = load <2 x i64>, ptr %i.ma, align 1, !tbaa !12, !noalias !261
  %i.mc = xor <2 x i64> %i.mb, %i.lz              ; 2 uses
  %i.md = bitcast <2 x i64> %i.mc to <4 x i32>
  %i.me = and <2 x i64> %i.mc, splat (i64 4294967295)
  %i.mf = and <4 x i32> %i.md, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner72 = shufflevector <4 x i32> %i.mf, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.mg = bitcast <4 x i32> %.inner72 to <2 x i64>
  %i.mh = mul nuw <2 x i64> %i.me, %i.mg
  %i.mi = shufflevector <2 x i64> %i.lz, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mj = add <2 x i64> %.sroa.31.0.copyload.i, %i.mi
  %i.mk = add <2 x i64> %i.mj, %i.mh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.mm = load <2 x i64>, ptr %i.ml, align 16, !tbaa !12, !noalias !261 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ky, i64 41
  %i.mo = load <2 x i64>, ptr %i.mn, align 1, !tbaa !12, !noalias !261
  %i.mp = xor <2 x i64> %i.mo, %i.mm              ; 2 uses
  %i.mq = bitcast <2 x i64> %i.mp to <4 x i32>
  %i.mr = and <2 x i64> %i.mp, splat (i64 4294967295)
  %i.ms = and <4 x i32> %i.mq, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner73 = shufflevector <4 x i32> %i.ms, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.mt = bitcast <4 x i32> %.inner73 to <2 x i64>
  %i.mu = mul nuw <2 x i64> %i.mr, %i.mt
  %i.mv = shufflevector <2 x i64> %i.mm, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = add <2 x i64> %.sroa.45.0.copyload.i, %i.mv
  %i.mx = add <2 x i64> %i.mw, %i.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %XXH3_digest_long.exit.i

XXH3_digest_long.exit.i:                          ; preds = %XXH3_accumulate_512_sse2.exit.i.i, %XXH3_consumeStripes.exit.i.i
  %.sroa.45.5.i = phi <2 x i64> [ %i.ko, %XXH3_consumeStripes.exit.i.i ], [ %i.mx, %XXH3_accumulate_512_sse2.exit.i.i ] ; 2 uses
  %.sroa.31.5.i = phi <2 x i64> [ %i.kb, %XXH3_consumeStripes.exit.i.i ], [ %i.mk, %XXH3_accumulate_512_sse2.exit.i.i ] ; 2 uses
  %.sroa.17.5.i = phi <2 x i64> [ %i.jo, %XXH3_consumeStripes.exit.i.i ], [ %i.lx, %XXH3_accumulate_512_sse2.exit.i.i ] ; 2 uses
  %.sroa.0.5.i = phi <2 x i64> [ %i.jb, %XXH3_consumeStripes.exit.i.i ], [ %i.lk, %XXH3_accumulate_512_sse2.exit.i.i ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.mz = mul i64 %i.h, -7046029288634856825
  %i.na = load <8 x i64>, ptr %i.my, align 1, !alias.scope !264, !noalias !267 ; 2 uses
  %i.nb = shufflevector <8 x i64> %i.na, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nc = shufflevector <2 x i64> %.sroa.0.5.i, <2 x i64> %.sroa.17.5.i, <2 x i32> <i32 0, i32 2>
  %i.nd = shufflevector <2 x i64> %.sroa.31.5.i, <2 x i64> %.sroa.45.5.i, <2 x i32> <i32 0, i32 2>
  %i.ne = shufflevector <2 x i64> %i.nc, <2 x i64> %i.nd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nf = xor <4 x i64> %i.nb, %i.ne
  %i.ng = shufflevector <8 x i64> %i.na, <8 x i64> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nh = shufflevector <2 x i64> %.sroa.0.5.i, <2 x i64> %.sroa.17.5.i, <2 x i32> <i32 1, i32 3>
  %i.ni = shufflevector <2 x i64> %.sroa.31.5.i, <2 x i64> %.sroa.45.5.i, <2 x i32> <i32 1, i32 3>
  %i.nj = shufflevector <2 x i64> %i.nh, <2 x i64> %i.ni, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nk = xor <4 x i64> %i.ng, %i.nj
  %i.nl = zext <4 x i64> %i.nf to <4 x i128>
  %i.nm = zext <4 x i64> %i.nk to <4 x i128>
  %i.nn = mul nuw <4 x i128> %i.nm, %i.nl         ; 2 uses
  %i.no = lshr <4 x i128> %i.nn, splat (i128 64)
  %i.np = xor <4 x i128> %i.no, %i.nn
  %i.nq = trunc <4 x i128> %i.np to <4 x i64>
  %i.nr = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.nq)
  %op.rdx = add i64 %i.nr, %i.mz                  ; 2 uses
  %i.ns = lshr i64 %op.rdx, 37
  %i.nt = xor i64 %i.ns, %op.rdx
  %i.nu = mul i64 %i.nt, 1609587791953885689      ; 2 uses
  %i.nv = lshr i64 %i.nu, 32
  %i.nw = xor i64 %i.nv, %i.nu
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.f:                                             ; preds = %bb.a
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !55
  %.not.i = icmp eq i32 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 26 uses
  br i1 %.not.i, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !51 ; 11 uses
  %i.oc = icmp samesign ult i64 %i.h, 17
  br i1 %i.oc, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.od = icmp samesign ugt i64 %i.h, 8
  br i1 %i.od, label %bb.i, label %bb.j, !prof !269

bb.i:                                             ; preds = %bb.h
  %i.oe = add i64 %i.ob, 7458650908927343033
  %i.of = sub i64 -5812251307325107654, %i.ob
  %.0.copyload.i.i21.i = load i64, ptr %i.nz, align 16
  %i.og = xor i64 %.0.copyload.i.i21.i, %i.oe     ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 -8
  %.0.copyload.i4.i.i = load i64, ptr %i.oi, align 1
  %i.oj = xor i64 %.0.copyload.i4.i.i, %i.of      ; 2 uses
  %i.ok = tail call noundef i64 @llvm.bswap.i64(i64 %i.og)
  %i.ol = add i64 %i.ok, %i.h
  %i.om = add i64 %i.ol, %i.oj
  %i.on = zext i64 %i.og to i128
  %i.oo = zext i64 %i.oj to i128
  %i.op = mul nuw i128 %i.oo, %i.on               ; 2 uses
  %i.oq = lshr i128 %i.op, 64
  %i.or = xor i128 %i.oq, %i.op
  %i.os = trunc i128 %i.or to i64
  %i.ot = add i64 %i.om, %i.os                    ; 2 uses
  %i.ou = lshr i64 %i.ot, 37
  %i.ov = xor i64 %i.ou, %i.ot
  %i.ow = mul i64 %i.ov, 1609587791953885689      ; 2 uses
  %i.ox = lshr i64 %i.ow, 32
  %i.oy = xor i64 %i.ox, %i.ow
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.j:                                             ; preds = %bb.h
  %i.oz = icmp samesign ugt i64 %i.h, 3
  br i1 %i.oz, label %bb.k, label %bb.l, !prof !269

bb.k:                                             ; preds = %bb.j
  %i.pa = trunc i64 %i.ob to i32
  %i.pb = tail call noundef i32 @llvm.bswap.i32(i32 %i.pa)
  %i.pc = zext i32 %i.pb to i64
  %i.pd = shl nuw i64 %i.pc, 32
  %i.pe = xor i64 %i.pd, %i.ob
  %.0.copyload.i5.i.i = load i32, ptr %i.nz, align 16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -4
  %.0.copyload.i6.i.i = load i32, ptr %i.pg, align 1
  %i.ph = sub i64 -4090762196417718878, %i.pe
  %i.pi = zext i32 %.0.copyload.i6.i.i to i64
  %i.pj = zext i32 %.0.copyload.i5.i.i to i64
  %i.pk = shl nuw i64 %i.pj, 32
  %i.pl = or disjoint i64 %i.pk, %i.pi
  %i.pm = xor i64 %i.pl, %i.ph                    ; 5 uses
  %i.pn = tail call i64 @llvm.fshl.i64(i64 %i.pm, i64 %i.pm, i64 49)
  %i.po = tail call i64 @llvm.fshl.i64(i64 %i.pm, i64 %i.pm, i64 24)
  %i.pp = xor i64 %i.pn, %i.po
  %i.pq = xor i64 %i.pp, %i.pm
  %i.pr = mul i64 %i.pq, -6939452855193903323     ; 2 uses
  %i.ps = lshr i64 %i.pr, 35
  %i.pt = add nuw nsw i64 %i.ps, %i.h
  %i.pu = xor i64 %i.pt, %i.pr
  %i.pv = mul i64 %i.pu, -6939452855193903323     ; 2 uses
  %i.pw = lshr i64 %i.pv, 28
  %i.px = xor i64 %i.pw, %i.pv
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i20.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i20.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.py = load i8, ptr %i.nz, align 16, !tbaa !12
  %i.pz = lshr i64 %i.h, 1
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !12
  %i.qc = getelementptr i8, ptr %i.nz, i64 %i.h
  %i.qd = getelementptr i8, ptr %i.qc, i64 -1
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !12
  %i.qf = zext i8 %i.py to i64
  %i.qg = shl nuw nsw i64 %i.qf, 16
  %i.qh = zext i8 %i.qb to i64
  %i.qi = shl nuw nsw i64 %i.qh, 24
  %i.qj = zext i8 %i.qe to i64
  %i.qk = shl nuw nsw i64 %i.h, 8
  %i.ql = or disjoint i64 %i.qg, %i.qk
  %i.qm = or disjoint i64 %i.ql, %i.qi
  %i.qn = or disjoint i64 %i.qm, %i.qj
  %i.qo = add i64 %i.ob, 2267503259
  %i.qp = xor i64 %i.qn, %i.qo                    ; 2 uses
  %i.qq = lshr i64 %i.qp, 33
  %i.qr = xor i64 %i.qq, %i.qp
  %i.qs = mul i64 %i.qr, -4417276706812531889     ; 2 uses
  %i.qt = lshr i64 %i.qs, 29
  %i.qu = xor i64 %i.qt, %i.qs
  %i.qv = mul i64 %i.qu, 1609587929392839161      ; 2 uses
  %i.qw = lshr i64 %i.qv, 32
  %i.qx = xor i64 %i.qw, %i.qv
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.n:                                             ; preds = %bb.l
  %i.qy = xor i64 %i.ob, -8707998980786479652     ; 2 uses
  %i.qz = lshr i64 %i.qy, 33
  %i.ra = xor i64 %i.qz, %i.qy
  %i.rb = mul i64 %i.ra, -4417276706812531889     ; 2 uses
  %i.rc = lshr i64 %i.rb, 29
  %i.rd = xor i64 %i.rc, %i.rb
  %i.re = mul i64 %i.rd, 1609587929392839161      ; 2 uses
  %i.rf = lshr i64 %i.re, 32
  %i.rg = xor i64 %i.rf, %i.re
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.o:                                             ; preds = %bb.g
  %i.rh = icmp samesign ult i64 %i.h, 129
  br i1 %i.rh, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ri = mul i64 %i.h, -7046029288634856825      ; 4 uses
  %i.rj = icmp samesign ugt i64 %i.h, 32
  br i1 %i.rj, label %bb.q, label %XXH3_len_17to128_64b.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.rk = icmp samesign ugt i64 %i.h, 64
  br i1 %i.rk, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.rl = icmp samesign ugt i64 %i.h, 96
  br i1 %i.rl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 304
  %2 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %3 = shufflevector <2 x i64> %2, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %4 = add <2 x i64> %3, <i64 4554437623014685352, i64 3556072174620004746>
  %5 = sub <2 x i64> <i64 2111919702937427193, i64 7238261902898274248>, %3
  %6 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %7 = getelementptr inbounds i8, ptr %6, i64 -64
  %8 = load <2 x i64>, ptr %i.rm, align 16, !noalias !270 ; 2 uses
  %9 = load <2 x i64>, ptr %7, align 1, !noalias !273 ; 2 uses
  %10 = shufflevector <2 x i64> %8, <2 x i64> %9, <2 x i32> <i32 0, i32 2>
  %11 = xor <2 x i64> %10, %4
  %12 = shufflevector <2 x i64> %8, <2 x i64> %9, <2 x i32> <i32 1, i32 3>
  %13 = xor <2 x i64> %12, %5
  %14 = zext <2 x i64> %11 to <2 x i128>
  %15 = zext <2 x i64> %13 to <2 x i128>
  %16 = mul nuw <2 x i128> %15, %14               ; 2 uses
  %17 = lshr <2 x i128> %16, splat (i128 64)
  %18 = xor <2 x i128> %17, %16                   ; 2 uses
  %19 = bitcast <2 x i128> %18 to <4 x i64>
  %20 = extractelement <4 x i64> %19, i64 0
  %i.rn = add i64 %i.ri, %20
  %21 = bitcast <2 x i128> %18 to <4 x i64>
  %22 = extractelement <4 x i64> %21, i64 2
  %i.ro = add i64 %i.rn, %22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i3.i.i = phi i64 [ %i.ro, %bb.s ], [ %i.ri, %bb.r ]
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 288
  %23 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %24 = shufflevector <2 x i64> %23, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = add <2 x i64> %24, <i64 -3818837453329782724, i64 5690594596133299313>
  %26 = sub <2 x i64> <i64 -6688317018830679928, i64 -2833645246901970632>, %24
  %27 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %28 = getelementptr inbounds i8, ptr %27, i64 -48
  %29 = load <2 x i64>, ptr %i.rp, align 16, !noalias !276 ; 2 uses
  %30 = load <2 x i64>, ptr %28, align 1, !noalias !279 ; 2 uses
  %31 = shufflevector <2 x i64> %29, <2 x i64> %30, <2 x i32> <i32 0, i32 2>
  %32 = xor <2 x i64> %31, %25
  %33 = shufflevector <2 x i64> %29, <2 x i64> %30, <2 x i32> <i32 1, i32 3>
  %34 = xor <2 x i64> %33, %26
  %35 = zext <2 x i64> %32 to <2 x i128>
  %36 = zext <2 x i64> %34 to <2 x i128>
  %37 = mul nuw <2 x i128> %36, %35               ; 2 uses
  %38 = lshr <2 x i128> %37, splat (i128 64)
  %39 = xor <2 x i128> %38, %37                   ; 2 uses
  %40 = bitcast <2 x i128> %39 to <4 x i64>
  %41 = extractelement <4 x i64> %40, i64 0
  %i.rq = add i64 %.0.i3.i.i, %41
  %42 = bitcast <2 x i128> %39 to <4 x i64>
  %43 = extractelement <4 x i64> %42, i64 2
  %i.rr = add i64 %i.rq, %43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.1.i.i.i = phi i64 [ %i.rr, %bb.t ], [ %i.ri, %bb.q ]
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 272
  %44 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %45 = shufflevector <2 x i64> %44, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %46 = add <2 x i64> %45, <i64 8711581037947681227, i64 -8204357891075471176>
  %47 = sub <2 x i64> <i64 2410270004345854594, i64 5487137525590930912>, %45
  %48 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %49 = getelementptr inbounds i8, ptr %48, i64 -32
  %50 = load <2 x i64>, ptr %i.rs, align 16, !noalias !282 ; 2 uses
  %51 = load <2 x i64>, ptr %49, align 1, !noalias !285 ; 2 uses
  %52 = shufflevector <2 x i64> %50, <2 x i64> %51, <2 x i32> <i32 0, i32 2>
  %53 = xor <2 x i64> %52, %46
  %54 = shufflevector <2 x i64> %50, <2 x i64> %51, <2 x i32> <i32 1, i32 3>
  %55 = xor <2 x i64> %54, %47
  %56 = zext <2 x i64> %53 to <2 x i128>
  %57 = zext <2 x i64> %55 to <2 x i128>
  %58 = mul nuw <2 x i128> %57, %56               ; 2 uses
  %59 = lshr <2 x i128> %58, splat (i128 64)
  %60 = xor <2 x i128> %59, %58                   ; 2 uses
  %61 = bitcast <2 x i128> %60 to <4 x i64>
  %62 = extractelement <4 x i64> %61, i64 0
  %i.rt = add i64 %.1.i.i.i, %62
  %63 = bitcast <2 x i128> %60 to <4 x i64>
  %64 = extractelement <4 x i64> %63, i64 2
  %i.ru = add i64 %i.rt, %64
  br label %XXH3_len_17to128_64b.exit.i.i

XXH3_len_17to128_64b.exit.i.i:                    ; preds = %bb.u, %bb.p
  %.2.i.i.i = phi i64 [ %i.ru, %bb.u ], [ %i.ri, %bb.p ]
  %65 = insertelement <2 x i64> poison, i64 %i.ob, i64 0
  %66 = shufflevector <2 x i64> %65, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %67 = add <2 x i64> %66, <i64 -4734510112055689544, i64 -2623469361688619810>
  %68 = sub <2 x i64> <i64 2066345149520216444, i64 2262974939099578482>, %66
  %69 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %70 = getelementptr inbounds i8, ptr %69, i64 -16
  %71 = load <2 x i64>, ptr %i.nz, align 16, !noalias !288 ; 2 uses
  %72 = load <2 x i64>, ptr %70, align 1, !noalias !291 ; 2 uses
  %73 = shufflevector <2 x i64> %71, <2 x i64> %72, <2 x i32> <i32 0, i32 2>
  %74 = xor <2 x i64> %73, %67
  %75 = shufflevector <2 x i64> %71, <2 x i64> %72, <2 x i32> <i32 1, i32 3>
  %76 = xor <2 x i64> %75, %68
  %77 = zext <2 x i64> %74 to <2 x i128>
  %78 = zext <2 x i64> %76 to <2 x i128>
  %79 = mul nuw <2 x i128> %78, %77               ; 2 uses
  %80 = lshr <2 x i128> %79, splat (i128 64)
  %81 = xor <2 x i128> %80, %79                   ; 2 uses
  %82 = bitcast <2 x i128> %81 to <4 x i64>
  %83 = extractelement <4 x i64> %82, i64 0
  %i.rv = add i64 %.2.i.i.i, %83
  %84 = bitcast <2 x i128> %81 to <4 x i64>
  %85 = extractelement <4 x i64> %84, i64 2
  %i.rw = add i64 %i.rv, %85                      ; 2 uses
  %i.rx = lshr i64 %i.rw, 37
  %i.ry = xor i64 %i.rx, %i.rw
  %i.rz = mul i64 %i.ry, 1609587791953885689      ; 2 uses
  %i.sa = lshr i64 %i.rz, 32
  %i.sb = xor i64 %i.sa, %i.rz
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.v:                                             ; preds = %bb.o
  %i.sc = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef nonnull readonly %i.nz, i64 noundef range(i64 0, 241) %i.h, ptr noundef nonnull @XXH3_kSecret, i64 noundef %i.ob)
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.w:                                             ; preds = %bb.f
  %i.sd = icmp samesign ult i64 %i.h, 17
  br i1 %i.sd, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.se = icmp samesign ugt i64 %i.h, 8
  br i1 %i.se, label %bb.y, label %bb.z, !prof !269

bb.y:                                             ; preds = %bb.x
  %i.sf = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.copyload.i.i40.i = load i64, ptr %i.sf, align 1
  %i.sg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.0.copyload.i5.i41.i = load i64, ptr %i.sg, align 1
  %i.sh = xor i64 %.0.copyload.i5.i41.i, %.0.copyload.i.i40.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.0.copyload.i6.i42.i = load i64, ptr %i.si, align 1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.0.copyload.i7.i43.i = load i64, ptr %i.sj, align 1
  %i.sk = xor i64 %.0.copyload.i7.i43.i, %.0.copyload.i6.i42.i
  %.0.copyload.i8.i44.i = load i64, ptr %i.nz, align 32
  %i.sl = xor i64 %i.sh, %.0.copyload.i8.i44.i    ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %i.sn = getelementptr inbounds i8, ptr %i.sm, i64 -8
  %.0.copyload.i9.i45.i = load i64, ptr %i.sn, align 1
  %i.so = xor i64 %i.sk, %.0.copyload.i9.i45.i    ; 2 uses
  %i.sp = tail call noundef i64 @llvm.bswap.i64(i64 %i.sl)
  %i.sq = add i64 %i.sp, %i.h
  %i.sr = add i64 %i.sq, %i.so
  %i.ss = zext i64 %i.sl to i128
  %i.st = zext i64 %i.so to i128
  %i.su = mul nuw i128 %i.st, %i.ss               ; 2 uses
  %i.sv = lshr i128 %i.su, 64
  %i.sw = xor i128 %i.sv, %i.su
  %i.sx = trunc i128 %i.sw to i64
  %i.sy = add i64 %i.sr, %i.sx                    ; 2 uses
  %i.sz = lshr i64 %i.sy, 37
  %i.ta = xor i64 %i.sz, %i.sy
  %i.tb = mul i64 %i.ta, 1609587791953885689      ; 2 uses
  %i.tc = lshr i64 %i.tb, 32
  %i.td = xor i64 %i.tc, %i.tb
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.z:                                             ; preds = %bb.x
  %i.te = icmp samesign ugt i64 %i.h, 3
  br i1 %i.te, label %bb.aa, label %bb.ab, !prof !269

bb.aa:                                            ; preds = %bb.z
  %.0.copyload.i10.i36.i = load i32, ptr %i.nz, align 32
  %i.tf = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 -4
  %.0.copyload.i11.i37.i = load i32, ptr %i.tg, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i12.i38.i = load i64, ptr %i.th, align 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.0.copyload.i13.i39.i = load i64, ptr %i.ti, align 1
  %i.tj = xor i64 %.0.copyload.i13.i39.i, %.0.copyload.i12.i38.i
  %i.tk = zext i32 %.0.copyload.i11.i37.i to i64
  %i.tl = zext i32 %.0.copyload.i10.i36.i to i64
  %i.tm = shl nuw i64 %i.tl, 32
  %i.tn = or disjoint i64 %i.tm, %i.tk
  %i.to = xor i64 %i.tj, %i.tn                    ; 5 uses
  %i.tp = tail call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 49)
  %i.tq = tail call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 24)
  %i.tr = xor i64 %i.tp, %i.tq
  %i.ts = xor i64 %i.tr, %i.to
  %i.tt = mul i64 %i.ts, -6939452855193903323     ; 2 uses
  %i.tu = lshr i64 %i.tt, 35
  %i.tv = add nuw nsw i64 %i.tu, %i.h
  %i.tw = xor i64 %i.tv, %i.tt
  %i.tx = mul i64 %i.tw, -6939452855193903323     ; 2 uses
  %i.ty = lshr i64 %i.tx, 28
  %i.tz = xor i64 %i.ty, %i.tx
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i.i31.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i31.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ua = load i8, ptr %i.nz, align 32, !tbaa !12
  %i.ub = lshr i64 %i.h, 1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !12
  %i.ue = getelementptr i8, ptr %i.nz, i64 %i.h
  %i.uf = getelementptr i8, ptr %i.ue, i64 -1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !12
  %i.uh = zext i8 %i.ua to i64
  %i.ui = shl nuw nsw i64 %i.uh, 16
  %i.uj = zext i8 %i.ud to i64
  %i.uk = shl nuw nsw i64 %i.uj, 24
  %i.ul = zext i8 %i.ug to i64
  %i.um = shl nuw nsw i64 %i.h, 8
  %i.un = or disjoint i64 %i.ui, %i.um
  %i.uo = or disjoint i64 %i.un, %i.uk
  %i.up = or disjoint i64 %i.uo, %i.ul
  %.0.copyload.i14.i32.i = load i32, ptr %i.f, align 1
  %i.uq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i15.i33.i = load i32, ptr %i.uq, align 1
  %i.ur = xor i32 %.0.copyload.i15.i33.i, %.0.copyload.i14.i32.i
  %i.us = zext i32 %i.ur to i64
  %i.ut = xor i64 %i.up, %i.us
  %i.uu = mul i64 %i.ut, -4417276706812531889     ; 2 uses
  %i.uv = lshr i64 %i.uu, 29
  %i.uw = xor i64 %i.uv, %i.uu
  %i.ux = mul i64 %i.uw, 1609587929392839161      ; 2 uses
  %i.uy = lshr i64 %i.ux, 32
  %i.uz = xor i64 %i.uy, %i.ux
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.ad:                                            ; preds = %bb.ab
  %i.va = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.0.copyload.i16.i34.i = load i64, ptr %i.va, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.0.copyload.i17.i35.i = load i64, ptr %i.vb, align 1
  %i.vc = xor i64 %.0.copyload.i17.i35.i, %.0.copyload.i16.i34.i ; 2 uses
  %i.vd = lshr i64 %i.vc, 33
  %i.ve = xor i64 %i.vd, %i.vc
  %i.vf = mul i64 %i.ve, -4417276706812531889     ; 2 uses
  %i.vg = lshr i64 %i.vf, 29
  %i.vh = xor i64 %i.vg, %i.vf
  %i.vi = mul i64 %i.vh, 1609587929392839161      ; 2 uses
  %i.vj = lshr i64 %i.vi, 32
  %i.vk = xor i64 %i.vj, %i.vi
  br label %XXH_INLINE_XXH3_64bits_digest.exit

bb.ae:                                            ; preds = %bb.w
  %i.vl = icmp samesign ult i64 %i.h, 129
  br i1 %i.vl, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.vm = mul i64 %i.h, -7046029288634856825      ; 4 uses
  %i.vn = icmp samesign ugt i64 %i.h, 32
  br i1 %i.vn, label %bb.ag, label %XXH3_len_17to128_64b.exit.i23.i

bb.ag:                                            ; preds = %bb.af
  %i.vo = icmp samesign ugt i64 %i.h, 64
  br i1 %i.vo, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.vp = icmp samesign ugt i64 %i.h, 96
  br i1 %i.vp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.vq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.vr = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.0.copyload.i18.i26.i = load i64, ptr %i.vq, align 16, !noalias !294
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.0.copyload.i19.i27.i = load i64, ptr %i.vs, align 8, !noalias !294
  %.0.copyload.i20.i28.i = load i64, ptr %i.vr, align 1
  %i.vt = xor i64 %.0.copyload.i20.i28.i, %.0.copyload.i18.i26.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.0.copyload.i21.i29.i = load i64, ptr %i.vu, align 1
  %i.vv = xor i64 %.0.copyload.i21.i29.i, %.0.copyload.i19.i27.i
  %i.vw = zext i64 %i.vt to i128
  %i.vx = zext i64 %i.vv to i128
  %i.vy = mul nuw i128 %i.vx, %i.vw               ; 2 uses
  %i.vz = lshr i128 %i.vy, 64
  %i.wa = xor i128 %i.vz, %i.vy
  %i.wb = trunc i128 %i.wa to i64
  %i.wc = add i64 %i.vm, %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.h ; 2 uses
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 -64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.0.copyload.i22.i30.i = load i64, ptr %i.we, align 1, !noalias !297
  %i.wg = getelementptr inbounds i8, ptr %i.wd, i64 -56
  %.0.copyload.i23.i.i = load i64, ptr %i.wg, align 1, !noalias !297
  %.0.copyload.i24.i.i = load i64, ptr %i.wf, align 1
  %i.wh = xor i64 %.0.copyload.i24.i.i, %.0.copyload.i22.i30.i
  %i.wi = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.0.copyload.i25.i.i = load i64, ptr %i.wi, align 1
  %i.wj = xor i64 %.0.copyload.i25.i.i, %.0.copyload.i23.i.i
  %i.wk = zext i64 %i.wh to i128
  %i.wl = zext i64 %i.wj to i128
  %i.wm = mul nuw i128 %i.wl, %i.wk               ; 2 uses
  %i.wn = lshr i128 %i.wm, 64
  %i.wo = xor i128 %i.wn, %i.wm
  %i.wp = trunc i128 %i.wo to i64
  %i.wq = add i64 %i.wc, %i.wp
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0.i4.i.i = phi i64 [ %i.wq, %bb.ai ], [ %i.vm, %bb.ah ]
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ws = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.0.copyload.i26.i.i = load i64, ptr %i.wr, align 32, !noalias !300
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.0.copyload.i27.i.i = load i64, ptr %i.wt, align 8, !noalias !300
  %.0.copyload.i28.i.i = load i64, ptr %i.ws, align 1
  %i.wu = xor i64 %.0.copyload.i28.i.i, %.0.copyload.i26.i.i
end_hunk_0
