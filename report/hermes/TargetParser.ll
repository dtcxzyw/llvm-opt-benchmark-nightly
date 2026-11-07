Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/TargetParser?download=true
inline.NumInlined: 1116
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvh3ARM13getDefaultFPUENS_9StringRefENS0_8ArchKindE:bb.a
  %i.td = zext i16 %i.tc to i64
  %i.te = xor i64 %i.td, 12853
  %i.tf = or i64 %i.ta, %i.te
  %i.tg = icmp ne i64 %i.tf, 0
  %i.th = zext i1 %i.tg to i32
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit396

_ZNK4llvh9StringRef6equalsES0_.exit392:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit385
  %i.tj = load i32, ptr %0, align 1
  %i.tk = xor i32 %i.tj, 808674163
  %i.tl = getelementptr i8, ptr %0, i64 4
  %i.tm = load i8, ptr %i.tl, align 1
  %i.tn = zext i8 %i.tm to i32
  %i.to = xor i32 %i.tn, 48
  %i.tp = or i32 %i.tk, %i.to
  %i.tq = icmp ne i32 %i.tp, 0
  %i.tr = zext i1 %i.tq to i32
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit414

_ZNK4llvh9StringRef6equalsES0_.exit393:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit390
  %i.tt = load i64, ptr %0, align 1
  %i.tu = xor i64 %i.tt, 7867076501226811235
  %i.tv = getelementptr i8, ptr %0, i64 8
  %i.tw = load i8, ptr %i.tv, align 1
  %i.tx = zext i8 %i.tw to i64
  %i.ty = xor i64 %i.tx, 51
  %i.tz = or i64 %i.tu, %i.ty
  %i.ua = icmp ne i64 %i.tz, 0
  %i.ub = zext i1 %i.ua to i32
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit394

_ZNK4llvh9StringRef6equalsES0_.exit394:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit393
  %i.ud = load i64, ptr %0, align 1
  %i.ue = xor i64 %i.ud, 7867076501226811235
  %i.uf = getelementptr i8, ptr %0, i64 8
  %i.ug = load i8, ptr %i.uf, align 1
  %i.uh = zext i8 %i.ug to i64
  %i.ui = xor i64 %i.uh, 52
  %i.uj = or i64 %i.ue, %i.ui
  %i.uk = icmp ne i64 %i.uj, 0
  %i.ul = zext i1 %i.uk to i32
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit395

_ZNK4llvh9StringRef6equalsES0_.exit395:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit394
  %i.un = load i64, ptr %0, align 1
  %i.uo = xor i64 %i.un, 7867076501226811235
  %i.up = getelementptr i8, ptr %0, i64 8
  %i.uq = load i8, ptr %i.up, align 1
  %i.ur = zext i8 %i.uq to i64
  %i.us = xor i64 %i.ur, 55
  %i.ut = or i64 %i.uo, %i.us
  %i.uu = icmp ne i64 %i.ut, 0
  %i.uv = zext i1 %i.uu to i32
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit407

_ZNK4llvh9StringRef6equalsES0_.exit396:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit391
  %i.ux = load i64, ptr %0, align 1
  %i.uy = xor i64 %i.ux, 7867076501226811235
  %i.uz = getelementptr i8, ptr %0, i64 8
  %i.va = load i16, ptr %i.uz, align 1
  %i.vb = zext i16 %i.va to i64
  %i.vc = xor i64 %i.vb, 13106
  %i.vd = or i64 %i.uy, %i.vc
  %i.ve = icmp ne i64 %i.vd, 0
  %i.vf = zext i1 %i.ve to i32
  %i.vg = icmp eq i32 %i.vf, 0
  br i1 %i.vg, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit397

_ZNK4llvh9StringRef6equalsES0_.exit397:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit396
  %i.vh = load i64, ptr %0, align 1
  %i.vi = xor i64 %i.vh, 7867076501226811235
  %i.vj = getelementptr i8, ptr %0, i64 8
  %i.vk = load i16, ptr %i.vj, align 1
  %i.vl = zext i16 %i.vk to i64
  %i.vm = xor i64 %i.vl, 13107
  %i.vn = or i64 %i.vi, %i.vm
  %i.vo = icmp ne i64 %i.vn, 0
  %i.vp = zext i1 %i.vo to i32
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit398

