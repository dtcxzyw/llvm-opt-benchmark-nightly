Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3Aadvance0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AGrammarContext0x29:bb.a

bb.af:                                            ; preds = %bb.ae
  %.val5294 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %.val5294, i64 %i.e
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i32 63, ptr %i.gg, align 1
  %i.gh = add i32 %.0.copyload.i, 2
  %.val5293 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gi = getelementptr inbounds nuw i8, ptr %.val5293, i64 %i.e
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 80
  store i32 %i.gh, ptr %i.gj, align 1
  br label %bb.kx

bb.ag:                                            ; preds = %bb.ae
  %.val5292 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %.val5292, i64 %i.e
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i32 95, ptr %i.gl, align 1
  %i.gm = add i32 %.0.copyload.i, 2
  %.val5291 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %.val5291, i64 %i.e
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  store i32 %i.gm, ptr %i.go, align 1
  br label %bb.kx

bb.ah:                                            ; preds = %bb.ae
  %i.gp = add i32 %.0.copyload.i, 1
  %.val5290 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %.val5290, i64 %i.e
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  store i32 %i.gp, ptr %i.gr, align 1
  %.val5289 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %.val5289, i64 %i.e
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store i32 70, ptr %i.gt, align 1
  br label %bb.kx

bb.ai:                                            ; preds = %.backedge5740
  %.val5288 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gu = getelementptr inbounds nuw i8, ptr %.val5288, i64 %i.e
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  store i32 %.0.copyload.i, ptr %i.gv, align 1
  %.val5033 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gw = getelementptr inbounds nuw i8, ptr %.val5033, i64 %i.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %.0.copyload.i5423 = load i8, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5423) #7, !srcloc !20
  switch i8 %.0.copyload.i5423, label %bb.an [
    i8 61, label %bb.am
    i8 38, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %.val5032 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %.val5032, i64 %i.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %.0.copyload.i5424 = load i8, ptr %i.gz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5424) #7, !srcloc !20
  %i.ha = icmp eq i8 %.0.copyload.i5424, 61
  br i1 %i.ha, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.val5287 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %.val5287, i64 %i.e
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i32 105, ptr %i.hc, align 1
  %i.hd = add i32 %.0.copyload.i, 3
  %.val5286 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %.val5286, i64 %i.e
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  store i32 %i.hd, ptr %i.hf, align 1
  br label %bb.kx

bb.al:                                            ; preds = %bb.aj
  %i.hg = add i32 %.0.copyload.i, 2
  %.val5285 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %.val5285, i64 %i.e
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  store i32 %i.hg, ptr %i.hi, align 1
  %.val5284 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw i8, ptr %.val5284, i64 %i.e
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store i32 85, ptr %i.hk, align 1
  br label %bb.kx

bb.am:                                            ; preds = %bb.ai
  %.val5283 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %.val5283, i64 %i.e
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i32 103, ptr %i.hm, align 1
  %i.hn = add i32 %.0.copyload.i, 2
  %.val5282 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ho = getelementptr inbounds nuw i8, ptr %.val5282, i64 %i.e
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  store i32 %i.hn, ptr %i.hp, align 1
  br label %bb.kx

bb.an:                                            ; preds = %bb.ai
  %i.hq = add i32 %.0.copyload.i, 1
  %.val5281 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %.val5281, i64 %i.e
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  store i32 %i.hq, ptr %i.hs, align 1
  %.val5280 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %.val5280, i64 %i.e
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i32 82, ptr %i.hu, align 1
  br label %bb.kx

bb.ao:                                            ; preds = %.backedge5740
  %.val5279 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %.val5279, i64 %i.e
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  store i32 %.0.copyload.i, ptr %i.hw, align 1
  %.val5031 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %.val5031, i64 %i.ab
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %.0.copyload.i5425 = load i8, ptr %i.hy, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5425) #7, !srcloc !20
  switch i8 %.0.copyload.i5425, label %bb.at [
    i8 61, label %bb.as
    i8 124, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %.val5030 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %.val5030, i64 %i.ab
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %.0.copyload.i5426 = load i8, ptr %i.ia, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5426) #7, !srcloc !20
  %i.ib = icmp eq i8 %.0.copyload.i5426, 61
  br i1 %i.ib, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.val5278 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ic = getelementptr inbounds nuw i8, ptr %.val5278, i64 %i.e
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i32 106, ptr %i.id, align 1
  %i.ie = add i32 %.0.copyload.i, 3
  %.val5277 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %.val5277, i64 %i.e
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 80
  store i32 %i.ie, ptr %i.ig, align 1
  br label %bb.kx

bb.ar:                                            ; preds = %bb.ap
  %i.ih = add i32 %.0.copyload.i, 2
  %.val5276 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %.val5276, i64 %i.e
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 80
  store i32 %i.ih, ptr %i.ij, align 1
  %.val5275 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ik = getelementptr inbounds nuw i8, ptr %.val5275, i64 %i.e
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store i32 86, ptr %i.il, align 1
  br label %bb.kx

bb.as:                                            ; preds = %bb.ao
  %.val5274 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val5274, i64 %i.e
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i32 104, ptr %i.in, align 1
  %i.io = add i32 %.0.copyload.i, 2
  %.val5273 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ip = getelementptr inbounds nuw i8, ptr %.val5273, i64 %i.e
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  store i32 %i.io, ptr %i.iq, align 1
  br label %bb.kx

