Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/salsa20_xmm6int-avx2?download=true
inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@salsa20_encrypt_bytes:bb.a
  %i.wj = add <4 x i32> %i.wi, %i.vy              ; 2 uses
  %i.wk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.wj, <4 x i32> %i.wj, <4 x i32> splat (i32 9))
  %i.wl = bitcast <4 x i32> %i.wk to <2 x i64>
  %i.wm = xor <2 x i64> %i.ru, %i.wl              ; 2 uses
  %i.wn = bitcast <2 x i64> %i.wh to <4 x i32>    ; 3 uses
  %i.wo = add <4 x i32> %i.wn, %i.wd              ; 2 uses
  %i.wp = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.wo, <4 x i32> %i.wo, <4 x i32> splat (i32 13))
  %i.wq = bitcast <4 x i32> %i.wp to <2 x i64>
  %i.wr = xor <2 x i64> %i.rk, %i.wq              ; 2 uses
  %i.ws = bitcast <2 x i64> %i.wm to <4 x i32>    ; 3 uses
  %i.wt = add <4 x i32> %i.ws, %i.wi              ; 2 uses
  %i.wu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.wt, <4 x i32> %i.wt, <4 x i32> splat (i32 13))
  %i.wv = bitcast <4 x i32> %i.wu to <2 x i64>
  %i.ww = xor <2 x i64> %i.su, %i.wv              ; 2 uses
  %i.wx = bitcast <2 x i64> %i.wr to <4 x i32>    ; 2 uses
  %i.wy = add <4 x i32> %i.wx, %i.wn              ; 2 uses
  %i.wz = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.wy, <4 x i32> %i.wy, <4 x i32> splat (i32 18))
  %i.xa = bitcast <4 x i32> %i.wz to <2 x i64>
  %i.xb = xor <2 x i64> %i.tz, %i.xa              ; 2 uses
  %i.xc = bitcast <2 x i64> %i.ww to <4 x i32>    ; 2 uses
  %i.xd = add <4 x i32> %i.xc, %i.ws              ; 2 uses
  %i.xe = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.xd, <4 x i32> %i.xd, <4 x i32> splat (i32 18))
  %i.xf = bitcast <4 x i32> %i.xe to <2 x i64>
  %i.xg = xor <2 x i64> %i.uj, %i.xf              ; 2 uses
  %i.xh = add nuw nsw i32 %.017441801, 2
  %i.xi = icmp samesign ult i32 %.017441801, 18
  br i1 %i.xi, label %bb.g, label %.loopexit.loopexit, !llvm.loop !6