_ZNK4llvh9StringRef6equalsES0_.exit398:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit397
  %i.vr = load i64, ptr %0, align 1
  %i.vs = xor i64 %i.vr, 7002385372771676003
  %i.vt = getelementptr i8, ptr %0, i64 8
  %i.vu = load i16, ptr %i.vt, align 1
  %i.vv = zext i16 %i.vu to i64
  %i.vw = xor i64 %i.vv, 12851
  %i.vx = or i64 %i.vs, %i.vw
  %i.vy = icmp ne i64 %i.vx, 0
  %i.vz = zext i1 %i.vy to i32
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit399

_ZNK4llvh9StringRef6equalsES0_.exit399:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit398
  %i.wb = load i64, ptr %0, align 1
  %i.wc = xor i64 %i.wb, 7002385372771676003
  %i.wd = getelementptr i8, ptr %0, i64 8
  %i.we = load i16, ptr %i.wd, align 1
  %i.wf = zext i16 %i.we to i64
  %i.wg = xor i64 %i.wf, 13619
  %i.wh = or i64 %i.wc, %i.wg
  %i.wi = icmp ne i64 %i.wh, 0
  %i.wj = zext i1 %i.wi to i32
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit400

_ZNK4llvh9StringRef6equalsES0_.exit400:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit399
  %i.wl = load i64, ptr %0, align 1
  %i.wm = xor i64 %i.wl, 7002385372771676003
  %i.wn = getelementptr i8, ptr %0, i64 8
  %i.wo = load i16, ptr %i.wn, align 1
  %i.wp = zext i16 %i.wo to i64
  %i.wq = xor i64 %i.wp, 13109
  %i.wr = or i64 %i.wm, %i.wq
  %i.ws = icmp ne i64 %i.wr, 0
  %i.wt = zext i1 %i.ws to i32
  %i.wu = icmp eq i32 %i.wt, 0
  br i1 %i.wu, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit401

_ZNK4llvh9StringRef6equalsES0_.exit401:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit400
  %i.wv = load i64, ptr %0, align 1
  %i.ww = xor i64 %i.wv, 7002385372771676003
  %i.wx = getelementptr i8, ptr %0, i64 8
  %i.wy = load i16, ptr %i.wx, align 1
  %i.wz = zext i16 %i.wy to i64
  %i.xa = xor i64 %i.wz, 13621
  %i.xb = or i64 %i.ww, %i.xa
  %i.xc = icmp ne i64 %i.xb, 0
  %i.xd = zext i1 %i.xc to i32
  %i.xe = icmp eq i32 %i.xd, 0
  br i1 %i.xe, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit402

_ZNK4llvh9StringRef6equalsES0_.exit402:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit401
  %i.xf = load i64, ptr %0, align 1
  %i.xg = xor i64 %i.xf, 7002385372771676003
  %i.xh = getelementptr i8, ptr %0, i64 8
  %i.xi = load i16, ptr %i.xh, align 1
  %i.xj = zext i16 %i.xi to i64
  %i.xk = xor i64 %i.xj, 14133
  %i.xl = or i64 %i.xg, %i.xk
  %i.xm = icmp ne i64 %i.xl, 0
  %i.xn = zext i1 %i.xm to i32
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit403

_ZNK4llvh9StringRef6equalsES0_.exit403:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit402
  %i.xp = load i64, ptr %0, align 1
  %i.xq = xor i64 %i.xp, 7002385372771676003
  %i.xr = getelementptr i8, ptr %0, i64 8
  %i.xs = load i16, ptr %i.xr, align 1
  %i.xt = zext i16 %i.xs to i64
  %i.xu = xor i64 %i.xt, 12855
  %i.xv = or i64 %i.xq, %i.xu
  %i.xw = icmp ne i64 %i.xv, 0
  %i.xx = zext i1 %i.xw to i32
  %i.xy = icmp eq i32 %i.xx, 0
  br i1 %i.xy, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit404

