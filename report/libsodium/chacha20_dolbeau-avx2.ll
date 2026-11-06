Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/chacha20_dolbeau-avx2?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@chacha20_encrypt_bytes:bb.a
  %i.um = bitcast <16 x i8> %i.ul to <2 x i64>
  %i.un = bitcast <16 x i8> %i.ul to <4 x i32>    ; 2 uses
  %i.uo = add <4 x i32> %i.uf, %i.un              ; 3 uses
  %i.up = xor <4 x i32> %i.uo, %i.uh              ; 2 uses
  %i.uq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.up, <4 x i32> %i.up, <4 x i32> splat (i32 7)) ; 2 uses
  %i.ur = add <4 x i32> %i.qs, %i.sk              ; 2 uses
  %i.us = bitcast <4 x i32> %i.ur to <16 x i8>
  %i.ut = xor <16 x i8> %i.rw, %i.us
  %i.uu = shufflevector <16 x i8> %i.ut, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.uv = bitcast <16 x i8> %i.uu to <4 x i32>
  %i.uw = add <4 x i32> %i.rh, %i.uv              ; 2 uses
  %i.ux = xor <4 x i32> %i.uw, %i.qs              ; 2 uses
  %i.uy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ux, <4 x i32> %i.ux, <4 x i32> splat (i32 12)) ; 2 uses
  %i.uz = add <4 x i32> %i.uy, %i.ur              ; 3 uses
  %i.va = bitcast <4 x i32> %i.uz to <16 x i8>
  %i.vb = xor <16 x i8> %i.uu, %i.va
  %i.vc = shufflevector <16 x i8> %i.vb, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.vd = bitcast <16 x i8> %i.vc to <2 x i64>
  %i.ve = bitcast <16 x i8> %i.vc to <4 x i32>    ; 2 uses
  %i.vf = add <4 x i32> %i.uw, %i.ve              ; 3 uses
  %i.vg = xor <4 x i32> %i.vf, %i.uy              ; 2 uses
  %i.vh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.vg, <4 x i32> %i.vg, <4 x i32> splat (i32 7)) ; 2 uses
  %i.vi = add nuw nsw i32 %.011151180, 2
  %i.vj = icmp samesign ult i32 %.011151180, 18
  br i1 %i.vj, label %bb.g, label %.loopexit.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %bb.g
  %i.vk = add <4 x i32> %i.ta, %i.ne              ; 2 uses
  %i.vl = add <4 x i32> %i.tr, %i.ni              ; 2 uses
  %i.vm = add <4 x i32> %i.ui, %i.nm              ; 2 uses
  %i.vn = add <4 x i32> %i.uz, %i.nq              ; 2 uses
  %i.vo = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vp = bitcast <4 x i32> %i.vo to <2 x i64>    ; 2 uses
  %i.vq = shufflevector <4 x i32> %i.vm, <4 x i32> %i.vn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.vr = bitcast <4 x i32> %i.vq to <2 x i64>    ; 2 uses
  %i.vs = shufflevector <4 x i32> %i.vk, <4 x i32> %i.vl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.vt = bitcast <4 x i32> %i.vs to <2 x i64>    ; 2 uses
  %i.vu = shufflevector <4 x i32> %i.vm, <4 x i32> %i.vn, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.vv = bitcast <4 x i32> %i.vu to <2 x i64>    ; 2 uses
  %i.vw = shufflevector <2 x i64> %i.vp, <2 x i64> %i.vr, <2 x i32> <i32 0, i32 2>
  %i.vx = shufflevector <2 x i64> %i.vp, <2 x i64> %i.vr, <2 x i32> <i32 1, i32 3>
  %i.vy = shufflevector <2 x i64> %i.vt, <2 x i64> %i.vv, <2 x i32> <i32 0, i32 2>
  %i.vz = shufflevector <2 x i64> %i.vt, <2 x i64> %i.vv, <2 x i32> <i32 1, i32 3>
  %i.wa = load <2 x i64>, ptr %.11097, align 1
  %i.wb = xor <2 x i64> %i.wa, %i.vw
  store <2 x i64> %i.wb, ptr %.11099, align 1
  %i.wc = getelementptr i8, ptr %.11097, i64 64
  %i.wd = load <2 x i64>, ptr %i.wc, align 1
  %i.we = xor <2 x i64> %i.wd, %i.vx
  %i.wf = getelementptr i8, ptr %.11099, i64 64
  store <2 x i64> %i.we, ptr %i.wf, align 1
  %i.wg = getelementptr i8, ptr %.11097, i64 128
  %i.wh = load <2 x i64>, ptr %i.wg, align 1
  %i.wi = xor <2 x i64> %i.wh, %i.vy
  %i.wj = getelementptr i8, ptr %.11099, i64 128
  store <2 x i64> %i.wi, ptr %i.wj, align 1
  %i.wk = getelementptr i8, ptr %.11097, i64 192
  %i.wl = load <2 x i64>, ptr %i.wk, align 1
  %i.wm = xor <2 x i64> %i.wl, %i.vz
  %i.wn = getelementptr i8, ptr %.11099, i64 192
  store <2 x i64> %i.wm, ptr %i.wn, align 1
  %i.wo = getelementptr i8, ptr %.11097, i64 16
  %i.wp = getelementptr i8, ptr %.11099, i64 16
  %i.wq = add <4 x i32> %i.vh, %i.nu              ; 2 uses
  %i.wr = add <4 x i32> %i.ti, %i.ny              ; 2 uses
  %i.ws = add <4 x i32> %i.tz, %i.oc              ; 2 uses
  %i.wt = add <4 x i32> %i.uq, %i.og              ; 2 uses
  %i.wu = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wv = bitcast <4 x i32> %i.wu to <2 x i64>    ; 2 uses
  %i.ww = shufflevector <4 x i32> %i.ws, <4 x i32> %i.wt, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.wx = bitcast <4 x i32> %i.ww to <2 x i64>    ; 2 uses
  %i.wy = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.wz = bitcast <4 x i32> %i.wy to <2 x i64>    ; 2 uses
  %i.xa = shufflevector <4 x i32> %i.ws, <4 x i32> %i.wt, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.xb = bitcast <4 x i32> %i.xa to <2 x i64>    ; 2 uses
  %i.xc = shufflevector <2 x i64> %i.wv, <2 x i64> %i.wx, <2 x i32> <i32 0, i32 2>
  %i.xd = shufflevector <2 x i64> %i.wv, <2 x i64> %i.wx, <2 x i32> <i32 1, i32 3>
  %i.xe = shufflevector <2 x i64> %i.wz, <2 x i64> %i.xb, <2 x i32> <i32 0, i32 2>
  %i.xf = shufflevector <2 x i64> %i.wz, <2 x i64> %i.xb, <2 x i32> <i32 1, i32 3>
  %i.xg = load <2 x i64>, ptr %i.wo, align 1
  %i.xh = xor <2 x i64> %i.xg, %i.xc
  store <2 x i64> %i.xh, ptr %i.wp, align 1
  %i.xi = getelementptr i8, ptr %.11097, i64 80
  %i.xj = load <2 x i64>, ptr %i.xi, align 1
  %i.xk = xor <2 x i64> %i.xj, %i.xd
  %i.xl = getelementptr i8, ptr %.11099, i64 80
  store <2 x i64> %i.xk, ptr %i.xl, align 1
  %i.xm = getelementptr i8, ptr %.11097, i64 144
  %i.xn = load <2 x i64>, ptr %i.xm, align 1
  %i.xo = xor <2 x i64> %i.xn, %i.xe
  %i.xp = getelementptr i8, ptr %.11099, i64 144
  store <2 x i64> %i.xo, ptr %i.xp, align 1
  %i.xq = getelementptr i8, ptr %.11097, i64 208
  %i.xr = load <2 x i64>, ptr %i.xq, align 1
  %i.xs = xor <2 x i64> %i.xr, %i.xf
  %i.xt = getelementptr i8, ptr %.11099, i64 208
  store <2 x i64> %i.xs, ptr %i.xt, align 1
  %i.xu = getelementptr i8, ptr %.11097, i64 32
  %i.xv = getelementptr i8, ptr %.11099, i64 32
  %i.xw = add <4 x i32> %i.uo, %i.ok              ; 2 uses
  %i.xx = add <4 x i32> %i.vf, %i.oo              ; 2 uses
  %i.xy = add <4 x i32> %i.tg, %i.os              ; 2 uses
  %i.xz = add <4 x i32> %i.tx, %i.ow              ; 2 uses
  %i.ya = shufflevector <4 x i32> %i.xw, <4 x i32> %i.xx, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yb = bitcast <4 x i32> %i.ya to <2 x i64>    ; 2 uses
  %i.yc = shufflevector <4 x i32> %i.xy, <4 x i32> %i.xz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yd = bitcast <4 x i32> %i.yc to <2 x i64>    ; 2 uses
  %i.ye = shufflevector <4 x i32> %i.xw, <4 x i32> %i.xx, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yf = bitcast <4 x i32> %i.ye to <2 x i64>    ; 2 uses
  %i.yg = shufflevector <4 x i32> %i.xy, <4 x i32> %i.xz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.yh = bitcast <4 x i32> %i.yg to <2 x i64>    ; 2 uses
  %i.yi = shufflevector <2 x i64> %i.yb, <2 x i64> %i.yd, <2 x i32> <i32 0, i32 2>
  %i.yj = shufflevector <2 x i64> %i.yb, <2 x i64> %i.yd, <2 x i32> <i32 1, i32 3>
  %i.yk = shufflevector <2 x i64> %i.yf, <2 x i64> %i.yh, <2 x i32> <i32 0, i32 2>
  %i.yl = shufflevector <2 x i64> %i.yf, <2 x i64> %i.yh, <2 x i32> <i32 1, i32 3>
  %i.ym = load <2 x i64>, ptr %i.xu, align 1
  %i.yn = xor <2 x i64> %i.ym, %i.yi
  store <2 x i64> %i.yn, ptr %i.xv, align 1
  %i.yo = getelementptr i8, ptr %.11097, i64 96
  %i.yp = load <2 x i64>, ptr %i.yo, align 1
  %i.yq = xor <2 x i64> %i.yp, %i.yj
  %i.yr = getelementptr i8, ptr %.11099, i64 96
  store <2 x i64> %i.yq, ptr %i.yr, align 1
  %i.ys = getelementptr i8, ptr %.11097, i64 160
  %i.yt = load <2 x i64>, ptr %i.ys, align 1
  %i.yu = xor <2 x i64> %i.yt, %i.yk
  %i.yv = getelementptr i8, ptr %.11099, i64 160
  store <2 x i64> %i.yu, ptr %i.yv, align 1
  %i.yw = getelementptr i8, ptr %.11097, i64 224
  %i.yx = load <2 x i64>, ptr %i.yw, align 1
  %i.yy = xor <2 x i64> %i.yx, %i.yl
  %i.yz = getelementptr i8, ptr %.11099, i64 224
  store <2 x i64> %i.yy, ptr %i.yz, align 1
  %i.za = getelementptr i8, ptr %.11097, i64 48
  %i.zb = getelementptr i8, ptr %.11099, i64 48
  %i.zc = add <4 x i32> %i.pp, %i.tw              ; 2 uses
  %i.zd = add <4 x i32> %i.pr, %i.un              ; 2 uses
  %i.ze = add <4 x i32> %i.pa, %i.ve              ; 2 uses
  %i.zf = add <4 x i32> %i.pe, %i.tf              ; 2 uses
  %i.zg = shufflevector <4 x i32> %i.zc, <4 x i32> %i.zd, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zh = bitcast <4 x i32> %i.zg to <2 x i64>    ; 2 uses
  %i.zi = shufflevector <4 x i32> %i.ze, <4 x i32> %i.zf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.zj = bitcast <4 x i32> %i.zi to <2 x i64>    ; 2 uses
  %i.zk = shufflevector <4 x i32> %i.zc, <4 x i32> %i.zd, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zl = bitcast <4 x i32> %i.zk to <2 x i64>    ; 2 uses
  %i.zm = shufflevector <4 x i32> %i.ze, <4 x i32> %i.zf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zn = bitcast <4 x i32> %i.zm to <2 x i64>    ; 2 uses
  %i.zo = shufflevector <2 x i64> %i.zh, <2 x i64> %i.zj, <2 x i32> <i32 0, i32 2>
  %i.zp = shufflevector <2 x i64> %i.zh, <2 x i64> %i.zj, <2 x i32> <i32 1, i32 3>
  %i.zq = shufflevector <2 x i64> %i.zl, <2 x i64> %i.zn, <2 x i32> <i32 0, i32 2>
  %i.zr = shufflevector <2 x i64> %i.zl, <2 x i64> %i.zn, <2 x i32> <i32 1, i32 3>
  %i.zs = load <2 x i64>, ptr %i.za, align 1
  %i.zt = xor <2 x i64> %i.zs, %i.zo
  store <2 x i64> %i.zt, ptr %i.zb, align 1
  %i.zu = getelementptr i8, ptr %.11097, i64 112
  %i.zv = load <2 x i64>, ptr %i.zu, align 1
  %i.zw = xor <2 x i64> %i.zv, %i.zp
  %i.zx = getelementptr i8, ptr %.11099, i64 112
  store <2 x i64> %i.zw, ptr %i.zx, align 1
  %i.zy = getelementptr i8, ptr %.11097, i64 176
  %i.zz = load <2 x i64>, ptr %i.zy, align 1
  %i.aaa = xor <2 x i64> %i.zz, %i.zq
  %i.aab = getelementptr i8, ptr %.11099, i64 176
  store <2 x i64> %i.aaa, ptr %i.aab, align 1
  %i.aac = getelementptr i8, ptr %.11097, i64 240
  %i.aad = load <2 x i64>, ptr %i.aac, align 1
  %i.aae = xor <2 x i64> %i.aad, %i.zr
  %i.aaf = getelementptr i8, ptr %.11099, i64 240
  store <2 x i64> %i.aae, ptr %i.aaf, align 1
  %i.aag = getelementptr i8, ptr %.11097, i64 256
  %i.aah = getelementptr i8, ptr %.11099, i64 256
  %i.aai = add nsw i64 %.11104, -256
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit1144
  %.31106 = phi i64 [ %.11104, %.loopexit1144 ], [ %i.aai, %.loopexit.loopexit ] ; 3 uses
  %.31101 = phi ptr [ %.11099, %.loopexit1144 ], [ %i.aah, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.11097, %.loopexit1144 ], [ %i.aag, %.loopexit.loopexit ] ; 2 uses
  %i.aaj = icmp samesign ugt i64 %.31106, 63
  br i1 %i.aaj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.aak = getelementptr i8, ptr %0, i64 16
  %i.aal = getelementptr i8, ptr %0, i64 32
  %i.aam = getelementptr i8, ptr %0, i64 48       ; 3 uses
  %i.aan = getelementptr i8, ptr %0, i64 52       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.41191 = phi ptr [ %.3, %.lr.ph ], [ %i.adg, %bb.j ] ; 5 uses
  %.411021190 = phi ptr [ %.31101, %.lr.ph ], [ %i.adf, %bb.j ] ; 5 uses
  %.411071189 = phi i64 [ %.31106, %.lr.ph ], [ %i.ade, %bb.j ]
  %i.aao = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.aap = load <4 x i32>, ptr %i.aak, align 1    ; 2 uses
  %i.aaq = load <4 x i32>, ptr %i.aal, align 1    ; 2 uses
  %i.aar = load <2 x i64>, ptr %i.aam, align 1    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.010901188 = phi i32 [ 0, %bb.h ], [ %i.aca, %bb.i ] ; 2 uses
  %.010921187 = phi <2 x i64> [ %i.aar, %bb.h ], [ %9, %bb.i ]
  %.010931186 = phi <4 x i32> [ %i.aaq, %bb.h ], [ %i.aby, %bb.i ]
  %.010941185 = phi <4 x i32> [ %i.aap, %bb.h ], [ %i.abz, %bb.i ] ; 2 uses
  %.010951184 = phi <4 x i32> [ %i.aao, %bb.h ], [ %i.abt, %bb.i ]
  %i.aas = add <4 x i32> %.010941185, %.010951184 ; 2 uses
  %i.aat = bitcast <4 x i32> %i.aas to <2 x i64>
  %i.aau = xor <2 x i64> %.010921187, %i.aat
  %i.aav = bitcast <2 x i64> %i.aau to <16 x i8>
  %i.aaw = shufflevector <16 x i8> %i.aav, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.aax = bitcast <16 x i8> %i.aaw to <4 x i32>
  %i.aay = add <4 x i32> %.010931186, %i.aax      ; 2 uses
  %i.aaz = xor <4 x i32> %i.aay, %.010941185      ; 2 uses
  %i.aba = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aaz, <4 x i32> %i.aaz, <4 x i32> splat (i32 12)) ; 2 uses
  %i.abb = add <4 x i32> %i.aba, %i.aas           ; 2 uses
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.abd = bitcast <4 x i32> %i.abb to <16 x i8>
  %i.abe = xor <16 x i8> %i.aaw, %i.abd
  %i.abf = shufflevector <16 x i8> %i.abe, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.abg = bitcast <16 x i8> %i.abf to <4 x i32>  ; 2 uses
  %i.abh = add <4 x i32> %i.aay, %i.abg           ; 2 uses
  %4 = shufflevector <4 x i32> %i.abg, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.abi = xor <4 x i32> %i.abh, %i.aba           ; 2 uses
  %i.abj = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.abk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abi, <4 x i32> %i.abi, <4 x i32> splat (i32 7)) ; 2 uses
  %i.abl = add <4 x i32> %i.abk, %i.abc           ; 2 uses
  %5 = xor <4 x i32> %i.abl, %4
  %i.abm = bitcast <4 x i32> %5 to <16 x i8>
  %i.abn = shufflevector <16 x i8> %i.abm, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.abo = bitcast <16 x i8> %i.abn to <4 x i32>
  %i.abp = add <4 x i32> %i.abj, %i.abo           ; 2 uses
  %i.abq = xor <4 x i32> %i.abp, %i.abk           ; 2 uses
  %i.abr = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abq, <4 x i32> %i.abq, <4 x i32> splat (i32 12)) ; 2 uses
  %i.abs = add <4 x i32> %i.abr, %i.abl           ; 2 uses
  %i.abt = shufflevector <4 x i32> %i.abs, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.abu = bitcast <4 x i32> %i.abs to <16 x i8>
  %i.abv = xor <16 x i8> %i.abn, %i.abu
  %i.abw = shufflevector <16 x i8> %i.abv, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %6 = bitcast <16 x i8> %i.abw to <4 x i32>      ; 2 uses
  %7 = add <4 x i32> %i.abp, %6                   ; 2 uses
  %8 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %9 = bitcast <4 x i32> %8 to <2 x i64>
  %i.abx = xor <4 x i32> %7, %i.abr               ; 2 uses
  %i.aby = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.abz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.abx, <4 x i32> %i.abx, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aca = add nuw nsw i32 %.010901188, 2
  %i.acb = icmp samesign ult i32 %.010901188, 18
  br i1 %i.acb, label %bb.i, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %bb.i
  %i.acc = add <4 x i32> %i.abt, %i.aao
  %i.acd = bitcast <4 x i32> %i.acc to <2 x i64>
  %i.ace = add <4 x i32> %i.abz, %i.aap
  %i.acf = bitcast <4 x i32> %i.ace to <2 x i64>
  %i.acg = add <4 x i32> %i.aby, %i.aaq
  %i.ach = bitcast <4 x i32> %i.acg to <2 x i64>
  %i.aci = bitcast <2 x i64> %i.aar to <4 x i32>
  %i.acj = add <4 x i32> %8, %i.aci
  %i.ack = bitcast <4 x i32> %i.acj to <2 x i64>
  %i.acl = load <2 x i64>, ptr %.41191, align 1
  %i.acm = xor <2 x i64> %i.acl, %i.acd
  %i.acn = getelementptr i8, ptr %.41191, i64 16
  %i.aco = load <2 x i64>, ptr %i.acn, align 1
  %i.acp = xor <2 x i64> %i.aco, %i.acf
  %i.acq = getelementptr i8, ptr %.41191, i64 32
  %i.acr = load <2 x i64>, ptr %i.acq, align 1
  %i.acs = xor <2 x i64> %i.acr, %i.ach
  %i.act = getelementptr i8, ptr %.41191, i64 48
  %i.acu = load <2 x i64>, ptr %i.act, align 1
  %i.acv = xor <2 x i64> %i.acu, %i.ack
  store <2 x i64> %i.acm, ptr %.411021190, align 1
  %i.acw = getelementptr i8, ptr %.411021190, i64 16
  store <2 x i64> %i.acp, ptr %i.acw, align 1
  %i.acx = getelementptr i8, ptr %.411021190, i64 32
  store <2 x i64> %i.acs, ptr %i.acx, align 1
  %i.acy = getelementptr i8, ptr %.411021190, i64 48
  store <2 x i64> %i.acv, ptr %i.acy, align 1
  %i.acz = load i32, ptr %i.aam, align 4
  %i.ada = load i32, ptr %i.aan, align 4
  %i.adb = add i32 %i.acz, 1                      ; 2 uses
  %i.adc = icmp eq i32 %i.adb, 0
  %i.add = zext i1 %i.adc to i32
  %spec.select = add i32 %i.ada, %i.add
  store i32 %i.adb, ptr %i.aam, align 4
  store i32 %spec.select, ptr %i.aan, align 4
  %i.ade = add nsw i64 %.411071189, -64           ; 3 uses
  %i.adf = getelementptr i8, ptr %.411021190, i64 64 ; 2 uses
  %i.adg = getelementptr i8, ptr %.41191, i64 64  ; 2 uses
  %i.adh = icmp ugt i64 %i.ade, 63
  br i1 %i.adh, label %bb.h, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  %.41107.lcssa = phi i64 [ %.31106, %.loopexit ], [ %i.ade, %bb.j ] ; 11 uses
  %.41102.lcssa = phi ptr [ %.31101, %.loopexit ], [ %i.adf, %bb.j ] ; 13 uses
  %.4.lcssa = phi ptr [ %.3, %.loopexit ], [ %i.adg, %bb.j ] ; 13 uses
  %.4.lcssa1348 = ptrtoaddr ptr %.4.lcssa to i64
  %.41102.lcssa1349 = ptrtoaddr ptr %.41102.lcssa to i64 ; 2 uses
  %.not = icmp eq i64 %.41107.lcssa, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.adi = load <4 x i32>, ptr %0, align 1        ; 2 uses
  %i.adj = getelementptr i8, ptr %0, i64 16
  %i.adk = load <4 x i32>, ptr %i.adj, align 1    ; 2 uses
  %i.adl = getelementptr i8, ptr %0, i64 32
  %i.adm = load <4 x i32>, ptr %i.adl, align 1    ; 2 uses
  %i.adn = getelementptr i8, ptr %0, i64 48
  %i.ado = load <2 x i64>, ptr %i.adn, align 1    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.01198 = phi i32 [ 0, %bb.k ], [ %i.aex, %bb.l ] ; 2 uses
  %.010861197 = phi <2 x i64> [ %i.ado, %bb.k ], [ %15, %bb.l ]
  %.010871196 = phi <4 x i32> [ %i.adm, %bb.k ], [ %i.aev, %bb.l ]
  %.010881195 = phi <4 x i32> [ %i.adk, %bb.k ], [ %i.aew, %bb.l ] ; 2 uses
  %.010891194 = phi <4 x i32> [ %i.adi, %bb.k ], [ %i.aeq, %bb.l ]
  %i.adp = add <4 x i32> %.010881195, %.010891194 ; 2 uses
  %i.adq = bitcast <4 x i32> %i.adp to <2 x i64>
  %i.adr = xor <2 x i64> %.010861197, %i.adq
  %i.ads = bitcast <2 x i64> %i.adr to <16 x i8>
  %i.adt = shufflevector <16 x i8> %i.ads, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.adu = bitcast <16 x i8> %i.adt to <4 x i32>
  %i.adv = add <4 x i32> %.010871196, %i.adu      ; 2 uses
  %i.adw = xor <4 x i32> %i.adv, %.010881195      ; 2 uses
  %i.adx = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.adw, <4 x i32> %i.adw, <4 x i32> splat (i32 12)) ; 2 uses
  %i.ady = add <4 x i32> %i.adx, %i.adp           ; 2 uses
  %i.adz = shufflevector <4 x i32> %i.ady, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.aea = bitcast <4 x i32> %i.ady to <16 x i8>
  %i.aeb = xor <16 x i8> %i.adt, %i.aea
  %i.aec = shufflevector <16 x i8> %i.aeb, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %i.aed = bitcast <16 x i8> %i.aec to <4 x i32>  ; 2 uses
  %i.aee = add <4 x i32> %i.adv, %i.aed           ; 2 uses
  %10 = shufflevector <4 x i32> %i.aed, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aef = xor <4 x i32> %i.aee, %i.adx           ; 2 uses
  %i.aeg = shufflevector <4 x i32> %i.aee, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aeh = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aef, <4 x i32> %i.aef, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aei = add <4 x i32> %i.aeh, %i.adz           ; 2 uses
  %11 = xor <4 x i32> %i.aei, %10
  %i.aej = bitcast <4 x i32> %11 to <16 x i8>
  %i.aek = shufflevector <16 x i8> %i.aej, <16 x i8> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.ael = bitcast <16 x i8> %i.aek to <4 x i32>
  %i.aem = add <4 x i32> %i.aeg, %i.ael           ; 2 uses
  %i.aen = xor <4 x i32> %i.aem, %i.aeh           ; 2 uses
  %i.aeo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aen, <4 x i32> %i.aen, <4 x i32> splat (i32 12)) ; 2 uses
  %i.aep = add <4 x i32> %i.aeo, %i.aei           ; 2 uses
  %i.aeq = shufflevector <4 x i32> %i.aep, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aer = bitcast <4 x i32> %i.aep to <16 x i8>
  %i.aes = xor <16 x i8> %i.aek, %i.aer
  %i.aet = shufflevector <16 x i8> %i.aes, <16 x i8> poison, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 7, i32 4, i32 5, i32 6, i32 11, i32 8, i32 9, i32 10, i32 15, i32 12, i32 13, i32 14>
  %12 = bitcast <16 x i8> %i.aet to <4 x i32>     ; 2 uses
  %13 = add <4 x i32> %i.aem, %12                 ; 2 uses
  %14 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %15 = bitcast <4 x i32> %14 to <2 x i64>
  %i.aeu = xor <4 x i32> %13, %i.aeo              ; 2 uses
  %i.aev = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.aew = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aeu, <4 x i32> %i.aeu, <4 x i32> splat (i32 7)) ; 2 uses
  %i.aex = add nuw nsw i32 %.01198, 2
  %i.aey = icmp samesign ult i32 %.01198, 18
  br i1 %i.aey, label %bb.l, label %iter.check, !llvm.loop !9

