Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir?download=true
inline.NumInlined: 275
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ir_folding:bb.a
  %i.vy = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.vz = zext i8 %i.vy to i32
  %i.wa = load i8, ptr %i.z, align 8, !tbaa !23
  %i.wb = and i8 %i.wa, 7
  %i.wc = zext nneg i8 %i.wb to i32
  %i.wd = shl nuw nsw i32 %i.vz, %i.wc
  %i.we = zext nneg i32 %i.wd to i64
  store i64 %i.we, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.fv:                                            ; preds = %bb.e
  %i.wf = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.wg = load i8, ptr %i.z, align 8, !tbaa !23
  %i.wh = and i8 %i.wg, 7
  %i.wi = shl i8 %i.wf, %i.wh
  %i.wj = sext i8 %i.wi to i64
  store i64 %i.wj, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.fw:                                            ; preds = %bb.e
  %i.wk = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.wl = zext i16 %i.wk to i32
  %i.wm = load i16, ptr %i.z, align 8, !tbaa !23
  %i.wn = and i16 %i.wm, 15
  %i.wo = zext nneg i16 %i.wn to i32
  %i.wp = shl nuw nsw i32 %i.wl, %i.wo
  %i.wq = zext nneg i32 %i.wp to i64
  store i64 %i.wq, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.fx:                                            ; preds = %bb.e
  %i.wr = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.ws = load i16, ptr %i.z, align 8, !tbaa !23
  %i.wt = and i16 %i.ws, 15
  %i.wu = shl i16 %i.wr, %i.wt
  %i.wv = sext i16 %i.wu to i64
  store i64 %i.wv, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.fy:                                            ; preds = %bb.e
  %i.ww = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.wx = load i32, ptr %i.z, align 8, !tbaa !23
  %i.wy = and i32 %i.wx, 31
  %i.wz = shl i32 %i.ww, %i.wy
  %i.xa = zext i32 %i.wz to i64
  store i64 %i.xa, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.fz:                                            ; preds = %bb.e
  %i.xb = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.xc = load i32, ptr %i.z, align 8, !tbaa !23
  %i.xd = and i32 %i.xc, 31
  %i.xe = shl i32 %i.xb, %i.xd
  %i.xf = sext i32 %i.xe to i64
  store i64 %i.xf, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ga:                                            ; preds = %bb.e, %bb.e
  %i.xg = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.xh = load i64, ptr %i.z, align 8, !tbaa !23
  %i.xi = and i64 %i.xh, 63
  %i.xj = shl i64 %i.xg, %i.xi
  store i64 %i.xj, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gb:                                            ; preds = %bb.e, %bb.e
  %i.xk = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.xl = zext i8 %i.xk to i32
  %i.xm = load i8, ptr %i.z, align 8, !tbaa !23
  %i.xn = and i8 %i.xm, 7
  %i.xo = zext nneg i8 %i.xn to i32
  %i.xp = lshr i32 %i.xl, %i.xo
  %i.xq = zext nneg i32 %i.xp to i64
  store i64 %i.xq, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gc:                                            ; preds = %bb.e
  %i.xr = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.xs = load i8, ptr %i.z, align 8, !tbaa !23
  %i.xt = and i8 %i.xs, 7
  %i.xu = lshr i8 %i.xr, %i.xt
  %i.xv = sext i8 %i.xu to i64
  store i64 %i.xv, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gd:                                            ; preds = %bb.e
  %i.xw = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.xx = zext i16 %i.xw to i32
  %i.xy = load i16, ptr %i.z, align 8, !tbaa !23
  %i.xz = and i16 %i.xy, 15
  %i.ya = zext nneg i16 %i.xz to i32
  %i.yb = lshr i32 %i.xx, %i.ya
  %i.yc = zext nneg i32 %i.yb to i64
  store i64 %i.yc, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ge:                                            ; preds = %bb.e
  %i.yd = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.ye = load i16, ptr %i.z, align 8, !tbaa !23
  %i.yf = and i16 %i.ye, 15
  %i.yg = lshr i16 %i.yd, %i.yf
  %i.yh = sext i16 %i.yg to i64
  store i64 %i.yh, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gf:                                            ; preds = %bb.e
  %i.yi = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.yj = load i32, ptr %i.z, align 8, !tbaa !23
  %i.yk = and i32 %i.yj, 31
  %i.yl = lshr i32 %i.yi, %i.yk
  %i.ym = zext i32 %i.yl to i64
  store i64 %i.ym, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gg:                                            ; preds = %bb.e
  %i.yn = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.yo = load i32, ptr %i.z, align 8, !tbaa !23
  %i.yp = and i32 %i.yo, 31
  %i.yq = lshr i32 %i.yn, %i.yp
  %i.yr = sext i32 %i.yq to i64
  store i64 %i.yr, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gh:                                            ; preds = %bb.e, %bb.e
  %i.ys = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.yt = load i64, ptr %i.z, align 8, !tbaa !23
  %i.yu = and i64 %i.yt, 63
  %i.yv = lshr i64 %i.ys, %i.yu
  store i64 %i.yv, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gi:                                            ; preds = %bb.e, %bb.e
  %i.yw = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.yx = load i8, ptr %i.z, align 8, !tbaa !23
  %i.yy = and i8 %i.yx, 7
  %i.yz = ashr i8 %i.yw, %i.yy
  %i.za = zext i8 %i.yz to i64
  store i64 %i.za, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gj:                                            ; preds = %bb.e
  %i.zb = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.zc = sext i8 %i.zb to i32
  %i.zd = load i8, ptr %i.z, align 8, !tbaa !23
  %i.ze = and i8 %i.zd, 7
  %i.zf = zext nneg i8 %i.ze to i32
  %i.zg = ashr i32 %i.zc, %i.zf
  %i.zh = sext i32 %i.zg to i64
  store i64 %i.zh, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gk:                                            ; preds = %bb.e
  %i.zi = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.zj = load i16, ptr %i.z, align 8, !tbaa !23
  %i.zk = and i16 %i.zj, 15
  %i.zl = ashr i16 %i.zi, %i.zk
  %i.zm = zext i16 %i.zl to i64
  store i64 %i.zm, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gl:                                            ; preds = %bb.e
  %i.zn = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.zo = sext i16 %i.zn to i32
  %i.zp = load i16, ptr %i.z, align 8, !tbaa !23
  %i.zq = and i16 %i.zp, 15
  %i.zr = zext nneg i16 %i.zq to i32
  %i.zs = ashr i32 %i.zo, %i.zr
  %i.zt = sext i32 %i.zs to i64
  store i64 %i.zt, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gm:                                            ; preds = %bb.e
  %i.zu = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.zv = load i32, ptr %i.z, align 8, !tbaa !23
  %i.zw = and i32 %i.zv, 31
  %i.zx = ashr i32 %i.zu, %i.zw
  %i.zy = zext i32 %i.zx to i64
  store i64 %i.zy, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gn:                                            ; preds = %bb.e
  %i.zz = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.aaa = load i32, ptr %i.z, align 8, !tbaa !23
  %i.aab = and i32 %i.aaa, 31
  %i.aac = ashr i32 %i.zz, %i.aab
  %i.aad = sext i32 %i.aac to i64
  store i64 %i.aad, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.go:                                            ; preds = %bb.e, %bb.e
  %i.aae = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.aaf = load i64, ptr %i.z, align 8, !tbaa !23
  %i.aag = and i64 %i.aaf, 63
  %i.aah = ashr i64 %i.aae, %i.aag
  store i64 %i.aah, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gp:                                            ; preds = %bb.e, %bb.e
  %i.aai = load i8, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aaj = load i8, ptr %i.z, align 8, !tbaa !23
  %8 = tail call i8 @llvm.fshl.i8(i8 %i.aai, i8 %i.aai, i8 range(i8 0, 8) %i.aaj)
  %i.aak = zext i8 %8 to i64
  store i64 %i.aak, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gq:                                            ; preds = %bb.e
  %i.aal = load i8, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aam = load i8, ptr %i.z, align 8, !tbaa !23
  %9 = tail call i8 @llvm.fshl.i8(i8 %i.aal, i8 %i.aal, i8 range(i8 0, 8) %i.aam)
  %i.aan = sext i8 %9 to i64
  store i64 %i.aan, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gr:                                            ; preds = %bb.e
  %i.aao = load i16, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aap = load i16, ptr %i.z, align 8, !tbaa !23
  %10 = tail call i16 @llvm.fshl.i16(i16 %i.aao, i16 %i.aao, i16 range(i16 0, 16) %i.aap)
  %i.aaq = zext i16 %10 to i64
  store i64 %i.aaq, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gs:                                            ; preds = %bb.e
  %i.aar = load i16, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aas = load i16, ptr %i.z, align 8, !tbaa !23
  %11 = tail call i16 @llvm.fshl.i16(i16 %i.aar, i16 %i.aar, i16 range(i16 0, 16) %i.aas)
  %i.aat = sext i16 %11 to i64
  store i64 %i.aat, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gt:                                            ; preds = %bb.e
  %i.aau = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aav = load i32, ptr %i.z, align 8, !tbaa !23
  %i.aaw = tail call i32 @llvm.fshl.i32(i32 %i.aau, i32 %i.aau, i32 range(i32 0, 32) %i.aav)
  %i.aax = zext i32 %i.aaw to i64
  store i64 %i.aax, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gu:                                            ; preds = %bb.e
  %i.aay = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aaz = load i32, ptr %i.z, align 8, !tbaa !23
  %i.aba = tail call i32 @llvm.fshl.i32(i32 %i.aay, i32 %i.aay, i32 range(i32 0, 32) %i.aaz)
  %i.abb = sext i32 %i.aba to i64
  store i64 %i.abb, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gv:                                            ; preds = %bb.e, %bb.e
  %i.abc = load i64, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abd = load i64, ptr %i.z, align 8, !tbaa !23
  %i.abe = tail call i64 @llvm.fshl.i64(i64 %i.abc, i64 %i.abc, i64 range(i64 0, 64) %i.abd)
  store i64 %i.abe, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gw:                                            ; preds = %bb.e, %bb.e
  %i.abf = load i8, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abg = load i8, ptr %i.z, align 8, !tbaa !23
  %12 = tail call i8 @llvm.fshr.i8(i8 %i.abf, i8 %i.abf, i8 range(i8 0, 8) %i.abg)
  %i.abh = zext i8 %12 to i64
  store i64 %i.abh, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gx:                                            ; preds = %bb.e
  %i.abi = load i8, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abj = load i8, ptr %i.z, align 8, !tbaa !23
  %13 = tail call i8 @llvm.fshr.i8(i8 %i.abi, i8 %i.abi, i8 range(i8 0, 8) %i.abj)
  %i.abk = sext i8 %13 to i64
  store i64 %i.abk, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gy:                                            ; preds = %bb.e
  %i.abl = load i16, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abm = load i16, ptr %i.z, align 8, !tbaa !23
  %14 = tail call i16 @llvm.fshr.i16(i16 %i.abl, i16 %i.abl, i16 range(i16 0, 16) %i.abm)
  %i.abn = zext i16 %14 to i64
  store i64 %i.abn, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.gz:                                            ; preds = %bb.e
  %i.abo = load i16, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abp = load i16, ptr %i.z, align 8, !tbaa !23
  %15 = tail call i16 @llvm.fshr.i16(i16 %i.abo, i16 %i.abo, i16 range(i16 0, 16) %i.abp)
  %i.abq = sext i16 %15 to i64
  store i64 %i.abq, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ha:                                            ; preds = %bb.e
  %i.abr = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abs = load i32, ptr %i.z, align 8, !tbaa !23
  %i.abt = tail call i32 @llvm.fshr.i32(i32 %i.abr, i32 %i.abr, i32 range(i32 0, 32) %i.abs)
  %i.abu = zext i32 %i.abt to i64
  store i64 %i.abu, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hb:                                            ; preds = %bb.e
  %i.abv = load i32, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.abw = load i32, ptr %i.z, align 8, !tbaa !23
  %i.abx = tail call i32 @llvm.fshr.i32(i32 %i.abv, i32 %i.abv, i32 range(i32 0, 32) %i.abw)
  %i.aby = sext i32 %i.abx to i64
  store i64 %i.aby, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hc:                                            ; preds = %bb.e, %bb.e
  %i.abz = load i64, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.aca = load i64, ptr %i.z, align 8, !tbaa !23
  %i.acb = tail call i64 @llvm.fshr.i64(i64 %i.abz, i64 %i.abz, i64 range(i64 0, 64) %i.aca)
  store i64 %i.acb, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hd:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.acc = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.acd = load i64, ptr %i.z, align 8, !tbaa !23
  %.not1900 = icmp ugt i64 %i.acc, %i.acd
  %i.ace = select i1 %.not1900, i32 %.01667, i32 %.11659
  br label %_ir_fold_cast.exit2050.thread2143