_ZNK4llvh9StringRef6equalsES0_.exit404:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit403
  %i.xz = load i64, ptr %0, align 1
  %i.ya = xor i64 %i.xz, 7002385372771676003
  %i.yb = getelementptr i8, ptr %0, i64 8
  %i.yc = load i16, ptr %i.yb, align 1
  %i.yd = zext i16 %i.yc to i64
  %i.ye = xor i64 %i.yd, 13111
  %i.yf = or i64 %i.ya, %i.ye
  %i.yg = icmp ne i64 %i.yf, 0
  %i.yh = zext i1 %i.yg to i32
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit405

_ZNK4llvh9StringRef6equalsES0_.exit405:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit404
  %i.yj = load i64, ptr %0, align 1
  %i.yk = xor i64 %i.yj, 7002385372771676003
  %i.yl = getelementptr i8, ptr %0, i64 8
  %i.ym = load i16, ptr %i.yl, align 1
  %i.yn = zext i16 %i.ym to i64
  %i.yo = xor i64 %i.yn, 13623
  %i.yp = or i64 %i.yk, %i.yo
  %i.yq = icmp ne i64 %i.yp, 0
  %i.yr = zext i1 %i.yq to i32
  %i.ys = icmp eq i32 %i.yr, 0
  br i1 %i.ys, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread

_ZNK4llvh9StringRef6equalsES0_.exit406:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit353
  %i.yt = load i32, ptr %0, align 1
  %i.yu = xor i32 %i.yt, 1818458467
  %i.yv = getelementptr i8, ptr %0, i64 3
  %i.yw = load i32, ptr %i.yv, align 1
  %i.yx = xor i32 %i.yw, 1701736300
  %i.yy = or i32 %i.yu, %i.yx
  %i.yz = icmp ne i32 %i.yy, 0
  %i.za = zext i1 %i.yz to i32
  %i.zb = icmp eq i32 %i.za, 0
  %spec.select = select i1 %i.zb, i32 20, i32 0
  br label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit

_ZNK4llvh9StringRef6equalsES0_.exit407:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit395
  %i.zc = load i64, ptr %0, align 1
  %i.zd = xor i64 %i.zc, 7867071046518143077
  %i.ze = getelementptr i8, ptr %0, i64 8
  %i.zf = load i8, ptr %i.ze, align 1
  %i.zg = zext i8 %i.zf to i64
  %i.zh = xor i64 %i.zg, 49
  %i.zi = or i64 %i.zd, %i.zh
  %i.zj = icmp ne i64 %i.zi, 0
  %i.zk = zext i1 %i.zj to i32
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit408

_ZNK4llvh9StringRef6equalsES0_.exit408:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit407
  %i.zm = load i64, ptr %0, align 1
  %i.zn = xor i64 %i.zm, 7867071046518143077
  %i.zo = getelementptr i8, ptr %0, i64 8
  %i.zp = load i8, ptr %i.zo, align 1
  %i.zq = zext i8 %i.zp to i64
  %i.zr = xor i64 %i.zq, 50
  %i.zs = or i64 %i.zn, %i.zr
  %i.zt = icmp ne i64 %i.zs, 0
  %i.zu = zext i1 %i.zt to i32
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit409

_ZNK4llvh9StringRef6equalsES0_.exit409:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit408
  %i.zw = load i64, ptr %0, align 1
  %i.zx = xor i64 %i.zw, 7867071046518143077
  %i.zy = getelementptr i8, ptr %0, i64 8
  %i.zz = load i8, ptr %i.zy, align 1
  %i.aaa = zext i8 %i.zz to i64
  %i.aab = xor i64 %i.aaa, 51
  %i.aac = or i64 %i.zx, %i.aab
  %i.aad = icmp ne i64 %i.aac, 0
  %i.aae = zext i1 %i.aad to i32
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit410

_ZNK4llvh9StringRef6equalsES0_.exit410:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit409
  %i.aag = load i64, ptr %0, align 1
  %i.aah = xor i64 %i.aag, 7867071046518143077
  %i.aai = getelementptr i8, ptr %0, i64 8
  %i.aaj = load i8, ptr %i.aai, align 1
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = xor i64 %i.aak, 52
  %i.aam = or i64 %i.aah, %i.aal
  %i.aan = icmp ne i64 %i.aam, 0
  %i.aao = zext i1 %i.aan to i32
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread

_ZNK4llvh9StringRef6equalsES0_.exit411:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit347
  %i.aaq = load i32, ptr %0, align 1
  %i.aar = icmp ne i32 %i.aaq, 1870230123
  %i.aas = zext i1 %i.aar to i32
  %i.aat = icmp eq i32 %i.aas, 0
  br i1 %i.aat, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread

_ZNK4llvh9StringRef6equalsES0_.exit412:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit368
  %i.aau = load i32, ptr %0, align 1
  %i.aav = xor i32 %i.aau, 1835890537
  %i.aaw = getelementptr i8, ptr %0, i64 4
  %i.aax = load i16, ptr %i.aaw, align 1
  %i.aay = zext i16 %i.aax to i32
  %i.aaz = xor i32 %i.aay, 29816
  %i.aba = or i32 %i.aav, %i.aaz
  %i.abb = icmp ne i32 %i.aba, 0
  %i.abc = zext i1 %i.abb to i32
  %i.abd = icmp eq i32 %i.abc, 0
  br i1 %i.abd, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit413

_ZNK4llvh9StringRef6equalsES0_.exit413:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit412
  %i.abe = load i32, ptr %0, align 1
  %i.abf = xor i32 %i.abe, 1633907576
  %i.abg = getelementptr i8, ptr %0, i64 4
  %i.abh = load i16, ptr %i.abg, align 1
  %i.abi = zext i16 %i.abh to i32
  %i.abj = xor i32 %i.abi, 25964
  %i.abk = or i32 %i.abf, %i.abj
  %i.abl = icmp ne i32 %i.abk, 0
  %i.abm = zext i1 %i.abl to i32
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread

_ZNK4llvh9StringRef6equalsES0_.exit414:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit392
  %i.abo = load i32, ptr %0, align 1
  %i.abp = xor i32 %i.abo, 1718187891
  %i.abq = getelementptr i8, ptr %0, i64 4
  %i.abr = load i8, ptr %i.abq, align 1
  %i.abs = zext i8 %i.abr to i32
  %i.abt = xor i32 %i.abs, 116
  %i.abu = or i32 %i.abp, %i.abt
  %i.abv = icmp ne i32 %i.abu, 0
  %i.abw = zext i1 %i.abv to i32
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread

_ZNK4llvh9StringRef6equalsES0_.exit415.thread:    ; preds = %bb.a, %_ZNK4llvh9StringRef6equalsES0_.exit363, %_ZNK4llvh9StringRef6equalsES0_.exit372, %_ZNK4llvh9StringRef6equalsES0_.exit373, %_ZNK4llvh9StringRef6equalsES0_.exit375, %_ZNK4llvh9StringRef6equalsES0_.exit410, %_ZNK4llvh9StringRef6equalsES0_.exit405, %_ZNK4llvh9StringRef6equalsES0_.exit411, %_ZNK4llvh9StringRef6equalsES0_.exit413, %_ZNK4llvh9StringRef6equalsES0_.exit414
  br label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit

_ZN4llvh12StringSwitchIjjE7DefaultEj.exit:        ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit406, %_ZNK4llvh9StringRef6equalsES0_.exit414, %_ZNK4llvh9StringRef6equalsES0_.exit413, %_ZNK4llvh9StringRef6equalsES0_.exit412, %_ZNK4llvh9StringRef6equalsES0_.exit411, %_ZNK4llvh9StringRef6equalsES0_.exit410, %_ZNK4llvh9StringRef6equalsES0_.exit409, %_ZNK4llvh9StringRef6equalsES0_.exit408, %_ZNK4llvh9StringRef6equalsES0_.exit407, %_ZNK4llvh9StringRef6equalsES0_.exit405, %_ZNK4llvh9StringRef6equalsES0_.exit404, %_ZNK4llvh9StringRef6equalsES0_.exit403, %_ZNK4llvh9StringRef6equalsES0_.exit402, %_ZNK4llvh9StringRef6equalsES0_.exit401, %_ZNK4llvh9StringRef6equalsES0_.exit400, %_ZNK4llvh9StringRef6equalsES0_.exit399, %_ZNK4llvh9StringRef6equalsES0_.exit398, %_ZNK4llvh9StringRef6equalsES0_.exit397, %_ZNK4llvh9StringRef6equalsES0_.exit396, %_ZNK4llvh9StringRef6equalsES0_.exit395, %_ZNK4llvh9StringRef6equalsES0_.exit394, %_ZNK4llvh9StringRef6equalsES0_.exit393, %_ZNK4llvh9StringRef6equalsES0_.exit392, %_ZNK4llvh9StringRef6equalsES0_.exit391, %_ZNK4llvh9StringRef6equalsES0_.exit390, %_ZNK4llvh9StringRef6equalsES0_.exit389, %_ZNK4llvh9StringRef6equalsES0_.exit388, %_ZNK4llvh9StringRef6equalsES0_.exit387, %_ZNK4llvh9StringRef6equalsES0_.exit386, %_ZNK4llvh9StringRef6equalsES0_.exit385, %_ZNK4llvh9StringRef6equalsES0_.exit384, %_ZNK4llvh9StringRef6equalsES0_.exit383, %_ZNK4llvh9StringRef6equalsES0_.exit382, %_ZNK4llvh9StringRef6equalsES0_.exit381, %_ZNK4llvh9StringRef6equalsES0_.exit380, %_ZNK4llvh9StringRef6equalsES0_.exit379, %_ZNK4llvh9StringRef6equalsES0_.exit378, %_ZNK4llvh9StringRef6equalsES0_.exit377, %_ZNK4llvh9StringRef6equalsES0_.exit376, %_ZNK4llvh9StringRef6equalsES0_.exit375, %_ZNK4llvh9StringRef6equalsES0_.exit374, %_ZNK4llvh9StringRef6equalsES0_.exit373, %_ZNK4llvh9StringRef6equalsES0_.exit372, %_ZNK4llvh9StringRef6equalsES0_.exit371, %_ZNK4llvh9StringRef6equalsES0_.exit370, %_ZNK4llvh9StringRef6equalsES0_.exit369, %_ZNK4llvh9StringRef6equalsES0_.exit368, %_ZNK4llvh9StringRef6equalsES0_.exit367, %_ZNK4llvh9StringRef6equalsES0_.exit366, %_ZNK4llvh9StringRef6equalsES0_.exit365, %_ZNK4llvh9StringRef6equalsES0_.exit364, %_ZNK4llvh9StringRef6equalsES0_.exit363, %_ZNK4llvh9StringRef6equalsES0_.exit362, %_ZNK4llvh9StringRef6equalsES0_.exit361, %_ZNK4llvh9StringRef6equalsES0_.exit360, %_ZNK4llvh9StringRef6equalsES0_.exit359, %_ZNK4llvh9StringRef6equalsES0_.exit358, %_ZNK4llvh9StringRef6equalsES0_.exit357, %_ZNK4llvh9StringRef6equalsES0_.exit356, %_ZNK4llvh9StringRef6equalsES0_.exit355, %_ZNK4llvh9StringRef6equalsES0_.exit354, %_ZNK4llvh9StringRef6equalsES0_.exit353, %_ZNK4llvh9StringRef6equalsES0_.exit352, %_ZNK4llvh9StringRef6equalsES0_.exit351, %_ZNK4llvh9StringRef6equalsES0_.exit350, %_ZNK4llvh9StringRef6equalsES0_.exit349, %_ZNK4llvh9StringRef6equalsES0_.exit348, %_ZNK4llvh9StringRef6equalsES0_.exit347, %_ZNK4llvh9StringRef6equalsES0_.exit346, %_ZNK4llvh9StringRef6equalsES0_.exit345, %_ZNK4llvh9StringRef6equalsES0_.exit344, %_ZNK4llvh9StringRef6equalsES0_.exit343, %_ZNK4llvh9StringRef6equalsES0_.exit342, %_ZNK4llvh9StringRef6equalsES0_.exit341, %_ZNK4llvh9StringRef6equalsES0_.exit340, %_ZNK4llvh9StringRef6equalsES0_.exit339, %_ZNK4llvh9StringRef6equalsES0_.exit338, %_ZNK4llvh9StringRef6equalsES0_.exit337, %_ZNK4llvh9StringRef6equalsES0_.exit336, %_ZNK4llvh9StringRef6equalsES0_.exit335, %_ZNK4llvh9StringRef6equalsES0_.exit334, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit415.thread, %_ZNK4llvh9StringRef6equalsES0_.exit416.thread1165
  %.0 = phi i32 [ %i.m, %_ZNK4llvh9StringRef6equalsES0_.exit416.thread1165 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit364 ], [ 0, %_ZNK4llvh9StringRef6equalsES0_.exit415.thread ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit414 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit413 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit412 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit411 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit410 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit409 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit408 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit407 ], [ %spec.select, %_ZNK4llvh9StringRef6equalsES0_.exit406 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit405 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit404 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit403 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit402 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit401 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit400 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit399 ], [ 20, %_ZNK4llvh9StringRef6equalsES0_.exit398 ], [ 14, %_ZNK4llvh9StringRef6equalsES0_.exit397 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit396 ], [ 13, %_ZNK4llvh9StringRef6equalsES0_.exit395 ], [ 12, %_ZNK4llvh9StringRef6equalsES0_.exit394 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit393 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit392 ], [ 19, %_ZNK4llvh9StringRef6equalsES0_.exit391 ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit390 ], [ 7, %_ZNK4llvh9StringRef6equalsES0_.exit389 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit388 ], [ 6, %_ZNK4llvh9StringRef6equalsES0_.exit387 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit386 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit385 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit384 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit383 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit382 ], [ 17, %_ZNK4llvh9StringRef6equalsES0_.exit381 ], [ 16, %_ZNK4llvh9StringRef6equalsES0_.exit380 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit379 ], [ 18, %_ZNK4llvh9StringRef6equalsES0_.exit378 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit377 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit376 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit375 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit374 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit373 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit372 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit371 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit370 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit369 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit368 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit367 ], [ 3, %_ZNK4llvh9StringRef6equalsES0_.exit366 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit365 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit334 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit335 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit336 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit337 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit338 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit339 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit340 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit341 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit342 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit343 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit344 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit345 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit346 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit347 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit348 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit349 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit350 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit351 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit352 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit353 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit354 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit355 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit356 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit357 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit358 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit359 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit360 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit361 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit362 ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit363 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4llvh3ARM20getDefaultExtensionsENS_9StringRefENS0_8ArchKindE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2) local_unnamed_addr #1 !guid !456 {