iter.check:                                       ; preds = %bb.l
  %i.aez = add <4 x i32> %i.aeq, %i.adi
  %i.afa = add <4 x i32> %i.aew, %i.adk
  %i.afb = add <4 x i32> %i.aev, %i.adm
  %i.afc = bitcast <2 x i64> %i.ado to <4 x i32>
  %i.afd = add <4 x i32> %14, %i.afc
  store <4 x i32> %i.aez, ptr %i.a, align 16
  %i.afe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.afa, ptr %i.afe, align 16
  %i.aff = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> %i.afb, ptr %i.aff, align 16
  %i.afg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.afd, ptr %i.afg, align 16
  %min.iters.check = icmp samesign ult i64 %.41107.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.afh = sub i64 %.4.lcssa1348, %.41102.lcssa1349
  %diff.check = icmp ugt i64 %i.afh, -16
  %i.afi = sub i64 %i.b, %.41102.lcssa1349
  %diff.check1350 = icmp ugt i64 %i.afi, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1350
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1351 = icmp samesign ult i64 %.41107.lcssa, 16
  br i1 %min.iters.check1351, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.afj = and i64 %.41107.lcssa, 12
  %n.vec = and i64 %.41107.lcssa, 48              ; 5 uses
  %i.afk = getelementptr i8, ptr %.4.lcssa, i64 8
  %wide.load = load <8 x i8>, ptr %.4.lcssa, align 1
  %wide.load1352 = load <8 x i8>, ptr %i.afk, align 1
  %i.afl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load1353 = load <8 x i8>, ptr %i.a, align 16
  %wide.load1354 = load <8 x i8>, ptr %i.afl, align 8
  %i.afm = xor <8 x i8> %wide.load1353, %wide.load
  %i.afn = xor <8 x i8> %wide.load1354, %wide.load1352
  %i.afo = getelementptr i8, ptr %.41102.lcssa, i64 8
  store <8 x i8> %i.afm, ptr %.41102.lcssa, align 1
  store <8 x i8> %i.afn, ptr %i.afo, align 1
  %i.afp = icmp eq i64 %n.vec, 16
  br i1 %i.afp, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.afq = getelementptr i8, ptr %.4.lcssa, i64 16
  %i.afr = getelementptr i8, ptr %.4.lcssa, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.afq, align 1
  %wide.load1352.1 = load <8 x i8>, ptr %i.afr, align 1
  %i.afs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aft = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load1353.1 = load <8 x i8>, ptr %i.afs, align 16
  %wide.load1354.1 = load <8 x i8>, ptr %i.aft, align 8
  %i.afu = xor <8 x i8> %wide.load1353.1, %wide.load.1
  %i.afv = xor <8 x i8> %wide.load1354.1, %wide.load1352.1
  %i.afw = getelementptr i8, ptr %.41102.lcssa, i64 16
  %i.afx = getelementptr i8, ptr %.41102.lcssa, i64 24
  store <8 x i8> %i.afu, ptr %i.afw, align 1
  store <8 x i8> %i.afv, ptr %i.afx, align 1
  %i.afy = icmp eq i64 %n.vec, 32
  br i1 %i.afy, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.afz = getelementptr i8, ptr %.4.lcssa, i64 32
  %i.aga = getelementptr i8, ptr %.4.lcssa, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.afz, align 1
  %wide.load1352.2 = load <8 x i8>, ptr %i.aga, align 1
  %i.agb = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.agc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load1353.2 = load <8 x i8>, ptr %i.agb, align 16
  %wide.load1354.2 = load <8 x i8>, ptr %i.agc, align 8
  %i.agd = xor <8 x i8> %wide.load1353.2, %wide.load.2
  %i.age = xor <8 x i8> %wide.load1354.2, %wide.load1352.2
  %i.agf = getelementptr i8, ptr %.41102.lcssa, i64 32
  %i.agg = getelementptr i8, ptr %.41102.lcssa, i64 40
  store <8 x i8> %i.agd, ptr %i.agf, align 1
  store <8 x i8> %i.age, ptr %i.agg, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.41107.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit1361, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.afj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1355 = and i64 %.41107.lcssa, 60          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1356 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1359, %vec.epilog.vector.body ] ; 4 uses
  %i.agh = getelementptr i8, ptr %.4.lcssa, i64 %index1356
  %wide.load1357 = load <4 x i8>, ptr %i.agh, align 1
  %i.agi = getelementptr i8, ptr %i.a, i64 %index1356
  %wide.load1358 = load <4 x i8>, ptr %i.agi, align 4
  %i.agj = xor <4 x i8> %wide.load1358, %wide.load1357
  %i.agk = getelementptr i8, ptr %.41102.lcssa, i64 %index1356
  store <4 x i8> %i.agj, ptr %i.agk, align 1
  %index.next1359 = add nuw i64 %index1356, 4     ; 2 uses
  %i.agl = icmp eq i64 %index.next1359, %n.vec1355
  br i1 %i.agl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1360 = icmp eq i64 %.41107.lcssa, %n.vec1355
  br i1 %cmp.n1360, label %.loopexit1361, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1355, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.41107.lcssa, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.agm = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.prol
  %i.agn = load i8, ptr %i.agm, align 1
  %i.ago = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  %i.agp = load i8, ptr %i.ago, align 1
  %i.agq = xor i8 %i.agp, %i.agn
  %i.agr = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.prol
  store i8 %i.agq, ptr %i.agr, align 1
  %indvars.iv.next.prol = add nuw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ags = sub nsw i64 %indvars.iv.ph, %.41107.lcssa
  %i.agt = icmp ugt i64 %i.ags, -4
  br i1 %i.agt, label %.loopexit1361, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.agu = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv
  %i.agv = load i8, ptr %i.agu, align 1
  %i.agw = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = xor i8 %i.agx, %i.agv
  %i.agz = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv
  store i8 %i.agy, ptr %i.agz, align 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.aha = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next
  %i.ahb = load i8, ptr %i.aha, align 1
  %i.ahc = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  %i.ahd = load i8, ptr %i.ahc, align 1
  %i.ahe = xor i8 %i.ahd, %i.ahb
  %i.ahf = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next
  store i8 %i.ahe, ptr %i.ahf, align 1
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 3 uses
  %i.ahg = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.1
  %i.ahh = load i8, ptr %i.ahg, align 1
  %i.ahi = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.ahj = load i8, ptr %i.ahi, align 1
  %i.ahk = xor i8 %i.ahj, %i.ahh
  %i.ahl = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.1
  store i8 %i.ahk, ptr %i.ahl, align 1
  %indvars.iv.next.2 = add nuw i64 %indvars.iv, 3 ; 3 uses
  %i.ahm = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.2
  %i.ahn = load i8, ptr %i.ahm, align 1
  %i.aho = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.ahp = load i8, ptr %i.aho, align 1
  %i.ahq = xor i8 %i.ahp, %i.ahn
  %i.ahr = getelementptr i8, ptr %.41102.lcssa, i64 %indvars.iv.next.2
  store i8 %i.ahq, ptr %i.ahr, align 1
  %indvars.iv.next.3 = add nuw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.41107.lcssa
  br i1 %exitcond.not.3, label %.loopexit1361, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit1361:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit1361
  ret void
}

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind ssp uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
end_hunk_0