.loopexit.loopexit:                               ; preds = %bb.g
  %i.xj = bitcast <2 x i64> %i.vn to <4 x i32>
  %i.xk = add <4 x i32> %i.oz, %i.xj              ; 2 uses
  %i.xl = add <4 x i32> %i.pf, %i.up              ; 2 uses
  %i.xm = add <4 x i32> %i.pk, %i.uz              ; 2 uses
  %i.xn = add <4 x i32> %i.pp, %i.vj              ; 2 uses
  %i.xo = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xp = bitcast <4 x i32> %i.xo to <2 x i64>    ; 2 uses
  %i.xq = shufflevector <4 x i32> %i.xm, <4 x i32> %i.xn, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.xr = bitcast <4 x i32> %i.xq to <2 x i64>    ; 2 uses
  %i.xs = shufflevector <4 x i32> %i.xk, <4 x i32> %i.xl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.xt = bitcast <4 x i32> %i.xs to <2 x i64>    ; 2 uses
  %i.xu = shufflevector <4 x i32> %i.xm, <4 x i32> %i.xn, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.xv = bitcast <4 x i32> %i.xu to <2 x i64>    ; 2 uses
  %i.xw = shufflevector <2 x i64> %i.xp, <2 x i64> %i.xr, <2 x i32> <i32 0, i32 2>
  %i.xx = shufflevector <2 x i64> %i.xp, <2 x i64> %i.xr, <2 x i32> <i32 1, i32 3>
  %i.xy = shufflevector <2 x i64> %i.xt, <2 x i64> %i.xv, <2 x i32> <i32 0, i32 2>
  %i.xz = shufflevector <2 x i64> %i.xt, <2 x i64> %i.xv, <2 x i32> <i32 1, i32 3>
  %i.ya = load <2 x i64>, ptr %.1, align 1
  %i.yb = xor <2 x i64> %i.ya, %i.xw
  store <2 x i64> %i.yb, ptr %.11705, align 1
  %i.yc = getelementptr i8, ptr %.1, i64 64
  %i.yd = load <2 x i64>, ptr %i.yc, align 1
  %i.ye = xor <2 x i64> %i.yd, %i.xx
  %i.yf = getelementptr i8, ptr %.11705, i64 64
  store <2 x i64> %i.ye, ptr %i.yf, align 1
  %i.yg = getelementptr i8, ptr %.1, i64 128
  %i.yh = load <2 x i64>, ptr %i.yg, align 1
  %i.yi = xor <2 x i64> %i.yh, %i.xy
  %i.yj = getelementptr i8, ptr %.11705, i64 128
  store <2 x i64> %i.yi, ptr %i.yj, align 1
  %i.yk = getelementptr i8, ptr %.1, i64 192
  %i.yl = load <2 x i64>, ptr %i.yk, align 1
  %i.ym = xor <2 x i64> %i.yl, %i.xz
  %i.yn = getelementptr i8, ptr %.11705, i64 192
  store <2 x i64> %i.ym, ptr %i.yn, align 1
  %i.yo = getelementptr i8, ptr %.1, i64 16
  %i.yp = getelementptr i8, ptr %.11705, i64 16
  %i.yq = add <4 x i32> %i.pn, %i.vo              ; 2 uses
  %i.yr = bitcast <2 x i64> %i.vs to <4 x i32>
  %i.ys = add <4 x i32> %i.ow, %i.yr              ; 2 uses
  %i.yt = add <4 x i32> %i.pc, %i.uu              ; 2 uses
  %i.yu = add <4 x i32> %i.pi, %i.ve              ; 2 uses
  %i.yv = shufflevector <4 x i32> %i.yq, <4 x i32> %i.ys, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yw = bitcast <4 x i32> %i.yv to <2 x i64>    ; 2 uses
  %i.yx = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.yy = bitcast <4 x i32> %i.yx to <2 x i64>    ; 2 uses
  %i.yz = shufflevector <4 x i32> %i.yq, <4 x i32> %i.ys, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.za = bitcast <4 x i32> %i.yz to <2 x i64>    ; 2 uses
  %i.zb = shufflevector <4 x i32> %i.yt, <4 x i32> %i.yu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.zc = bitcast <4 x i32> %i.zb to <2 x i64>    ; 2 uses
  %i.zd = shufflevector <2 x i64> %i.yw, <2 x i64> %i.yy, <2 x i32> <i32 0, i32 2>
  %i.ze = shufflevector <2 x i64> %i.yw, <2 x i64> %i.yy, <2 x i32> <i32 1, i32 3>
  %i.zf = shufflevector <2 x i64> %i.za, <2 x i64> %i.zc, <2 x i32> <i32 0, i32 2>
  %i.zg = shufflevector <2 x i64> %i.za, <2 x i64> %i.zc, <2 x i32> <i32 1, i32 3>
  %i.zh = load <2 x i64>, ptr %i.yo, align 1
  %i.zi = xor <2 x i64> %i.zh, %i.zd
  store <2 x i64> %i.zi, ptr %i.yp, align 1
  %i.zj = getelementptr i8, ptr %.1, i64 80
  %i.zk = load <2 x i64>, ptr %i.zj, align 1
  %i.zl = xor <2 x i64> %i.zk, %i.ze
  %i.zm = getelementptr i8, ptr %.11705, i64 80
  store <2 x i64> %i.zl, ptr %i.zm, align 1
  %i.zn = getelementptr i8, ptr %.1, i64 144
  %i.zo = load <2 x i64>, ptr %i.zn, align 1
  %i.zp = xor <2 x i64> %i.zo, %i.zf
  %i.zq = getelementptr i8, ptr %.11705, i64 144
  store <2 x i64> %i.zp, ptr %i.zq, align 1
  %i.zr = getelementptr i8, ptr %.1, i64 208
  %i.zs = load <2 x i64>, ptr %i.zr, align 1
  %i.zt = xor <2 x i64> %i.zs, %i.zg
  %i.zu = getelementptr i8, ptr %.11705, i64 208
  store <2 x i64> %i.zt, ptr %i.zu, align 1
  %i.zv = getelementptr i8, ptr %.1, i64 32
  %i.zw = getelementptr i8, ptr %.11705, i64 32
  %i.zx = add <4 x i32> %i.qr, %i.wn              ; 2 uses
  %i.zy = add <4 x i32> %i.qt, %i.wx              ; 2 uses
  %i.zz = bitcast <2 x i64> %i.xb to <4 x i32>
  %i.aaa = add <4 x i32> %i.ox, %i.zz             ; 2 uses
  %i.aab = add <4 x i32> %i.pd, %i.wd             ; 2 uses
  %i.aac = shufflevector <4 x i32> %i.zx, <4 x i32> %i.zy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aad = bitcast <4 x i32> %i.aac to <2 x i64>  ; 2 uses
  %i.aae = shufflevector <4 x i32> %i.aaa, <4 x i32> %i.aab, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aaf = bitcast <4 x i32> %i.aae to <2 x i64>  ; 2 uses
  %i.aag = shufflevector <4 x i32> %i.zx, <4 x i32> %i.zy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aah = bitcast <4 x i32> %i.aag to <2 x i64>  ; 2 uses
  %i.aai = shufflevector <4 x i32> %i.aaa, <4 x i32> %i.aab, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aaj = bitcast <4 x i32> %i.aai to <2 x i64>  ; 2 uses
  %i.aak = shufflevector <2 x i64> %i.aad, <2 x i64> %i.aaf, <2 x i32> <i32 0, i32 2>
  %i.aal = shufflevector <2 x i64> %i.aad, <2 x i64> %i.aaf, <2 x i32> <i32 1, i32 3>
  %i.aam = shufflevector <2 x i64> %i.aah, <2 x i64> %i.aaj, <2 x i32> <i32 0, i32 2>
  %i.aan = shufflevector <2 x i64> %i.aah, <2 x i64> %i.aaj, <2 x i32> <i32 1, i32 3>
  %i.aao = load <2 x i64>, ptr %i.zv, align 1
  %i.aap = xor <2 x i64> %i.aao, %i.aak
  store <2 x i64> %i.aap, ptr %i.zw, align 1
  %i.aaq = getelementptr i8, ptr %.1, i64 96
  %i.aar = load <2 x i64>, ptr %i.aaq, align 1
  %i.aas = xor <2 x i64> %i.aar, %i.aal
  %i.aat = getelementptr i8, ptr %.11705, i64 96
  store <2 x i64> %i.aas, ptr %i.aat, align 1
  %i.aau = getelementptr i8, ptr %.1, i64 160
  %i.aav = load <2 x i64>, ptr %i.aau, align 1
  %i.aaw = xor <2 x i64> %i.aav, %i.aam
  %i.aax = getelementptr i8, ptr %.11705, i64 160
  store <2 x i64> %i.aaw, ptr %i.aax, align 1
  %i.aay = getelementptr i8, ptr %.1, i64 224
  %i.aaz = load <2 x i64>, ptr %i.aay, align 1
  %i.aba = xor <2 x i64> %i.aaz, %i.aan
  %i.abb = getelementptr i8, ptr %.11705, i64 224
  store <2 x i64> %i.aba, ptr %i.abb, align 1
  %i.abc = getelementptr i8, ptr %.1, i64 48
  %i.abd = getelementptr i8, ptr %.11705, i64 48
  %i.abe = add <4 x i32> %i.pe, %i.wi             ; 2 uses
  %i.abf = add <4 x i32> %i.pj, %i.ws             ; 2 uses
  %i.abg = add <4 x i32> %i.po, %i.xc             ; 2 uses
  %i.abh = bitcast <2 x i64> %i.xg to <4 x i32>
  %i.abi = add <4 x i32> %i.oy, %i.abh            ; 2 uses
  %i.abj = shufflevector <4 x i32> %i.abe, <4 x i32> %i.abf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.abk = bitcast <4 x i32> %i.abj to <2 x i64>  ; 2 uses
  %i.abl = shufflevector <4 x i32> %i.abg, <4 x i32> %i.abi, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.abm = bitcast <4 x i32> %i.abl to <2 x i64>  ; 2 uses
  %i.abn = shufflevector <4 x i32> %i.abe, <4 x i32> %i.abf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.abo = bitcast <4 x i32> %i.abn to <2 x i64>  ; 2 uses
  %i.abp = shufflevector <4 x i32> %i.abg, <4 x i32> %i.abi, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.abq = bitcast <4 x i32> %i.abp to <2 x i64>  ; 2 uses
  %i.abr = shufflevector <2 x i64> %i.abk, <2 x i64> %i.abm, <2 x i32> <i32 0, i32 2>
  %i.abs = shufflevector <2 x i64> %i.abk, <2 x i64> %i.abm, <2 x i32> <i32 1, i32 3>
  %i.abt = shufflevector <2 x i64> %i.abo, <2 x i64> %i.abq, <2 x i32> <i32 0, i32 2>
  %i.abu = shufflevector <2 x i64> %i.abo, <2 x i64> %i.abq, <2 x i32> <i32 1, i32 3>
  %i.abv = load <2 x i64>, ptr %i.abc, align 1
  %i.abw = xor <2 x i64> %i.abv, %i.abr
  store <2 x i64> %i.abw, ptr %i.abd, align 1
  %i.abx = getelementptr i8, ptr %.1, i64 112
  %i.aby = load <2 x i64>, ptr %i.abx, align 1
  %i.abz = xor <2 x i64> %i.aby, %i.abs
  %i.aca = getelementptr i8, ptr %.11705, i64 112
  store <2 x i64> %i.abz, ptr %i.aca, align 1
  %i.acb = getelementptr i8, ptr %.1, i64 176
  %i.acc = load <2 x i64>, ptr %i.acb, align 1
  %i.acd = xor <2 x i64> %i.acc, %i.abt
  %i.ace = getelementptr i8, ptr %.11705, i64 176
  store <2 x i64> %i.acd, ptr %i.ace, align 1
  %i.acf = getelementptr i8, ptr %.1, i64 240
  %i.acg = load <2 x i64>, ptr %i.acf, align 1
  %i.ach = xor <2 x i64> %i.acg, %i.abu
  %i.aci = getelementptr i8, ptr %.11705, i64 240
  store <2 x i64> %i.ach, ptr %i.aci, align 1
  %i.acj = getelementptr i8, ptr %.1, i64 256
  %i.ack = getelementptr i8, ptr %.11705, i64 256
  %i.acl = add nsw i64 %.11710, -256
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit1764
  %.31712 = phi i64 [ %.11710, %.loopexit1764 ], [ %i.acl, %.loopexit.loopexit ] ; 3 uses
  %.31707 = phi ptr [ %.11705, %.loopexit1764 ], [ %i.ack, %.loopexit.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.1, %.loopexit1764 ], [ %i.acj, %.loopexit.loopexit ] ; 2 uses
  %i.acm = icmp samesign ugt i64 %.31712, 63
  br i1 %i.acm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.acn = getelementptr i8, ptr %0, i64 16
  %i.aco = getelementptr i8, ptr %0, i64 32       ; 3 uses
  %i.acp = getelementptr i8, ptr %0, i64 48
  %i.acq = getelementptr i8, ptr %0, i64 52       ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.41812 = phi ptr [ %.3, %.lr.ph ], [ %i.aiz, %bb.j ] ; 17 uses
  %.417081811 = phi ptr [ %.31707, %.lr.ph ], [ %i.aiy, %bb.j ] ; 17 uses
  %.417131810 = phi i64 [ %.31712, %.lr.ph ], [ %i.aja, %bb.j ]
  %i.acr = load <2 x i64>, ptr %0, align 1        ; 2 uses
  %i.acs = load <4 x i32>, ptr %i.acn, align 1    ; 2 uses
  %4 = load <4 x i32>, ptr %i.aco, align 1        ; 2 uses
  %i.act = load <4 x i32>, ptr %i.acp, align 1    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %.017321809 = phi i32 [ 0, %bb.h ], [ %i.afl, %bb.i ] ; 2 uses
  %.017341808 = phi <4 x i32> [ %i.acs, %bb.h ], [ %i.afc, %bb.i ] ; 2 uses
  %.017351807 = phi <4 x i32> [ %i.act, %bb.h ], [ %i.afh, %bb.i ]
  %.017361806 = phi <4 x i32> [ %4, %bb.h ], [ %15, %bb.i ]
  %.017381805 = phi <2 x i64> [ %i.acr, %bb.h ], [ %i.afk, %bb.i ] ; 2 uses
  %i.acu = bitcast <2 x i64> %.017381805 to <4 x i32> ; 2 uses
  %i.acv = add <4 x i32> %.017341808, %i.acu      ; 2 uses
  %i.acw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.acv, <4 x i32> %i.acv, <4 x i32> splat (i32 7))
  %i.acx = xor <4 x i32> %i.acw, %.017351807      ; 3 uses
  %i.acy = add <4 x i32> %i.acx, %i.acu           ; 2 uses
  %i.acz = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ada = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.acy, <4 x i32> %i.acy, <4 x i32> splat (i32 9))
  %5 = xor <4 x i32> %i.ada, %.017361806          ; 3 uses
  %i.adb = add <4 x i32> %5, %i.acx               ; 2 uses
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.adc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.adb, <4 x i32> %i.adb, <4 x i32> splat (i32 13))
  %i.add = xor <4 x i32> %i.adc, %.017341808      ; 2 uses
  %i.ade = add <4 x i32> %i.add, %5               ; 2 uses
  %i.adf = shufflevector <4 x i32> %i.add, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.adg = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ade, <4 x i32> %i.ade, <4 x i32> splat (i32 18))
  %i.adh = bitcast <4 x i32> %i.adg to <2 x i64>
  %i.adi = xor <2 x i64> %.017381805, %i.adh      ; 2 uses
  %i.adj = bitcast <2 x i64> %i.adi to <4 x i32>  ; 2 uses
  %i.adk = add <4 x i32> %i.acz, %i.adj           ; 2 uses
  %i.adl = shl <4 x i32> %i.adk, splat (i32 7)
  %i.adm = lshr <4 x i32> %i.adk, splat (i32 25)
  %i.adn = xor <4 x i32> %i.adl, %i.adf
  %i.ado = xor <4 x i32> %i.adn, %i.adm           ; 3 uses
  %i.adp = add <4 x i32> %i.ado, %i.adj           ; 2 uses
  %i.adq = shl <4 x i32> %i.adp, splat (i32 9)
  %i.adr = lshr <4 x i32> %i.adp, splat (i32 23)
  %7 = xor <4 x i32> %i.adq, %6
  %i.ads = shufflevector <4 x i32> %i.ado, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %8 = xor <4 x i32> %7, %i.adr                   ; 3 uses
  %i.adt = add <4 x i32> %8, %i.ado               ; 2 uses
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.adu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.adt, <4 x i32> %i.adt, <4 x i32> splat (i32 13))
  %i.adv = xor <4 x i32> %i.adu, %i.acz           ; 2 uses
  %i.adw = add <4 x i32> %i.adv, %8               ; 2 uses
  %i.adx = shufflevector <4 x i32> %i.adv, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ady = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.adw, <4 x i32> %i.adw, <4 x i32> splat (i32 18))
  %i.adz = bitcast <4 x i32> %i.ady to <2 x i64>
  %i.aea = xor <2 x i64> %i.adi, %i.adz           ; 2 uses
  %i.aeb = bitcast <2 x i64> %i.aea to <4 x i32>  ; 2 uses
  %i.aec = add <4 x i32> %i.ads, %i.aeb           ; 2 uses
  %i.aed = shl <4 x i32> %i.aec, splat (i32 7)
  %i.aee = lshr <4 x i32> %i.aec, splat (i32 25)
  %i.aef = xor <4 x i32> %i.aed, %i.adx
  %i.aeg = xor <4 x i32> %i.aef, %i.aee           ; 3 uses
  %i.aeh = add <4 x i32> %i.aeg, %i.aeb           ; 2 uses
  %i.aei = shl <4 x i32> %i.aeh, splat (i32 9)
  %i.aej = lshr <4 x i32> %i.aeh, splat (i32 23)
  %10 = xor <4 x i32> %i.aei, %9
  %i.aek = shufflevector <4 x i32> %i.aeg, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %11 = xor <4 x i32> %10, %i.aej                 ; 3 uses
  %i.ael = add <4 x i32> %11, %i.aeg              ; 2 uses
  %12 = shufflevector <4 x i32> %11, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aem = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ael, <4 x i32> %i.ael, <4 x i32> splat (i32 13))
  %i.aen = xor <4 x i32> %i.aem, %i.ads           ; 2 uses
  %i.aeo = add <4 x i32> %i.aen, %11              ; 2 uses
  %i.aep = shufflevector <4 x i32> %i.aen, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aeq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aeo, <4 x i32> %i.aeo, <4 x i32> splat (i32 18))
  %i.aer = bitcast <4 x i32> %i.aeq to <2 x i64>
  %i.aes = xor <2 x i64> %i.aea, %i.aer           ; 2 uses
  %i.aet = bitcast <2 x i64> %i.aes to <4 x i32>  ; 2 uses
  %i.aeu = add <4 x i32> %i.aek, %i.aet           ; 2 uses
  %i.aev = shl <4 x i32> %i.aeu, splat (i32 7)
  %i.aew = lshr <4 x i32> %i.aeu, splat (i32 25)
  %i.aex = xor <4 x i32> %i.aev, %i.aep
  %i.aey = xor <4 x i32> %i.aex, %i.aew           ; 3 uses
  %i.aez = add <4 x i32> %i.aey, %i.aet           ; 2 uses
  %i.afa = shl <4 x i32> %i.aez, splat (i32 9)
  %i.afb = lshr <4 x i32> %i.aez, splat (i32 23)
  %13 = xor <4 x i32> %i.afa, %12
  %i.afc = shufflevector <4 x i32> %i.aey, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %14 = xor <4 x i32> %13, %i.afb                 ; 3 uses
  %i.afd = add <4 x i32> %14, %i.aey              ; 2 uses
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.afe = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.afd, <4 x i32> %i.afd, <4 x i32> splat (i32 13))
  %i.aff = xor <4 x i32> %i.afe, %i.aek           ; 2 uses
  %i.afg = add <4 x i32> %i.aff, %14              ; 2 uses
  %i.afh = shufflevector <4 x i32> %i.aff, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.afi = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.afg, <4 x i32> %i.afg, <4 x i32> splat (i32 18))
  %i.afj = bitcast <4 x i32> %i.afi to <2 x i64>
  %i.afk = xor <2 x i64> %i.aes, %i.afj           ; 2 uses
  %i.afl = add nuw nsw i32 %.017321809, 4
  %i.afm = icmp samesign ult i32 %.017321809, 16
  br i1 %i.afm, label %bb.i, label %bb.j, !llvm.loop !7