bb.at:                                            ; preds = %bb.ao
  %i.ir = add i32 %.0.copyload.i, 1
  %.val5272 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %.val5272, i64 %i.e
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store i32 %i.ir, ptr %i.it, align 1
  %.val5271 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iu = getelementptr inbounds nuw i8, ptr %.val5271, i64 %i.e
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  store i32 84, ptr %i.iv, align 1
  br label %bb.kx

bb.au:                                            ; preds = %.backedge5740
  %.val5270 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iw = getelementptr inbounds nuw i8, ptr %.val5270, i64 %i.e
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 28
  store i32 %.0.copyload.i, ptr %i.ix, align 1
  %.val5029 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.iy = getelementptr inbounds nuw i8, ptr %.val5029, i64 %i.ab
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  %.0.copyload.i5427 = load i8, ptr %i.iz, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5427) #7, !srcloc !20
  %i.ja = icmp eq i8 %.0.copyload.i5427, 46
  br i1 %i.ja, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.val5377 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %.val5377, i64 %i.ab
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %.0.copyload.i5428 = load i8, ptr %i.jc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5428) #7, !srcloc !21
  %3 = sext i8 %.0.copyload.i5428 to i32
  %4 = add nsw i32 %3, -48
  %i.jd = icmp ult i32 %4, 10
  br i1 %i.jd, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.je = add i32 %.0.copyload.i, 2
  %.val5269 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jf = getelementptr inbounds nuw i8, ptr %.val5269, i64 %i.e
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 80
  store i32 %i.je, ptr %i.jg, align 1
  %.val5268 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jh = getelementptr inbounds nuw i8, ptr %.val5268, i64 %i.e
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  store i32 58, ptr %i.ji, align 1
  br label %bb.kx

bb.ax:                                            ; preds = %bb.au
  %i.jj = icmp ne i32 %2, 3
  %.not4648 = icmp eq i8 %.0.copyload.i5427, 63
  %or.cond = and i1 %i.jj, %.not4648
  br i1 %or.cond, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.val5028 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw i8, ptr %.val5028, i64 %i.ab
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %.0.copyload.i5429 = load i8, ptr %i.jl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5429) #7, !srcloc !20
  %i.jm = icmp eq i8 %.0.copyload.i5429, 61
  br i1 %i.jm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.val5267 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jn = getelementptr inbounds nuw i8, ptr %.val5267, i64 %i.e
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store i32 107, ptr %i.jo, align 1
  %i.jp = add i32 %.0.copyload.i, 3
  %.val5266 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jq = getelementptr inbounds nuw i8, ptr %.val5266, i64 %i.e
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  store i32 %i.jp, ptr %i.jr, align 1
  br label %bb.kx

bb.ba:                                            ; preds = %bb.ay
  %i.js = add i32 %.0.copyload.i, 2
  %.val5265 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %.val5265, i64 %i.e
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  store i32 %i.js, ptr %i.ju, align 1
  %.val5264 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %.val5264, i64 %i.e
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i32 87, ptr %i.jw, align 1
  br label %bb.kx

bb.bb:                                            ; preds = %bb.ax, %bb.av
  %i.jx = add i32 %.0.copyload.i, 1
  %.val5263 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %.val5263, i64 %i.e
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  store i32 %i.jx, ptr %i.jz, align 1
  %.val5262 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ka = getelementptr inbounds nuw i8, ptr %.val5262, i64 %i.e
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store i32 91, ptr %i.kb, align 1
  br label %bb.kx

bb.bc:                                            ; preds = %.backedge5740
  %.val5261 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %.val5261, i64 %i.e
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 28
  store i32 %.0.copyload.i, ptr %i.kd, align 1
  %.val5027 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ke = getelementptr inbounds nuw i8, ptr %.val5027, i64 %i.ab
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %.0.copyload.i5430 = load i8, ptr %i.kf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5430) #7, !srcloc !20
  switch i8 %.0.copyload.i5430, label %bb.be [
    i8 42, label %bb.bf
    i8 61, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %.val5260 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kg = getelementptr inbounds nuw i8, ptr %.val5260, i64 %i.e
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  store i32 96, ptr %i.kh, align 1
  %i.ki = add i32 %.0.copyload.i, 2
  %.val5259 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %.val5259, i64 %i.e
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 80
  store i32 %i.ki, ptr %i.kk, align 1
  br label %bb.kx

bb.be:                                            ; preds = %bb.bc
  %i.kl = add i32 %.0.copyload.i, 1
  %.val5258 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.km = getelementptr inbounds nuw i8, ptr %.val5258, i64 %i.e
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  store i32 %i.kl, ptr %i.kn, align 1
  %.val5257 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %.val5257, i64 %i.e
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store i32 66, ptr %i.kp, align 1
  br label %bb.kx

bb.bf:                                            ; preds = %bb.bc
  %.val5026 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val5026, i64 %i.ab
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 2
  %.0.copyload.i5431 = load i8, ptr %i.kr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5431) #7, !srcloc !20
  %i.ks = icmp eq i8 %.0.copyload.i5431, 61
  br i1 %i.ks, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %.val5256 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kt = getelementptr inbounds nuw i8, ptr %.val5256, i64 %i.e
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  store i32 97, ptr %i.ku, align 1
  %i.kv = add i32 %.0.copyload.i, 3
  %.val5255 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kw = getelementptr inbounds nuw i8, ptr %.val5255, i64 %i.e
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 80
  store i32 %i.kv, ptr %i.kx, align 1
  br label %bb.kx