bb.he:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.acf = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.acg = load i64, ptr %i.z, align 8, !tbaa !23
  %.not1899 = icmp sgt i64 %i.acf, %i.acg
  %i.ach = select i1 %.not1899, i32 %.01667, i32 %.11659
  br label %_ir_fold_cast.exit2050.thread2143

bb.hf:                                            ; preds = %bb.e
  %i.aci = load double, ptr %i.ab, align 8, !tbaa !23
  %i.acj = load double, ptr %i.z, align 8, !tbaa !23
  %i.ack = fcmp ole double %i.aci, %i.acj
  %i.acl = select i1 %i.ack, i32 %.11659, i32 %.01667
  br label %_ir_fold_cast.exit2050.thread2143

bb.hg:                                            ; preds = %bb.e
  %i.acm = load float, ptr %i.ab, align 8, !tbaa !23
  %i.acn = load float, ptr %i.z, align 8, !tbaa !23
  %i.aco = fcmp ole float %i.acm, %i.acn
  %i.acp = select i1 %i.aco, i32 %.11659, i32 %.01667
  br label %_ir_fold_cast.exit2050.thread2143

bb.hh:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.acq = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.acr = load i64, ptr %i.z, align 8, !tbaa !23
  %.not1898 = icmp ult i64 %i.acq, %i.acr
  %i.acs = select i1 %.not1898, i32 %.01667, i32 %.11659
  br label %_ir_fold_cast.exit2050.thread2143