bb.a:
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread [
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit416
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit336
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit338
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit339
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit340
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit341
    i64 8, label %_ZNK4llvh9StringRef6equalsES0_.exit343
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit344
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit366
  ]

_ZNK4llvh9StringRef6equalsES0_.exit416:           ; preds = %bb.a
  %i.a = load i32, ptr %0, align 1
  %i.b = xor i32 %i.a, 1701733735
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1667854949
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZNK4llvh9StringRef6equalsES0_.exit416.thread1165, label %_ZNK4llvh9StringRef6equalsES0_.exit345

_ZNK4llvh9StringRef6equalsES0_.exit416.thread1165: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit416
  %i.j = zext i32 %2 to i64
  %i.k = getelementptr inbounds nuw [64 x i8], ptr @_ZN12_GLOBAL__N_19ARCHNamesE, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !457
  br label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.a
  %i.n = load i32, ptr %0, align 1
  %i.o = icmp ne i32 %i.n, 846033505
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit334

_ZNK4llvh9StringRef6equalsES0_.exit334:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %i.r = load i32, ptr %0, align 1
  %i.s = icmp ne i32 %i.r, 862810721
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit335

_ZNK4llvh9StringRef6equalsES0_.exit335:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit334
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.v, 913142369
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit337

_ZNK4llvh9StringRef6equalsES0_.exit336:           ; preds = %bb.a
  %i.z = load i32, ptr %0, align 1
  %i.aa = xor i32 %i.z, 929919585
  %i.ab = getelementptr i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.ad, 109
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293

_ZNK4llvh9StringRef6equalsES0_.exit337:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit335
  %i.aj = load i32, ptr %0, align 1
  %i.ak = icmp ne i32 %i.aj, 946696801
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293

_ZNK4llvh9StringRef6equalsES0_.exit338:           ; preds = %bb.a
  %i.an = load i32, ptr %0, align 1
  %i.ao = xor i32 %i.an, 946696801
  %i.ap = getelementptr i8, ptr %0, i64 4
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i32
  %i.as = xor i32 %i.ar, 12337
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293