bb.bh:                                            ; preds = %bb.bf
  %i.ky = add i32 %.0.copyload.i, 2
  %.val5254 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kz = getelementptr inbounds nuw i8, ptr %.val5254, i64 %i.e
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 80
  store i32 %i.ky, ptr %i.la, align 1
  %.val5253 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %.val5253, i64 %i.e
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store i32 65, ptr %i.lc, align 1
  br label %bb.kx

bb.bi:                                            ; preds = %.backedge5740
  %.val5252 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ld = getelementptr inbounds nuw i8, ptr %.val5252, i64 %i.e
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 28
  store i32 %.0.copyload.i, ptr %i.le, align 1
  %.val5025 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %.val5025, i64 %i.ab
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %.0.copyload.i5432 = load i8, ptr %i.lg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5432) #7, !srcloc !20
  %i.lh = icmp eq i8 %.0.copyload.i5432, 61
  br i1 %i.lh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.val5251 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %.val5251, i64 %i.e
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store i32 108, ptr %i.lj, align 1
  %i.lk = add i32 %.0.copyload.i, 2
  %.val5250 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %.val5250, i64 %i.e
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 80
  store i32 %i.lk, ptr %i.lm, align 1
  br label %bb.kx

bb.bk:                                            ; preds = %bb.bi
  %i.ln = add i32 %.0.copyload.i, 1
  %.val5249 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val5249, i64 %i.e
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 80
  store i32 %i.ln, ptr %i.lp, align 1
  %.val5248 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val5248, i64 %i.e
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  store i32 83, ptr %i.lr, align 1
  br label %bb.kx

bb.bl:                                            ; preds = %.backedge5740
  %.val5247 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %.val5247, i64 %i.e
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 28
  store i32 %.0.copyload.i, ptr %i.lt, align 1
  %.val5024 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %.val5024, i64 %i.ab
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  %.0.copyload.i5433 = load i8, ptr %i.lv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i5433) #7, !srcloc !20
  %i.lw = icmp eq i8 %.0.copyload.i5433, 61
  br i1 %i.lw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.val5246 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %.val5246, i64 %i.e
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store i32 98, ptr %i.ly, align 1
  %i.lz = add i32 %.0.copyload.i, 2
  %.val5245 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %.val5245, i64 %i.e
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  store i32 %i.lz, ptr %i.mb, align 1
  br label %bb.kx

bb.bn:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconsumeIdentifierStart0x280x29:bb.a
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i443) #7, !srcloc !19
  %i.cl = sub i32 %.0.copyload.i443, %.pre-phi450 ; 4 uses
  %.val395 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %.val395, i64 %i.e
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 100
  %.0.copyload.i444 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i444) #7, !srcloc !19
  %.val394 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %.val394, i64 %i.ae
  %.0.copyload.i445 = load i32, ptr %i.co, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i445) #7, !srcloc !19
  %i.cp = sub i32 %.0.copyload.i444, %.0.copyload.i445
  %i.cq = icmp ugt i32 %i.cl, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = add i32 %1, 92
  %i.cs = add i32 %1, 104
  %i.ct = add i32 %.0.copyload.i445, %i.cl
  tail call void @w2c_hermes_llvh0x3A0x3ASmallVectorBase0x3A0x3Agrow_pod0x28void0x2A0x2C0x20unsigned0x20long0x2C0x20unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.ct, i32 noundef 1) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not388 = icmp eq i32 %.0.copyload.i443, %.pre-phi450
  br i1 %.not388, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %.val393, i64 %i.e
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 92
  %.0.copyload.i446 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i446) #7, !srcloc !19
  %.val392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %.val392, i64 %i.ae
  %.0.copyload.i447 = load i32, ptr %i.cw, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i447) #7, !srcloc !19
  %i.cx = add i32 %.0.copyload.i447, %.0.copyload.i446
  %i.cy = tail call i32 @w2c_hermes_0x5F_memcpy(ptr noundef nonnull %0, i32 noundef %i.cx, i32 noundef %.pre-phi450, i32 noundef %i.cl) #7 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %.val391, i64 %i.ae
  %.0.copyload.i448 = load i32, ptr %i.cz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i448) #7, !srcloc !19
  %i.da = add i32 %.0.copyload.i448, %i.cl
  br label %.sink.split

bb.t:                                             ; preds = %bb.f
  %i.db = icmp sgt i8 %.0.copyload.i431, -1
  br i1 %i.db, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = zext i32 %i.c to i64
  %i.dd = add nuw nsw i64 %i.dc, 28               ; 2 uses
  %.val411 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.val411, i64 %i.dd
  store i32 %.0.copyload.i, ptr %i.de, align 1
  %i.df = add i32 %i.b, -20
  %i.dg = tail call i32 @w2c_hermes_unsigned0x20int0x20hermes0x3A0x3A_decodeUTF8SlowPath0x3Cfalse0x2C0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3A_peekUTF80x28char0x20const0x2A0x290x20const0x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x3E0x28char0x20const0x2A0x260x2C0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3A_peekUTF80x28char0x20const0x2A0x290x20const0x3A0x3A0x27lambda0x270x28llvh0x3A0x3ATwine0x20const0x260x290x29(ptr noundef nonnull %0, i32 noundef %i.df) #7 ; 4 uses
  %.val390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.val390, i64 %i.dd
  %.0.copyload.i449 = load i32, ptr %i.dh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i449) #7, !srcloc !19
  switch i32 %i.dg, label %bb.v [
    i32 36, label %.critedge
    i32 95, label %.critedge
  ]