bb.j:                                             ; preds = %bb.i
  %i.afn = bitcast <2 x i64> %i.afk to <4 x i32>
  %i.afo = bitcast <2 x i64> %i.acr to <4 x i32>
  %i.afp = add <4 x i32> %i.afn, %i.afo           ; 4 uses
  %i.afq = add <4 x i32> %i.afc, %i.acs           ; 4 uses
  %i.afr = add <4 x i32> %15, %4                  ; 4 uses
  %i.afs = add <4 x i32> %i.afh, %i.act           ; 4 uses
  %i.aft = extractelement <4 x i32> %i.afp, i64 0
  %i.afu = extractelement <4 x i32> %i.afq, i64 0
  %i.afv = extractelement <4 x i32> %i.afr, i64 0
  %i.afw = extractelement <4 x i32> %i.afs, i64 0
  %i.afx = load i32, ptr %.41812, align 4
  %i.afy = xor i32 %i.afx, %i.aft
  %i.afz = getelementptr i8, ptr %.41812, i64 48
  %i.aga = load i32, ptr %i.afz, align 4
  %i.agb = xor i32 %i.aga, %i.afu
  %i.agc = getelementptr i8, ptr %.41812, i64 32
  %i.agd = load i32, ptr %i.agc, align 4
  %i.age = xor i32 %i.agd, %i.afv
  %i.agf = getelementptr i8, ptr %.41812, i64 16
  %i.agg = load i32, ptr %i.agf, align 4
  %i.agh = xor i32 %i.agg, %i.afw
  store i32 %i.afy, ptr %.417081811, align 4
  %i.agi = getelementptr i8, ptr %.417081811, i64 48
  store i32 %i.agb, ptr %i.agi, align 4
  %i.agj = getelementptr i8, ptr %.417081811, i64 32
  store i32 %i.age, ptr %i.agj, align 4
  %i.agk = getelementptr i8, ptr %.417081811, i64 16
  store i32 %i.agh, ptr %i.agk, align 4
  %i.agl = extractelement <4 x i32> %i.afp, i64 1
  %i.agm = extractelement <4 x i32> %i.afq, i64 1
  %i.agn = extractelement <4 x i32> %i.afr, i64 1
  %i.ago = extractelement <4 x i32> %i.afs, i64 1
  %i.agp = getelementptr i8, ptr %.41812, i64 20
  %i.agq = load i32, ptr %i.agp, align 4
  %i.agr = xor i32 %i.agq, %i.agl
  %i.ags = getelementptr i8, ptr %.41812, i64 4
  %i.agt = load i32, ptr %i.ags, align 4
  %i.agu = xor i32 %i.agt, %i.agm
  %i.agv = getelementptr i8, ptr %.41812, i64 52
  %i.agw = load i32, ptr %i.agv, align 4
  %i.agx = xor i32 %i.agw, %i.agn
  %i.agy = getelementptr i8, ptr %.41812, i64 36
  %i.agz = load i32, ptr %i.agy, align 4
  %i.aha = xor i32 %i.agz, %i.ago
  %i.ahb = getelementptr i8, ptr %.417081811, i64 20
  store i32 %i.agr, ptr %i.ahb, align 4
  %i.ahc = getelementptr i8, ptr %.417081811, i64 4
  store i32 %i.agu, ptr %i.ahc, align 4
  %i.ahd = getelementptr i8, ptr %.417081811, i64 52
  store i32 %i.agx, ptr %i.ahd, align 4
  %i.ahe = getelementptr i8, ptr %.417081811, i64 36
  store i32 %i.aha, ptr %i.ahe, align 4
  %i.ahf = extractelement <4 x i32> %i.afp, i64 2
  %i.ahg = extractelement <4 x i32> %i.afq, i64 2
  %i.ahh = extractelement <4 x i32> %i.afr, i64 2
  %i.ahi = extractelement <4 x i32> %i.afs, i64 2
  %i.ahj = getelementptr i8, ptr %.41812, i64 40
  %i.ahk = load i32, ptr %i.ahj, align 4
  %i.ahl = xor i32 %i.ahk, %i.ahf
  %i.ahm = getelementptr i8, ptr %.41812, i64 24
  %i.ahn = load i32, ptr %i.ahm, align 4
  %i.aho = xor i32 %i.ahn, %i.ahg
  %i.ahp = getelementptr i8, ptr %.41812, i64 8
  %i.ahq = load i32, ptr %i.ahp, align 4
  %i.ahr = xor i32 %i.ahq, %i.ahh
  %i.ahs = getelementptr i8, ptr %.41812, i64 56
  %i.aht = load i32, ptr %i.ahs, align 4
  %i.ahu = xor i32 %i.aht, %i.ahi
  %i.ahv = getelementptr i8, ptr %.417081811, i64 40
  store i32 %i.ahl, ptr %i.ahv, align 4
  %i.ahw = getelementptr i8, ptr %.417081811, i64 24
  store i32 %i.aho, ptr %i.ahw, align 4
  %i.ahx = getelementptr i8, ptr %.417081811, i64 8
  store i32 %i.ahr, ptr %i.ahx, align 4
  %i.ahy = getelementptr i8, ptr %.417081811, i64 56
  store i32 %i.ahu, ptr %i.ahy, align 4
  %i.ahz = extractelement <4 x i32> %i.afp, i64 3
  %i.aia = extractelement <4 x i32> %i.afq, i64 3
  %i.aib = extractelement <4 x i32> %i.afr, i64 3
  %i.aic = extractelement <4 x i32> %i.afs, i64 3
  %i.aid = getelementptr i8, ptr %.41812, i64 60
  %i.aie = load i32, ptr %i.aid, align 4
  %i.aif = xor i32 %i.aie, %i.ahz
  %i.aig = getelementptr i8, ptr %.41812, i64 44
  %i.aih = load i32, ptr %i.aig, align 4
  %i.aii = xor i32 %i.aih, %i.aia
  %i.aij = getelementptr i8, ptr %.41812, i64 28
  %i.aik = load i32, ptr %i.aij, align 4
  %i.ail = xor i32 %i.aik, %i.aib
  %i.aim = getelementptr i8, ptr %.41812, i64 12
  %i.ain = load i32, ptr %i.aim, align 4
  %i.aio = xor i32 %i.ain, %i.aic
  %i.aip = getelementptr i8, ptr %.417081811, i64 60
  store i32 %i.aif, ptr %i.aip, align 4
  %i.aiq = getelementptr i8, ptr %.417081811, i64 44
  store i32 %i.aii, ptr %i.aiq, align 4
  %i.air = getelementptr i8, ptr %.417081811, i64 28
  store i32 %i.ail, ptr %i.air, align 4
  %i.ais = getelementptr i8, ptr %.417081811, i64 12
  store i32 %i.aio, ptr %i.ais, align 4
  %i.ait = load i32, ptr %i.aco, align 4
  %i.aiu = load i32, ptr %i.acq, align 4
  %i.aiv = add i32 %i.ait, 1                      ; 2 uses
  %i.aiw = icmp eq i32 %i.aiv, 0
  %i.aix = zext i1 %i.aiw to i32
  %spec.select = add i32 %i.aiu, %i.aix
  store i32 %i.aiv, ptr %i.aco, align 4
  store i32 %spec.select, ptr %i.acq, align 4
  %i.aiy = getelementptr i8, ptr %.417081811, i64 64 ; 2 uses
  %i.aiz = getelementptr i8, ptr %.41812, i64 64  ; 2 uses
  %i.aja = add nsw i64 %.417131810, -64           ; 3 uses
  %i.ajb = icmp ugt i64 %i.aja, 63
  br i1 %i.ajb, label %bb.h, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  %.41713.lcssa = phi i64 [ %.31712, %.loopexit ], [ %i.aja, %bb.j ] ; 11 uses
  %.41708.lcssa = phi ptr [ %.31707, %.loopexit ], [ %i.aiy, %bb.j ] ; 13 uses
  %.4.lcssa = phi ptr [ %.3, %.loopexit ], [ %i.aiz, %bb.j ] ; 13 uses
  %.4.lcssa1970 = ptrtoaddr ptr %.4.lcssa to i64
  %.41708.lcssa1971 = ptrtoaddr ptr %.41708.lcssa to i64 ; 2 uses
  %.not = icmp eq i64 %.41713.lcssa, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ajc = load <2 x i64>, ptr %0, align 1        ; 2 uses
  %i.ajd = getelementptr i8, ptr %0, i64 16
  %i.aje = load <4 x i32>, ptr %i.ajd, align 1    ; 2 uses
  %i.ajf = getelementptr i8, ptr %0, i64 32
  %16 = load <4 x i32>, ptr %i.ajf, align 1       ; 2 uses
  %i.ajg = getelementptr i8, ptr %0, i64 48
  %i.ajh = load <4 x i32>, ptr %i.ajg, align 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.017141819 = phi i32 [ 0, %bb.k ], [ %i.alz, %bb.l ] ; 2 uses
  %.017161818 = phi <4 x i32> [ %i.aje, %bb.k ], [ %i.alq, %bb.l ] ; 2 uses
  %.017171817 = phi <4 x i32> [ %i.ajh, %bb.k ], [ %i.alv, %bb.l ]
  %.017181816 = phi <4 x i32> [ %16, %bb.k ], [ %27, %bb.l ]
  %.017201815 = phi <2 x i64> [ %i.ajc, %bb.k ], [ %i.aly, %bb.l ] ; 2 uses
  %i.aji = bitcast <2 x i64> %.017201815 to <4 x i32> ; 2 uses
  %i.ajj = add <4 x i32> %.017161818, %i.aji      ; 2 uses
  %i.ajk = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajj, <4 x i32> %i.ajj, <4 x i32> splat (i32 7))
  %i.ajl = xor <4 x i32> %i.ajk, %.017171817      ; 3 uses
  %i.ajm = add <4 x i32> %i.ajl, %i.aji           ; 2 uses
  %i.ajn = shufflevector <4 x i32> %i.ajl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %i.ajo = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajm, <4 x i32> %i.ajm, <4 x i32> splat (i32 9))
  %17 = xor <4 x i32> %i.ajo, %.017181816         ; 3 uses
  %i.ajp = add <4 x i32> %17, %i.ajl              ; 2 uses
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ajq = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajp, <4 x i32> %i.ajp, <4 x i32> splat (i32 13))
  %i.ajr = xor <4 x i32> %i.ajq, %.017161818      ; 2 uses
  %i.ajs = add <4 x i32> %i.ajr, %17              ; 2 uses
  %i.ajt = shufflevector <4 x i32> %i.ajr, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aju = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ajs, <4 x i32> %i.ajs, <4 x i32> splat (i32 18))
  %i.ajv = bitcast <4 x i32> %i.aju to <2 x i64>
  %i.ajw = xor <2 x i64> %.017201815, %i.ajv      ; 2 uses
  %i.ajx = bitcast <2 x i64> %i.ajw to <4 x i32>  ; 2 uses
  %i.ajy = add <4 x i32> %i.ajn, %i.ajx           ; 2 uses
  %i.ajz = shl <4 x i32> %i.ajy, splat (i32 7)
  %i.aka = lshr <4 x i32> %i.ajy, splat (i32 25)
  %i.akb = xor <4 x i32> %i.ajz, %i.ajt
  %i.akc = xor <4 x i32> %i.akb, %i.aka           ; 3 uses
  %i.akd = add <4 x i32> %i.akc, %i.ajx           ; 2 uses
  %i.ake = shl <4 x i32> %i.akd, splat (i32 9)
  %i.akf = lshr <4 x i32> %i.akd, splat (i32 23)
  %19 = xor <4 x i32> %i.ake, %18
  %i.akg = shufflevector <4 x i32> %i.akc, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %20 = xor <4 x i32> %19, %i.akf                 ; 3 uses
  %i.akh = add <4 x i32> %20, %i.akc              ; 2 uses
  %21 = shufflevector <4 x i32> %20, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aki = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.akh, <4 x i32> %i.akh, <4 x i32> splat (i32 13))
  %i.akj = xor <4 x i32> %i.aki, %i.ajn           ; 2 uses
  %i.akk = add <4 x i32> %i.akj, %20              ; 2 uses
  %i.akl = shufflevector <4 x i32> %i.akj, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.akm = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.akk, <4 x i32> %i.akk, <4 x i32> splat (i32 18))
  %i.akn = bitcast <4 x i32> %i.akm to <2 x i64>
  %i.ako = xor <2 x i64> %i.ajw, %i.akn           ; 2 uses
  %i.akp = bitcast <2 x i64> %i.ako to <4 x i32>  ; 2 uses
  %i.akq = add <4 x i32> %i.akg, %i.akp           ; 2 uses
  %i.akr = shl <4 x i32> %i.akq, splat (i32 7)
  %i.aks = lshr <4 x i32> %i.akq, splat (i32 25)
  %i.akt = xor <4 x i32> %i.akr, %i.akl
  %i.aku = xor <4 x i32> %i.akt, %i.aks           ; 3 uses
  %i.akv = add <4 x i32> %i.aku, %i.akp           ; 2 uses
  %i.akw = shl <4 x i32> %i.akv, splat (i32 9)
  %i.akx = lshr <4 x i32> %i.akv, splat (i32 23)
  %22 = xor <4 x i32> %i.akw, %21
  %i.aky = shufflevector <4 x i32> %i.aku, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %23 = xor <4 x i32> %22, %i.akx                 ; 3 uses
  %i.akz = add <4 x i32> %23, %i.aku              ; 2 uses
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ala = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.akz, <4 x i32> %i.akz, <4 x i32> splat (i32 13))
  %i.alb = xor <4 x i32> %i.ala, %i.akg           ; 2 uses
  %i.alc = add <4 x i32> %i.alb, %23              ; 2 uses
  %i.ald = shufflevector <4 x i32> %i.alb, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ale = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alc, <4 x i32> %i.alc, <4 x i32> splat (i32 18))
  %i.alf = bitcast <4 x i32> %i.ale to <2 x i64>
  %i.alg = xor <2 x i64> %i.ako, %i.alf           ; 2 uses
  %i.alh = bitcast <2 x i64> %i.alg to <4 x i32>  ; 2 uses
  %i.ali = add <4 x i32> %i.aky, %i.alh           ; 2 uses
  %i.alj = shl <4 x i32> %i.ali, splat (i32 7)
  %i.alk = lshr <4 x i32> %i.ali, splat (i32 25)
  %i.all = xor <4 x i32> %i.alj, %i.ald
  %i.alm = xor <4 x i32> %i.all, %i.alk           ; 3 uses
  %i.aln = add <4 x i32> %i.alm, %i.alh           ; 2 uses
  %i.alo = shl <4 x i32> %i.aln, splat (i32 9)
  %i.alp = lshr <4 x i32> %i.aln, splat (i32 23)
  %25 = xor <4 x i32> %i.alo, %24
  %i.alq = shufflevector <4 x i32> %i.alm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2> ; 2 uses
  %26 = xor <4 x i32> %25, %i.alp                 ; 3 uses
  %i.alr = add <4 x i32> %26, %i.alm              ; 2 uses
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.als = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alr, <4 x i32> %i.alr, <4 x i32> splat (i32 13))
  %i.alt = xor <4 x i32> %i.als, %i.aky           ; 2 uses
  %i.alu = add <4 x i32> %i.alt, %26              ; 2 uses
  %i.alv = shufflevector <4 x i32> %i.alt, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.alw = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.alu, <4 x i32> %i.alu, <4 x i32> splat (i32 18))
  %i.alx = bitcast <4 x i32> %i.alw to <2 x i64>
  %i.aly = xor <2 x i64> %i.alg, %i.alx           ; 2 uses
  %i.alz = add nuw nsw i32 %.017141819, 4
  %i.ama = icmp samesign ult i32 %.017141819, 16
  br i1 %i.ama, label %bb.l, label %iter.check, !llvm.loop !9