bb.hi:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %i.act = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.acu = load i64, ptr %i.z, align 8, !tbaa !23
  %.not1897 = icmp slt i64 %i.act, %i.acu
  %i.acv = select i1 %.not1897, i32 %.01667, i32 %.11659
  br label %_ir_fold_cast.exit2050.thread2143

bb.hj:                                            ; preds = %bb.e
  %i.acw = load double, ptr %i.ab, align 8, !tbaa !23
  %i.acx = load double, ptr %i.z, align 8, !tbaa !23
  %i.acy = fcmp oge double %i.acw, %i.acx
  %i.acz = select i1 %i.acy, i32 %.11659, i32 %.01667
  br label %_ir_fold_cast.exit2050.thread2143

bb.hk:                                            ; preds = %bb.e
  %i.ada = load float, ptr %i.ab, align 8, !tbaa !23
  %i.adb = load float, ptr %i.z, align 8, !tbaa !23
  %i.adc = fcmp oge float %i.ada, %i.adb
  %i.add = select i1 %i.adc, i32 %.11659, i32 %.01667
  br label %_ir_fold_cast.exit2050.thread2143

bb.hl:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.ade = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.adf = sext i8 %i.ade to i64
  store i64 %i.adf, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hm:                                            ; preds = %bb.e, %bb.e
  %i.adg = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.adh = sext i16 %i.adg to i64
  store i64 %i.adh, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hn:                                            ; preds = %bb.e, %bb.e
  %i.adi = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.adj = sext i32 %i.adi to i64
  store i64 %i.adj, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ho:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.adk = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.adl = zext i8 %i.adk to i64
  store i64 %i.adl, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hp:                                            ; preds = %bb.e, %bb.e
  %i.adm = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.adn = zext i16 %i.adm to i64
  store i64 %i.adn, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hq:                                            ; preds = %bb.e, %bb.e
  %i.ado = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.adp = zext i32 %i.ado to i64
  store i64 %i.adp, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hr:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  switch i8 %trunc2222, label %bb.hs [
    i8 6, label %bb.hy
    i8 4, label %bb.hx
    i8 9, label %bb.ht
    i8 10, label %bb.hu
    i8 2, label %bb.hv
    i8 1, label %bb.hv
    i8 3, label %bb.hw
  ]