bb.v:                                             ; preds = %bb.u
  %i.di = or i32 %i.dg, 32
  %i.dj = add i32 %i.di, -97
  %i.dk = icmp ult i32 %i.dj, 26
  br i1 %i.dk, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = tail call i32 @w2c_hermes_hermes0x3A0x3AisUnicodeOnlyLetter0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %i.dg)
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.x, label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.u, %bb.v, %bb.w
  %.val410 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.val410, i64 %i.e
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store i32 0, ptr %i.do, align 1
  tail call void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AappendUnicodeToStorage0x28unsigned0x20int0x29(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.dg)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.k, %.critedge, %bb.s
  %.sink455 = phi i64 [ %i.ae, %bb.s ], [ %i.f, %.critedge ], [ %i.f, %bb.k ], [ %i.o, %bb.e ]
  %.sink = phi i32 [ %i.da, %bb.s ], [ %.0.copyload.i449, %.critedge ], [ %.0.copyload.i442, %bb.k ], [ %i.ac, %bb.e ]
  %.val412 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %.val412, i64 %.sink455
  store i32 %.sink, ptr %i.dp, align 1
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %bb.t, %bb.j
  %.1 = phi i32 [ 0, %bb.t ], [ 0, %bb.w ], [ 1, %bb.j ], [ 1, %.sink.split ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !17
  ret i32 %.1
}

declare void @w2c_hermes_void0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AscanIdentifierParts0x3C0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AIdentifierMode0x2900x3E0x280x29(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AscanNumber0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AGrammarContext0x29(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 31 uses
  %i.c = add i32 %i.b, -192                       ; 13 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 244 uses
  %i.e = zext i32 %1 to i64                       ; 57 uses
  %i.f = add nuw nsw i64 %i.e, 80                 ; 34 uses
  %.val2368 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.val2368, i64 %i.f
  %.0.copyload.i = load i32, ptr %i.g, align 1    ; 15 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i) #7, !srcloc !19
  %i.h = zext i32 %.0.copyload.i to i64           ; 4 uses
  %.val2394 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %.val2394, i64 %i.h
  %.0.copyload.i2513 = load i8, ptr %i.i, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2513) #7, !srcloc !20
  %i.j = icmp ne i8 %.0.copyload.i2513, 48        ; 2 uses
  br i1 %i.j, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val2393 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %.val2393, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.0.copyload.i2514 = load i8, ptr %i.l, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2514) #7, !srcloc !20
  %i.m = or i8 %.0.copyload.i2514, 32             ; 2 uses
  switch i8 %i.m, label %bb.c [
    i8 98, label %bb.i
    i8 120, label %bb.l
    i8 111, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %.0.copyload.i2514, 46
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = add i32 %.0.copyload.i, 2
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.m, 101
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %.0.copyload.i, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = add i32 %.0.copyload.i, 2
  br label %bb.v

bb.h:                                             ; preds = %bb.b
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.02139 = phi i32 [ 8, %bb.h ], [ 2, %bb.b ]
  %.0 = add i32 %.0.copyload.i, 2                 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.02171 = phi i32 [ %i.p, %bb.f ], [ %.0, %bb.i ] ; 3 uses
  %.12140 = phi i32 [ 8, %bb.f ], [ %.02139, %bb.i ]
  %.02117 = phi i32 [ 1, %bb.f ], [ 0, %bb.i ]
  %.02114 = phi i32 [ 0, %bb.f ], [ 1, %bb.i ]
  %.1 = phi i32 [ %.0.copyload.i, %bb.f ], [ %.0, %bb.i ]
  %.val2457 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %.val2457, i64 %i.f
  store i32 %.02171, ptr %i.r, align 1
  %.pre = zext i32 %.02171 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.h, %bb.a ]
  %.12172 = phi i32 [ %.02171, %bb.j ], [ %.0.copyload.i, %bb.a ] ; 2 uses
  %.02151 = phi i32 [ %.1, %bb.j ], [ %.0.copyload.i, %bb.a ] ; 2 uses
  %.22141 = phi i32 [ %.12140, %bb.j ], [ 10, %bb.a ] ; 2 uses
  %.12118 = phi i32 [ %.02117, %bb.j ], [ 0, %bb.a ] ; 2 uses
  %.12115 = phi i32 [ %.02114, %bb.j ], [ 1, %bb.a ] ; 2 uses
  %.val2392 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %.val2392, i64 %.pre-phi
  %.0.copyload.i2515 = load i8, ptr %i.s, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2515) #7, !srcloc !20
  %i.t = zext i8 %.0.copyload.i2515 to i32
  %i.u = icmp eq i8 %.0.copyload.i2515, 95        ; 2 uses
  %i.v = sext i8 %.0.copyload.i2515 to i32
  %i.w = add nsw i32 %i.v, -58
  %i.x = icmp ult i32 %i.w, -10
  %i.y = xor i1 %i.u, %i.x
  br i1 %i.y, label %.loopexit2708, label %.preheader2706