_ZNK4llvh9StringRef6equalsES0_.exit339:           ; preds = %bb.a
  %i.ax = load i64, ptr %0, align 1
  %i.ay = xor i64 %i.ax, 8241982517078553715
  %i.az = getelementptr i8, ptr %0, i64 8
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = xor i64 %i.bb, 109
  %i.bd = or i64 %i.ay, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293

_ZNK4llvh9StringRef6equalsES0_.exit340:           ; preds = %bb.a
  %i.bh = load i64, ptr %0, align 1
  %i.bi = xor i64 %i.bh, 8241982517078553715
  %i.bj = getelementptr i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = xor i64 %i.bl, 808530285
  %i.bn = or i64 %i.bi, %i.bm
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293

_ZNK4llvh9StringRef6equalsES0_.exit341:           ; preds = %bb.a
  %i.br = load i64, ptr %0, align 1
  %i.bs = xor i64 %i.br, 8241982517078553715
  %i.bt = getelementptr i8, ptr %0, i64 5
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 3472329401062023527
  %i.bw = or i64 %i.bs, %i.bv
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit342

_ZNK4llvh9StringRef6equalsES0_.exit342:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit341
  %i.ca = load i64, ptr %0, align 1
  %i.cb = xor i64 %i.ca, 8241982517078553715
  %i.cc = getelementptr i8, ptr %0, i64 5
  %i.cd = load i64, ptr %i.cc, align 1
  %i.ce = xor i64 %i.cd, 3472610876038734183
  %i.cf = or i64 %i.cb, %i.ce
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit375

_ZNK4llvh9StringRef6equalsES0_.exit343:           ; preds = %bb.a
  %i.cj = load i64, ptr %0, align 1
  %i.ck = icmp ne i64 %i.cj, 7596838596752798305
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit348

_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit340, %_ZNK4llvh9StringRef6equalsES0_.exit339, %_ZNK4llvh9StringRef6equalsES0_.exit338, %_ZNK4llvh9StringRef6equalsES0_.exit336, %_ZNK4llvh9StringRef6equalsES0_.exit337
  switch i64 %1, label %_ZNK4llvh9StringRef6equalsES0_.exit415.thread [
    i64 10, label %_ZNK4llvh9StringRef6equalsES0_.exit344
    i64 7, label %_ZNK4llvh9StringRef6equalsES0_.exit345
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit347
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit349
    i64 9, label %_ZNK4llvh9StringRef6equalsES0_.exit355
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit357
    i64 11, label %_ZNK4llvh9StringRef6equalsES0_.exit366
    i64 12, label %_ZNK4llvh9StringRef6equalsES0_.exit371
    i64 13, label %_ZNK4llvh9StringRef6equalsES0_.exit375
  ]

_ZNK4llvh9StringRef6equalsES0_.exit344:           ; preds = %bb.a, %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293
  %i.cn = load i64, ptr %0, align 1
  %i.co = xor i64 %i.cn, 7596838596752798305
  %i.cp = getelementptr i8, ptr %0, i64 8
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i64
  %i.cs = xor i64 %i.cr, 29485
  %i.ct = or i64 %i.co, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit364

_ZNK4llvh9StringRef6equalsES0_.exit345:           ; preds = %_ZN4llvh12StringSwitchIjjE4CaseENS_13StringLiteralEj.exit293, %_ZNK4llvh9StringRef6equalsES0_.exit416
  %i.cx = load i32, ptr %0, align 1
  %i.cy = xor i32 %i.cx, 929919585
  %i.cz = getelementptr i8, ptr %0, i64 3
  %i.da = load i32, ptr %i.cz, align 1
  %i.db = xor i32 %i.da, 1949315383
  %i.dc = or i32 %i.cy, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %_ZN4llvh12StringSwitchIjjE7DefaultEj.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit346

_ZNK4llvh9StringRef6equalsES0_.exit346:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit345
  %i.dg = load i32, ptr %0, align 1
  %i.dh = xor i32 %i.dg, 929919585
  %i.di = getelementptr i8, ptr %0, i64 3
end_hunk_0