iter.check:                                       ; preds = %bb.l
  %i.amb = bitcast <2 x i64> %i.aly to <4 x i32>
  %i.amc = bitcast <2 x i64> %i.ajc to <4 x i32>
  %i.amd = add <4 x i32> %i.amb, %i.amc           ; 3 uses
  %i.ame = add <4 x i32> %i.alq, %i.aje           ; 2 uses
  %i.amf = add <4 x i32> %27, %16                 ; 3 uses
  %i.amg = add <4 x i32> %i.alv, %i.ajh           ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ami = shufflevector <4 x i32> %i.amf, <4 x i32> %i.amg, <8 x i32> <i32 0, i32 5, i32 poison, i32 poison, i32 poison, i32 1, i32 6, i32 poison>
  %i.amj = shufflevector <4 x i32> %i.amd, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amk = shufflevector <8 x i32> %i.ami, <8 x i32> %i.amj, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 5, i32 6, i32 poison>
  %i.aml = shufflevector <4 x i32> %i.ame, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amm = shufflevector <8 x i32> %i.amk, <8 x i32> %i.aml, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 8, i32 5, i32 6, i32 poison>
  %i.amn = shufflevector <4 x i32> %i.amd, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amo = shufflevector <8 x i32> %i.amm, <8 x i32> %i.amn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i32> %i.amo, ptr %i.amh, align 16
  %i.amp = shufflevector <4 x i32> %i.amd, <4 x i32> %i.ame, <8 x i32> <i32 0, i32 5, i32 poison, i32 poison, i32 poison, i32 1, i32 6, i32 poison>
  %i.amq = shufflevector <4 x i32> %i.amf, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amr = shufflevector <8 x i32> %i.amp, <8 x i32> %i.amq, <8 x i32> <i32 0, i32 1, i32 10, i32 poison, i32 poison, i32 5, i32 6, i32 poison>
  %i.ams = shufflevector <4 x i32> %i.amg, <4 x i32> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amt = shufflevector <8 x i32> %i.amr, <8 x i32> %i.ams, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 8, i32 5, i32 6, i32 poison>
  %i.amu = shufflevector <4 x i32> %i.amf, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amv = shufflevector <8 x i32> %i.amt, <8 x i32> %i.amu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 11>
  store <8 x i32> %i.amv, ptr %i.a, align 16
  %min.iters.check = icmp samesign ult i64 %.41713.lcssa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.amw = sub i64 %.4.lcssa1970, %.41708.lcssa1971
  %diff.check = icmp ugt i64 %i.amw, -16
  %i.amx = sub i64 %i.b, %.41708.lcssa1971
  %diff.check1972 = icmp ugt i64 %i.amx, -16
  %conflict.rdx = or i1 %diff.check, %diff.check1972
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1973 = icmp samesign ult i64 %.41713.lcssa, 16
  br i1 %min.iters.check1973, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.amy = and i64 %.41713.lcssa, 12
  %n.vec = and i64 %.41713.lcssa, 48              ; 5 uses
  %i.amz = getelementptr i8, ptr %.4.lcssa, i64 8
  %wide.load = load <8 x i8>, ptr %.4.lcssa, align 1
  %wide.load1974 = load <8 x i8>, ptr %i.amz, align 1
  %i.ana = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %wide.load1975 = load <8 x i8>, ptr %i.a, align 16
  %wide.load1976 = load <8 x i8>, ptr %i.ana, align 8
  %i.anb = xor <8 x i8> %wide.load1975, %wide.load
  %i.anc = xor <8 x i8> %wide.load1976, %wide.load1974
  %i.and = getelementptr i8, ptr %.41708.lcssa, i64 8
  store <8 x i8> %i.anb, ptr %.41708.lcssa, align 1
  store <8 x i8> %i.anc, ptr %i.and, align 1
  %i.ane = icmp eq i64 %n.vec, 16
  br i1 %i.ane, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.anf = getelementptr i8, ptr %.4.lcssa, i64 16
  %i.ang = getelementptr i8, ptr %.4.lcssa, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.anf, align 1
  %wide.load1974.1 = load <8 x i8>, ptr %i.ang, align 1
  %i.anh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ani = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %wide.load1975.1 = load <8 x i8>, ptr %i.anh, align 16
  %wide.load1976.1 = load <8 x i8>, ptr %i.ani, align 8
  %i.anj = xor <8 x i8> %wide.load1975.1, %wide.load.1
  %i.ank = xor <8 x i8> %wide.load1976.1, %wide.load1974.1
  %i.anl = getelementptr i8, ptr %.41708.lcssa, i64 16
  %i.anm = getelementptr i8, ptr %.41708.lcssa, i64 24
  store <8 x i8> %i.anj, ptr %i.anl, align 1
  store <8 x i8> %i.ank, ptr %i.anm, align 1
  %i.ann = icmp eq i64 %n.vec, 32
  br i1 %i.ann, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ano = getelementptr i8, ptr %.4.lcssa, i64 32
  %i.anp = getelementptr i8, ptr %.4.lcssa, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.ano, align 1
  %wide.load1974.2 = load <8 x i8>, ptr %i.anp, align 1
  %i.anq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.anr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %wide.load1975.2 = load <8 x i8>, ptr %i.anq, align 16
  %wide.load1976.2 = load <8 x i8>, ptr %i.anr, align 8
  %i.ans = xor <8 x i8> %wide.load1975.2, %wide.load.2
  %i.ant = xor <8 x i8> %wide.load1976.2, %wide.load1974.2
  %i.anu = getelementptr i8, ptr %.41708.lcssa, i64 32
  %i.anv = getelementptr i8, ptr %.41708.lcssa, i64 40
  store <8 x i8> %i.ans, ptr %i.anu, align 1
  store <8 x i8> %i.ant, ptr %i.anv, align 1
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %.41713.lcssa, %n.vec
  br i1 %cmp.n, label %.loopexit1983, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.amy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1977 = and i64 %.41713.lcssa, 60          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1978 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1981, %vec.epilog.vector.body ] ; 4 uses
  %i.anw = getelementptr i8, ptr %.4.lcssa, i64 %index1978
  %wide.load1979 = load <4 x i8>, ptr %i.anw, align 1
  %i.anx = getelementptr i8, ptr %i.a, i64 %index1978
  %wide.load1980 = load <4 x i8>, ptr %i.anx, align 4
  %i.any = xor <4 x i8> %wide.load1980, %wide.load1979
  %i.anz = getelementptr i8, ptr %.41708.lcssa, i64 %index1978
  store <4 x i8> %i.any, ptr %i.anz, align 1
  %index.next1981 = add nuw i64 %index1978, 4     ; 2 uses
  %i.aoa = icmp eq i64 %index.next1981, %n.vec1977
  br i1 %i.aoa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1982 = icmp eq i64 %.41713.lcssa, %n.vec1977
  br i1 %cmp.n1982, label %.loopexit1983, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1977, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.41713.lcssa, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aob = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.prol
  %i.aoc = load i8, ptr %i.aob, align 1
  %i.aod = getelementptr i8, ptr %i.a, i64 %indvars.iv.prol
  %i.aoe = load i8, ptr %i.aod, align 1
  %i.aof = xor i8 %i.aoe, %i.aoc
  %i.aog = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.prol
  store i8 %i.aof, ptr %i.aog, align 1
  %indvars.iv.next.prol = add nuw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !11

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aoh = sub nsw i64 %indvars.iv.ph, %.41713.lcssa
  %i.aoi = icmp ugt i64 %i.aoh, -4
  br i1 %i.aoi, label %.loopexit1983, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.aoj = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv
  %i.aok = load i8, ptr %i.aoj, align 1
  %i.aol = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.aom = load i8, ptr %i.aol, align 1
  %i.aon = xor i8 %i.aom, %i.aok
  %i.aoo = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv
  store i8 %i.aon, ptr %i.aoo, align 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.aop = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next
  %i.aoq = load i8, ptr %i.aop, align 1
  %i.aor = getelementptr i8, ptr %i.a, i64 %indvars.iv.next
  %i.aos = load i8, ptr %i.aor, align 1
  %i.aot = xor i8 %i.aos, %i.aoq
  %i.aou = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next
  store i8 %i.aot, ptr %i.aou, align 1
  %indvars.iv.next.1 = add nuw i64 %indvars.iv, 2 ; 3 uses
  %i.aov = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.1
  %i.aow = load i8, ptr %i.aov, align 1
  %i.aox = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.1
  %i.aoy = load i8, ptr %i.aox, align 1
  %i.aoz = xor i8 %i.aoy, %i.aow
  %i.apa = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next.1
  store i8 %i.aoz, ptr %i.apa, align 1
  %indvars.iv.next.2 = add nuw i64 %indvars.iv, 3 ; 3 uses
  %i.apb = getelementptr i8, ptr %.4.lcssa, i64 %indvars.iv.next.2
  %i.apc = load i8, ptr %i.apb, align 1
  %i.apd = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.2
  %i.ape = load i8, ptr %i.apd, align 1
  %i.apf = xor i8 %i.ape, %i.apc
  %i.apg = getelementptr i8, ptr %.41708.lcssa, i64 %indvars.iv.next.2
  store i8 %i.apf, ptr %i.apg, align 1
  %indvars.iv.next.3 = add nuw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.41713.lcssa
  br i1 %exitcond.not.3, label %.loopexit1983, label %vec.epilog.scalar.ph, !llvm.loop !12

.loopexit1983:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %.loopexit1983
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
end_hunk_0