.preheader2706:                                   ; preds = %bb.k, %.preheader2706
  %.22173 = phi i32 [ %i.z, %.preheader2706 ], [ %.12172, %bb.k ] ; 2 uses
  %.02131.in = phi i1 [ %.mux, %.preheader2706 ], [ %i.u, %bb.k ]
  %.02122 = phi i32 [ %i.ab, %.preheader2706 ], [ 0, %bb.k ]
  %.02131 = zext i1 %.02131.in to i32
  %i.z = add i32 %.22173, 1                       ; 3 uses
  %.val2456 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2456, i64 %i.f
  store i32 %i.z, ptr %i.aa, align 1
  %i.ab = or i32 %.02122, %.02131                 ; 2 uses
  %i.ac = zext i32 %.22173 to i64
  %.val2391 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2391, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.0.copyload.i2516 = load i8, ptr %i.ae, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2516) #7, !srcloc !20
  %i.af = icmp eq i8 %.0.copyload.i2516, 95       ; 2 uses
  %3 = sext i8 %.0.copyload.i2516 to i32
  %4 = add nsw i32 %3, -48
  %i.ag = icmp ult i32 %4, 10                     ; 2 uses
  %brmerge = or i1 %i.af, %i.ag
  %not. = xor i1 %i.ag, true
  %.mux = or i1 %i.af, %not.
  br i1 %brmerge, label %.preheader2706, label %.loopexit2707

bb.l:                                             ; preds = %bb.b
  %i.ah = add i32 %.0.copyload.i, 2               ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.32174 = phi i32 [ %i.ah, %bb.l ], [ %i.as, %bb.o ] ; 4 uses
  %.12123 = phi i32 [ 0, %bb.l ], [ %i.au, %bb.o ] ; 2 uses
  %.val2455 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2455, i64 %i.f
  store i32 %.32174, ptr %i.ai, align 1
  %i.aj = zext i32 %.32174 to i64
  %.val2482 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.val2482, i64 %i.aj
  %.0.copyload.i2517 = load i8, ptr %i.ak, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2517) #7, !srcloc !21
  %i.al = sext i8 %.0.copyload.i2517 to i32       ; 3 uses
  %i.am = add nsw i32 %i.al, -48
  %i.an = icmp ult i32 %i.am, 10
  %i.ao = icmp eq i8 %.0.copyload.i2517, 95       ; 2 uses
  %or.cond = or i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = or i32 %i.al, 32
  %i.aq = add nsw i32 %i.ap, -97
  %i.ar = icmp ult i32 %i.aq, 6
  br i1 %i.ar, label %bb.o, label %.loopexit2708

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = add i32 %.32174, 1
  %i.at = zext i1 %i.ao to i32
  %i.au = or i32 %.12123, %i.at
  br label %bb.m

.loopexit2707:                                    ; preds = %.preheader2706
  %i.av = zext i8 %.0.copyload.i2516 to i32
  br label %.loopexit2708

.loopexit2708:                                    ; preds = %bb.n, %.loopexit2707, %bb.k
  %.42175 = phi i32 [ %.12172, %bb.k ], [ %i.z, %.loopexit2707 ], [ %.32174, %bb.n ] ; 2 uses
  %.02159 = phi i32 [ %i.t, %bb.k ], [ %i.av, %.loopexit2707 ], [ %i.al, %bb.n ] ; 2 uses
  %.12152 = phi i32 [ %.02151, %bb.k ], [ %.02151, %.loopexit2707 ], [ %i.ah, %bb.n ] ; 4 uses
  %.32142 = phi i32 [ %.22141, %bb.k ], [ %.22141, %.loopexit2707 ], [ 16, %bb.n ] ; 4 uses
  %.22124 = phi i32 [ 0, %bb.k ], [ %i.ab, %.loopexit2707 ], [ %.12123, %bb.n ] ; 4 uses
  %.22119 = phi i32 [ %.12118, %bb.k ], [ %.12118, %.loopexit2707 ], [ 0, %bb.n ] ; 3 uses
  %.22116 = phi i32 [ %.12115, %bb.k ], [ %.12115, %.loopexit2707 ], [ 1, %bb.n ]
  %.not2215 = icmp eq i32 %.22116, 0
  %or.cond2275 = or i1 %i.j, %.not2215
  br i1 %or.cond2275, label %bb.p, label %.loopexit2702

bb.p:                                             ; preds = %.loopexit2708
  %i.aw = and i32 %.02159, 255
  %.not2216 = icmp eq i32 %i.aw, 46
  br i1 %.not2216, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ax = add i32 %.42175, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.d
  %.22153 = phi i32 [ %.0.copyload.i, %bb.d ], [ %.12152, %bb.q ] ; 2 uses
  %.42143 = phi i32 [ 10, %bb.d ], [ %.32142, %bb.q ] ; 2 uses
  %.32125 = phi i32 [ 0, %bb.d ], [ %.22124, %bb.q ] ; 2 uses
  %.32120 = phi i32 [ 0, %bb.d ], [ %.22119, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.o, %bb.d ], [ %i.ax, %bb.q ] ; 4 uses
  %.val2454 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2454, i64 %i.f
  store i32 %.2, ptr %i.ay, align 1
  %i.az = zext i32 %.2 to i64
  %.val2481 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %.val2481, i64 %i.az
  %.0.copyload.i2518 = load i8, ptr %i.ba, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2518) #7, !srcloc !21
  %i.bb = sext i8 %.0.copyload.i2518 to i32       ; 2 uses
  %i.bc = icmp eq i8 %.0.copyload.i2518, 95       ; 2 uses
  %i.bd = add nsw i32 %i.bb, -48
  %i.be = icmp ult i32 %i.bd, 10
  %or.cond2278.not = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond2278.not, label %.preheader2703, label %.loopexit2704