bb.hs:                                            ; preds = %bb.hr
  %i.adq = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.adr = sext i8 %i.adq to i64
  store i64 %i.adr, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ht:                                            ; preds = %bb.hr
  %i.ads = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.adt = sext i16 %i.ads to i64
  store i64 %i.adt, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hu:                                            ; preds = %bb.hr
  %i.adu = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.adv = sext i32 %i.adu to i64
  store i64 %i.adv, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hv:                                            ; preds = %bb.hr, %bb.hr
  %i.adw = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.adx = zext i8 %i.adw to i64
  store i64 %i.adx, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hw:                                            ; preds = %bb.hr
  %i.ady = load i16, ptr %i.ab, align 8, !tbaa !23
  %i.adz = zext i16 %i.ady to i64
  store i64 %i.adz, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hx:                                            ; preds = %bb.hr
  %i.aea = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.aeb = zext i32 %i.aea to i64
  store i64 %i.aeb, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hy:                                            ; preds = %bb.hr
  %i.aec = load i32, ptr %i.ab, align 8, !tbaa !23
  %i.aed = zext i32 %i.aec to i64
  store i64 %i.aed, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.hz:                                            ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  switch i8 %trunc2222, label %bb.ia [
    i8 6, label %bb.im
    i8 8, label %bb.ib
    i8 9, label %bb.ic
    i8 10, label %bb.id
    i8 11, label %bb.ie
    i8 2, label %bb.if
    i8 3, label %bb.ig
    i8 4, label %bb.ih
    i8 5, label %bb.ii
    i8 13, label %bb.ij
    i8 12, label %bb.ik
    i8 7, label %bb.il
  ]