.preheader2703:                                   ; preds = %bb.r, %.preheader2703
  %.52176 = phi i32 [ %i.bf, %.preheader2703 ], [ %.2, %bb.r ] ; 2 uses
  %.12132.in = phi i1 [ %i.bl, %.preheader2703 ], [ %i.bc, %bb.r ]
  %.42126 = phi i32 [ %i.bh, %.preheader2703 ], [ %.32125, %bb.r ]
  %.12132 = zext i1 %.12132.in to i32
  %i.bf = add i32 %.52176, 1                      ; 3 uses
  %.val2453 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2453, i64 %i.f
  store i32 %i.bf, ptr %i.bg, align 1
  %i.bh = or i32 %.42126, %.12132                 ; 2 uses
  %i.bi = zext i32 %.52176 to i64
  %.val2480 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2480, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %.0.copyload.i2519 = load i8, ptr %i.bk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2519) #7, !srcloc !21
  %i.bl = icmp eq i8 %.0.copyload.i2519, 95       ; 2 uses
  %i.bm = sext i8 %.0.copyload.i2519 to i32       ; 2 uses
  %i.bn = add nsw i32 %i.bm, -48
  %i.bo = icmp ult i32 %i.bn, 10
  %or.cond3029 = select i1 %i.bl, i1 true, i1 %i.bo
  br i1 %or.cond3029, label %.preheader2703, label %.loopexit2704

.loopexit2704:                                    ; preds = %.preheader2703, %bb.r
  %.12160 = phi i32 [ %.2, %bb.r ], [ %i.bf, %.preheader2703 ]
  %.02135 = phi i32 [ %i.bb, %bb.r ], [ %i.bm, %.preheader2703 ]
  %.52127 = phi i32 [ %.32125, %bb.r ], [ %i.bh, %.preheader2703 ] ; 2 uses
  %i.bp = and i32 %.02135, -33
  %.not2218 = icmp eq i32 %i.bp, 69
  br i1 %.not2218, label %bb.s, label %.loopexit2702

bb.s:                                             ; preds = %.loopexit2704
  %i.bq = add i32 %.12160, 1
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.br = and i32 %.02159, 223
  %.not2217 = icmp eq i32 %i.br, 69
  br i1 %.not2217, label %bb.u, label %.loopexit2702

bb.u:                                             ; preds = %bb.t
  %i.bs = add i32 %.42175, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.g
  %.32154 = phi i32 [ %.22153, %bb.s ], [ %.12152, %bb.u ], [ %.0.copyload.i, %bb.g ] ; 2 uses
  %.52144 = phi i32 [ %.42143, %bb.s ], [ %.32142, %bb.u ], [ 10, %bb.g ] ; 2 uses
  %.62128 = phi i32 [ %.52127, %bb.s ], [ %.22124, %bb.u ], [ 0, %bb.g ]
  %.42121 = phi i32 [ %.32120, %bb.s ], [ %.22119, %bb.u ], [ 0, %bb.g ] ; 2 uses
  %.02102 = phi i32 [ %i.bq, %bb.s ], [ %i.bs, %bb.u ], [ %i.q, %bb.g ] ; 4 uses
  %.val2452 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.val2452, i64 %i.f
  store i32 %.02102, ptr %i.bt, align 1
  %i.bu = zext i32 %.02102 to i64                 ; 2 uses
  %.val2390 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %.val2390, i64 %i.bu
  %.0.copyload.i2520 = load i8, ptr %i.bv, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2520) #7, !srcloc !20
  switch i8 %.0.copyload.i2520, label %bb.x [
    i8 43, label %bb.w
    i8 45, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bw = add i32 %.02102, 1                      ; 2 uses
  %.val2451 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %.val2451, i64 %i.f
  store i32 %i.bw, ptr %i.bx, align 1
  %.val2389 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %.val2389, i64 %i.bu
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %.0.copyload.i2521 = load i8, ptr %i.bz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2521) #7, !srcloc !20
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.62177 = phi i32 [ %.02102, %bb.v ], [ %i.bw, %bb.w ]
  %.22161.in = phi i8 [ %.0.copyload.i2520, %bb.v ], [ %.0.copyload.i2521, %bb.w ] ; 2 uses
  %i.ca = sext i8 %.22161.in to i32
  %i.cb = add nsw i32 %i.ca, -58
  %i.cc = icmp ult i32 %i.cb, -10
  br i1 %i.cc, label %bb.ac, label %.preheader2701

.preheader2701:                                   ; preds = %bb.x, %.preheader2701
  %.72178 = phi i32 [ %i.cd, %.preheader2701 ], [ %.62177, %bb.x ] ; 2 uses
  %.32162.shrunk = phi i8 [ %.0.copyload.i2522, %.preheader2701 ], [ %.22161.in, %bb.x ]
  %.72129 = phi i32 [ %i.ch, %.preheader2701 ], [ %.62128, %bb.x ]
  %i.cd = add i32 %.72178, 1                      ; 2 uses
  %.val2450 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %.val2450, i64 %i.f
  store i32 %i.cd, ptr %i.ce, align 1
  %i.cf = icmp eq i8 %.32162.shrunk, 95
  %i.cg = zext i1 %i.cf to i32
  %i.ch = or i32 %.72129, %i.cg                   ; 2 uses
  %i.ci = zext i32 %.72178 to i64
  %.val2388 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %.val2388, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %.0.copyload.i2522 = load i8, ptr %i.ck, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2522) #7, !srcloc !20
  %i.cl = icmp eq i8 %.0.copyload.i2522, 95
  %5 = sext i8 %.0.copyload.i2522 to i32
  %6 = add nsw i32 %5, -48
  %i.cm = icmp ult i32 %6, 10
  %or.cond3032 = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond3032, label %.preheader2701, label %.loopexit2702

.loopexit2702:                                    ; preds = %.preheader2701, %.loopexit2708, %bb.t, %.loopexit2704
  %.42155 = phi i32 [ %.22153, %.loopexit2704 ], [ %.12152, %.loopexit2708 ], [ %.12152, %bb.t ], [ %.32154, %.preheader2701 ] ; 21 uses
  %.62145 = phi i32 [ %.42143, %.loopexit2704 ], [ %.32142, %.loopexit2708 ], [ %.32142, %bb.t ], [ %.52144, %.preheader2701 ] ; 7 uses
  %.not2227 = phi i32 [ 0, %.loopexit2704 ], [ 1, %.loopexit2708 ], [ 1, %bb.t ], [ 0, %.preheader2701 ]
  %.22133 = phi i32 [ 1, %.loopexit2704 ], [ 0, %.loopexit2708 ], [ 0, %bb.t ], [ 1, %.preheader2701 ] ; 2 uses
  %.82130 = phi i32 [ %.52127, %.loopexit2704 ], [ %.22124, %.loopexit2708 ], [ %.22124, %bb.t ], [ %i.ch, %.preheader2701 ] ; 3 uses
  %.5 = phi i32 [ %.32120, %.loopexit2704 ], [ 0, %.loopexit2708 ], [ %.22119, %bb.t ], [ %.42121, %.preheader2701 ] ; 3 uses
  %i.cn = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconsumeIdentifierStart0x280x29(ptr noundef nonnull %0, i32 noundef %1)
  %.not2221 = icmp eq i32 %i.cn, 0
  br i1 %.not2221, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.loopexit2702
  %i.co = icmp ne i32 %.62145, 10                 ; 2 uses
  %i.cp = zext i1 %i.co to i32                    ; 2 uses
  %i.cq = or i32 %.22133, %i.cp
  %.not2222 = icmp eq i32 %i.cq, 0
  br i1 %.not2222, label %bb.z, label %bb.bb

bb.z:                                             ; preds = %bb.y
  %.val2367 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2367, i64 %i.f
  %.0.copyload.i2523 = load i32, ptr %i.cr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2523) #7, !srcloc !19
  %i.cs = sub i32 %.0.copyload.i2523, %.42155     ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 9
  %i.cu = zext i1 %i.ct to i32
  %i.cv = or i32 %.82130, %i.cu
  %.not2223 = icmp eq i32 %i.cv, 0
  br i1 %.not2223, label %bb.aa, label %bb.bc

bb.aa:                                            ; preds = %bb.z
  %i.cw = zext i32 %.42155 to i64
  %.val2479 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.val2479, i64 %i.cw
  %.0.copyload.i2524 = load i8, ptr %i.cx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2524) #7, !srcloc !21
  %i.cy = sext i8 %.0.copyload.i2524 to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 3 uses
  %i.da = add i32 %.42155, 1                      ; 3 uses
  %i.db = icmp eq i32 %i.da, %.0.copyload.i2523
  br i1 %i.db, label %.loopexit2664, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = xor i32 %.42155, -1
  %i.dd = add i32 %.0.copyload.i2523, %i.dc
  %i.de = and i32 %i.dd, 3                        ; 2 uses
  %.not2224 = icmp eq i32 %i.de, 0
  br i1 %.not2224, label %.loopexit2666, label %.preheader2665

.preheader2665:                                   ; preds = %bb.ab, %.preheader2665
  %.42163 = phi i32 [ %i.dl, %.preheader2665 ], [ %i.da, %bb.ab ] ; 2 uses
  %.12136 = phi i32 [ %i.dm, %.preheader2665 ], [ 0, %bb.ab ]
  %.9 = phi i32 [ %i.dk, %.preheader2665 ], [ %i.cz, %bb.ab ]
  %i.df = zext i32 %.42163 to i64
  %.val2478 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %.val2478, i64 %i.df
  %.0.copyload.i2525 = load i8, ptr %i.dg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2525) #7, !srcloc !21
  %i.dh = sext i8 %.0.copyload.i2525 to i32
  %i.di = mul i32 %.9, 10
  %i.dj = add i32 %i.di, -48
  %i.dk = add i32 %i.dj, %i.dh                    ; 2 uses
  %i.dl = add i32 %.42163, 1                      ; 2 uses
  %i.dm = add nuw nsw i32 %.12136, 1              ; 2 uses
  %.not2225 = icmp eq i32 %i.dm, %i.de
  br i1 %.not2225, label %.loopexit2666, label %.preheader2665

.loopexit2666:                                    ; preds = %.preheader2665, %bb.ab
  %.82179 = phi i32 [ %i.da, %bb.ab ], [ %i.dl, %.preheader2665 ]
  %.10 = phi i32 [ %i.cz, %bb.ab ], [ %i.dk, %.preheader2665 ] ; 2 uses
  %i.dn = add i32 %i.cs, -2
  %i.do = icmp ult i32 %i.dn, 3
  br i1 %i.do, label %.loopexit2664, label %.preheader