bb.ia:                                            ; preds = %bb.hz
  %i.aee = load i8, ptr %i.ab, align 8, !tbaa !23
  %.not1895 = icmp eq i8 %i.aee, 0
  %i.aef = select i1 %.not1895, i32 -2, i32 -3
  br label %_ir_fold_cast.exit2050.thread2143

bb.ib:                                            ; preds = %bb.hz
  %i.aeg = load i8, ptr %i.ab, align 8, !tbaa !23
  %i.aeh = sext i8 %i.aeg to i64
  store i64 %i.aeh, ptr %.sroa.0, align 8, !tbaa !23
  br label %_ir_fold_cast.exit2050.thread

bb.ic:                                            ; preds = %bb.hz
end_hunk_0
begin_hunk_1_@_ir_VA_END:bb.a
  store i32 0, ptr %i.m, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ir_VA_COPY(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit3.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit3.exit

ir_emit3.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = add nsw i32 %i.d, 1
  store i32 %i.g, ptr %i.c, align 8, !tbaa !46
  %i.h = load ptr, ptr %0, align 8, !tbaa !48
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i ; 4 uses
  store i32 94, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %1, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %2, ptr %i.m, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_VA_ARG(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit2.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit2.exit

ir_emit2.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = shl i32 %1, 8
  %i.h = and i32 %i.g, 16776960
  %i.i = or disjoint i32 %i.h, 95
  %i.j = add nsw i32 %i.d, 1
  store i32 %i.j, ptr %i.c, align 8, !tbaa !46
  %i.k = load ptr, ptr %0, align 8, !tbaa !48
  %i.l = sext i32 %i.d to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.l ; 4 uses
  store i32 %i.i, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.b, ptr %i.n, align 4, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %2, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_VA_ARG_EX(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit3.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit3.exit

ir_emit3.exit:                                    ; preds = %bb.a, %bb.b
  %.tr = trunc i64 %3 to i32
  %i.g = shl i32 %.tr, 3
  %i.h = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %4, i1 true)
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = or i32 %i.g, %i.i
  %i.k = shl i32 %1, 8
  %i.l = and i32 %i.k, 16776960
  %i.m = or disjoint i32 %i.l, 95
  %i.n = add nsw i32 %i.d, 1
  store i32 %i.n, ptr %i.c, align 8, !tbaa !46
  %i.o = load ptr, ptr %0, align 8, !tbaa !48
  %i.p = sext i32 %i.d to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 4 uses
  store i32 %i.m, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %i.b, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %2, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 %i.j, ptr %i.t, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @_ir_BLOCK_BEGIN(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not.i.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i.i, label %ir_emit1.exit, label %bb.b, !prof !68

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ir_grow_top(ptr noundef nonnull %0)
  br label %ir_emit1.exit

ir_emit1.exit:                                    ; preds = %bb.a, %bb.b
  %i.g = add nsw i32 %i.d, 1
  store i32 %i.g, ptr %i.c, align 8, !tbaa !46
  %i.h = load ptr, ptr %0, align 8, !tbaa !48
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i ; 4 uses
  store i32 1614, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !23
  store i32 %i.d, ptr %i.a, align 8, !tbaa !23
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ir_grow_bottom(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !49   ; 7 uses
  %i.d = icmp slt i32 %i.c, 4096
  %i.e = shl nsw i32 %i.c, 1
  %i.f = icmp samesign ult i32 %i.c, 8192
  %i.g = add nuw nsw i32 %i.c, 4096
  %spec.select = select i1 %i.f, i32 8192, i32 %i.g
  %.sink = select i1 %i.d, i32 %i.e, i32 %spec.select ; 2 uses
  store i32 %.sink, ptr %i.b, align 4, !tbaa !49
  %i.h = sext i32 %i.c to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50
  %i.m = add nsw i32 %i.l, %.sink
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 4
  %i.p = tail call ptr @_erealloc(ptr noundef %i.j, i64 noundef %i.o) #29 ; 3 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !49
  %i.r = sub nsw i32 %i.q, %i.c
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %i.w = add nsw i32 %i.v, %i.c
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.p, i64 %i.y, i1 false)
  %i.z = load i32, ptr %i.b, align 4, !tbaa !49
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.aa
  store ptr %i.ab, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #23

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(1) }

!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !24}
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!19, !19, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"long", !19, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!"any pointer", !19, i64 0}
!29 = !{!"p1 _ZTS8_ir_insn", !28, i64 0}
!30 = !{!"p1 int", !28, i64 0}
!31 = !{!"", !19, i64 0, !19, i64 4}
!32 = !{!"_ir_insn", !31, i64 0, !19, i64 8}
!33 = !{!"p1 _ZTS11_ir_hashtab", !28, i64 0}
!34 = !{!"p1 _ZTS12_ir_use_list", !28, i64 0}
!35 = !{!"p1 _ZTS9_ir_block", !28, i64 0}
!36 = !{!"any p2 pointer", !28, i64 0}
!37 = !{!"p2 _ZTS17_ir_live_interval", !36, i64 0}
!38 = !{!"p1 _ZTS9_ir_arena", !28, i64 0}
!39 = !{!"p1 _ZTS14_ir_live_range", !28, i64 0}
!40 = !{!"p1 omnipotent char", !28, i64 0}
!41 = !{!"p1 _ZTS10_ir_strtab", !28, i64 0}
!42 = !{!"p1 _ZTS15_ir_code_buffer", !28, i64 0}
!43 = !{!"p1 _ZTS10_ir_loader", !28, i64 0}
!44 = !{!"_ir_strtab", !28, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !40, i64 24, !20, i64 32, !20, i64 36}
!45 = !{!"_ir_ctx", !29, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !25, i64 24, !30, i64 32, !20, i64 40, !20, i64 44, !20, i64 48, !20, i64 52, !20, i64 56, !20, i64 60, !32, i64 64, !28, i64 80, !33, i64 88, !34, i64 96, !30, i64 104, !20, i64 112, !20, i64 116, !20, i64 120, !35, i64 128, !30, i64 136, !30, i64 144, !30, i64 152, !30, i64 160, !30, i64 168, !20, i64 176, !20, i64 180, !25, i64 184, !20, i64 192, !20, i64 196, !20, i64 200, !25, i64 208, !20, i64 216, !20, i64 220, !20, i64 224, !20, i64 228, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256, !41, i64 264, !30, i64 272, !19, i64 280, !28, i64 288, !20, i64 296, !20, i64 300, !25, i64 304, !20, i64 312, !20, i64 316, !20, i64 320, !30, i64 328, !28, i64 336, !42, i64 344, !43, i64 352, !44, i64 360, !19, i64 400, !19, i64 660}
!46 = !{!45, !20, i64 8}
!47 = !{!45, !20, i64 16}
!48 = !{!45, !29, i64 0}
!49 = !{!45, !20, i64 20}
!50 = !{!45, !20, i64 12}
!51 = !{!45, !30, i64 32}
!52 = !{!45, !25, i64 24}
!53 = !{!45, !20, i64 60}
!54 = !{!45, !20, i64 40}
!55 = !{!45, !28, i64 360}
!56 = !{!45, !33, i64 88}
!57 = !{!"_ir_hashtab", !28, i64 0, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!58 = !{!57, !20, i64 8}
!59 = !{!57, !28, i64 0}
!60 = !{!45, !34, i64 96}
!61 = !{!45, !30, i64 104}
!62 = !{!45, !30, i64 144}
!63 = !{!"_ir_array", !30, i64 0, !20, i64 8}
!64 = !{!63, !30, i64 0}
!65 = !{!63, !20, i64 8}
!66 = !{!"_ir_list", !63, i64 0, !20, i64 16}
!67 = !{!66, !20, i64 16}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!20, !20, i64 0}
!70 = !{!45, !20, i64 376}
!71 = !{!"_ir_proto_t", !19, i64 0, !19, i64 1, !19, i64 2, !19, i64 3}
!72 = !{!71, !19, i64 0}
!73 = !{!71, !19, i64 1}
!74 = !{!71, !19, i64 2}
!75 = !{!"_ir_use_list", !20, i64 0, !20, i64 4}
!76 = !{!75, !20, i64 4}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!"branch_weights", i32 1999, i32 1}
!79 = !{!"branch_weights", i32 1, i32 0}
!80 = !{!"_ir_hashtab_bucket", !20, i64 0, !20, i64 4, !20, i64 8}
!81 = !{!80, !20, i64 0}
!82 = !{!57, !20, i64 16}
!83 = !{!57, !20, i64 12}
!84 = !{!57, !20, i64 20}
!85 = !{!80, !20, i64 4}
!86 = !{!80, !20, i64 8}
!87 = !{!75, !20, i64 0}
!88 = !{!45, !20, i64 112}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
!91 = !{!66, !30, i64 0}
!92 = !{!"_ir_addrtab_bucket", !25, i64 0, !20, i64 8, !20, i64 12}
!93 = !{!92, !25, i64 0}
!94 = !{!92, !20, i64 8}
!95 = !{!92, !20, i64 12}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!"branch_weights", i32 2000, i32 2002}
!98 = !{!"branch_weights", i32 2002, i32 2000}
!99 = !{!45, !20, i64 48}
!100 = !{!45, !28, i64 288}
!101 = distinct !{!101, !24}
!102 = !{!25, !25, i64 0}
!103 = !{!45, !20, i64 180}
!104 = !{!45, !20, i64 196}
!105 = distinct !{!105, !24}
!106 = !{!45, !28, i64 80}
!107 = !{!45, !35, i64 128}
!108 = !{!45, !30, i64 136}
!109 = !{!45, !30, i64 152}
!110 = !{!45, !30, i64 160}
!111 = !{!45, !30, i64 168}
!112 = !{!45, !37, i64 232}
!113 = !{!45, !38, i64 240}
!114 = !{!"_ir_arena", !40, i64 0, !40, i64 8, !38, i64 16}
!115 = !{!114, !38, i64 16}
!116 = !{!45, !40, i64 256}
!117 = !{!45, !41, i64 264}
!118 = !{!45, !30, i64 272}
!119 = !{!45, !30, i64 328}
!120 = !{!45, !28, i64 336}
!121 = distinct !{!121, !24}
!122 = distinct !{!122, !24}
!123 = distinct !{!123, !24}
!124 = distinct !{!124, !24}
!125 = distinct !{!125, !24}
!126 = distinct !{!126, !24}
!127 = distinct !{!127, !24}
!128 = distinct !{!128, !24, !89, !90}
!129 = distinct !{!129, !24, !90, !89}
!130 = distinct !{!130, !24}
!131 = distinct !{!131, !24}
!132 = distinct !{!132, !24}
!133 = !{!66, !20, i64 8}
!134 = distinct !{!134, !24}
!135 = distinct !{!135, !24}
!136 = distinct !{!136, !24}
!137 = distinct !{!137, !24}
!138 = distinct !{!138, !24}
!139 = distinct !{!139, !24}
!140 = distinct !{!140, !24}
!141 = distinct !{!141, !24}
!142 = distinct !{!142, !24}
!143 = distinct !{!143, !24, !89, !90}
!144 = distinct !{!144, !96}
!145 = distinct !{!145, !24, !89}
!146 = distinct !{!146, !24, !89, !90}
!147 = distinct !{!147, !96}
!148 = distinct !{!148, !24, !89}
!149 = distinct !{!149, !24}
!150 = distinct !{!150, !24}
end_hunk_1