.preheader:                                       ; preds = %.loopexit2666, %.preheader
  %.92180 = phi i32 [ %i.ek, %.preheader ], [ %.82179, %.loopexit2666 ] ; 2 uses
  %.11 = phi i32 [ %i.ej, %.preheader ], [ %.10, %.loopexit2666 ]
  %i.dp = zext i32 %.92180 to i64                 ; 4 uses
  %.val2477 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.val2477, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %.0.copyload.i2526 = load i8, ptr %i.dr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2526) #7, !srcloc !21
  %i.ds = sext i8 %.0.copyload.i2526 to i32
  %.val2476 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.val2476, i64 %i.dp
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %.0.copyload.i2527 = load i8, ptr %i.du, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2527) #7, !srcloc !21
  %i.dv = sext i8 %.0.copyload.i2527 to i32
  %.val2475 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %.val2475, i64 %i.dp
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %.0.copyload.i2528 = load i8, ptr %i.dx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2528) #7, !srcloc !21
  %i.dy = sext i8 %.0.copyload.i2528 to i32
  %.val2474 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %.val2474, i64 %i.dp
  %.0.copyload.i2529 = load i8, ptr %i.dz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2529) #7, !srcloc !21
  %i.ea = sext i8 %.0.copyload.i2529 to i32
  %i.eb = mul i32 %.11, 10
  %i.ec = add i32 %i.eb, %i.ea
  %i.ed = mul i32 %i.ec, 10
  %i.ee = add i32 %i.ed, %i.dy
  %i.ef = mul i32 %i.ee, 10
  %i.eg = add i32 %i.ef, %i.dv
  %i.eh = mul i32 %i.eg, 10
  %i.ei = add nsw i32 %i.ds, -53328
  %i.ej = add i32 %i.ei, %i.eh                    ; 2 uses
  %i.ek = add i32 %.92180, 4                      ; 2 uses
  %.not2226 = icmp eq i32 %i.ek, %.0.copyload.i2523
  br i1 %.not2226, label %.loopexit2664, label %.preheader

.loopexit2664:                                    ; preds = %.preheader, %.loopexit2666, %bb.aa
  %.12 = phi i32 [ %i.cz, %bb.aa ], [ %.10, %.loopexit2666 ], [ %i.ej, %.preheader ]
  %i.el = sitofp i32 %.12 to double
  br label %bb.ef

bb.ac:                                            ; preds = %bb.x
  %i.em = tail call i32 @w2c_hermes_hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconsumeIdentifierStart0x280x29(ptr noundef nonnull %0, i32 noundef %1)
  %.not2220 = icmp eq i32 %i.em, 0
  br i1 %.not2220, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit2702
  %.not2265.not = phi i1 [ false, %.loopexit2702 ], [ true, %bb.ac ]
  %.52156 = phi i32 [ %.42155, %.loopexit2702 ], [ %.32154, %bb.ac ] ; 3 uses
  %.72146 = phi i32 [ %.62145, %.loopexit2702 ], [ %.52144, %bb.ac ] ; 2 uses
  %.32134 = phi i32 [ %.22133, %.loopexit2702 ], [ 1, %bb.ac ]
  %.6 = phi i32 [ %.5, %.loopexit2702 ], [ %.42121, %bb.ac ]
  tail call void @w2c_hermes_void0x20hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AconsumeIdentifierParts0x3C0x28hermes0x3A0x3Aparser0x3A0x3AJSLexer0x3A0x3AIdentifierMode0x2900x3E0x280x29(ptr noundef nonnull %0, i32 noundef %1) #7
  %.val2366 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.val2366, i64 %i.f
  %.0.copyload.i2530 = load i32, ptr %i.en, align 1 ; 14 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2530) #7, !srcloc !19
  %.not2264 = icmp ne i32 %.32134, 0
  %brmerge2279 = or i1 %.not2265.not, %.not2264
  br i1 %brmerge2279, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sub i32 %.0.copyload.i2530, %.0.copyload.i ; 5 uses
  %.not2266 = icmp eq i32 %.6, 0
  br i1 %.not2266, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not2268 = icmp eq i32 %i.eo, 2
  br i1 %.not2268, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %.val2509 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2509, i64 %i.h
  %.0.copyload.i2531 = load i16, ptr %i.ep, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i16 %.0.copyload.i2531) #7, !srcloc !23
  %.not2269 = icmp eq i16 %.0.copyload.i2531, 28208
  br i1 %.not2269, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %.val2365 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %.val2365, i64 %i.e
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %.0.copyload.i2532 = load i32, ptr %i.er, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2532) #7, !srcloc !19
  %i.es = icmp eq i32 %.0.copyload.i2532, 1
  br i1 %i.es, label %bb.aj, label %.loopexit

bb.ai:                                            ; preds = %bb.ae
  %.val2364 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %.val2364, i64 %i.e
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %.0.copyload.i2533 = load i32, ptr %i.eu, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2533) #7, !srcloc !19
  %.not2267 = icmp eq i32 %.0.copyload.i2533, 1
  br i1 %.not2267, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.val2363 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2363, i64 %i.e
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 92
  %.0.copyload.i2534 = load i32, ptr %i.ew, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i2534) #7, !srcloc !19
  %i.ex = zext i32 %.0.copyload.i2534 to i64
  %.val2387 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2387, i64 %i.ex
  %.0.copyload.i2535 = load i8, ptr %i.ey, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i2535) #7, !srcloc !20
  %.not2270 = icmp eq i8 %.0.copyload.i2535, 110
  br i1 %.not2270, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.ez = add i32 %.0.copyload.i2530, -1          ; 2 uses
  %i.fa = icmp eq i32 %i.ez, %.52156
  br i1 %i.fa, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = add i32 %.0.copyload.i2530, -2
  %i.fc = add nuw nsw i32 %.72146, 87
  %i.fd = add nuw nsw i32 %.72146, 48
  br label %bb.am

end_hunk_1
