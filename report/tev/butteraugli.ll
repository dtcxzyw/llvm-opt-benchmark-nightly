Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/butteraugli?download=true
inline.NumInlined: 2552
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN3jxl24ConvolutionWithTransposeERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEPS1_:bb.a
  %i.ds = shl i64 %i.dr, 2
  %i.dt = sub i64 %i.dq, %i.ds
  %scevgep387 = getelementptr i8, ptr %i.ch, i64 %i.dt
  %scevgep388 = getelementptr i8, ptr %i.bi, i64 68
  %i.du = shl nuw nsw i64 %.sroa.speculated, 1
  %i.dv = sub nsw i64 %i.h, %i.du                 ; 3 uses
  %min.iters.check393 = icmp ugt i64 %i.dv, 3
  %ident.check.not = icmp eq i64 %i.df, 1
  %or.cond645 = select i1 %min.iters.check393, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep387
  %bound1 = icmp ult ptr %scevgep386, %scevgep385
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.cj, 0
  %i.dw = or i1 %found.conflict, %stride.check
  %bound0389 = icmp ult ptr %scevgep, %scevgep388
  %bound1390 = icmp ult ptr %i.bi, %scevgep385
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx = or i1 %i.dw, %found.conflict391
  %n.vec395 = and i64 %i.dv, -4                   ; 4 uses
  %i.dx = add nsw i64 %.sroa.speculated, %n.vec395
  %i.dy = shl nsw i64 %n.vec395, 2
  %cmp.n467 = icmp eq i64 %i.dv, %n.vec395
  br label %.lr.ph288.us

.lr.ph288.us:                                     ; preds = %._crit_edge289.us, %.lr.ph291.split.us
  %.0218290.us = phi i64 [ 0, %.lr.ph291.split.us ], [ %i.ka, %._crit_edge289.us ] ; 7 uses
  %i.dz = mul i64 %i.cj, %.0218290.us
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ea, i64 64) ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.speculated
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ck ; 3 uses
  %or.cond645.not = xor i1 %or.cond645, true
  %brmerge = select i1 %or.cond645.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph392.preheader, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph288.us
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dy
  %i.ee = load float, ptr %i.bi, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert400 = insertelement <4 x float> poison, float %i.ee, i64 0
  %broadcast.splat401 = shufflevector <4 x float> %broadcast.splatinsert400, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ef = load float, ptr %i.cm, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert404 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat405 = shufflevector <4 x float> %broadcast.splatinsert404, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = load float, ptr %i.cn, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert408 = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat409 = shufflevector <4 x float> %broadcast.splatinsert408, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = load float, ptr %i.co, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert412 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat413 = shufflevector <4 x float> %broadcast.splatinsert412, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = load float, ptr %i.cp, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert416 = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splat417 = shufflevector <4 x float> %broadcast.splatinsert416, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = load float, ptr %i.cq, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert420 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat421 = shufflevector <4 x float> %broadcast.splatinsert420, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = load float, ptr %i.cr, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert424 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat425 = shufflevector <4 x float> %broadcast.splatinsert424, <4 x float> poison, <4 x i32> zeroinitializer
  %i.el = load float, ptr %i.cs, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert428 = insertelement <4 x float> poison, float %i.el, i64 0
  %broadcast.splat429 = shufflevector <4 x float> %broadcast.splatinsert428, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = load float, ptr %i.ct, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert432 = insertelement <4 x float> poison, float %i.em, i64 0
  %broadcast.splat433 = shufflevector <4 x float> %broadcast.splatinsert432, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = load float, ptr %i.cu, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert436 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat437 = shufflevector <4 x float> %broadcast.splatinsert436, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eo = load float, ptr %i.cv, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert440 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat441 = shufflevector <4 x float> %broadcast.splatinsert440, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = load float, ptr %i.cw, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert444 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat445 = shufflevector <4 x float> %broadcast.splatinsert444, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = load float, ptr %i.cx, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert448 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat449 = shufflevector <4 x float> %broadcast.splatinsert448, <4 x float> poison, <4 x i32> zeroinitializer
  %i.er = load float, ptr %i.cy, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert452 = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat453 = shufflevector <4 x float> %broadcast.splatinsert452, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = load float, ptr %i.cz, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert456 = insertelement <4 x float> poison, float %i.es, i64 0
  %broadcast.splat457 = shufflevector <4 x float> %broadcast.splatinsert456, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = load float, ptr %i.da, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert460 = insertelement <4 x float> poison, float %i.et, i64 0
  %broadcast.splat461 = shufflevector <4 x float> %broadcast.splatinsert460, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = load float, ptr %i.db, align 4, !tbaa !61, !alias.scope !160
  %broadcast.splatinsert463 = insertelement <4 x float> poison, float %i.eu, i64 0
  %broadcast.splat464 = shufflevector <4 x float> %broadcast.splatinsert463, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next465, %vector.body396 ] ; 3 uses
  %i.ev = add nuw i64 %.sroa.speculated, %index397 ; 4 uses
  %i.ew = shl i64 %index397, 2
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.ew ; 33 uses
  %wide.load398 = load <4 x float>, ptr %next.gep, align 4, !tbaa !61, !alias.scope !161
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep, i64 128
  %wide.load399 = load <4 x float>, ptr %i.ex, align 4, !tbaa !61, !alias.scope !161
  %i.ey = fadd <4 x float> %wide.load398, %wide.load399
  %i.ez = fmul <4 x float> %i.ey, %broadcast.splat401
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load402 = load <4 x float>, ptr %i.fa, align 4, !tbaa !61, !alias.scope !161
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep, i64 124
  %wide.load403 = load <4 x float>, ptr %i.fb, align 4, !tbaa !61, !alias.scope !161
  %i.fc = fadd <4 x float> %wide.load402, %wide.load403
  %i.fd = fmul <4 x float> %i.fc, %broadcast.splat405
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load406 = load <4 x float>, ptr %i.fe, align 4, !tbaa !61, !alias.scope !161
  %i.ff = getelementptr inbounds nuw i8, ptr %next.gep, i64 120
  %wide.load407 = load <4 x float>, ptr %i.ff, align 4, !tbaa !61, !alias.scope !161
  %i.fg = fadd <4 x float> %wide.load406, %wide.load407
  %i.fh = fmul <4 x float> %i.fg, %broadcast.splat409
  %i.fi = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %wide.load410 = load <4 x float>, ptr %i.fi, align 4, !tbaa !61, !alias.scope !161
  %i.fj = getelementptr inbounds nuw i8, ptr %next.gep, i64 116
  %wide.load411 = load <4 x float>, ptr %i.fj, align 4, !tbaa !61, !alias.scope !161
  %i.fk = fadd <4 x float> %wide.load410, %wide.load411
  %i.fl = fmul <4 x float> %i.fk, %broadcast.splat413
  %i.fm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %wide.load414 = load <4 x float>, ptr %i.fm, align 4, !tbaa !61, !alias.scope !161
  %i.fn = getelementptr inbounds nuw i8, ptr %next.gep, i64 112
  %wide.load415 = load <4 x float>, ptr %i.fn, align 4, !tbaa !61, !alias.scope !161
  %i.fo = fadd <4 x float> %wide.load414, %wide.load415
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %broadcast.splat417, <4 x float> %i.ez)
  %i.fq = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %wide.load418 = load <4 x float>, ptr %i.fq, align 4, !tbaa !61, !alias.scope !161
  %i.fr = getelementptr inbounds nuw i8, ptr %next.gep, i64 108
  %wide.load419 = load <4 x float>, ptr %i.fr, align 4, !tbaa !61, !alias.scope !161
  %i.fs = fadd <4 x float> %wide.load418, %wide.load419
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %broadcast.splat421, <4 x float> %i.fd)
  %i.fu = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %wide.load422 = load <4 x float>, ptr %i.fu, align 4, !tbaa !61, !alias.scope !161
  %i.fv = getelementptr inbounds nuw i8, ptr %next.gep, i64 104
  %wide.load423 = load <4 x float>, ptr %i.fv, align 4, !tbaa !61, !alias.scope !161
  %i.fw = fadd <4 x float> %wide.load422, %wide.load423
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %broadcast.splat425, <4 x float> %i.fh)
  %i.fy = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %wide.load426 = load <4 x float>, ptr %i.fy, align 4, !tbaa !61, !alias.scope !161
  %i.fz = getelementptr inbounds nuw i8, ptr %next.gep, i64 100
  %wide.load427 = load <4 x float>, ptr %i.fz, align 4, !tbaa !61, !alias.scope !161
  %i.ga = fadd <4 x float> %wide.load426, %wide.load427
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %broadcast.splat429, <4 x float> %i.fl)
  %i.gc = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %wide.load430 = load <4 x float>, ptr %i.gc, align 4, !tbaa !61, !alias.scope !161
  %i.gd = getelementptr inbounds nuw i8, ptr %next.gep, i64 96
  %wide.load431 = load <4 x float>, ptr %i.gd, align 4, !tbaa !61, !alias.scope !161
  %i.ge = fadd <4 x float> %wide.load430, %wide.load431
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ge, <4 x float> %broadcast.splat433, <4 x float> %i.fp)
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep, i64 36
  %wide.load434 = load <4 x float>, ptr %i.gg, align 4, !tbaa !61, !alias.scope !161
  %i.gh = getelementptr inbounds nuw i8, ptr %next.gep, i64 92
  %wide.load435 = load <4 x float>, ptr %i.gh, align 4, !tbaa !61, !alias.scope !161
  %i.gi = fadd <4 x float> %wide.load434, %wide.load435
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %broadcast.splat437, <4 x float> %i.ft)
  %i.gk = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %wide.load438 = load <4 x float>, ptr %i.gk, align 4, !tbaa !61, !alias.scope !161
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep, i64 88
  %wide.load439 = load <4 x float>, ptr %i.gl, align 4, !tbaa !61, !alias.scope !161
  %i.gm = fadd <4 x float> %wide.load438, %wide.load439
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %broadcast.splat441, <4 x float> %i.fx)
  %i.go = getelementptr inbounds nuw i8, ptr %next.gep, i64 44
  %wide.load442 = load <4 x float>, ptr %i.go, align 4, !tbaa !61, !alias.scope !161
  %i.gp = getelementptr inbounds nuw i8, ptr %next.gep, i64 84
  %wide.load443 = load <4 x float>, ptr %i.gp, align 4, !tbaa !61, !alias.scope !161
  %i.gq = fadd <4 x float> %wide.load442, %wide.load443
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %broadcast.splat445, <4 x float> %i.gb)
  %i.gs = getelementptr inbounds nuw i8, ptr %next.gep, i64 48
  %wide.load446 = load <4 x float>, ptr %i.gs, align 4, !tbaa !61, !alias.scope !161
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep, i64 80
  %wide.load447 = load <4 x float>, ptr %i.gt, align 4, !tbaa !61, !alias.scope !161
  %i.gu = fadd <4 x float> %wide.load446, %wide.load447
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %broadcast.splat449, <4 x float> %i.gf)
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep, i64 52
  %wide.load450 = load <4 x float>, ptr %i.gw, align 4, !tbaa !61, !alias.scope !161
  %i.gx = getelementptr inbounds nuw i8, ptr %next.gep, i64 76
  %wide.load451 = load <4 x float>, ptr %i.gx, align 4, !tbaa !61, !alias.scope !161
  %i.gy = fadd <4 x float> %wide.load450, %wide.load451
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %broadcast.splat453, <4 x float> %i.gj)
  %i.ha = getelementptr inbounds nuw i8, ptr %next.gep, i64 56
  %wide.load454 = load <4 x float>, ptr %i.ha, align 4, !tbaa !61, !alias.scope !161
  %i.hb = getelementptr inbounds nuw i8, ptr %next.gep, i64 72
  %wide.load455 = load <4 x float>, ptr %i.hb, align 4, !tbaa !61, !alias.scope !161
  %i.hc = fadd <4 x float> %wide.load454, %wide.load455
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %broadcast.splat457, <4 x float> %i.gn)
  %i.he = getelementptr inbounds nuw i8, ptr %next.gep, i64 60
  %wide.load458 = load <4 x float>, ptr %i.he, align 4, !tbaa !61, !alias.scope !161
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep, i64 68
  %wide.load459 = load <4 x float>, ptr %i.hf, align 4, !tbaa !61, !alias.scope !161
  %i.hg = fadd <4 x float> %wide.load458, %wide.load459
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %broadcast.splat461, <4 x float> %i.gr)
  %i.hi = getelementptr inbounds nuw i8, ptr %next.gep, i64 64
  %wide.load462 = load <4 x float>, ptr %i.hi, align 4, !tbaa !61, !alias.scope !161
  %i.hj = fmul <4 x float> %wide.load462, %broadcast.splat464
  %i.hk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ev ; 2 uses
  %i.hl = getelementptr i8, ptr %i.de, i64 %i.ev  ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 1
  %i.hn = getelementptr i8, ptr %i.de, i64 %i.ev  ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 2
  %i.hp = getelementptr i8, ptr %i.de, i64 %i.ev  ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 3
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hk, i64 64), "align"(ptr %i.hl, i64 64, i64 -1), "align"(ptr %i.hn, i64 64, i64 -2), "align"(ptr %i.hp, i64 64, i64 -3) ]
  %i.hr = fadd <4 x float> %i.gv, %i.hj
  %i.hs = fadd <4 x float> %i.gz, %i.hr
  %i.ht = fadd <4 x float> %i.hd, %i.hs
  %i.hu = fadd <4 x float> %i.hh, %i.ht           ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.0218290.us
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.0218290.us
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.0218290.us
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.0218290.us
  %i.hz = extractelement <4 x float> %i.hu, i64 0
  store float %i.hz, ptr %i.hv, align 4, !tbaa !61, !alias.scope !162, !noalias !163
  %i.ia = extractelement <4 x float> %i.hu, i64 1
  store float %i.ia, ptr %i.hw, align 4, !tbaa !61, !alias.scope !162, !noalias !163
  %i.ib = extractelement <4 x float> %i.hu, i64 2
  store float %i.ib, ptr %i.hx, align 4, !tbaa !61, !alias.scope !162, !noalias !163
  %i.ic = extractelement <4 x float> %i.hu, i64 3
  store float %i.ic, ptr %i.hy, align 4, !tbaa !61, !alias.scope !162, !noalias !163
  %index.next465 = add nuw i64 %index397, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next465, %n.vec395
  br i1 %i.id, label %middle.block466, label %vector.body396, !llvm.loop !124

middle.block466:                                  ; preds = %vector.body396
  br i1 %cmp.n467, label %._crit_edge289.us, label %scalar.ph392.preheader

scalar.ph392.preheader:                           ; preds = %.lr.ph288.us, %middle.block466
  %.0216286.us.ph = phi i64 [ %i.dx, %middle.block466 ], [ %.sroa.speculated, %.lr.ph288.us ]
  %.0217285.us.ph = phi ptr [ %i.ed, %middle.block466 ], [ %i.ec, %.lr.ph288.us ]
  br label %scalar.ph392

scalar.ph392:                                     ; preds = %scalar.ph392.preheader, %scalar.ph392
  %.0216286.us = phi i64 [ %i.jz, %scalar.ph392 ], [ %.0216286.us.ph, %scalar.ph392.preheader ] ; 2 uses
  %.0217285.us = phi ptr [ %i.ie, %scalar.ph392 ], [ %.0217285.us.ph, %scalar.ph392.preheader ] ; 10 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 116
  %i.ig = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 100
  %i.ii = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 84
  %i.ik = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 48
  %i.il = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 68
  %i.im = load <4 x float>, ptr %.0217285.us, align 4, !tbaa !61
  %i.in = load <4 x float>, ptr %i.if, align 4, !tbaa !61
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ip = fadd <4 x float> %i.im, %i.io
  %i.iq = load <4 x float>, ptr %i.bi, align 4, !tbaa !61
  %i.ir = fmul <4 x float> %i.ip, %i.iq
  %i.is = load <4 x float>, ptr %i.ig, align 4, !tbaa !61
  %i.it = load <4 x float>, ptr %i.ih, align 4, !tbaa !61
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.iv = fadd <4 x float> %i.is, %i.iu
  %i.iw = load <4 x float>, ptr %i.cp, align 4, !tbaa !61
  %i.ix = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> %i.iw, <4 x float> %i.ir)
  %i.iy = load <4 x float>, ptr %i.ii, align 4, !tbaa !61
  %i.iz = load <4 x float>, ptr %i.ij, align 4, !tbaa !61
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jb = fadd <4 x float> %i.iy, %i.ja
  %i.jc = load <4 x float>, ptr %i.ct, align 4, !tbaa !61
  %i.jd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> %i.jc, <4 x float> %i.ix)
  %i.je = load <4 x float>, ptr %i.ik, align 4, !tbaa !61
  %i.jf = load <4 x float>, ptr %i.il, align 4, !tbaa !61
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jh = fadd <4 x float> %i.je, %i.jg
  %i.ji = load <4 x float>, ptr %i.cx, align 4, !tbaa !61
  %i.jj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> %i.ji, <4 x float> %i.jd) ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0217285.us, i64 64
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !61
  %i.jm = load float, ptr %i.db, align 4, !tbaa !61
  %i.jn = fmul float %i.jl, %i.jm
  %i.jo = mul i64 %i.df, %.0216286.us
  %i.jp = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jp, i64 64) ]
  %i.jq = extractelement <4 x float> %i.jj, i64 0
  %i.jr = fadd float %i.jq, %i.jn
  %i.js = extractelement <4 x float> %i.jj, i64 1
  %i.jt = fadd float %i.js, %i.jr
  %i.ju = extractelement <4 x float> %i.jj, i64 2
  %i.jv = fadd float %i.ju, %i.jt
  %i.jw = extractelement <4 x float> %i.jj, i64 3
  %i.jx = fadd float %i.jw, %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.0218290.us
  store float %i.jx, ptr %i.jy, align 4, !tbaa !61
  %i.jz = add nuw i64 %.0216286.us, 1             ; 2 uses
  %exitcond339.not = icmp eq i64 %i.jz, %spec.select
  br i1 %exitcond339.not, label %._crit_edge289.us, label %scalar.ph392, !llvm.loop !125

._crit_edge289.us:                                ; preds = %scalar.ph392, %middle.block466
  %i.ka = add nuw nsw i64 %.0218290.us, 1         ; 2 uses
  %exitcond340.not = icmp eq i64 %i.ka, %i.cf
  br i1 %exitcond340.not, label %.loopexit, label %.lr.ph288.us, !llvm.loop !126

.preheader275:                                    ; preds = %.loopexit642
  %i.kb = load i32, ptr %i.b, align 4, !tbaa !70  ; 2 uses
  %i.kc = zext i32 %i.kb to i64                   ; 3 uses
  %.not320 = icmp eq i32 %i.kb, 0
  br i1 %.not320, label %.loopexit, label %.lr.ph298

.lr.ph298:                                        ; preds = %.preheader275
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !71 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !72 ; 3 uses
  %i.kh = sub nsw i64 0, %i.q
  %i.ki = icmp samesign ult i64 %i.q, %spec.select
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bi, i64 28 ; 2 uses
  br i1 %i.ki, label %.lr.ph298.split.us, label %.loopexit

.lr.ph298.split.us:                               ; preds = %.lr.ph298
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !71 ; 7 uses
  %i.kt = load i64, ptr %i.kq, align 8, !tbaa !72 ; 2 uses
  %scevgep473 = getelementptr i8, ptr %i.ks, i64 %.sroa.speculated ; 2 uses
  %i.ku = shl nuw nsw i64 %i.kc, 2
  %i.kv = xor i64 %.sroa.speculated, -1
  %i.kw = getelementptr i8, ptr %i.ks, i64 %i.ku
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.h
  %scevgep474 = getelementptr i8, ptr %i.kx, i64 %i.kv ; 2 uses
  %i.ky = sub nsw i64 %.sroa.speculated, %i.q
  %i.kz = shl i64 %i.ky, 2
  %scevgep475 = getelementptr i8, ptr %i.ke, i64 %i.kz
  %i.la = add nsw i64 %i.kc, -1
  %i.lb = mul i64 %i.kg, %i.la
  %i.lc = shl nuw nsw i64 %i.h, 2
  %i.ld = add i64 %i.lb, %i.lc
  %i.le = add i64 %i.ld, 56
  %i.lf = add nuw nsw i64 %.sroa.speculated, %i.q
  %i.lg = shl i64 %i.lf, 2
  %i.lh = sub i64 %i.le, %i.lg
  %scevgep476 = getelementptr i8, ptr %i.ke, i64 %i.lh
  %scevgep477 = getelementptr i8, ptr %i.bi, i64 32
  %i.li = shl nuw nsw i64 %.sroa.speculated, 1
  %i.lj = sub nsw i64 %i.h, %i.li                 ; 3 uses
  %min.iters.check487 = icmp ugt i64 %i.lj, 3
  %ident.check471.not = icmp eq i64 %i.kt, 1
  %or.cond646 = select i1 %min.iters.check487, i1 %ident.check471.not, i1 false
  %bound0478 = icmp ult ptr %scevgep473, %scevgep476
  %bound1479 = icmp ult ptr %scevgep475, %scevgep474
  %found.conflict480 = and i1 %bound0478, %bound1479
  %stride.check481 = icmp slt i64 %i.kg, 0
  %i.lk = or i1 %found.conflict480, %stride.check481
  %bound0482 = icmp ult ptr %scevgep473, %scevgep477
  %bound1483 = icmp ult ptr %i.bi, %scevgep474
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %i.lk, %found.conflict484
  %n.vec489 = and i64 %i.lj, -4                   ; 4 uses
  %i.ll = add nsw i64 %.sroa.speculated, %n.vec489
  %i.lm = shl nsw i64 %n.vec489, 2
  %cmp.n526 = icmp eq i64 %i.lj, %n.vec489
  br label %.lr.ph295.us

.lr.ph295.us:                                     ; preds = %._crit_edge296.us, %.lr.ph298.split.us
  %.0222297.us = phi i64 [ 0, %.lr.ph298.split.us ], [ %i.py, %._crit_edge296.us ] ; 7 uses
  %i.ln = mul i64 %i.kg, %.0222297.us
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ln ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lo, i64 64) ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.sroa.speculated
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.kh ; 3 uses
  %or.cond646.not = xor i1 %or.cond646, true
  %brmerge689 = select i1 %or.cond646.not, i1 true, i1 %conflict.rdx485
  br i1 %brmerge689, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %.lr.ph295.us
  %i.lr = getelementptr i8, ptr %i.lq, i64 %i.lm
  %i.ls = load float, ptr %i.bi, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert495 = insertelement <4 x float> poison, float %i.ls, i64 0
  %broadcast.splat496 = shufflevector <4 x float> %broadcast.splatinsert495, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = load float, ptr %i.kj, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert499 = insertelement <4 x float> poison, float %i.lt, i64 0
  %broadcast.splat500 = shufflevector <4 x float> %broadcast.splatinsert499, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lu = load float, ptr %i.kk, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert503 = insertelement <4 x float> poison, float %i.lu, i64 0
  %broadcast.splat504 = shufflevector <4 x float> %broadcast.splatinsert503, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lv = load float, ptr %i.kl, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert507 = insertelement <4 x float> poison, float %i.lv, i64 0
  %broadcast.splat508 = shufflevector <4 x float> %broadcast.splatinsert507, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lw = load float, ptr %i.km, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert511 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat512 = shufflevector <4 x float> %broadcast.splatinsert511, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load float, ptr %i.kn, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert515 = insertelement <4 x float> poison, float %i.lx, i64 0
  %broadcast.splat516 = shufflevector <4 x float> %broadcast.splatinsert515, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ly = load float, ptr %i.ko, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.ly, i64 0
  %broadcast.splat520 = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lz = load float, ptr %i.kp, align 4, !tbaa !61, !alias.scope !164
  %broadcast.splatinsert522 = insertelement <4 x float> poison, float %i.lz, i64 0
  %broadcast.splat523 = shufflevector <4 x float> %broadcast.splatinsert522, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph488
  %index491 = phi i64 [ 0, %vector.ph488 ], [ %index.next524, %vector.body490 ] ; 3 uses
  %i.ma = add nuw i64 %.sroa.speculated, %index491 ; 4 uses
  %i.mb = shl i64 %index491, 2
  %next.gep492 = getelementptr i8, ptr %i.lq, i64 %i.mb ; 15 uses
  %wide.load493 = load <4 x float>, ptr %next.gep492, align 4, !tbaa !61, !alias.scope !165
  %i.mc = getelementptr inbounds nuw i8, ptr %next.gep492, i64 56
  %wide.load494 = load <4 x float>, ptr %i.mc, align 4, !tbaa !61, !alias.scope !165
  %i.md = fadd <4 x float> %wide.load493, %wide.load494
  %i.me = fmul <4 x float> %i.md, %broadcast.splat496
  %i.mf = getelementptr inbounds nuw i8, ptr %next.gep492, i64 4
  %wide.load497 = load <4 x float>, ptr %i.mf, align 4, !tbaa !61, !alias.scope !165
  %i.mg = getelementptr inbounds nuw i8, ptr %next.gep492, i64 52
  %wide.load498 = load <4 x float>, ptr %i.mg, align 4, !tbaa !61, !alias.scope !165
  %i.mh = fadd <4 x float> %wide.load497, %wide.load498
  %i.mi = fmul <4 x float> %i.mh, %broadcast.splat500
  %i.mj = getelementptr inbounds nuw i8, ptr %next.gep492, i64 8
  %wide.load501 = load <4 x float>, ptr %i.mj, align 4, !tbaa !61, !alias.scope !165
  %i.mk = getelementptr inbounds nuw i8, ptr %next.gep492, i64 48
  %wide.load502 = load <4 x float>, ptr %i.mk, align 4, !tbaa !61, !alias.scope !165
  %i.ml = fadd <4 x float> %wide.load501, %wide.load502
  %i.mm = fmul <4 x float> %i.ml, %broadcast.splat504
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep492, i64 12
  %wide.load505 = load <4 x float>, ptr %i.mn, align 4, !tbaa !61, !alias.scope !165
  %i.mo = getelementptr inbounds nuw i8, ptr %next.gep492, i64 44
  %wide.load506 = load <4 x float>, ptr %i.mo, align 4, !tbaa !61, !alias.scope !165
  %i.mp = fadd <4 x float> %wide.load505, %wide.load506
  %i.mq = fmul <4 x float> %i.mp, %broadcast.splat508
  %i.mr = getelementptr inbounds nuw i8, ptr %next.gep492, i64 16
  %wide.load509 = load <4 x float>, ptr %i.mr, align 4, !tbaa !61, !alias.scope !165
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep492, i64 40
  %wide.load510 = load <4 x float>, ptr %i.ms, align 4, !tbaa !61, !alias.scope !165
  %i.mt = fadd <4 x float> %wide.load509, %wide.load510
  %i.mu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mt, <4 x float> %broadcast.splat512, <4 x float> %i.me)
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep492, i64 20
  %wide.load513 = load <4 x float>, ptr %i.mv, align 4, !tbaa !61, !alias.scope !165
  %i.mw = getelementptr inbounds nuw i8, ptr %next.gep492, i64 36
  %wide.load514 = load <4 x float>, ptr %i.mw, align 4, !tbaa !61, !alias.scope !165
  %i.mx = fadd <4 x float> %wide.load513, %wide.load514
  %i.my = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mx, <4 x float> %broadcast.splat516, <4 x float> %i.mi)
  %i.mz = getelementptr inbounds nuw i8, ptr %next.gep492, i64 24
  %wide.load517 = load <4 x float>, ptr %i.mz, align 4, !tbaa !61, !alias.scope !165
  %i.na = getelementptr inbounds nuw i8, ptr %next.gep492, i64 32
  %wide.load518 = load <4 x float>, ptr %i.na, align 4, !tbaa !61, !alias.scope !165
  %i.nb = fadd <4 x float> %wide.load517, %wide.load518
  %i.nc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nb, <4 x float> %broadcast.splat520, <4 x float> %i.mm)
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep492, i64 28
  %wide.load521 = load <4 x float>, ptr %i.nd, align 4, !tbaa !61, !alias.scope !165
  %i.ne = fmul <4 x float> %wide.load521, %broadcast.splat523
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ma ; 2 uses
  %i.ng = getelementptr i8, ptr %i.ks, i64 %i.ma  ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 1
  %i.ni = getelementptr i8, ptr %i.ks, i64 %i.ma  ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 2
  %i.nk = getelementptr i8, ptr %i.ks, i64 %i.ma  ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nk, i64 3
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nf, i64 64), "align"(ptr %i.ng, i64 64, i64 -1), "align"(ptr %i.ni, i64 64, i64 -2), "align"(ptr %i.nk, i64 64, i64 -3) ]
  %i.nm = fadd <4 x float> %i.mu, %i.ne
  %i.nn = fadd <4 x float> %i.my, %i.nm
  %i.no = fadd <4 x float> %i.nc, %i.nn
  %i.np = fadd <4 x float> %i.mq, %i.no           ; 4 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %.0222297.us
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.0222297.us
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0222297.us
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.0222297.us
  %i.nu = extractelement <4 x float> %i.np, i64 0
  store float %i.nu, ptr %i.nq, align 4, !tbaa !61, !alias.scope !166, !noalias !167
  %i.nv = extractelement <4 x float> %i.np, i64 1
  store float %i.nv, ptr %i.nr, align 4, !tbaa !61, !alias.scope !166, !noalias !167
  %i.nw = extractelement <4 x float> %i.np, i64 2
  store float %i.nw, ptr %i.ns, align 4, !tbaa !61, !alias.scope !166, !noalias !167
  %i.nx = extractelement <4 x float> %i.np, i64 3
  store float %i.nx, ptr %i.nt, align 4, !tbaa !61, !alias.scope !166, !noalias !167
  %index.next524 = add nuw i64 %index491, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next524, %n.vec489
  br i1 %i.ny, label %middle.block525, label %vector.body490, !llvm.loop !131

middle.block525:                                  ; preds = %vector.body490
  br i1 %cmp.n526, label %._crit_edge296.us, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %.lr.ph295.us, %middle.block525
  %.0220293.us.ph = phi i64 [ %i.ll, %middle.block525 ], [ %.sroa.speculated, %.lr.ph295.us ]
  %.0221292.us.ph = phi ptr [ %i.lr, %middle.block525 ], [ %i.lq, %.lr.ph295.us ]
  br label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.preheader, %scalar.ph486
  %.0220293.us = phi i64 [ %i.px, %scalar.ph486 ], [ %.0220293.us.ph, %scalar.ph486.preheader ] ; 2 uses
  %.0221292.us = phi ptr [ %i.nz, %scalar.ph486 ], [ %.0221292.us.ph, %scalar.ph486.preheader ] ; 11 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 4
  %i.oa = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 52
  %i.ob = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 8
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61
  %i.od = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 48
  %i.oe = load float, ptr %i.od, align 4, !tbaa !61
  %i.of = load float, ptr %i.kk, align 4, !tbaa !61
  %i.og = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 12
  %i.oh = load float, ptr %i.og, align 4, !tbaa !61
  %i.oi = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 44
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !61
  %i.ok = fadd float %i.oh, %i.oj
  %i.ol = load float, ptr %i.kl, align 4, !tbaa !61
  %i.om = fmul float %i.ok, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 36
  %i.op = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 32
  %i.oq = load float, ptr %i.op, align 4, !tbaa !61
  %i.or = getelementptr inbounds nuw i8, ptr %.0221292.us, i64 28
  %i.os = load <2 x float>, ptr %.0221292.us, align 4, !tbaa !61
  %i.ot = load <2 x float>, ptr %i.oa, align 4, !tbaa !61
  %i.ou = load <2 x float>, ptr %i.bi, align 4, !tbaa !61
  %i.ov = shufflevector <2 x float> %i.os, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ow = insertelement <4 x float> %i.ov, float %i.oc, i64 2
  %i.ox = shufflevector <2 x float> %i.ot, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.oy = insertelement <4 x float> %i.ox, float %i.oe, i64 2
  %i.oz = fadd <4 x float> %i.ow, %i.oy
  %i.pa = shufflevector <2 x float> %i.ou, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pb = insertelement <4 x float> %i.pa, float %i.of, i64 2
  %i.pc = fmul <4 x float> %i.pb, %i.oz
  %i.pd = load <2 x float>, ptr %i.oo, align 4, !tbaa !61
  %i.pe = load float, ptr %i.or, align 4, !tbaa !61
  %i.pf = load <4 x float>, ptr %i.on, align 4, !tbaa !61
  %i.pg = shufflevector <2 x float> %i.pd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ph = insertelement <4 x float> %i.pg, float %i.oq, i64 2
  %i.pi = fadd <4 x float> %i.pf, %i.ph
  %i.pj = load float, ptr %i.kp, align 4, !tbaa !61
  %i.pk = load <4 x float>, ptr %i.km, align 4, !tbaa !61
  %i.pl = fmul float %i.pe, %i.pj
  %i.pm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pi, <4 x float> %i.pk, <4 x float> %i.pc) ; 3 uses
  %i.pn = mul i64 %i.kt, %.0220293.us
  %i.po = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.pn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.po, i64 64) ]
  %i.pp = extractelement <4 x float> %i.pm, i64 0
  %i.pq = fadd float %i.pp, %i.pl
  %i.pr = extractelement <4 x float> %i.pm, i64 1
  %i.ps = fadd float %i.pr, %i.pq
  %i.pt = extractelement <4 x float> %i.pm, i64 2
  %i.pu = fadd float %i.pt, %i.ps
  %i.pv = fadd float %i.om, %i.pu
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %.0222297.us
  store float %i.pv, ptr %i.pw, align 4, !tbaa !61
  %i.px = add nuw i64 %.0220293.us, 1             ; 2 uses
  %exitcond342.not = icmp eq i64 %i.px, %spec.select
  br i1 %exitcond342.not, label %._crit_edge296.us, label %scalar.ph486, !llvm.loop !132

._crit_edge296.us:                                ; preds = %scalar.ph486, %middle.block525
  %i.py = add nuw nsw i64 %.0222297.us, 1         ; 2 uses
  %exitcond343.not = icmp eq i64 %i.py, %i.kc
  br i1 %exitcond343.not, label %.loopexit, label %.lr.ph295.us, !llvm.loop !133

.preheader273:                                    ; preds = %.loopexit642
  %i.pz = load i32, ptr %i.b, align 4, !tbaa !70  ; 2 uses
  %i.qa = zext i32 %i.pz to i64                   ; 3 uses
  %.not321 = icmp eq i32 %i.pz, 0
  br i1 %.not321, label %.loopexit, label %.lr.ph305

.lr.ph305:                                        ; preds = %.preheader273
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !71 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !72 ; 3 uses
  %i.qf = sub nsw i64 0, %i.q
  %i.qg = icmp samesign ult i64 %i.q, %spec.select
  %i.qh = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.qi = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.qk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.qm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  br i1 %i.qg, label %.lr.ph305.split.us, label %.loopexit

.lr.ph305.split.us:                               ; preds = %.lr.ph305
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !71 ; 7 uses
  %i.qq = load i64, ptr %i.qn, align 8, !tbaa !72 ; 2 uses
  %scevgep532 = getelementptr i8, ptr %i.qp, i64 %.sroa.speculated ; 2 uses
  %i.qr = shl nuw nsw i64 %i.qa, 2
  %i.qs = xor i64 %.sroa.speculated, -1
  %i.qt = getelementptr i8, ptr %i.qp, i64 %i.qr
  %i.qu = getelementptr i8, ptr %i.qt, i64 %i.h
  %scevgep533 = getelementptr i8, ptr %i.qu, i64 %i.qs ; 2 uses
  %i.qv = sub nsw i64 %.sroa.speculated, %i.q
  %i.qw = shl i64 %i.qv, 2
  %scevgep534 = getelementptr i8, ptr %i.qc, i64 %i.qw
  %i.qx = add nsw i64 %i.qa, -1
  %i.qy = mul i64 %i.qe, %i.qx
  %i.qz = shl nuw nsw i64 %i.h, 2
  %i.ra = add i64 %i.qy, %i.qz
  %i.rb = add i64 %i.ra, 48
  %i.rc = add nuw nsw i64 %.sroa.speculated, %i.q
  %i.rd = shl i64 %i.rc, 2
  %i.re = sub i64 %i.rb, %i.rd
  %scevgep535 = getelementptr i8, ptr %i.qc, i64 %i.re
  %scevgep536 = getelementptr i8, ptr %i.bi, i64 28
  %i.rf = shl nuw nsw i64 %.sroa.speculated, 1
  %i.rg = sub nsw i64 %i.h, %i.rf                 ; 3 uses
  %min.iters.check546 = icmp ugt i64 %i.rg, 3
  %ident.check530.not = icmp eq i64 %i.qq, 1
  %or.cond647 = select i1 %min.iters.check546, i1 %ident.check530.not, i1 false
  %bound0537 = icmp ult ptr %scevgep532, %scevgep535
  %bound1538 = icmp ult ptr %scevgep534, %scevgep533
  %found.conflict539 = and i1 %bound0537, %bound1538
  %stride.check540 = icmp slt i64 %i.qe, 0
  %i.rh = or i1 %found.conflict539, %stride.check540
  %bound0541 = icmp ult ptr %scevgep532, %scevgep536
  %bound1542 = icmp ult ptr %i.bi, %scevgep533
  %found.conflict543 = and i1 %bound0541, %bound1542
  %conflict.rdx544 = or i1 %i.rh, %found.conflict543
  %n.vec548 = and i64 %i.rg, -4                   ; 4 uses
  %i.ri = shl nsw i64 %n.vec548, 2
  %i.rj = add nsw i64 %.sroa.speculated, %n.vec548
  %cmp.n581 = icmp eq i64 %i.rg, %n.vec548
  br label %.lr.ph302.us

.lr.ph302.us:                                     ; preds = %._crit_edge303.us, %.lr.ph305.split.us
  %.0225304.us = phi i64 [ 0, %.lr.ph305.split.us ], [ %i.uy, %._crit_edge303.us ] ; 7 uses
  %i.rk = mul i64 %i.qe, %.0225304.us
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.rk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rl, i64 64) ]
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %.sroa.speculated
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.rm, i64 %i.qf ; 3 uses
  %or.cond647.not = xor i1 %or.cond647, true
  %brmerge690 = select i1 %or.cond647.not, i1 true, i1 %conflict.rdx544
  br i1 %brmerge690, label %scalar.ph545.preheader, label %vector.ph547

vector.ph547:                                     ; preds = %.lr.ph302.us
  %i.ro = getelementptr i8, ptr %i.rn, i64 %i.ri
  %i.rp = load float, ptr %i.bi, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert554 = insertelement <4 x float> poison, float %i.rp, i64 0
  %broadcast.splat555 = shufflevector <4 x float> %broadcast.splatinsert554, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = load float, ptr %i.qh, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert558 = insertelement <4 x float> poison, float %i.rq, i64 0
  %broadcast.splat559 = shufflevector <4 x float> %broadcast.splatinsert558, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rr = load float, ptr %i.qi, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert562 = insertelement <4 x float> poison, float %i.rr, i64 0
  %broadcast.splat563 = shufflevector <4 x float> %broadcast.splatinsert562, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = load float, ptr %i.qj, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert566 = insertelement <4 x float> poison, float %i.rs, i64 0
  %broadcast.splat567 = shufflevector <4 x float> %broadcast.splatinsert566, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rt = load float, ptr %i.qk, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert570 = insertelement <4 x float> poison, float %i.rt, i64 0
  %broadcast.splat571 = shufflevector <4 x float> %broadcast.splatinsert570, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ru = load float, ptr %i.ql, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert574 = insertelement <4 x float> poison, float %i.ru, i64 0
  %broadcast.splat575 = shufflevector <4 x float> %broadcast.splatinsert574, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rv = load float, ptr %i.qm, align 4, !tbaa !61, !alias.scope !168
  %broadcast.splatinsert577 = insertelement <4 x float> poison, float %i.rv, i64 0
  %broadcast.splat578 = shufflevector <4 x float> %broadcast.splatinsert577, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph547
  %index550 = phi i64 [ 0, %vector.ph547 ], [ %index.next579, %vector.body549 ] ; 3 uses
  %i.rw = shl i64 %index550, 2
  %next.gep551 = getelementptr i8, ptr %i.rn, i64 %i.rw ; 13 uses
  %i.rx = add nuw i64 %.sroa.speculated, %index550 ; 4 uses
  %wide.load552 = load <4 x float>, ptr %next.gep551, align 4, !tbaa !61, !alias.scope !169
  %i.ry = getelementptr inbounds nuw i8, ptr %next.gep551, i64 48
  %wide.load553 = load <4 x float>, ptr %i.ry, align 4, !tbaa !61, !alias.scope !169
  %i.rz = fadd <4 x float> %wide.load552, %wide.load553
  %i.sa = fmul <4 x float> %i.rz, %broadcast.splat555
  %i.sb = getelementptr inbounds nuw i8, ptr %next.gep551, i64 4
  %wide.load556 = load <4 x float>, ptr %i.sb, align 4, !tbaa !61, !alias.scope !169
  %i.sc = getelementptr inbounds nuw i8, ptr %next.gep551, i64 44
  %wide.load557 = load <4 x float>, ptr %i.sc, align 4, !tbaa !61, !alias.scope !169
  %i.sd = fadd <4 x float> %wide.load556, %wide.load557
  %i.se = fmul <4 x float> %i.sd, %broadcast.splat559
  %i.sf = getelementptr inbounds nuw i8, ptr %next.gep551, i64 8
  %wide.load560 = load <4 x float>, ptr %i.sf, align 4, !tbaa !61, !alias.scope !169
  %i.sg = getelementptr inbounds nuw i8, ptr %next.gep551, i64 40
  %wide.load561 = load <4 x float>, ptr %i.sg, align 4, !tbaa !61, !alias.scope !169
  %i.sh = fadd <4 x float> %wide.load560, %wide.load561
  %i.si = fmul <4 x float> %i.sh, %broadcast.splat563
  %i.sj = getelementptr inbounds nuw i8, ptr %next.gep551, i64 12
  %wide.load564 = load <4 x float>, ptr %i.sj, align 4, !tbaa !61, !alias.scope !169
  %i.sk = getelementptr inbounds nuw i8, ptr %next.gep551, i64 36
  %wide.load565 = load <4 x float>, ptr %i.sk, align 4, !tbaa !61, !alias.scope !169
  %i.sl = fadd <4 x float> %wide.load564, %wide.load565
  %i.sm = fmul <4 x float> %i.sl, %broadcast.splat567
  %i.sn = getelementptr inbounds nuw i8, ptr %next.gep551, i64 16
  %wide.load568 = load <4 x float>, ptr %i.sn, align 4, !tbaa !61, !alias.scope !169
  %i.so = getelementptr inbounds nuw i8, ptr %next.gep551, i64 32
  %wide.load569 = load <4 x float>, ptr %i.so, align 4, !tbaa !61, !alias.scope !169
  %i.sp = fadd <4 x float> %wide.load568, %wide.load569
  %i.sq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sp, <4 x float> %broadcast.splat571, <4 x float> %i.sa)
  %i.sr = getelementptr inbounds nuw i8, ptr %next.gep551, i64 20
  %wide.load572 = load <4 x float>, ptr %i.sr, align 4, !tbaa !61, !alias.scope !169
  %i.ss = getelementptr inbounds nuw i8, ptr %next.gep551, i64 28
  %wide.load573 = load <4 x float>, ptr %i.ss, align 4, !tbaa !61, !alias.scope !169
  %i.st = fadd <4 x float> %wide.load572, %wide.load573
  %i.su = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.st, <4 x float> %broadcast.splat575, <4 x float> %i.se)
  %i.sv = getelementptr inbounds nuw i8, ptr %next.gep551, i64 24
  %wide.load576 = load <4 x float>, ptr %i.sv, align 4, !tbaa !61, !alias.scope !169
  %i.sw = fmul <4 x float> %wide.load576, %broadcast.splat578
  %i.sx = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.rx ; 2 uses
  %i.sy = getelementptr i8, ptr %i.qp, i64 %i.rx  ; 2 uses
  %i.sz = getelementptr i8, ptr %i.sy, i64 1
  %i.ta = getelementptr i8, ptr %i.qp, i64 %i.rx  ; 2 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 2
  %i.tc = getelementptr i8, ptr %i.qp, i64 %i.rx  ; 2 uses
  %i.td = getelementptr i8, ptr %i.tc, i64 3
  call void @llvm.assume(i1 true) [ "align"(ptr %i.sx, i64 64), "align"(ptr %i.sy, i64 64, i64 -1), "align"(ptr %i.ta, i64 64, i64 -2), "align"(ptr %i.tc, i64 64, i64 -3) ]
  %i.te = fadd <4 x float> %i.sq, %i.sw
  %i.tf = fadd <4 x float> %i.su, %i.te
  %i.tg = fadd <4 x float> %i.si, %i.tf
  %i.th = fadd <4 x float> %i.sm, %i.tg           ; 4 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %.0225304.us
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %.0225304.us
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %.0225304.us
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %.0225304.us
  %i.tm = extractelement <4 x float> %i.th, i64 0
  store float %i.tm, ptr %i.ti, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  %i.tn = extractelement <4 x float> %i.th, i64 1
  store float %i.tn, ptr %i.tj, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  %i.to = extractelement <4 x float> %i.th, i64 2
  store float %i.to, ptr %i.tk, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  %i.tp = extractelement <4 x float> %i.th, i64 3
  store float %i.tp, ptr %i.tl, align 4, !tbaa !61, !alias.scope !170, !noalias !171
  %index.next579 = add nuw i64 %index550, 4       ; 2 uses
  %i.tq = icmp eq i64 %index.next579, %n.vec548
  br i1 %i.tq, label %middle.block580, label %vector.body549, !llvm.loop !138

middle.block580:                                  ; preds = %vector.body549
  br i1 %cmp.n581, label %._crit_edge303.us, label %scalar.ph545.preheader

scalar.ph545.preheader:                           ; preds = %.lr.ph302.us, %middle.block580
  %.0226300.us.ph = phi ptr [ %i.ro, %middle.block580 ], [ %i.rn, %.lr.ph302.us ]
  %.0227299.us.ph = phi i64 [ %i.rj, %middle.block580 ], [ %.sroa.speculated, %.lr.ph302.us ]
  br label %scalar.ph545

scalar.ph545:                                     ; preds = %scalar.ph545.preheader, %scalar.ph545
  %.0226300.us = phi ptr [ %i.tr, %scalar.ph545 ], [ %.0226300.us.ph, %scalar.ph545.preheader ] ; 6 uses
  %.0227299.us = phi i64 [ %i.ux, %scalar.ph545 ], [ %.0227299.us.ph, %scalar.ph545.preheader ] ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.0226300.us, i64 4
  %i.ts = getelementptr inbounds nuw i8, ptr %.0226300.us, i64 44
  %i.tt = getelementptr inbounds nuw i8, ptr %.0226300.us, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %.0226300.us, i64 28
  %i.tv = load <2 x float>, ptr %.0226300.us, align 4, !tbaa !61
  %i.tw = load <2 x float>, ptr %i.ts, align 4, !tbaa !61
  %i.tx = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ty = fadd <2 x float> %i.tv, %i.tx
  %i.tz = load <2 x float>, ptr %i.bi, align 4, !tbaa !61
  %i.ua = fmul <2 x float> %i.ty, %i.tz
  %i.ub = load <4 x float>, ptr %i.tt, align 4, !tbaa !61
  %i.uc = load <4 x float>, ptr %i.tu, align 4, !tbaa !61
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ue = fadd <4 x float> %i.ub, %i.ud           ; 3 uses
  %i.uf = load <4 x float>, ptr %i.qi, align 4, !tbaa !61 ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.ue, %i.uf
  %i.ug = extractelement <4 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop650 = fmul <4 x float> %i.ue, %i.uf
  %i.uh = extractelement <4 x float> %foldExtExtBinop650, i64 1
  %i.ui = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.uj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uf, <4 x float> %i.ue, <4 x float> %i.ui) ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.0226300.us, i64 24
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !61
  %i.um = load float, ptr %i.qm, align 4, !tbaa !61
  %i.un = fmul float %i.ul, %i.um
  %i.uo = mul i64 %i.qq, %.0227299.us
  %i.up = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.uo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.up, i64 64) ]
  %i.uq = extractelement <4 x float> %i.uj, i64 2
  %i.ur = fadd float %i.uq, %i.un
  %i.us = extractelement <4 x float> %i.uj, i64 3
  %i.ut = fadd float %i.us, %i.ur
  %i.uu = fadd float %i.ug, %i.ut
  %i.uv = fadd float %i.uh, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %.0225304.us
  store float %i.uv, ptr %i.uw, align 4, !tbaa !61
  %i.ux = add nuw i64 %.0227299.us, 1             ; 2 uses
  %exitcond345.not = icmp eq i64 %i.ux, %spec.select
  br i1 %exitcond345.not, label %._crit_edge303.us, label %scalar.ph545, !llvm.loop !139

._crit_edge303.us:                                ; preds = %scalar.ph545, %middle.block580
  %i.uy = add nuw nsw i64 %.0225304.us, 1         ; 2 uses
  %exitcond346.not = icmp eq i64 %i.uy, %i.qa
  br i1 %exitcond346.not, label %.loopexit, label %.lr.ph302.us, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0215284 = phi i64 [ %i.vs, %scalar.ph ], [ %.0215284.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0215284
  %i.va = load float, ptr %i.uz, align 4, !tbaa !61
  %i.vb = fmul float %i.w, %i.va
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.0215284
  store float %i.vb, ptr %i.vc, align 4, !tbaa !61
  %i.vd = add nuw i64 %.0215284, 1                ; 2 uses
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.vd
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !61
  %i.vg = fmul float %i.w, %i.vf
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.vd
  store float %i.vg, ptr %i.vh, align 4, !tbaa !61
  %i.vi = add nuw i64 %.0215284, 2                ; 2 uses
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.vi
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !61
  %i.vl = fmul float %i.w, %i.vk
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.vi
  store float %i.vl, ptr %i.vm, align 4, !tbaa !61
  %i.vn = add nuw i64 %.0215284, 3                ; 3 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.vn
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !61
  %i.vq = fmul float %i.w, %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.vn
  store float %i.vq, ptr %i.vr, align 4, !tbaa !61
  %i.vs = add nuw i64 %.0215284, 4
  %exitcond337.not.3 = icmp eq i64 %i.vn, %i.q
  br i1 %exitcond337.not.3, label %.loopexit642, label %scalar.ph, !llvm.loop !141

bb.e:                                             ; preds = %.loopexit642
  %i.vt = load float, ptr %i.bi, align 4, !tbaa !61 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.vv = load <2 x float>, ptr %i.vu, align 4, !tbaa !61 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !61 ; 2 uses
  %i.vy = load i32, ptr %i.b, align 4, !tbaa !70  ; 2 uses
  %i.vz = zext i32 %i.vy to i64                   ; 3 uses
  %.not322 = icmp eq i32 %i.vy, 0
  br i1 %.not322, label %.loopexit, label %.lr.ph313

.lr.ph313:                                        ; preds = %bb.e
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !71 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !72 ; 3 uses
  %i.we = sub nsw i64 0, %i.q
  %i.wf = icmp samesign ult i64 %i.q, %spec.select
  br i1 %i.wf, label %.lr.ph313.split.us, label %.loopexit

.lr.ph313.split.us:                               ; preds = %.lr.ph313
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !71 ; 7 uses
  %i.wj = load i64, ptr %i.wg, align 8, !tbaa !72 ; 2 uses
  %scevgep587 = getelementptr i8, ptr %i.wi, i64 %.sroa.speculated
  %i.wk = shl nuw nsw i64 %i.vz, 2
  %i.wl = xor i64 %.sroa.speculated, -1
  %i.wm = getelementptr i8, ptr %i.wi, i64 %i.wk
  %i.wn = getelementptr i8, ptr %i.wm, i64 %i.h
  %scevgep588 = getelementptr i8, ptr %i.wn, i64 %i.wl
  %i.wo = sub nsw i64 %.sroa.speculated, %i.q
  %i.wp = shl i64 %i.wo, 2
  %scevgep589 = getelementptr i8, ptr %i.wb, i64 %i.wp
  %i.wq = add nsw i64 %i.vz, -1
  %i.wr = mul i64 %i.wd, %i.wq
  %i.ws = shl nuw nsw i64 %i.h, 2
  %i.wt = add i64 %i.wr, %i.ws
  %i.wu = add i64 %i.wt, 24
  %i.wv = add nuw nsw i64 %.sroa.speculated, %i.q
  %i.ww = shl i64 %i.wv, 2
  %i.wx = sub i64 %i.wu, %i.ww
  %scevgep590 = getelementptr i8, ptr %i.wb, i64 %i.wx
  %i.wy = shl nuw nsw i64 %.sroa.speculated, 1
  %i.wz = sub nsw i64 %i.h, %i.wy                 ; 3 uses
  %min.iters.check596 = icmp ugt i64 %i.wz, 3
  %ident.check585.not = icmp eq i64 %i.wj, 1
  %or.cond648 = select i1 %min.iters.check596, i1 %ident.check585.not, i1 false
  %bound0591 = icmp ult ptr %scevgep587, %scevgep590
  %bound1592 = icmp ult ptr %scevgep589, %scevgep588
  %found.conflict593 = and i1 %bound0591, %bound1592
  %stride.check594 = icmp slt i64 %i.wd, 0
  %i.xa = or i1 %found.conflict593, %stride.check594
  %n.vec598 = and i64 %i.wz, -4                   ; 4 uses
  %i.xb = shl nsw i64 %n.vec598, 2
  %i.xc = add nsw i64 %.sroa.speculated, %n.vec598
  %broadcast.splatinsert599 = insertelement <4 x float> poison, float %i.vt, i64 0
  %broadcast.splat600 = shufflevector <4 x float> %broadcast.splatinsert599, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat602 = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat604 = shufflevector <2 x float> %i.vv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert605 = insertelement <4 x float> poison, float %i.vx, i64 0
  %broadcast.splat606 = shufflevector <4 x float> %broadcast.splatinsert605, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n619 = icmp eq i64 %i.wz, %n.vec598
  br label %.lr.ph309.us

.lr.ph309.us:                                     ; preds = %._crit_edge310.us, %.lr.ph313.split.us
  %.0219311.us = phi i64 [ 0, %.lr.ph313.split.us ], [ %i.zm, %._crit_edge310.us ] ; 7 uses
  %i.xd = mul i64 %i.wd, %.0219311.us
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.xd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xe, i64 64) ]
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %.sroa.speculated
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.xf, i64 %i.we ; 3 uses
  %or.cond648.not = xor i1 %or.cond648, true
  %brmerge691 = select i1 %or.cond648.not, i1 true, i1 %i.xa
  br i1 %brmerge691, label %scalar.ph595.preheader, label %vector.ph597

vector.ph597:                                     ; preds = %.lr.ph309.us
  %i.xh = getelementptr i8, ptr %i.xg, i64 %i.xb
  br label %vector.body607

vector.body607:                                   ; preds = %vector.body607, %vector.ph597
  %index608 = phi i64 [ 0, %vector.ph597 ], [ %index.next617, %vector.body607 ] ; 3 uses
  %i.xi = shl i64 %index608, 2
  %next.gep609 = getelementptr i8, ptr %i.xg, i64 %i.xi ; 7 uses
  %i.xj = add nuw i64 %.sroa.speculated, %index608 ; 4 uses
  %wide.load610 = load <4 x float>, ptr %next.gep609, align 4, !tbaa !61, !alias.scope !172
  %i.xk = getelementptr inbounds nuw i8, ptr %next.gep609, i64 24
  %wide.load611 = load <4 x float>, ptr %i.xk, align 4, !tbaa !61, !alias.scope !172
  %i.xl = fadd <4 x float> %wide.load610, %wide.load611
  %i.xm = fmul <4 x float> %broadcast.splat600, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %next.gep609, i64 4
  %wide.load612 = load <4 x float>, ptr %i.xn, align 4, !tbaa !61, !alias.scope !172
  %i.xo = getelementptr inbounds nuw i8, ptr %next.gep609, i64 20
  %wide.load613 = load <4 x float>, ptr %i.xo, align 4, !tbaa !61, !alias.scope !172
  %i.xp = fadd <4 x float> %wide.load612, %wide.load613
  %i.xq = fmul <4 x float> %broadcast.splat602, %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %next.gep609, i64 8
  %wide.load614 = load <4 x float>, ptr %i.xr, align 4, !tbaa !61, !alias.scope !172
  %i.xs = getelementptr inbounds nuw i8, ptr %next.gep609, i64 16
  %wide.load615 = load <4 x float>, ptr %i.xs, align 4, !tbaa !61, !alias.scope !172
  %i.xt = fadd <4 x float> %wide.load614, %wide.load615
  %i.xu = fmul <4 x float> %broadcast.splat604, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %next.gep609, i64 12
  %wide.load616 = load <4 x float>, ptr %i.xv, align 4, !tbaa !61, !alias.scope !172
  %i.xw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load616, <4 x float> %broadcast.splat606, <4 x float> %i.xm)
  %i.xx = fadd <4 x float> %i.xq, %i.xw
  %i.xy = fadd <4 x float> %i.xu, %i.xx           ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.xj ; 2 uses
  %i.ya = getelementptr i8, ptr %i.wi, i64 %i.xj  ; 2 uses
  %i.yb = getelementptr i8, ptr %i.ya, i64 1
  %i.yc = getelementptr i8, ptr %i.wi, i64 %i.xj  ; 2 uses
  %i.yd = getelementptr i8, ptr %i.yc, i64 2
  %i.ye = getelementptr i8, ptr %i.wi, i64 %i.xj  ; 2 uses
  %i.yf = getelementptr i8, ptr %i.ye, i64 3
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xz, i64 64), "align"(ptr %i.ya, i64 64, i64 -1), "align"(ptr %i.yc, i64 64, i64 -2), "align"(ptr %i.ye, i64 64, i64 -3) ]
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.xz, i64 %.0219311.us
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %.0219311.us
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.0219311.us
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %.0219311.us
  %i.yk = extractelement <4 x float> %i.xy, i64 0
  store float %i.yk, ptr %i.yg, align 4, !tbaa !61, !alias.scope !173, !noalias !172
  %i.yl = extractelement <4 x float> %i.xy, i64 1
  store float %i.yl, ptr %i.yh, align 4, !tbaa !61, !alias.scope !173, !noalias !172
  %i.ym = extractelement <4 x float> %i.xy, i64 2
  store float %i.ym, ptr %i.yi, align 4, !tbaa !61, !alias.scope !173, !noalias !172
  %i.yn = extractelement <4 x float> %i.xy, i64 3
  store float %i.yn, ptr %i.yj, align 4, !tbaa !61, !alias.scope !173, !noalias !172
  %index.next617 = add nuw i64 %index608, 4       ; 2 uses
  %i.yo = icmp eq i64 %index.next617, %n.vec598
  br i1 %i.yo, label %middle.block618, label %vector.body607, !llvm.loop !145

middle.block618:                                  ; preds = %vector.body607
  br i1 %cmp.n619, label %._crit_edge310.us, label %scalar.ph595.preheader

scalar.ph595.preheader:                           ; preds = %.lr.ph309.us, %middle.block618
  %.0223307.us.ph = phi ptr [ %i.xh, %middle.block618 ], [ %i.xg, %.lr.ph309.us ]
  %.0224306.us.ph = phi i64 [ %i.xc, %middle.block618 ], [ %.sroa.speculated, %.lr.ph309.us ]
  br label %scalar.ph595

scalar.ph595:                                     ; preds = %scalar.ph595.preheader, %scalar.ph595
  %.0223307.us = phi ptr [ %i.yu, %scalar.ph595 ], [ %.0223307.us.ph, %scalar.ph595.preheader ] ; 5 uses
  %.0224306.us = phi i64 [ %i.zl, %scalar.ph595 ], [ %.0224306.us.ph, %scalar.ph595.preheader ] ; 2 uses
  %i.yp = load float, ptr %.0223307.us, align 4, !tbaa !61
  %i.yq = getelementptr inbounds nuw i8, ptr %.0223307.us, i64 24
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !61
  %i.ys = fadd float %i.yp, %i.yr
  %i.yt = fmul float %i.vt, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %.0223307.us, i64 4 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.0223307.us, i64 16
  %i.yw = load <2 x float>, ptr %i.yu, align 4, !tbaa !61
  %i.yx = load <2 x float>, ptr %i.yv, align 4, !tbaa !61
  %i.yy = shufflevector <2 x float> %i.yx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.yz = fadd <2 x float> %i.yw, %i.yy
  %i.za = fmul <2 x float> %i.vv, %i.yz           ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.0223307.us, i64 12
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !61
  %i.zd = tail call float @llvm.fmuladd.f32(float %i.zc, float %i.vx, float %i.yt)
  %i.ze = extractelement <2 x float> %i.za, i64 0
  %i.zf = fadd float %i.ze, %i.zd
  %i.zg = extractelement <2 x float> %i.za, i64 1
  %i.zh = fadd float %i.zg, %i.zf
  %i.zi = mul i64 %i.wj, %.0224306.us
  %i.zj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.zi ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zj, i64 64) ]
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.zj, i64 %.0219311.us
  store float %i.zh, ptr %i.zk, align 4, !tbaa !61
  %i.zl = add nuw i64 %.0224306.us, 1             ; 2 uses
  %exitcond348.not = icmp eq i64 %i.zl, %spec.select
  br i1 %exitcond348.not, label %._crit_edge310.us, label %scalar.ph595, !llvm.loop !146

._crit_edge310.us:                                ; preds = %scalar.ph595, %middle.block618
  %i.zm = add nuw nsw i64 %.0219311.us, 1         ; 2 uses
  %exitcond349.not = icmp eq i64 %i.zm, %i.vz
  br i1 %exitcond349.not, label %.loopexit, label %.lr.ph309.us, !llvm.loop !147

.loopexit:                                        ; preds = %._crit_edge289.us, %._crit_edge296.us, %._crit_edge303.us, %._crit_edge310.us, %.lr.ph313, %.lr.ph305, %.lr.ph298, %.lr.ph291, %.preheader277, %.preheader275, %.preheader273, %bb.e
  %.not323 = icmp eq i64 %.sroa.speculated, 0
  %.pre352 = load i32, ptr %0, align 8, !tbaa !68 ; 3 uses
  br i1 %.not323, label %.preheader, label %.lr.ph316

.lr.ph316:                                        ; preds = %.loopexit
  %i.zn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !71
  %i.zp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !72
  %i.zr = load ptr, ptr %i.j, align 8, !tbaa !62, !noalias !174
  %i.zs = load ptr, ptr %1, align 8, !tbaa !58, !noalias !174 ; 2 uses
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = ptrtoint ptr %i.zs to i64
  %i.zv = sub i64 %i.zt, %i.zu
  %i.zw = ashr exact i64 %i.zv, 2
  %i.zx = lshr i64 %i.zw, 1                       ; 5 uses
  %i.zy = add i32 %.pre352, -1                    ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.zs, i64 %i.zx ; 6 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aab = sext i32 %i.zy to i64
  br label %bb.f

.preheader:                                       ; preds = %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit, %.loopexit
  %i.aac = zext i32 %.pre352 to i64               ; 2 uses
  %i.aad = icmp samesign ult i64 %spec.select, %i.aac
  br i1 %i.aad, label %.lr.ph318, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit

.lr.ph318:                                        ; preds = %.preheader
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !71
  %i.aag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !72
  %i.aai = load ptr, ptr %i.j, align 8, !tbaa !62, !noalias !175
  %i.aaj = load ptr, ptr %1, align 8, !tbaa !58, !noalias !175 ; 2 uses
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = ptrtoint ptr %i.aaj to i64
  %i.aam = sub i64 %i.aak, %i.aal
  %i.aan = ashr exact i64 %i.aam, 2
  %i.aao = lshr i64 %i.aan, 1                     ; 5 uses
  %i.aap = add i32 %.pre352, -1                   ; 2 uses
  %invariant.gep.i230 = getelementptr [4 x i8], ptr %i.aaj, i64 %i.aao ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aas = trunc i64 %i.aao to i32
  %i.aat = add i32 %i.g, %i.aas
  %i.aau = trunc nuw i64 %.sroa.speculated to i32 ; 2 uses
  %i.aav = sub i32 %i.aat, %i.aau
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph316, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit
  %.0212314 = phi i64 [ 0, %.lr.ph316 ], [ %i.acw, %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit ] ; 12 uses
  %i.aaw = add nuw i64 %i.zx, %.0212314
  %i.aax = shl i64 %i.aaw, 32
  %i.aay = ashr exact i64 %i.aax, 32
  %smin = tail call i64 @llvm.smin.i64(i64 %i.aay, i64 %i.aab) ; 2 uses
  %i.aaz = tail call i64 @llvm.usub.sat.i64(i64 %.0212314, i64 %i.zx) ; 2 uses
  %sext = shl i64 %i.aaz, 32
  %i.aba = ashr exact i64 %sext, 32
  %i.abb = sub i64 %smin, %i.aba
  %i.abc = mul i64 %i.zq, %.0212314
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zo, i64 %i.abc ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.abd, i64 64) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.abe = tail call i64 @llvm.usub.sat.i64(i64 %.0212314, i64 %i.zx) ; 2 uses
  %i.abf = trunc i64 %i.abe to i32
  %i.abg = add nuw i64 %i.zx, %.0212314
  %i.abh = trunc i64 %i.abg to i32
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.zy, i32 %i.abh) ; 2 uses
  %.not46.i = icmp slt i32 %.sroa.speculated.i, %i.abf
  br i1 %.not46.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.abi = add i64 %smin, 1
  %i.abj = sub i64 %i.abi, %i.aaz
  %sext.i = shl i64 %i.abe, 32
  %i.abk = ashr exact i64 %sext.i, 32             ; 3 uses
  %i.abl = sext i32 %.sroa.speculated.i to i64    ; 2 uses
  %xtraiter665 = and i64 %i.abj, 3                ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod666.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.abk, %.lr.ph.preheader.i ] ; 2 uses
  %.04047.i.prol = phi float [ %i.abo, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter667 = phi i64 [ %prol.iter667.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.abm = sub i64 %indvars.iv.i.prol, %.0212314
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.abm
  %i.abn = load float, ptr %gep.i.prol, align 4, !tbaa !61, !noalias !174
  %i.abo = fadd float %.04047.i.prol, %i.abn      ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter667.next = add i64 %prol.iter667, 1   ; 2 uses
  %prol.iter667.cmp.not = icmp eq i64 %prol.iter667.next, %xtraiter665
  br i1 %prol.iter667.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !152

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.abk, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.04047.i.unr = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.abo, %.lr.ph.i.prol ]
  %.lcssa655.unr = phi float [ poison, %.lr.ph.preheader.i ], [ %i.abo, %.lr.ph.i.prol ]
  %i.abp = icmp ult i64 %i.abb, 3
  br i1 %i.abp, label %._crit_edge.thread.i, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.i.prol.loopexit
  %invariant.op = sub i64 1, %.0212314
  %invariant.op683 = sub i64 2, %.0212314
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f
  %i.abq = load i32, ptr %i.b, align 4, !tbaa !70, !noalias !174 ; 3 uses
  %i.abr = zext i32 %i.abq to i64                 ; 3 uses
  %.not.i = icmp eq i32 %i.abq, 0
  br i1 %.not.i, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit, label %.lr.ph60.split.us.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa655 = phi float [ %.lcssa655.unr, %.lr.ph.i.prol.loopexit ], [ %i.acl, %.lr.ph.i ]
  %i.abs = fdiv float 1.000000e+00, %.lcssa655
  %i.abt = load i32, ptr %i.b, align 4, !tbaa !70, !noalias !174 ; 2 uses
  %i.abu = zext i32 %i.abt to i64
  %.not72.i = icmp eq i32 %i.abt, 0
  br i1 %.not72.i, label %_ZN3jxl20ConvolveBorderColumnERKNS_5PlaneIfEERKNSt3__16vectorIfNS4_9allocatorIfEEEEmPf.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %._crit_edge.thread.i
  %i.abv = load ptr, ptr %i.zz, align 8, !tbaa !71, !noalias !174
  %i.abw = load i64, ptr %i.aaa, align 8, !tbaa !72, !noalias !174
  br label %.lr.ph55.i

.lr.ph60.split.us.i:                              ; preds = %._crit_edge.i
  %min.iters.check623 = icmp ult i32 %i.abq, 8
  br i1 %min.iters.check623, label %scalar.ph622.preheader, label %vector.ph624

vector.ph624:                                     ; preds = %.lr.ph60.split.us.i
  %n.vec625 = and i64 %i.abr, 4294967288          ; 3 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next628, %vector.body626 ] ; 2 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %index627 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store <4 x float> splat (float +qnan), ptr %i.abx, align 32, !tbaa !61, !alias.scope !174
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE412MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_:bb.a
  %i.hj = add nuw nsw i64 %.0156177.us.2.i, 1     ; 2 uses
  %exitcond209.2.not.i = icmp eq i64 %i.hj, %i.t
  br i1 %exitcond209.2.not.i, label %._crit_edge.us180.2.i, label %bb.o, !llvm.loop !277

._crit_edge.us180.2.i:                            ; preds = %bb.o
  %i.hk = mul i64 %i.gr, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hl, i64 64) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.us180.2.i
  %.0156177.us.3.i = phi i64 [ 0, %._crit_edge.us180.2.i ], [ %i.hq, %bb.p ] ; 3 uses
  %i.hm = tail call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.3.i, i64 noundef 3) #49, !noalias !286
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.0156177.us.3.i ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !61, !noalias !287
  %i.hp = fadd float %i.hm, %i.ho
  store float %i.hp, ptr %i.hn, align 4, !tbaa !61, !noalias !287
  %i.hq = add nuw nsw i64 %.0156177.us.3.i, 1     ; 2 uses
  %exitcond209.3.not.i = icmp eq i64 %i.hq, %i.t
  br i1 %exitcond209.3.not.i, label %.split.us.i, label %bb.p, !llvm.loop !277

.split.us.i:                                      ; preds = %bb.p, %.preheader172.i, %.preheader172.thread.i
  %.not198233.i = phi i1 [ true, %.preheader172.i ], [ true, %.preheader172.thread.i ], [ false, %bb.p ]
  %i.hr = phi i64 [ %i.gr, %.preheader172.i ], [ %i.bj, %.preheader172.thread.i ], [ %i.gr, %bb.p ]
  %i.hs = phi ptr [ %i.gq, %.preheader172.i ], [ %i.bi, %.preheader172.thread.i ], [ %i.gq, %bb.p ]
  %i.ht = phi ptr [ %i.gp, %.preheader172.i ], [ %i.bh, %.preheader172.thread.i ], [ %i.gp, %bb.p ]
  %i.hu = phi ptr [ %i.go, %.preheader172.i ], [ %i.bg, %.preheader172.thread.i ], [ %i.go, %bb.p ]
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !72, !alias.scope !285 ; 14 uses
  %i.hx = lshr i64 %i.hw, 2                       ; 11 uses
  %i.hy = add nsw i64 %i.u, -4                    ; 3 uses
  %i.hz = icmp ugt i64 %i.hy, 4
  br i1 %i.hz, label %.lr.ph188.i, label %.preheader.i

.lr.ph188.i:                                      ; preds = %.split.us.i
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !71, !alias.scope !285 ; 13 uses
  %i.ic = mul nuw nsw i64 %i.hx, 3                ; 2 uses
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = sub nsw i64 0, %i.hx                    ; 9 uses
  %.not182.i = icmp ult i32 %i.e, 12
  %.not50.4.i72.not = icmp eq i32 %i.e, 0         ; 12 uses
  %.not50.5.i74.not = icmp eq i32 %i.e, 1         ; 12 uses
  %.not50.6.i76 = icmp ugt i32 %i.e, 2            ; 12 uses
  %.not50.7.i78.not = icmp eq i32 %i.e, 3         ; 12 uses
  %.not50.8.i80 = icmp ugt i32 %i.e, 4            ; 12 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.not50.8.i56.not = icmp eq i32 %i.e, 5         ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %.not50.8.i31 = icmp ugt i32 %i.e, 6            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.not50.8.i.not = icmp eq i32 %i.e, 7
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %scevgep.i65.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %scevgep.i65.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %scevgep.i65.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %scevgep.i65.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %scevgep.i65.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %scevgep.i65.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %scevgep.i65.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  %scevgep.i65.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  br label %.preheader171.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.us.i
  %.1158.lcssa.i = phi i64 [ 4, %.split.us.i ], [ %i.hy, %._crit_edge.i ] ; 2 uses
  %i.md = icmp ult i64 %.1158.lcssa.i, %i.u
  br i1 %i.md, label %.lr.ph195.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit

.lr.ph195.i:                                      ; preds = %.preheader.i
  %i.me = load ptr, ptr %i.hu, align 8, !tbaa !71, !alias.scope !286
  %i.mf = load i64, ptr %i.hs, align 8, !tbaa !72, !alias.scope !286
  br i1 %.not198233.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i

.lr.ph192.us.i:                                   ; preds = %.lr.ph195.i, %._crit_edge193.us.i
  %.2159194.us.i = phi i64 [ %i.mn, %._crit_edge193.us.i ], [ %.1158.lcssa.i, %.lr.ph195.i ] ; 3 uses
  %i.mg = mul i64 %.2159194.us.i, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mh, i64 64) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph192.us.i
  %.0190.us.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %i.mm, %bb.q ] ; 3 uses
  %i.mi = call fastcc noundef float @_ZN3jxl6N_SSE4L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0190.us.i, i64 noundef %.2159194.us.i) #49, !noalias !286
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.0190.us.i ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !61, !noalias !287
  %i.ml = fadd float %i.mi, %i.mk
  store float %i.ml, ptr %i.mj, align 4, !tbaa !61, !noalias !287
  %i.mm = add nuw nsw i64 %.0190.us.i, 1          ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.mm, %i.t
  br i1 %exitcond215.not.i, label %._crit_edge193.us.i, label %bb.q, !llvm.loop !278

._crit_edge193.us.i:                              ; preds = %bb.q
  %i.mn = add nuw nsw i64 %.2159194.us.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.mn, %i.u
  br i1 %exitcond216.not.i, label %_ZN3jxl6N_SSE4L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i, !llvm.loop !279

.preheader171.i:                                  ; preds = %._crit_edge.i, %.lr.ph188.i
  %.1158186.i = phi i64 [ 4, %.lr.ph188.i ], [ %i.afl, %._crit_edge.i ] ; 6 uses
  %i.mo = mul i64 %.1158186.i, %i.hw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.mo ; 2 uses
  %i.mq = mul i64 %.1158186.i, %i.hr
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.mq ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mr, i64 64), "align"(ptr %i.mp, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46, !noalias !286
  %i.ms = trunc i64 %.1158186.i to i32            ; 10 uses
  %i.mt = add i32 %i.ms, -4                       ; 6 uses
  %i.mu = icmp sgt i32 %i.mt, -1
  %.not.i62 = icmp ugt i32 %i.i, %i.mt
  %or.cond55.i63 = select i1 %i.mu, i1 %.not.i62, i1 false
  br i1 %or.cond55.i63, label %bb.r, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64: ; preds = %.preheader171.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66

bb.r:                                             ; preds = %.preheader171.i
  %i.mv = zext nneg i32 %i.mt to i64
  %i.mw = mul i64 %i.hw, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.mw ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mx, i64 64) ], !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  store float 0.000000e+00, ptr %i.in, align 16, !tbaa !61, !noalias !286
  br label %.thread89

bb.s:                                             ; preds = %bb.r
  %i.my = load float, ptr %i.mx, align 64, !tbaa !61, !noalias !286
  store float %i.my, ptr %i.ij, align 16, !tbaa !61, !noalias !286
  br i1 %.not50.5.i74.not, label %.thread89, label %bb.t

.thread89:                                        ; preds = %.thread, %bb.s
  store float 0.000000e+00, ptr %i.io, align 4, !tbaa !61, !noalias !286
  br label %.thread93

bb.t:                                             ; preds = %bb.s
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !61, !noalias !286
  store float %i.na, ptr %i.ik, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.6.i76, label %bb.u, label %.thread93

.thread93:                                        ; preds = %.thread89, %bb.t
  store float 0.000000e+00, ptr %i.ip, align 8, !tbaa !61, !noalias !286
  br label %.thread97

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !61, !noalias !286
  store float %i.nc, ptr %i.il, align 8, !tbaa !61, !noalias !286
  br i1 %.not50.7.i78.not, label %.thread97, label %bb.v

.thread97:                                        ; preds = %.thread93, %bb.u
  store float 0.000000e+00, ptr %i.iq, align 4, !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

bb.v:                                             ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !61, !noalias !286
  store float %i.ne, ptr %i.im, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.8.i80, label %bb.w, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

bb.w:                                             ; preds = %bb.v
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.ng = load float, ptr %i.nf, align 16, !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81: ; preds = %.thread97, %bb.w, %bb.v
  %.sink94.i82 = phi float [ %i.ng, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %.thread97 ]
  store float %.sink94.i82, ptr %i.ir, align 16, !tbaa !61, !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.is, i8 0, i64 12, i1 false), !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64
  %i.nh = add i32 %i.ms, -3                       ; 3 uses
  %i.ni = icmp sgt i32 %i.nh, -1
  %.not.i62.1 = icmp ugt i32 %i.i, %i.nh
  %or.cond55.i63.1 = select i1 %i.ni, i1 %.not.i62.1, i1 false
  br i1 %or.cond55.i63.1, label %bb.x, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep.i65.1, i8 0, i64 48, i1 false), !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1

bb.x:                                             ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66
  %i.nj = zext nneg i32 %i.nh to i64
  %i.nk = mul i64 %i.hw, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.nk ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nl, i64 64) ], !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.it, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nm = load float, ptr %i.nl, align 64, !tbaa !61, !noalias !286
  store float %i.nm, ptr %i.iu, align 16, !tbaa !61, !noalias !286
  br i1 %.not50.5.i74.not, label %.thread89.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !61, !noalias !286
  store float %i.no, ptr %i.iv, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.6.i76, label %bb.aa, label %.thread93.1

bb.aa:                                            ; preds = %bb.z
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nq = load float, ptr %i.np, align 8, !tbaa !61, !noalias !286
  store float %i.nq, ptr %i.iw, align 8, !tbaa !61, !noalias !286
  br i1 %.not50.7.i78.not, label %.thread97.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !61, !noalias !286
  store float %i.ns, ptr %i.ix, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.8.i80, label %bb.ac, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

bb.ac:                                            ; preds = %bb.ab
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nu = load float, ptr %i.nt, align 16, !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

.thread.1:                                        ; preds = %bb.x
  store float 0.000000e+00, ptr %i.iy, align 16, !tbaa !61, !noalias !286
  br label %.thread89.1

.thread89.1:                                      ; preds = %.thread.1, %bb.y
  store float 0.000000e+00, ptr %i.iz, align 4, !tbaa !61, !noalias !286
  br label %.thread93.1

.thread93.1:                                      ; preds = %.thread89.1, %bb.z
  store float 0.000000e+00, ptr %i.ja, align 8, !tbaa !61, !noalias !286
  br label %.thread97.1

.thread97.1:                                      ; preds = %.thread93.1, %bb.aa
  store float 0.000000e+00, ptr %i.jb, align 4, !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1: ; preds = %.thread97.1, %bb.ac, %bb.ab
  %.sink94.i82.1 = phi float [ %i.nu, %bb.ac ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %.thread97.1 ]
  store float %.sink94.i82.1, ptr %i.jc, align 16, !tbaa !61, !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jd, i8 0, i64 12, i1 false), !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1
  %i.nv = add i32 %i.ms, -2                       ; 3 uses
  %i.nw = icmp sgt i32 %i.nv, -1
  %.not.i62.2 = icmp ugt i32 %i.i, %i.nv
  %or.cond55.i63.2 = select i1 %i.nw, i1 %.not.i62.2, i1 false
  br i1 %or.cond55.i63.2, label %bb.ad, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.2

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.2: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep.i65.2, i8 0, i64 48, i1 false), !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.2

bb.ad:                                            ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1
  %i.nx = zext nneg i32 %i.nv to i64
  %i.ny = mul i64 %i.hw, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ny ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nz, i64 64) ], !noalias !286
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread.2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.oa = load float, ptr %i.nz, align 64, !tbaa !61, !noalias !286
  store float %i.oa, ptr %i.jf, align 16, !tbaa !61, !noalias !286
  br i1 %.not50.5.i74.not, label %.thread89.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61, !noalias !286
  store float %i.oc, ptr %i.jg, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.6.i76, label %bb.ag, label %.thread93.2

bb.ag:                                            ; preds = %bb.af
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oe = load float, ptr %i.od, align 8, !tbaa !61, !noalias !286
  store float %i.oe, ptr %i.jh, align 8, !tbaa !61, !noalias !286
  br i1 %.not50.7.i78.not, label %.thread97.2, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.og = load float, ptr %i.of, align 4, !tbaa !61, !noalias !286
  store float %i.og, ptr %i.ji, align 4, !tbaa !61, !noalias !286
  br i1 %.not50.8.i80, label %bb.ai, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.2

bb.ai:                                            ; preds = %bb.ah
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oi = load float, ptr %i.oh, align 16, !tbaa !61, !noalias !286
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.2

.thread.2:                                        ; preds = %bb.ad
  store float 0.000000e+00, ptr %i.jj, align 16, !tbaa !61, !noalias !286
  br label %.thread89.2

.thread89.2:                                      ; preds = %.thread.2, %bb.ae
  store float 0.000000e+00, ptr %i.jk, align 4, !tbaa !61, !noalias !286
  br label %.thread93.2

.thread93.2:                                      ; preds = %.thread89.2, %bb.af
  store float 0.000000e+00, ptr %i.jl, align 8, !tbaa !61, !noalias !286
  br label %.thread97.2

.thread97.2:                                      ; preds = %.thread93.2, %bb.ag
  store float 0.000000e+00, ptr %i.jm, align 4, !tbaa !61, !noalias !286
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE44MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_:bb.a
  %exitcond.not.i74.1 = icmp eq i64 %i.gu, %i.es
  br i1 %exitcond.not.i74.1, label %._crit_edge.us.i75, label %scalar.ph161, !llvm.loop !351

._crit_edge.us.i75:                               ; preds = %scalar.ph161.prol.loopexit, %scalar.ph161, %middle.block169
  %i.gv = add nuw nsw i64 %.02123.us.i72, 1       ; 2 uses
  %exitcond29.not.i76 = icmp eq i64 %i.gv, %i.ev
  br i1 %exitcond29.not.i76, label %_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77, label %.lr.ph.us.i71, !llvm.loop !13

_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77: ; preds = %._crit_edge.us.i75, %_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit, %.lr.ph25.i69
  %i.gw = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %14, float noundef 2.700000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %18) #49 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77
  call void @_ZN3jxl6N_SSE412FuzzyErosionERKNS_5PlaneIfEEPS2_(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull %14) #49
  %i.gy = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %16, float noundef 2.700000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %20) #49 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.preheader122, label %.loopexit

.preheader122:                                    ; preds = %bb.l
  %.not128 = icmp eq i32 %i.d, 0
  br i1 %.not128, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader122
  %.not129 = icmp eq i32 %i.a, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8            ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hd = load i64, ptr %i.hc, align 8            ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %.not129, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not = icmp eq ptr %5, null
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !71 ; 9 uses
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !72 ; 6 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader.lr.ph.split.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.ho = add nsw i64 %i.e, -1                    ; 2 uses
  %i.hp = mul i64 %i.hn, %i.ho
  %i.hq = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hm, i64 %i.hp
  %scevgep224 = getelementptr i8, ptr %i.hr, i64 %i.hq
  %i.hs = mul i64 %i.hd, %i.ho
  %i.ht = getelementptr i8, ptr %i.hb, i64 %i.hs
  %scevgep225 = getelementptr i8, ptr %i.ht, i64 %i.hq
  %min.iters.check232 = icmp ult i32 %i.a, 8
  %bound0226 = icmp ult ptr %i.hm, %scevgep225
  %bound1227 = icmp ult ptr %i.hb, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  %i.hu = or i64 %i.hd, %i.hn
  %i.hv = icmp slt i64 %i.hu, 0
  %i.hw = or i1 %found.conflict228, %i.hv
  %n.vec234 = and i64 %i.b, 4294967288            ; 3 uses
  %cmp.n241 = icmp eq i64 %n.vec234, %i.b
  %xtraiter248 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %.058124.us = phi i64 [ %i.jc, %._crit_edge.split.us.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.hx = mul i64 %i.hd, %.058124.us
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hx ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hy, i64 64) ]
  %i.hz = mul i64 %i.hn, %.058124.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hz ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ia, i64 64) ]
  %brmerge251 = select i1 %min.iters.check232, i1 true, i1 %i.hw
  br i1 %brmerge251, label %scalar.ph231.preheader, label %vector.body235

vector.body235:                                   ; preds = %.preheader.us, %vector.body235
  %index236 = phi i64 [ %index.next239, %vector.body235 ], [ 0, %.preheader.us ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index236 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load237 = load <4 x float>, ptr %i.ib, align 32, !tbaa !61, !alias.scope !381
  %wide.load238 = load <4 x float>, ptr %i.ic, align 16, !tbaa !61, !alias.scope !381
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index236 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x float> %wide.load237, ptr %i.id, align 32, !tbaa !61, !alias.scope !382, !noalias !381
  store <4 x float> %wide.load238, ptr %i.ie, align 16, !tbaa !61, !alias.scope !382, !noalias !381
  %index.next239 = add nuw i64 %index236, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.if, label %middle.block240, label %vector.body235, !llvm.loop !355

middle.block240:                                  ; preds = %vector.body235
  br i1 %cmp.n241, label %._crit_edge.split.us.us, label %scalar.ph231.preheader

scalar.ph231.preheader:                           ; preds = %.preheader.us, %middle.block240
  %.0123.us.us.ph = phi i64 [ %n.vec234, %middle.block240 ], [ 0, %.preheader.us ] ; 3 uses
  br i1 %lcmp.mod249.not, label %scalar.ph231.prol.loopexit, label %scalar.ph231.prol

scalar.ph231.prol:                                ; preds = %scalar.ph231.preheader, %scalar.ph231.prol
  %.0123.us.us.prol = phi i64 [ %i.ij, %scalar.ph231.prol ], [ %.0123.us.us.ph, %scalar.ph231.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph231.prol ], [ 0, %scalar.ph231.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.0123.us.us.prol
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !61
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0123.us.us.prol
  store float %i.ih, ptr %i.ii, align 4, !tbaa !61
  %i.ij = add nuw nsw i64 %.0123.us.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %scalar.ph231.prol.loopexit, label %scalar.ph231.prol, !llvm.loop !356

scalar.ph231.prol.loopexit:                       ; preds = %scalar.ph231.prol, %scalar.ph231.preheader
  %.0123.us.us.unr = phi i64 [ %.0123.us.us.ph, %scalar.ph231.preheader ], [ %i.ij, %scalar.ph231.prol ]
  %i.ik = sub nsw i64 %.0123.us.us.ph, %i.b
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %._crit_edge.split.us.us, label %scalar.ph231

scalar.ph231:                                     ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231
  %.0123.us.us = phi i64 [ %i.jb, %scalar.ph231 ], [ %.0123.us.us.unr, %scalar.ph231.prol.loopexit ] ; 6 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.0123.us.us
  %i.in = load float, ptr %i.im, align 4, !tbaa !61
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0123.us.us
  store float %i.in, ptr %i.io, align 4, !tbaa !61
  %i.ip = add nuw nsw i64 %.0123.us.us, 1         ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !61
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ip
  store float %i.ir, ptr %i.is, align 4, !tbaa !61
  %i.it = add nuw nsw i64 %.0123.us.us, 2         ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !61
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.it
  store float %i.iv, ptr %i.iw, align 4, !tbaa !61
  %i.ix = add nuw nsw i64 %.0123.us.us, 3         ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !61
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ix
  store float %i.iz, ptr %i.ja, align 4, !tbaa !61
  %i.jb = add nuw nsw i64 %.0123.us.us, 4         ; 2 uses
  %exitcond132.not.3 = icmp eq i64 %i.jb, %i.b
  br i1 %exitcond132.not.3, label %._crit_edge.split.us.us, label %scalar.ph231, !llvm.loop !357

._crit_edge.split.us.us:                          ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231, %middle.block240
  %i.jc = add nuw nsw i64 %.058124.us, 1          ; 2 uses
  %exitcond133.not = icmp eq i64 %i.jc, %i.e
  br i1 %exitcond133.not, label %.loopexit, label %.preheader.us, !llvm.loop !358

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.jd = load ptr, ptr %i.hi, align 8, !tbaa !71 ; 6 uses
  %i.je = load i64, ptr %i.hj, align 8, !tbaa !72 ; 3 uses
  %i.jf = add nsw i64 %i.e, -1                    ; 3 uses
  %i.jg = mul i64 %i.hn, %i.jf
  %i.jh = shl nuw nsw i64 %i.b, 2                 ; 5 uses
  %i.ji = getelementptr i8, ptr %i.hm, i64 %i.jg
  %scevgep173 = getelementptr i8, ptr %i.ji, i64 %i.jh ; 4 uses
  %i.jj = mul i64 %i.je, %i.jf
  %i.jk = getelementptr i8, ptr %i.jd, i64 %i.jj
  %scevgep174 = getelementptr i8, ptr %i.jk, i64 %i.jh ; 4 uses
  %i.jl = mul i64 %i.hd, %i.jf
  %i.jm = getelementptr i8, ptr %i.hb, i64 %i.jl
  %scevgep175 = getelementptr i8, ptr %i.jm, i64 %i.jh ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.a, 16
  %bound0180 = icmp ult ptr %i.hm, %scevgep174
  %bound1181 = icmp ult ptr %i.jd, %scevgep173
  %found.conflict182 = and i1 %bound0180, %bound1181
  %i.jn = or i64 %i.je, %i.hn
  %i.jo = icmp slt i64 %i.jn, 0
  %i.jp = or i1 %found.conflict182, %i.jo
  %bound0185 = icmp ult ptr %i.hm, %scevgep175
  %bound1186 = icmp ult ptr %i.hb, %scevgep173
  %found.conflict187 = and i1 %bound0185, %bound1186
  %stride.check188 = icmp slt i64 %i.hd, 0
  %i.jq = or i1 %found.conflict187, %stride.check188
  %conflict.rdx = or i1 %i.jp, %i.jq
  %bound0197 = icmp ult ptr %i.jd, %scevgep175
  %bound1198 = icmp ult ptr %i.hb, %scevgep174
  %found.conflict199 = and i1 %bound0197, %bound1198
  %n.vec212 = and i64 %i.b, 4294967292            ; 3 uses
  %cmp.n221 = icmp eq i64 %n.vec212, %i.b
  %xtraiter246 = and i64 %i.b, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %i.jr = add nsw i64 %i.b, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.058124 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %i.ld, %._crit_edge.split ] ; 6 uses
  %i.js = mul i64 %i.hd, %.058124
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.js ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jt, i64 64) ]
  %i.ju = mul i64 %i.hn, %.058124
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ju ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jv, i64 64) ]
  %i.jw = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.jx = load i64, ptr %i.hf, align 8
  %i.jy = mul i64 %i.jx, %.058124                 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jy ; 7 uses
  %i.ka = load ptr, ptr %i.hg, align 8            ; 2 uses
  %i.kb = load i64, ptr %i.hh, align 8
  %i.kc = mul i64 %i.kb, %.058124                 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kc ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jz, i64 64), "align"(ptr %i.kd, i64 64) ]
  %i.ke = mul i64 %i.je, %.058124
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ke ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kf, i64 64) ]
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.preheader
  %scevgep176 = getelementptr i8, ptr %i.jw, i64 %i.jh
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.jy ; 2 uses
  %scevgep178 = getelementptr i8, ptr %i.ka, i64 %i.jh
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.kc ; 2 uses
  %bound0189 = icmp ult ptr %i.hm, %scevgep177
  %bound1190 = icmp ult ptr %i.jz, %scevgep173
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx, %found.conflict191
  %bound0193 = icmp ult ptr %i.hm, %scevgep179
  %bound1194 = icmp ult ptr %i.kd, %scevgep173
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %i.jd, %scevgep177
  %bound1202 = icmp ult ptr %i.jz, %scevgep174
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %i.jd, %scevgep179
  %bound1206 = icmp ult ptr %i.kd, %scevgep174
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  br i1 %conflict.rdx208, label %scalar.ph209.preheader, label %vector.body213

vector.body213:                                   ; preds = %vector.memcheck172, %vector.body213
  %index214 = phi i64 [ %index.next219, %vector.body213 ], [ 0, %vector.memcheck172 ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index214
  %wide.load215 = load <4 x float>, ptr %i.kg, align 16, !tbaa !61, !alias.scope !383
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index214
  store <4 x float> %wide.load215, ptr %i.kh, align 16, !tbaa !61, !alias.scope !384, !noalias !385
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %index214
  %wide.load216 = load <4 x float>, ptr %i.ki, align 16, !tbaa !61, !alias.scope !386
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index214
  %wide.load217 = load <4 x float>, ptr %i.kj, align 16, !tbaa !61, !alias.scope !387
  %i.kk = fsub <4 x float> %wide.load216, %wide.load217 ; 2 uses
  %i.kl = fmul <4 x float> %i.kk, splat (float 1.000000e+01)
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %index214 ; 2 uses
  %wide.load218 = load <4 x float>, ptr %i.km, align 16, !tbaa !61, !alias.scope !388, !noalias !389
  %i.kn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kl, <4 x float> %i.kk, <4 x float> %wide.load218)
  store <4 x float> %i.kn, ptr %i.km, align 16, !tbaa !61, !alias.scope !388, !noalias !389
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.ko, label %middle.block220, label %vector.body213, !llvm.loop !365

middle.block220:                                  ; preds = %vector.body213
  br i1 %cmp.n221, label %._crit_edge.split, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %vector.memcheck172, %.preheader, %middle.block220
  %.0123.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.preheader ], [ %n.vec212, %middle.block220 ] ; 8 uses
  br i1 %lcmp.mod247.not, label %scalar.ph209.prol.loopexit, label %scalar.ph209.prol

scalar.ph209.prol:                                ; preds = %scalar.ph209.preheader
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.0123.ph
  %i.kq = load float, ptr %i.kp, align 16, !tbaa !61
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0123.ph
  store float %i.kq, ptr %i.kr, align 16, !tbaa !61
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.0123.ph
  %i.kt = load float, ptr %i.ks, align 16, !tbaa !61
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.0123.ph
  %i.kv = load float, ptr %i.ku, align 16, !tbaa !61
  %i.kw = fsub float %i.kt, %i.kv                 ; 2 uses
  %i.kx = fmul float %i.kw, 1.000000e+01
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0123.ph ; 2 uses
  %i.kz = load float, ptr %i.ky, align 16, !tbaa !61
  %i.la = call float @llvm.fmuladd.f32(float %i.kx, float %i.kw, float %i.kz)
  store float %i.la, ptr %i.ky, align 16, !tbaa !61
  %i.lb = or disjoint i64 %.0123.ph, 1
  br label %scalar.ph209.prol.loopexit

scalar.ph209.prol.loopexit:                       ; preds = %scalar.ph209.prol, %scalar.ph209.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %scalar.ph209.preheader ], [ %i.lb, %scalar.ph209.prol ]
  %i.lc = icmp eq i64 %.0123.ph, %i.jr
  br i1 %i.lc, label %._crit_edge.split, label %scalar.ph209

._crit_edge.split:                                ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209, %middle.block220
  %i.ld = add nuw nsw i64 %.058124, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.ld, %i.e
  br i1 %exitcond131.not, label %.loopexit, label %.preheader, !llvm.loop !358

scalar.ph209:                                     ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209
  %.0123 = phi i64 [ %i.md, %scalar.ph209 ], [ %.0123.unr, %scalar.ph209.prol.loopexit ] ; 7 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.0123
  %i.lf = load float, ptr %i.le, align 4, !tbaa !61
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0123
  store float %i.lf, ptr %i.lg, align 4, !tbaa !61
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.0123
  %i.li = load float, ptr %i.lh, align 4, !tbaa !61
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.0123
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !61
  %i.ll = fsub float %i.li, %i.lk                 ; 2 uses
  %i.lm = fmul float %i.ll, 1.000000e+01
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0123 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !61
  %i.lp = call float @llvm.fmuladd.f32(float %i.lm, float %i.ll, float %i.lo)
  store float %i.lp, ptr %i.ln, align 4, !tbaa !61
  %i.lq = add nuw nsw i64 %.0123, 1               ; 5 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !61
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lq
  store float %i.ls, ptr %i.lt, align 4, !tbaa !61
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.lq
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !61
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.lq
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !61
  %i.ly = fsub float %i.lv, %i.lx                 ; 2 uses
  %i.lz = fmul float %i.ly, 1.000000e+01
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.lq ; 2 uses
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !61
  %i.mc = call float @llvm.fmuladd.f32(float %i.lz, float %i.ly, float %i.mb)
  store float %i.mc, ptr %i.ma, align 4, !tbaa !61
  %i.md = add nuw nsw i64 %.0123, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.md, %i.b
  br i1 %exitcond.not.1, label %._crit_edge.split, label %scalar.ph209, !llvm.loop !366

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader122, %.preheader.lr.ph, %_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77, %bb.l
  %.sroa.0.0 = phi i32 [ %i.gy, %bb.l ], [ %i.gw, %_ZN3jxl6N_SSE414DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77 ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge.split.us.us ], [ 0, %.preheader122 ], [ 0, %._crit_edge.split ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  %.pr = load i32, ptr %i.bz, align 8, !tbaa !80
  %i.me = icmp eq i32 %.pr, 0
  br i1 %i.me, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67, %bb.m, %.loopexit
  %.sroa.0.1104 = phi i32 [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %.loopexit ], [ %i.cg, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  %.pr105 = load i32, ptr %i.bj, align 8, !tbaa !80
  %i.mf = icmp eq i32 %.pr105, 0
  br i1 %i.mf, label %bb.n, label %.thread106

bb.n:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #45
  br label %.thread106

.thread106:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65, %bb.n, %.thread
  %.sroa.0.2108 = phi i32 [ %.sroa.0.1104, %bb.n ], [ %.sroa.0.1104, %.thread ], [ %i.bq, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  %.pr109 = load i32, ptr %i.at, align 8, !tbaa !80
  %i.mg = icmp eq i32 %.pr109, 0
  br i1 %i.mg, label %bb.o, label %.thread110

bb.o:                                             ; preds = %.thread106
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #45
  br label %.thread110

.thread110:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit63, %bb.o, %.thread106
  %.sroa.0.3112 = phi i32 [ %.sroa.0.2108, %bb.o ], [ %.sroa.0.2108, %.thread106 ], [ %i.ba, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit63 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  %.pr113 = load i32, ptr %i.ad, align 8, !tbaa !80
  %i.mh = icmp eq i32 %.pr113, 0
  br i1 %i.mh, label %bb.p, label %.thread114

bb.p:                                             ; preds = %.thread110
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #45
  br label %.thread114

.thread114:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit61, %bb.p, %.thread110
  %.sroa.0.4116 = phi i32 [ %.sroa.0.3112, %bb.p ], [ %.sroa.0.3112, %.thread110 ], [ %i.ak, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit61 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %.pr117 = load i32, ptr %i.j, align 8, !tbaa !80
  %i.mi = icmp eq i32 %.pr117, 0
  br i1 %i.mi, label %bb.q, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81

bb.q:                                             ; preds = %.thread114
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81:       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread114, %bb.q
  %.sroa.0.5120 = phi i32 [ %.sroa.0.4116, %bb.q ], [ %.sroa.0.4116, %.thread114 ], [ %i.q, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  ret i32 %.sroa.0.5120
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE415MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %1, i64 noundef %2, i64 noundef %3, ptr nofree nonnull readnone align 4 captures(none) %4, ptr noundef %5, ptr noalias noundef %6, ptr noalias nofree noundef readonly captures(address_is_null) %7) #8 {
bb.a:
  %8 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %10 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
  %11 = alloca %"class.jxl::Plane", align 8       ; 8 uses
  %12 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
  %13 = alloca %"class.jxl::Plane", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_SSE415MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_:bb.a
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.ch)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03334.us.i
  %i.ck = call noundef float @sqrtf(float noundef %i.ci) #45
  store float %i.ck, ptr %i.cj, align 4, !tbaa !61
  %i.cl = add nuw nsw i64 %.03334.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.g, !llvm.loop !11

._crit_edge.us.i:                                 ; preds = %bb.g
  %i.cm = add nuw nsw i64 %.035.us.i, 1           ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.cm, %i.ao
  br i1 %exitcond41.not.i, label %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, label %.lr.ph.us.i, !llvm.loop !12

_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit: ; preds = %._crit_edge.us.i, %bb.f, %.lr.ph37.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !70 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.not.i21 = icmp eq i32 %i.co, 0
  br i1 %.not.i21, label %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph37.i22

.lr.ph37.i22:                                     ; preds = %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !72
  %i.dl = load i32, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %.not39.i23 = icmp eq i32 %i.dl, 0
  br i1 %.not39.i23, label %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24

.lr.ph.us.i24:                                    ; preds = %.lr.ph37.i22, %._crit_edge.us.i28
  %.035.us.i25 = phi i64 [ %i.eo, %._crit_edge.us.i28 ], [ 0, %.lr.ph37.i22 ] ; 6 uses
  %i.dn = mul i64 %.035.us.i25, %i.cu
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64) ]
  %i.dp = mul i64 %.035.us.i25, %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  %i.dr = mul i64 %.035.us.i25, %i.dc
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  %i.dt = mul i64 %.035.us.i25, %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  %i.dv = mul i64 %.035.us.i25, %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dw, i64 64) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.i24
  %.03334.us.i26 = phi i64 [ 0, %.lr.ph.us.i24 ], [ %i.en, %bb.h ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.03334.us.i26
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.03334.us.i26
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !61
  %i.eb = fadd float %i.dy, %i.ea
  %i.ec = fmul float %i.eb, 2.500000e+00          ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.03334.us.i26
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03334.us.i26
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61
  %i.eh = fmul float %i.eg, 4.000000e-01
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float 4.000000e-01, float %i.eh) ; 2 uses
  %i.ej = fmul float %i.ei, %i.ei
  %i.ek = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ej)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03334.us.i26
  %i.em = call noundef float @sqrtf(float noundef %i.ek) #45
  store float %i.em, ptr %i.el, align 4, !tbaa !61
  %i.en = add nuw nsw i64 %.03334.us.i26, 1       ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %i.en, %i.dm
  br i1 %exitcond.not.i27, label %._crit_edge.us.i28, label %bb.h, !llvm.loop !11

._crit_edge.us.i28:                               ; preds = %bb.h
  %i.eo = add nuw nsw i64 %.035.us.i25, 1         ; 2 uses
  %exitcond41.not.i29 = icmp eq i64 %i.eo, %i.cp
  br i1 %exitcond41.not.i29, label %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24, !llvm.loop !12

_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30: ; preds = %._crit_edge.us.i28, %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, %.lr.ph37.i22
  %i.ep = call i32 @_ZN3jxl6N_SSE44MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr nonnull align 4 poison, ptr noundef %5, ptr noundef %6, ptr noundef %7) #49 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %.pr = load i32, ptr %i.af, align 8, !tbaa !80
  %i.eq = icmp eq i32 %.pr, 0
  br i1 %i.eq, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20, %bb.i, %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  %.sroa.0.142 = phi i32 [ %i.ep, %bb.i ], [ %i.ep, %_ZN3jxl6N_SSE425CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30 ], [ %.pre48, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  %.pr43 = load i32, ptr %i.p, align 8, !tbaa !80
  %i.er = icmp eq i32 %.pr43, 0
  br i1 %i.er, label %bb.j, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

bb.j:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31:       ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread, %bb.j
  %.sroa.0.246 = phi i32 [ %.sroa.0.142, %bb.j ], [ %.sroa.0.142, %.thread ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  ret i32 %.sroa.0.246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_SSE45MaskYEd(double noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x3FDCEC88D72DDFBF, double f0x3FEA8C0402103A76)
  %i.b = fdiv double f0x40046385809AE090, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_SSE47MaskDcYEd(double noundef %0) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x400EFEF6CF116418, double f0x3FC9A1FB482D66D1)
  %i.b = fdiv double f0x3FE029681B74E8CE, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE424CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) #11 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !68
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.a to i64
  %i.k = zext i32 %i.e to i64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  %.not42 = icmp eq i32 %i.a, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8
  br i1 %.not42, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.pre = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre50.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert52.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre53.pre = load ptr, ptr %.phi.trans.insert52.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.pre56.pre = load ptr, ptr %.phi.trans.insert55.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert58.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre59.pre = load ptr, ptr %.phi.trans.insert58.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert61.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.pre62.pre = load ptr, ptr %.phi.trans.insert61.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre.pre, i64 64), "align"(ptr %.pre50.pre, i64 64), "align"(ptr %.pre53.pre, i64 64), "align"(ptr %.pre56.pre, i64 64), "align"(ptr %.pre59.pre, i64 64), "align"(ptr %.pre62.pre, i64 64) ]
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03539.us = phi i64 [ %i.bw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.z = mul i64 %i.o, %.03539.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = mul i64 %i.s, %.03539.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = mul i64 %i.u, %.03539.us                ; 3 uses
  %i.ae = mul i64 %i.w, %.03539.us                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.af, i64 64) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre50.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre53.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre56.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre59.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.03438.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bv, %bb.c ] ; 9 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.03438.us
  %i.am = load float, ptr %i.al, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.03438.us
  %i.ao = load float, ptr %i.an, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03438.us
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !61
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.03438.us
  %i.as = load float, ptr %i.ar, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.03438.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !61
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.03438.us
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.03438.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !61
  %i.az = fpext float %i.am to double
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double f0x400EFEF6CF116418, double f0x3FDCEC88D72DDFBF>, <2 x double> <double f0x3FC9A1FB482D66D1, double f0x3FEA8C0402103A76>)
  %i.bd = fdiv <2 x double> <double f0x3FE029681B74E8CE, double f0x40046385809AE090>, %i.bc
  %i.be = fadd <2 x double> %i.bd, splat (double 1.000000e+00)
  %i.bf = fmul <2 x double> %i.be, splat (double f0x3FB227F5C0000000) ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float> ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.aq, i64 1
  %i.bk = fmul <2 x float> %i.y, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.au, i64 1
  %i.bn = fmul <2 x float> %i.bm, %i.bh
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bh, <2 x float> %i.bn)
  %i.bp = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.ay, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bh, <2 x float> %i.bo) ; 2 uses
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.br, %shift
  %i.bs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bt = tail call noundef float @sqrtf(float noundef %i.bs) #45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.03438.us
  store float %i.bt, ptr %i.bu, align 4, !tbaa !61
  %i.bv = add nuw nsw i64 %.03438.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.j
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !402

._crit_edge.us:                                   ; preds = %bb.c
  %i.bw = add nuw nsw i64 %.03539.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bw, %i.k
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !403

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph41, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.a ], [ 0, %.lr.ph41 ], [ 0, %bb.b ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE418OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #7 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %2) #49 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.d) #49 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.i = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.h) #49 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !86
  %i.m = insertelement <4 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %.not191 = icmp eq i32 %i.p, 0
  br i1 %.not191, label %.loopexit, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.pre = load i32, ptr %0, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph190, %._crit_edge
  %i.ac = phi i32 [ %i.p, %.lr.ph190 ], [ %i.bc, %._crit_edge ]
  %i.ad = phi i32 [ %.pre, %.lr.ph190 ], [ %i.bd, %._crit_edge ]
  %.0188 = phi i64 [ 0, %.lr.ph190 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !72
  %i.af = mul i64 %i.ae, %.0188                   ; 3 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load i64, ptr %i.u, align 8, !tbaa !72
  %i.an = mul i64 %i.am, %.0188                   ; 3 uses
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = load i64, ptr %i.y, align 8, !tbaa !72
  %i.av = mul i64 %i.au, %.0188                   ; 3 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 64) ]
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %.not192 = icmp eq i32 %i.ad, 0
  br i1 %.not192, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre193 = load i32, ptr %i.o, align 4, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bc = phi i32 [ %.pre193, %._crit_edge.loopexit ], [ %i.ac, %bb.f ] ; 2 uses
  %i.bd = phi i32 [ %i.gv, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.be = add nuw nsw i64 %.0188, 1               ; 2 uses
  %i.bf = zext i32 %i.bc to i64
  %i.bg = icmp samesign ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %.loopexit, !llvm.loop !404

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0149187 = phi i64 [ %i.gu, %.lr.ph ], [ 0, %bb.f ] ; 10 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0149187
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !82
  %i.bj = fmul <4 x float> %i.n, %i.bi            ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_AVX24MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_:bb.a
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !71 ; 9 uses
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !72 ; 6 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader.lr.ph.split.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.ho = add nsw i64 %i.e, -1                    ; 2 uses
  %i.hp = mul i64 %i.hn, %i.ho
  %i.hq = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hm, i64 %i.hp
  %scevgep237 = getelementptr i8, ptr %i.hr, i64 %i.hq
  %i.hs = mul i64 %i.hd, %i.ho
  %i.ht = getelementptr i8, ptr %i.hb, i64 %i.hs
  %scevgep238 = getelementptr i8, ptr %i.ht, i64 %i.hq
  %min.iters.check245 = icmp ult i32 %i.a, 4
  %bound0239 = icmp ult ptr %i.hm, %scevgep238
  %bound1240 = icmp ult ptr %i.hb, %scevgep237
  %found.conflict241 = and i1 %bound0239, %bound1240
  %i.hu = or i64 %i.hd, %i.hn
  %i.hv = icmp slt i64 %i.hu, 0
  %i.hw = or i1 %found.conflict241, %i.hv
  %min.iters.check247 = icmp ult i32 %i.a, 32
  %i.hx = and i64 %i.b, 28
  %n.vec249 = and i64 %i.b, 4294967264            ; 4 uses
  %cmp.n258 = icmp eq i64 %n.vec249, %i.b
  %min.epilog.iters.check262 = icmp eq i64 %i.hx, 0
  %n.vec265 = and i64 %i.b, 4294967292            ; 3 uses
  %cmp.n271 = icmp eq i64 %n.vec265, %i.b
  %xtraiter278 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br label %iter.check259

iter.check259:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %.058124.us = phi i64 [ %i.jk, %._crit_edge.split.us.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.hy = mul i64 %i.hd, %.058124.us
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hy ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hz, i64 64) ]
  %i.ia = mul i64 %i.hn, %.058124.us
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ia ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ib, i64 64) ]
  %brmerge281 = select i1 %min.iters.check245, i1 true, i1 %i.hw
  br i1 %brmerge281, label %vec.epilog.scalar.ph261.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %iter.check259
  br i1 %min.iters.check247, label %vec.epilog.ph263, label %vector.body250

vector.body250:                                   ; preds = %vector.main.loop.iter.check246, %vector.body250
  %index251 = phi i64 [ %index.next256, %vector.body250 ], [ 0, %vector.main.loop.iter.check246 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %index251 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 96
  %wide.load252 = load <8 x float>, ptr %i.ic, align 64, !tbaa !61, !alias.scope !626
  %wide.load253 = load <8 x float>, ptr %i.id, align 32, !tbaa !61, !alias.scope !626
  %wide.load254 = load <8 x float>, ptr %i.ie, align 64, !tbaa !61, !alias.scope !626
  %wide.load255 = load <8 x float>, ptr %i.if, align 32, !tbaa !61, !alias.scope !626
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index251 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 96
  store <8 x float> %wide.load252, ptr %i.ig, align 64, !tbaa !61, !alias.scope !627, !noalias !626
  store <8 x float> %wide.load253, ptr %i.ih, align 32, !tbaa !61, !alias.scope !627, !noalias !626
  store <8 x float> %wide.load254, ptr %i.ii, align 64, !tbaa !61, !alias.scope !627, !noalias !626
  store <8 x float> %wide.load255, ptr %i.ij, align 32, !tbaa !61, !alias.scope !627, !noalias !626
  %index.next256 = add nuw i64 %index251, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.ik, label %middle.block257, label %vector.body250, !llvm.loop !598

middle.block257:                                  ; preds = %vector.body250
  br i1 %cmp.n258, label %._crit_edge.split.us.us, label %vec.epilog.iter.check260

vec.epilog.iter.check260:                         ; preds = %middle.block257
  br i1 %min.epilog.iters.check262, label %vec.epilog.scalar.ph261.preheader, label %vec.epilog.ph263, !prof !88

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check260
  %vec.epilog.resume.val264 = phi i64 [ %n.vec249, %vec.epilog.iter.check260 ], [ 0, %vector.main.loop.iter.check246 ]
  br label %vec.epilog.vector.body266

vec.epilog.vector.body266:                        ; preds = %vec.epilog.vector.body266, %vec.epilog.ph263
  %index267 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body266 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %index267
  %wide.load268 = load <4 x float>, ptr %i.il, align 16, !tbaa !61, !alias.scope !626
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %index267
  store <4 x float> %wide.load268, ptr %i.im, align 16, !tbaa !61, !alias.scope !627, !noalias !626
  %index.next269 = add nuw i64 %index267, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next269, %n.vec265
  br i1 %i.in, label %vec.epilog.middle.block270, label %vec.epilog.vector.body266, !llvm.loop !599

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body266
  br i1 %cmp.n271, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph261.preheader

vec.epilog.scalar.ph261.preheader:                ; preds = %iter.check259, %vec.epilog.iter.check260, %vec.epilog.middle.block270
  %.0123.us.us.ph = phi i64 [ 0, %iter.check259 ], [ %n.vec265, %vec.epilog.middle.block270 ], [ %n.vec249, %vec.epilog.iter.check260 ] ; 3 uses
  br i1 %lcmp.mod279.not, label %vec.epilog.scalar.ph261.prol.loopexit, label %vec.epilog.scalar.ph261.prol

vec.epilog.scalar.ph261.prol:                     ; preds = %vec.epilog.scalar.ph261.preheader, %vec.epilog.scalar.ph261.prol
  %.0123.us.us.prol = phi i64 [ %i.ir, %vec.epilog.scalar.ph261.prol ], [ %.0123.us.us.ph, %vec.epilog.scalar.ph261.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph261.prol ], [ 0, %vec.epilog.scalar.ph261.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.0123.us.us.prol
  %i.ip = load float, ptr %i.io, align 4, !tbaa !61
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.0123.us.us.prol
  store float %i.ip, ptr %i.iq, align 4, !tbaa !61
  %i.ir = add nuw nsw i64 %.0123.us.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter278
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph261.prol.loopexit, label %vec.epilog.scalar.ph261.prol, !llvm.loop !600

vec.epilog.scalar.ph261.prol.loopexit:            ; preds = %vec.epilog.scalar.ph261.prol, %vec.epilog.scalar.ph261.preheader
  %.0123.us.us.unr = phi i64 [ %.0123.us.us.ph, %vec.epilog.scalar.ph261.preheader ], [ %i.ir, %vec.epilog.scalar.ph261.prol ]
  %i.is = sub nsw i64 %.0123.us.us.ph, %i.b
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph261

vec.epilog.scalar.ph261:                          ; preds = %vec.epilog.scalar.ph261.prol.loopexit, %vec.epilog.scalar.ph261
  %.0123.us.us = phi i64 [ %i.jj, %vec.epilog.scalar.ph261 ], [ %.0123.us.us.unr, %vec.epilog.scalar.ph261.prol.loopexit ] ; 6 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.0123.us.us
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !61
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %.0123.us.us
  store float %i.iv, ptr %i.iw, align 4, !tbaa !61
  %i.ix = add nuw nsw i64 %.0123.us.us, 1         ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !61
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ix
  store float %i.iz, ptr %i.ja, align 4, !tbaa !61
  %i.jb = add nuw nsw i64 %.0123.us.us, 2         ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !61
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.jb
  store float %i.jd, ptr %i.je, align 4, !tbaa !61
  %i.jf = add nuw nsw i64 %.0123.us.us, 3         ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jf
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !61
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.jf
  store float %i.jh, ptr %i.ji, align 4, !tbaa !61
  %i.jj = add nuw nsw i64 %.0123.us.us, 4         ; 2 uses
  %exitcond132.not.3 = icmp eq i64 %i.jj, %i.b
  br i1 %exitcond132.not.3, label %._crit_edge.split.us.us, label %vec.epilog.scalar.ph261, !llvm.loop !601

._crit_edge.split.us.us:                          ; preds = %vec.epilog.scalar.ph261.prol.loopexit, %vec.epilog.scalar.ph261, %vec.epilog.middle.block270, %middle.block257
  %i.jk = add nuw nsw i64 %.058124.us, 1          ; 2 uses
  %exitcond133.not = icmp eq i64 %i.jk, %i.e
  br i1 %exitcond133.not, label %.loopexit, label %iter.check259, !llvm.loop !602

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.jl = load ptr, ptr %i.hi, align 8, !tbaa !71 ; 6 uses
  %i.jm = load i64, ptr %i.hj, align 8, !tbaa !72 ; 3 uses
  %i.jn = add nsw i64 %i.e, -1                    ; 3 uses
  %i.jo = mul i64 %i.hn, %i.jn
  %i.jp = shl nuw nsw i64 %i.b, 2                 ; 5 uses
  %i.jq = getelementptr i8, ptr %i.hm, i64 %i.jo
  %scevgep173 = getelementptr i8, ptr %i.jq, i64 %i.jp ; 4 uses
  %i.jr = mul i64 %i.jm, %i.jn
  %i.js = getelementptr i8, ptr %i.jl, i64 %i.jr
  %scevgep174 = getelementptr i8, ptr %i.js, i64 %i.jp ; 4 uses
  %i.jt = mul i64 %i.hd, %i.jn
  %i.ju = getelementptr i8, ptr %i.hb, i64 %i.jt
  %scevgep175 = getelementptr i8, ptr %i.ju, i64 %i.jp ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.a, 4
  %bound0180 = icmp ult ptr %i.hm, %scevgep174
  %bound1181 = icmp ult ptr %i.jl, %scevgep173
  %found.conflict182 = and i1 %bound0180, %bound1181
  %i.jv = or i64 %i.jm, %i.hn
  %i.jw = icmp slt i64 %i.jv, 0
  %i.jx = or i1 %found.conflict182, %i.jw
  %bound0185 = icmp ult ptr %i.hm, %scevgep175
  %bound1186 = icmp ult ptr %i.hb, %scevgep173
  %found.conflict187 = and i1 %bound0185, %bound1186
  %stride.check188 = icmp slt i64 %i.hd, 0
  %i.jy = or i1 %found.conflict187, %stride.check188
  %conflict.rdx = or i1 %i.jx, %i.jy
  %bound0197 = icmp ult ptr %i.jl, %scevgep175
  %bound1198 = icmp ult ptr %i.hb, %scevgep174
  %found.conflict199 = and i1 %bound0197, %bound1198
  %min.iters.check211 = icmp ult i32 %i.a, 16
  %i.jz = and i64 %i.b, 12
  %n.vec213 = and i64 %i.b, 4294967280            ; 4 uses
  %cmp.n226 = icmp eq i64 %n.vec213, %i.b
  %min.epilog.iters.check = icmp eq i64 %i.jz, 0
  %n.vec227 = and i64 %i.b, 4294967292            ; 3 uses
  %cmp.n234 = icmp eq i64 %n.vec227, %i.b
  %xtraiter276 = and i64 %i.b, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  %i.ka = add nsw i64 %i.b, -1
  br label %iter.check

iter.check:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.058124 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %i.md, %._crit_edge.split ] ; 6 uses
  %i.kb = mul i64 %i.hd, %.058124
  %i.kc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.kb ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kc, i64 64) ]
  %i.kd = mul i64 %i.hn, %.058124
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kd ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ke, i64 64) ]
  %i.kf = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.kg = load i64, ptr %i.hf, align 8
  %i.kh = mul i64 %i.kg, %.058124                 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh ; 8 uses
  %i.kj = load ptr, ptr %i.hg, align 8            ; 2 uses
  %i.kk = load i64, ptr %i.hh, align 8
  %i.kl = mul i64 %i.kk, %.058124                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kl ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ki, i64 64), "align"(ptr %i.km, i64 64) ]
  %i.kn = mul i64 %i.jm, %.058124
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.kn ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ko, i64 64) ]
  br i1 %min.iters.check210, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck172

vector.memcheck172:                               ; preds = %iter.check
  %scevgep176 = getelementptr i8, ptr %i.kf, i64 %i.jp
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.kh ; 2 uses
  %scevgep178 = getelementptr i8, ptr %i.kj, i64 %i.jp
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.kl ; 2 uses
  %bound0189 = icmp ult ptr %i.hm, %scevgep177
  %bound1190 = icmp ult ptr %i.ki, %scevgep173
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx, %found.conflict191
  %bound0193 = icmp ult ptr %i.hm, %scevgep179
  %bound1194 = icmp ult ptr %i.km, %scevgep173
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %i.jl, %scevgep177
  %bound1202 = icmp ult ptr %i.ki, %scevgep174
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %i.jl, %scevgep179
  %bound1206 = icmp ult ptr %i.km, %scevgep174
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  br i1 %conflict.rdx208, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck172
  br i1 %min.iters.check211, label %vec.epilog.ph, label %vector.body214

vector.body214:                                   ; preds = %vector.main.loop.iter.check, %vector.body214
  %index215 = phi i64 [ %index.next224, %vector.body214 ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %index215 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %wide.load216 = load <8 x float>, ptr %i.kp, align 64, !tbaa !61, !alias.scope !628
  %wide.load217 = load <8 x float>, ptr %i.kq, align 32, !tbaa !61, !alias.scope !628
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %index215 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  store <8 x float> %wide.load216, ptr %i.kr, align 64, !tbaa !61, !alias.scope !629, !noalias !630
  store <8 x float> %wide.load217, ptr %i.ks, align 32, !tbaa !61, !alias.scope !629, !noalias !630
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index215 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %wide.load218 = load <8 x float>, ptr %i.kt, align 64, !tbaa !61, !alias.scope !631
  %wide.load219 = load <8 x float>, ptr %i.ku, align 32, !tbaa !61, !alias.scope !631
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index215 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %wide.load220 = load <8 x float>, ptr %i.kv, align 64, !tbaa !61, !alias.scope !632
  %wide.load221 = load <8 x float>, ptr %i.kw, align 32, !tbaa !61, !alias.scope !632
  %i.kx = fsub <8 x float> %wide.load218, %wide.load220 ; 2 uses
  %i.ky = fsub <8 x float> %wide.load219, %wide.load221 ; 2 uses
  %i.kz = fmul <8 x float> %i.kx, splat (float 1.000000e+01)
  %i.la = fmul <8 x float> %i.ky, splat (float 1.000000e+01)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index215 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  %wide.load222 = load <8 x float>, ptr %i.lb, align 64, !tbaa !61, !alias.scope !633, !noalias !634
  %wide.load223 = load <8 x float>, ptr %i.lc, align 32, !tbaa !61, !alias.scope !633, !noalias !634
  %i.ld = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.kz, <8 x float> %i.kx, <8 x float> %wide.load222)
  %i.le = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.la, <8 x float> %i.ky, <8 x float> %wide.load223)
  store <8 x float> %i.ld, ptr %i.lb, align 64, !tbaa !61, !alias.scope !633, !noalias !634
  store <8 x float> %i.le, ptr %i.lc, align 32, !tbaa !61, !alias.scope !633, !noalias !634
  %index.next224 = add nuw i64 %index215, 16      ; 2 uses
  %i.lf = icmp eq i64 %index.next224, %n.vec213
  br i1 %i.lf, label %middle.block225, label %vector.body214, !llvm.loop !609

middle.block225:                                  ; preds = %vector.body214
  br i1 %cmp.n226, label %._crit_edge.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block225
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !635

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec213, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index228 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next233, %vec.epilog.vector.body ] ; 6 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %index228
  %wide.load229 = load <4 x float>, ptr %i.lg, align 16, !tbaa !61, !alias.scope !628
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %index228
  store <4 x float> %wide.load229, ptr %i.lh, align 16, !tbaa !61, !alias.scope !629, !noalias !630
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index228
  %wide.load230 = load <4 x float>, ptr %i.li, align 16, !tbaa !61, !alias.scope !631
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %index228
  %wide.load231 = load <4 x float>, ptr %i.lj, align 16, !tbaa !61, !alias.scope !632
  %i.lk = fsub <4 x float> %wide.load230, %wide.load231 ; 2 uses
  %i.ll = fmul <4 x float> %i.lk, splat (float 1.000000e+01)
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %index228 ; 2 uses
  %wide.load232 = load <4 x float>, ptr %i.lm, align 16, !tbaa !61, !alias.scope !633, !noalias !634
  %i.ln = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ll, <4 x float> %i.lk, <4 x float> %wide.load232)
  store <4 x float> %i.ln, ptr %i.lm, align 16, !tbaa !61, !alias.scope !633, !noalias !634
  %index.next233 = add nuw i64 %index228, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next233, %n.vec227
  br i1 %i.lo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !610

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n234, label %._crit_edge.split, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck172, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0123.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck172 ], [ %n.vec213, %vec.epilog.iter.check ], [ %n.vec227, %vec.epilog.middle.block ] ; 8 uses
  br i1 %lcmp.mod277.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %.0123.ph
  %i.lq = load float, ptr %i.lp, align 16, !tbaa !61
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0123.ph
  store float %i.lq, ptr %i.lr, align 16, !tbaa !61
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.0123.ph
  %i.lt = load float, ptr %i.ls, align 16, !tbaa !61
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0123.ph
  %i.lv = load float, ptr %i.lu, align 16, !tbaa !61
  %i.lw = fsub float %i.lt, %i.lv                 ; 2 uses
  %i.lx = fmul float %i.lw, 1.000000e+01
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.0123.ph ; 2 uses
  %i.lz = load float, ptr %i.ly, align 16, !tbaa !61
  %i.ma = call float @llvm.fmuladd.f32(float %i.lx, float %i.lw, float %i.lz)
  store float %i.ma, ptr %i.ly, align 16, !tbaa !61
  %i.mb = or disjoint i64 %.0123.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %vec.epilog.scalar.ph.preheader ], [ %i.mb, %vec.epilog.scalar.ph.prol ]
  %i.mc = icmp eq i64 %.0123.ph, %i.ka
  br i1 %i.mc, label %._crit_edge.split, label %vec.epilog.scalar.ph

._crit_edge.split:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block225
  %i.md = add nuw nsw i64 %.058124, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.md, %i.e
  br i1 %exitcond131.not, label %.loopexit, label %iter.check, !llvm.loop !602

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0123 = phi i64 [ %i.nd, %vec.epilog.scalar.ph ], [ %.0123.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %.0123
  %i.mf = load float, ptr %i.me, align 4, !tbaa !61
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0123
  store float %i.mf, ptr %i.mg, align 4, !tbaa !61
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.0123
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !61
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0123
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !61
  %i.ml = fsub float %i.mi, %i.mk                 ; 2 uses
  %i.mm = fmul float %i.ml, 1.000000e+01
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.0123 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !61
  %i.mp = call float @llvm.fmuladd.f32(float %i.mm, float %i.ml, float %i.mo)
  store float %i.mp, ptr %i.mn, align 4, !tbaa !61
  %i.mq = add nuw nsw i64 %.0123, 1               ; 5 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.mq
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !61
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.mq
  store float %i.ms, ptr %i.mt, align 4, !tbaa !61
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.mq
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !61
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.mq
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !61
  %i.my = fsub float %i.mv, %i.mx                 ; 2 uses
  %i.mz = fmul float %i.my, 1.000000e+01
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.mq ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !61
  %i.nc = call float @llvm.fmuladd.f32(float %i.mz, float %i.my, float %i.nb)
  store float %i.nc, ptr %i.na, align 4, !tbaa !61
  %i.nd = add nuw nsw i64 %.0123, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.nd, %i.b
  br i1 %exitcond.not.1, label %._crit_edge.split, label %vec.epilog.scalar.ph, !llvm.loop !611

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader122, %.preheader.lr.ph, %_ZN3jxl6N_AVX214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77, %bb.l
  %.sroa.0.0 = phi i32 [ %i.gy, %bb.l ], [ %i.gw, %_ZN3jxl6N_AVX214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77 ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge.split.us.us ], [ 0, %.preheader122 ], [ 0, %._crit_edge.split ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  %.pr = load i32, ptr %i.bz, align 8, !tbaa !80
  %i.ne = icmp eq i32 %.pr, 0
  br i1 %i.ne, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67, %bb.m, %.loopexit
  %.sroa.0.1104 = phi i32 [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %.loopexit ], [ %i.cg, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  %.pr105 = load i32, ptr %i.bj, align 8, !tbaa !80
  %i.nf = icmp eq i32 %.pr105, 0
  br i1 %i.nf, label %bb.n, label %.thread106

bb.n:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #45
  br label %.thread106

.thread106:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65, %bb.n, %.thread
  %.sroa.0.2108 = phi i32 [ %.sroa.0.1104, %bb.n ], [ %.sroa.0.1104, %.thread ], [ %i.bq, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  %.pr109 = load i32, ptr %i.at, align 8, !tbaa !80
  %i.ng = icmp eq i32 %.pr109, 0
  br i1 %i.ng, label %bb.o, label %.thread110

end_hunk_4
begin_hunk_5_@_ZN3jxl6N_AVX215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_:bb.a
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !61
  %i.cf = fmul float %i.ce, 4.000000e-01
  %i.cg = call float @llvm.fmuladd.f32(float %i.cc, float 4.000000e-01, float %i.cf) ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.ch)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03334.us.i
  %i.ck = call noundef float @sqrtf(float noundef %i.ci) #45
  store float %i.ck, ptr %i.cj, align 4, !tbaa !61
  %i.cl = add nuw nsw i64 %.03334.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.g, !llvm.loop !23

._crit_edge.us.i:                                 ; preds = %bb.g
  %i.cm = add nuw nsw i64 %.035.us.i, 1           ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.cm, %i.ao
  br i1 %exitcond41.not.i, label %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, label %.lr.ph.us.i, !llvm.loop !24

_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit: ; preds = %._crit_edge.us.i, %bb.f, %.lr.ph37.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !70 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.not.i21 = icmp eq i32 %i.co, 0
  br i1 %.not.i21, label %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph37.i22

.lr.ph37.i22:                                     ; preds = %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !72
  %i.dl = load i32, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %.not39.i23 = icmp eq i32 %i.dl, 0
  br i1 %.not39.i23, label %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24

.lr.ph.us.i24:                                    ; preds = %.lr.ph37.i22, %._crit_edge.us.i28
  %.035.us.i25 = phi i64 [ %i.eo, %._crit_edge.us.i28 ], [ 0, %.lr.ph37.i22 ] ; 6 uses
  %i.dn = mul i64 %.035.us.i25, %i.cu
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64) ]
  %i.dp = mul i64 %.035.us.i25, %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  %i.dr = mul i64 %.035.us.i25, %i.dc
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  %i.dt = mul i64 %.035.us.i25, %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  %i.dv = mul i64 %.035.us.i25, %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dw, i64 64) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.i24
  %.03334.us.i26 = phi i64 [ 0, %.lr.ph.us.i24 ], [ %i.en, %bb.h ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.03334.us.i26
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.03334.us.i26
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !61
  %i.eb = fadd float %i.dy, %i.ea
  %i.ec = fmul float %i.eb, 2.500000e+00          ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.03334.us.i26
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03334.us.i26
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61
  %i.eh = fmul float %i.eg, 4.000000e-01
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float 4.000000e-01, float %i.eh) ; 2 uses
  %i.ej = fmul float %i.ei, %i.ei
  %i.ek = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ej)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03334.us.i26
  %i.em = call noundef float @sqrtf(float noundef %i.ek) #45
  store float %i.em, ptr %i.el, align 4, !tbaa !61
  %i.en = add nuw nsw i64 %.03334.us.i26, 1       ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %i.en, %i.dm
  br i1 %exitcond.not.i27, label %._crit_edge.us.i28, label %bb.h, !llvm.loop !23

._crit_edge.us.i28:                               ; preds = %bb.h
  %i.eo = add nuw nsw i64 %.035.us.i25, 1         ; 2 uses
  %exitcond41.not.i29 = icmp eq i64 %i.eo, %i.cp
  br i1 %exitcond41.not.i29, label %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24, !llvm.loop !24

_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30: ; preds = %._crit_edge.us.i28, %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, %.lr.ph37.i22
  %i.ep = call i32 @_ZN3jxl6N_AVX24MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr nonnull align 4 poison, ptr noundef %5, ptr noundef %6, ptr noundef %7) #49 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %.pr = load i32, ptr %i.af, align 8, !tbaa !80
  %i.eq = icmp eq i32 %.pr, 0
  br i1 %i.eq, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20, %bb.i, %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  %.sroa.0.142 = phi i32 [ %i.ep, %bb.i ], [ %i.ep, %_ZN3jxl6N_AVX225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30 ], [ %.pre48, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  %.pr43 = load i32, ptr %i.p, align 8, !tbaa !80
  %i.er = icmp eq i32 %.pr43, 0
  br i1 %i.er, label %bb.j, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

bb.j:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31:       ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread, %bb.j
  %.sroa.0.246 = phi i32 [ %.sroa.0.142, %bb.j ], [ %.sroa.0.142, %.thread ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  ret i32 %.sroa.0.246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_AVX25MaskYEd(double noundef %0) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x3FDCEC88D72DDFBF, double f0x3FEA8C0402103A76)
  %i.b = fdiv double f0x40046385809AE090, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_AVX27MaskDcYEd(double noundef %0) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x400EFEF6CF116418, double f0x3FC9A1FB482D66D1)
  %i.b = fdiv double f0x3FE029681B74E8CE, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_AVX224CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !68
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.a to i64
  %i.k = zext i32 %i.e to i64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  %.not42 = icmp eq i32 %i.a, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8
  br i1 %.not42, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.pre = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre50.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert52.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre53.pre = load ptr, ptr %.phi.trans.insert52.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.pre56.pre = load ptr, ptr %.phi.trans.insert55.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert58.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre59.pre = load ptr, ptr %.phi.trans.insert58.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert61.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.pre62.pre = load ptr, ptr %.phi.trans.insert61.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre.pre, i64 64), "align"(ptr %.pre50.pre, i64 64), "align"(ptr %.pre53.pre, i64 64), "align"(ptr %.pre56.pre, i64 64), "align"(ptr %.pre59.pre, i64 64), "align"(ptr %.pre62.pre, i64 64) ]
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03539.us = phi i64 [ %i.bw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.z = mul i64 %i.o, %.03539.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = mul i64 %i.s, %.03539.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = mul i64 %i.u, %.03539.us                ; 3 uses
  %i.ae = mul i64 %i.w, %.03539.us                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.af, i64 64) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre50.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre53.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre56.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre59.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.03438.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bv, %bb.c ] ; 9 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.03438.us
  %i.am = load float, ptr %i.al, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.03438.us
  %i.ao = load float, ptr %i.an, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03438.us
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !61
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.03438.us
  %i.as = load float, ptr %i.ar, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.03438.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !61
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.03438.us
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.03438.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !61
  %i.az = fpext float %i.am to double
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double f0x400EFEF6CF116418, double f0x3FDCEC88D72DDFBF>, <2 x double> <double f0x3FC9A1FB482D66D1, double f0x3FEA8C0402103A76>)
  %i.bd = fdiv <2 x double> <double f0x3FE029681B74E8CE, double f0x40046385809AE090>, %i.bc
  %i.be = fadd <2 x double> %i.bd, splat (double 1.000000e+00)
  %i.bf = fmul <2 x double> %i.be, splat (double f0x3FB227F5C0000000) ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float> ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.aq, i64 1
  %i.bk = fmul <2 x float> %i.y, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.au, i64 1
  %i.bn = fmul <2 x float> %i.bm, %i.bh
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bh, <2 x float> %i.bn)
  %i.bp = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.ay, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bh, <2 x float> %i.bo) ; 2 uses
  %shift = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.br, %shift
  %i.bs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bt = tail call noundef float @sqrtf(float noundef %i.bs) #45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.03438.us
  store float %i.bt, ptr %i.bu, align 4, !tbaa !61
  %i.bv = add nuw nsw i64 %.03438.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.j
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !648

._crit_edge.us:                                   ; preds = %bb.c
  %i.bw = add nuw nsw i64 %.03539.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bw, %i.k
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !649

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph41, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.a ], [ 0, %.lr.ph41 ], [ 0, %bb.b ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX218OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #15 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %2) #49 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.d) #49 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.i = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.h) #49 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !86
  %i.m = insertelement <8 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %.not191 = icmp eq i32 %i.p, 0
  br i1 %.not191, label %.loopexit, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.pre = load i32, ptr %0, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph190, %._crit_edge
  %i.ac = phi i32 [ %i.p, %.lr.ph190 ], [ %i.bc, %._crit_edge ]
  %i.ad = phi i32 [ %.pre, %.lr.ph190 ], [ %i.bd, %._crit_edge ]
  %.0188 = phi i64 [ 0, %.lr.ph190 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !72
  %i.af = mul i64 %i.ae, %.0188                   ; 3 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load i64, ptr %i.u, align 8, !tbaa !72
  %i.an = mul i64 %i.am, %.0188                   ; 3 uses
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = load i64, ptr %i.y, align 8, !tbaa !72
  %i.av = mul i64 %i.au, %.0188                   ; 3 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 64) ]
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %.not192 = icmp eq i32 %i.ad, 0
  br i1 %.not192, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre193 = load i32, ptr %i.o, align 4, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bc = phi i32 [ %.pre193, %._crit_edge.loopexit ], [ %i.ac, %bb.f ] ; 2 uses
  %i.bd = phi i32 [ %i.fo, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.be = add nuw nsw i64 %.0188, 1               ; 2 uses
  %i.bf = zext i32 %i.bc to i64
  %i.bg = icmp samesign ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %.loopexit, !llvm.loop !650

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0149187 = phi i64 [ %i.fn, %.lr.ph ], [ 0, %bb.f ] ; 10 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0149187
  %i.bi = load <8 x float>, ptr %i.bh, align 32, !tbaa !82
  %i.bj = fmul <8 x float> %i.n, %i.bi            ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN3jxl6N_SSE212MaltaDiffMapERKNS_5PlaneIfEES4_dddPS2_S5_:bb.a
  %i.hj = add nuw nsw i64 %.0156177.us.2.i, 1     ; 2 uses
  %exitcond209.2.not.i = icmp eq i64 %i.hj, %i.t
  br i1 %exitcond209.2.not.i, label %._crit_edge.us180.2.i, label %bb.o, !llvm.loop !757

._crit_edge.us180.2.i:                            ; preds = %bb.o
  %i.hk = mul i64 %i.gr, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.hk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hl, i64 64) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %._crit_edge.us180.2.i
  %.0156177.us.3.i = phi i64 [ 0, %._crit_edge.us180.2.i ], [ %i.hq, %bb.p ] ; 3 uses
  %i.hm = tail call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0156177.us.3.i, i64 noundef 3) #49, !noalias !888
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.0156177.us.3.i ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !61, !noalias !889
  %i.hp = fadd float %i.hm, %i.ho
  store float %i.hp, ptr %i.hn, align 4, !tbaa !61, !noalias !889
  %i.hq = add nuw nsw i64 %.0156177.us.3.i, 1     ; 2 uses
  %exitcond209.3.not.i = icmp eq i64 %i.hq, %i.t
  br i1 %exitcond209.3.not.i, label %.split.us.i, label %bb.p, !llvm.loop !757

.split.us.i:                                      ; preds = %bb.p, %.preheader172.i, %.preheader172.thread.i
  %.not198233.i = phi i1 [ true, %.preheader172.i ], [ true, %.preheader172.thread.i ], [ false, %bb.p ]
  %i.hr = phi i64 [ %i.gr, %.preheader172.i ], [ %i.bj, %.preheader172.thread.i ], [ %i.gr, %bb.p ]
  %i.hs = phi ptr [ %i.gq, %.preheader172.i ], [ %i.bi, %.preheader172.thread.i ], [ %i.gq, %bb.p ]
  %i.ht = phi ptr [ %i.gp, %.preheader172.i ], [ %i.bh, %.preheader172.thread.i ], [ %i.gp, %bb.p ]
  %i.hu = phi ptr [ %i.go, %.preheader172.i ], [ %i.bg, %.preheader172.thread.i ], [ %i.go, %bb.p ]
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !72, !alias.scope !887 ; 14 uses
  %i.hx = lshr i64 %i.hw, 2                       ; 11 uses
  %i.hy = add nsw i64 %i.u, -4                    ; 3 uses
  %i.hz = icmp ugt i64 %i.hy, 4
  br i1 %i.hz, label %.lr.ph188.i, label %.preheader.i

.lr.ph188.i:                                      ; preds = %.split.us.i
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !71, !alias.scope !887 ; 13 uses
  %i.ic = mul nuw nsw i64 %i.hx, 3                ; 2 uses
  %i.id = sub nsw i64 0, %i.ic
  %i.ie = sub nsw i64 0, %i.hx                    ; 9 uses
  %.not182.i = icmp ult i32 %i.e, 12
  %.not50.4.i72.not = icmp eq i32 %i.e, 0         ; 12 uses
  %.not50.5.i74.not = icmp eq i32 %i.e, 1         ; 12 uses
  %.not50.6.i76 = icmp ugt i32 %i.e, 2            ; 12 uses
  %.not50.7.i78.not = icmp eq i32 %i.e, 3         ; 12 uses
  %.not50.8.i80 = icmp ugt i32 %i.e, 4            ; 12 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %.not50.8.i56.not = icmp eq i32 %i.e, 5         ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %.not50.8.i31 = icmp ugt i32 %i.e, 6            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %.not50.8.i.not = icmp eq i32 %i.e, 7
  %i.ii = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %scevgep.i65.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.iy = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ja = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %scevgep.i65.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jg = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.jk = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %scevgep.i65.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.jq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.jr = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.jt = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.jw = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %scevgep.i65.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.kd = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ke = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.kf = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %scevgep.i65.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.kt = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %scevgep.i65.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.kz = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 308
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.le = getelementptr inbounds nuw i8, ptr %i.a, i64 316
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 324
  %scevgep.i65.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.lh = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 356
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.lp = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.lr = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  %scevgep.i65.8 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.lx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.ly = getelementptr inbounds nuw i8, ptr %i.a, i64 404
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  br label %.preheader171.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.us.i
  %.1158.lcssa.i = phi i64 [ 4, %.split.us.i ], [ %i.hy, %._crit_edge.i ] ; 2 uses
  %i.md = icmp ult i64 %.1158.lcssa.i, %i.u
  br i1 %i.md, label %.lr.ph195.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit

.lr.ph195.i:                                      ; preds = %.preheader.i
  %i.me = load ptr, ptr %i.hu, align 8, !tbaa !71, !alias.scope !888
  %i.mf = load i64, ptr %i.hs, align 8, !tbaa !72, !alias.scope !888
  br i1 %.not198233.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i

.lr.ph192.us.i:                                   ; preds = %.lr.ph195.i, %._crit_edge193.us.i
  %.2159194.us.i = phi i64 [ %i.mn, %._crit_edge193.us.i ], [ %.1158.lcssa.i, %.lr.ph195.i ] ; 3 uses
  %i.mg = mul i64 %.2159194.us.i, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 %i.mg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mh, i64 64) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph192.us.i
  %.0190.us.i = phi i64 [ 0, %.lr.ph192.us.i ], [ %i.mm, %bb.q ] ; 3 uses
  %i.mi = call fastcc noundef float @_ZN3jxl6N_SSE2L15PaddedMaltaUnitINS_8MaltaTagEEEfRKNS_5PlaneIfEEmm(ptr noundef nonnull readonly align 8 dereferenceable(56) %5, i64 noundef %.0190.us.i, i64 noundef %.2159194.us.i) #49, !noalias !888
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.0190.us.i ; 2 uses
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !61, !noalias !889
  %i.ml = fadd float %i.mi, %i.mk
  store float %i.ml, ptr %i.mj, align 4, !tbaa !61, !noalias !889
  %i.mm = add nuw nsw i64 %.0190.us.i, 1          ; 2 uses
  %exitcond215.not.i = icmp eq i64 %i.mm, %i.t
  br i1 %exitcond215.not.i, label %._crit_edge193.us.i, label %bb.q, !llvm.loop !758

._crit_edge193.us.i:                              ; preds = %bb.q
  %i.mn = add nuw nsw i64 %.2159194.us.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.mn, %i.u
  br i1 %exitcond216.not.i, label %_ZN3jxl6N_SSE2L13MaltaDiffMapTINS_8MaltaTagEEENS_6StatusET_RKNS_5PlaneIfEES8_dddddPS6_S9_.exit, label %.lr.ph192.us.i, !llvm.loop !759

.preheader171.i:                                  ; preds = %._crit_edge.i, %.lr.ph188.i
  %.1158186.i = phi i64 [ 4, %.lr.ph188.i ], [ %i.afl, %._crit_edge.i ] ; 6 uses
  %i.mo = mul i64 %.1158186.i, %i.hw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.mo ; 2 uses
  %i.mq = mul i64 %.1158186.i, %i.hr
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.mq ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mr, i64 64), "align"(ptr %i.mp, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46, !noalias !888
  %i.ms = trunc i64 %.1158186.i to i32            ; 10 uses
  %i.mt = add i32 %i.ms, -4                       ; 6 uses
  %i.mu = icmp sgt i32 %i.mt, -1
  %.not.i62 = icmp ugt i32 %i.i, %i.mt
  %or.cond55.i63 = select i1 %i.mu, i1 %.not.i62, i1 false
  br i1 %or.cond55.i63, label %bb.r, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64: ; preds = %.preheader171.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66

bb.r:                                             ; preds = %.preheader171.i
  %i.mv = zext nneg i32 %i.mt to i64
  %i.mw = mul i64 %i.hw, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.mw ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mx, i64 64) ], !noalias !888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  store float 0.000000e+00, ptr %i.in, align 16, !tbaa !61, !noalias !888
  br label %.thread89

bb.s:                                             ; preds = %bb.r
  %i.my = load float, ptr %i.mx, align 64, !tbaa !61, !noalias !888
  store float %i.my, ptr %i.ij, align 16, !tbaa !61, !noalias !888
  br i1 %.not50.5.i74.not, label %.thread89, label %bb.t

.thread89:                                        ; preds = %.thread, %bb.s
  store float 0.000000e+00, ptr %i.io, align 4, !tbaa !61, !noalias !888
  br label %.thread93

bb.t:                                             ; preds = %bb.s
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !61, !noalias !888
  store float %i.na, ptr %i.ik, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.6.i76, label %bb.u, label %.thread93

.thread93:                                        ; preds = %.thread89, %bb.t
  store float 0.000000e+00, ptr %i.ip, align 8, !tbaa !61, !noalias !888
  br label %.thread97

bb.u:                                             ; preds = %bb.t
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !61, !noalias !888
  store float %i.nc, ptr %i.il, align 8, !tbaa !61, !noalias !888
  br i1 %.not50.7.i78.not, label %.thread97, label %bb.v

.thread97:                                        ; preds = %.thread93, %bb.u
  store float 0.000000e+00, ptr %i.iq, align 4, !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

bb.v:                                             ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !61, !noalias !888
  store float %i.ne, ptr %i.im, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.8.i80, label %bb.w, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

bb.w:                                             ; preds = %bb.v
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.ng = load float, ptr %i.nf, align 16, !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81: ; preds = %.thread97, %bb.w, %bb.v
  %.sink94.i82 = phi float [ %i.ng, %bb.w ], [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %.thread97 ]
  store float %.sink94.i82, ptr %i.ir, align 16, !tbaa !61, !noalias !888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.is, i8 0, i64 12, i1 false), !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64
  %i.nh = add i32 %i.ms, -3                       ; 3 uses
  %i.ni = icmp sgt i32 %i.nh, -1
  %.not.i62.1 = icmp ugt i32 %i.i, %i.nh
  %or.cond55.i63.1 = select i1 %i.ni, i1 %.not.i62.1, i1 false
  br i1 %or.cond55.i63.1, label %bb.x, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep.i65.1, i8 0, i64 48, i1 false), !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1

bb.x:                                             ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66
  %i.nj = zext nneg i32 %i.nh to i64
  %i.nk = mul i64 %i.hw, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.nk ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nl, i64 64) ], !noalias !888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.it, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nm = load float, ptr %i.nl, align 64, !tbaa !61, !noalias !888
  store float %i.nm, ptr %i.iu, align 16, !tbaa !61, !noalias !888
  br i1 %.not50.5.i74.not, label %.thread89.1, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !61, !noalias !888
  store float %i.no, ptr %i.iv, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.6.i76, label %bb.aa, label %.thread93.1

bb.aa:                                            ; preds = %bb.z
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nq = load float, ptr %i.np, align 8, !tbaa !61, !noalias !888
  store float %i.nq, ptr %i.iw, align 8, !tbaa !61, !noalias !888
  br i1 %.not50.7.i78.not, label %.thread97.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !61, !noalias !888
  store float %i.ns, ptr %i.ix, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.8.i80, label %bb.ac, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

bb.ac:                                            ; preds = %bb.ab
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nu = load float, ptr %i.nt, align 16, !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

.thread.1:                                        ; preds = %bb.x
  store float 0.000000e+00, ptr %i.iy, align 16, !tbaa !61, !noalias !888
  br label %.thread89.1

.thread89.1:                                      ; preds = %.thread.1, %bb.y
  store float 0.000000e+00, ptr %i.iz, align 4, !tbaa !61, !noalias !888
  br label %.thread93.1

.thread93.1:                                      ; preds = %.thread89.1, %bb.z
  store float 0.000000e+00, ptr %i.ja, align 8, !tbaa !61, !noalias !888
  br label %.thread97.1

.thread97.1:                                      ; preds = %.thread93.1, %bb.aa
  store float 0.000000e+00, ptr %i.jb, align 4, !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1: ; preds = %.thread97.1, %bb.ac, %bb.ab
  %.sink94.i82.1 = phi float [ %i.nu, %bb.ac ], [ 0.000000e+00, %bb.ab ], [ 0.000000e+00, %.thread97.1 ]
  store float %.sink94.i82.1, ptr %i.jc, align 16, !tbaa !61, !noalias !888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jd, i8 0, i64 12, i1 false), !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.1, %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.1
  %i.nv = add i32 %i.ms, -2                       ; 3 uses
  %i.nw = icmp sgt i32 %i.nv, -1
  %.not.i62.2 = icmp ugt i32 %i.i, %i.nv
  %or.cond55.i63.2 = select i1 %i.nw, i1 %.not.i62.2, i1 false
  br i1 %or.cond55.i63.2, label %bb.ad, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.2

_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit56.i64.2: ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %scevgep.i65.2, i8 0, i64 48, i1 false), !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.2

bb.ad:                                            ; preds = %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.i66.1
  %i.nx = zext nneg i32 %i.nv to i64
  %i.ny = mul i64 %i.hw, %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ny ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nz, i64 64) ], !noalias !888
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.je, i8 0, i64 16, i1 false)
  br i1 %.not50.4.i72.not, label %.thread.2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.oa = load float, ptr %i.nz, align 64, !tbaa !61, !noalias !888
  store float %i.oa, ptr %i.jf, align 16, !tbaa !61, !noalias !888
  br i1 %.not50.5.i74.not, label %.thread89.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61, !noalias !888
  store float %i.oc, ptr %i.jg, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.6.i76, label %bb.ag, label %.thread93.2

bb.ag:                                            ; preds = %bb.af
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oe = load float, ptr %i.od, align 8, !tbaa !61, !noalias !888
  store float %i.oe, ptr %i.jh, align 8, !tbaa !61, !noalias !888
  br i1 %.not50.7.i78.not, label %.thread97.2, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  %i.og = load float, ptr %i.of, align 4, !tbaa !61, !noalias !888
  store float %i.og, ptr %i.ji, align 4, !tbaa !61, !noalias !888
  br i1 %.not50.8.i80, label %bb.ai, label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.2

bb.ai:                                            ; preds = %bb.ah
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oi = load float, ptr %i.oh, align 16, !tbaa !61, !noalias !888
  br label %_ZNSt3__14fillB8nn180100IPffEEvT_S2_RKT0_.exit.loopexit.i81.2

.thread.2:                                        ; preds = %bb.ad
  store float 0.000000e+00, ptr %i.jj, align 16, !tbaa !61, !noalias !888
  br label %.thread89.2

.thread89.2:                                      ; preds = %.thread.2, %bb.ae
  store float 0.000000e+00, ptr %i.jk, align 4, !tbaa !61, !noalias !888
  br label %.thread93.2

.thread93.2:                                      ; preds = %.thread89.2, %bb.af
  store float 0.000000e+00, ptr %i.jl, align 8, !tbaa !61, !noalias !888
  br label %.thread97.2

.thread97.2:                                      ; preds = %.thread93.2, %bb.ag
  store float 0.000000e+00, ptr %i.jm, align 4, !tbaa !61, !noalias !888
end_hunk_6
begin_hunk_7_@_ZN3jxl6N_SSE24MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_:bb.a
  br i1 %exitcond.not.i74.1, label %._crit_edge.us.i75, label %scalar.ph161, !llvm.loop !1159

._crit_edge.us.i75:                               ; preds = %scalar.ph161.prol.loopexit, %scalar.ph161, %middle.block169
  %i.gv = add nuw nsw i64 %.02123.us.i72, 1       ; 2 uses
  %exitcond29.not.i76 = icmp eq i64 %i.gv, %i.ev
  br i1 %exitcond29.not.i76, label %_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77, label %.lr.ph.us.i71, !llvm.loop !37

_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77: ; preds = %._crit_edge.us.i75, %_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit, %.lr.ph25.i69
  %i.gw = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %14, float noundef 2.700000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %18) #49 ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77
  call void @_ZN3jxl6N_SSE212FuzzyErosionERKNS_5PlaneIfEEPS2_(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull %14) #49
  %i.gy = call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %16, float noundef 2.700000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %20) #49 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.preheader122, label %.loopexit

.preheader122:                                    ; preds = %bb.l
  %.not128 = icmp eq i32 %i.d, 0
  br i1 %.not128, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader122
  %.not129 = icmp eq i32 %i.a, 0
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8            ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hd = load i64, ptr %i.hc, align 8            ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16
  br i1 %.not129, label %.loopexit, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not = icmp eq ptr %5, null
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !71 ; 6 uses
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !72 ; 6 uses
  br i1 %.not, label %.preheader.us.preheader, label %.preheader.lr.ph.split.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.ho = add nsw i64 %i.e, -1                    ; 2 uses
  %i.hp = mul i64 %i.hn, %i.ho
  %i.hq = shl nuw nsw i64 %i.b, 2                 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hm, i64 %i.hp
  %scevgep224 = getelementptr i8, ptr %i.hr, i64 %i.hq
  %i.hs = mul i64 %i.hd, %i.ho
  %i.ht = getelementptr i8, ptr %i.hb, i64 %i.hs
  %scevgep225 = getelementptr i8, ptr %i.ht, i64 %i.hq
  %min.iters.check232 = icmp ult i32 %i.a, 8
  %bound0226 = icmp ult ptr %i.hm, %scevgep225
  %bound1227 = icmp ult ptr %i.hb, %scevgep224
  %found.conflict228 = and i1 %bound0226, %bound1227
  %i.hu = or i64 %i.hd, %i.hn
  %i.hv = icmp slt i64 %i.hu, 0
  %i.hw = or i1 %found.conflict228, %i.hv
  %n.vec234 = and i64 %i.b, 4294967288            ; 3 uses
  %cmp.n241 = icmp eq i64 %n.vec234, %i.b
  %xtraiter248 = and i64 %i.b, 3                  ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %.058124.us = phi i64 [ %i.jc, %._crit_edge.split.us.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.hx = mul i64 %i.hd, %.058124.us
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hx ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hy, i64 64) ]
  %i.hz = mul i64 %i.hn, %.058124.us
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hz ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ia, i64 64) ]
  %brmerge251 = select i1 %min.iters.check232, i1 true, i1 %i.hw
  br i1 %brmerge251, label %scalar.ph231.preheader, label %vector.body235

vector.body235:                                   ; preds = %.preheader.us, %vector.body235
  %index236 = phi i64 [ %index.next239, %vector.body235 ], [ 0, %.preheader.us ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index236 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load237 = load <4 x float>, ptr %i.ib, align 32, !tbaa !61, !alias.scope !1189
  %wide.load238 = load <4 x float>, ptr %i.ic, align 16, !tbaa !61, !alias.scope !1189
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %index236 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <4 x float> %wide.load237, ptr %i.id, align 32, !tbaa !61, !alias.scope !1190, !noalias !1189
  store <4 x float> %wide.load238, ptr %i.ie, align 16, !tbaa !61, !alias.scope !1190, !noalias !1189
  %index.next239 = add nuw i64 %index236, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.if, label %middle.block240, label %vector.body235, !llvm.loop !1163

middle.block240:                                  ; preds = %vector.body235
  br i1 %cmp.n241, label %._crit_edge.split.us.us, label %scalar.ph231.preheader

scalar.ph231.preheader:                           ; preds = %.preheader.us, %middle.block240
  %.0123.us.us.ph = phi i64 [ %n.vec234, %middle.block240 ], [ 0, %.preheader.us ] ; 3 uses
  br i1 %lcmp.mod249.not, label %scalar.ph231.prol.loopexit, label %scalar.ph231.prol

scalar.ph231.prol:                                ; preds = %scalar.ph231.preheader, %scalar.ph231.prol
  %.0123.us.us.prol = phi i64 [ %i.ij, %scalar.ph231.prol ], [ %.0123.us.us.ph, %scalar.ph231.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph231.prol ], [ 0, %scalar.ph231.preheader ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.0123.us.us.prol
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !61
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0123.us.us.prol
  store float %i.ih, ptr %i.ii, align 4, !tbaa !61
  %i.ij = add nuw nsw i64 %.0123.us.us.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter248
  br i1 %prol.iter.cmp.not, label %scalar.ph231.prol.loopexit, label %scalar.ph231.prol, !llvm.loop !1164

scalar.ph231.prol.loopexit:                       ; preds = %scalar.ph231.prol, %scalar.ph231.preheader
  %.0123.us.us.unr = phi i64 [ %.0123.us.us.ph, %scalar.ph231.preheader ], [ %i.ij, %scalar.ph231.prol ]
  %i.ik = sub nsw i64 %.0123.us.us.ph, %i.b
  %i.il = icmp ugt i64 %i.ik, -4
  br i1 %i.il, label %._crit_edge.split.us.us, label %scalar.ph231

scalar.ph231:                                     ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231
  %.0123.us.us = phi i64 [ %i.jb, %scalar.ph231 ], [ %.0123.us.us.unr, %scalar.ph231.prol.loopexit ] ; 6 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.0123.us.us
  %i.in = load float, ptr %i.im, align 4, !tbaa !61
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0123.us.us
  store float %i.in, ptr %i.io, align 4, !tbaa !61
  %i.ip = add nuw nsw i64 %.0123.us.us, 1         ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !61
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ip
  store float %i.ir, ptr %i.is, align 4, !tbaa !61
  %i.it = add nuw nsw i64 %.0123.us.us, 2         ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !61
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.it
  store float %i.iv, ptr %i.iw, align 4, !tbaa !61
  %i.ix = add nuw nsw i64 %.0123.us.us, 3         ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !61
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.ix
  store float %i.iz, ptr %i.ja, align 4, !tbaa !61
  %i.jb = add nuw nsw i64 %.0123.us.us, 4         ; 2 uses
  %exitcond132.not.3 = icmp eq i64 %i.jb, %i.b
  br i1 %exitcond132.not.3, label %._crit_edge.split.us.us, label %scalar.ph231, !llvm.loop !1165

._crit_edge.split.us.us:                          ; preds = %scalar.ph231.prol.loopexit, %scalar.ph231, %middle.block240
  %i.jc = add nuw nsw i64 %.058124.us, 1          ; 2 uses
  %exitcond133.not = icmp eq i64 %i.jc, %i.e
  br i1 %exitcond133.not, label %.loopexit, label %.preheader.us, !llvm.loop !1166

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.jd = load ptr, ptr %i.hi, align 8, !tbaa !71 ; 5 uses
  %i.je = load i64, ptr %i.hj, align 8, !tbaa !72 ; 3 uses
  %i.jf = add nsw i64 %i.e, -1                    ; 3 uses
  %i.jg = mul i64 %i.hn, %i.jf
  %i.jh = shl nuw nsw i64 %i.b, 2                 ; 5 uses
  %i.ji = getelementptr i8, ptr %i.hm, i64 %i.jg
  %scevgep173 = getelementptr i8, ptr %i.ji, i64 %i.jh
  %i.jj = mul i64 %i.je, %i.jf
  %i.jk = getelementptr i8, ptr %i.jd, i64 %i.jj
  %scevgep174 = getelementptr i8, ptr %i.jk, i64 %i.jh ; 4 uses
  %i.jl = mul i64 %i.hd, %i.jf
  %i.jm = getelementptr i8, ptr %i.hb, i64 %i.jl
  %scevgep175 = getelementptr i8, ptr %i.jm, i64 %i.jh ; 2 uses
  %i.jn = insertelement <4 x ptr> poison, ptr %i.hm, i64 0
  %i.jo = shufflevector <4 x ptr> %i.jn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jp = insertelement <4 x ptr> poison, ptr %scevgep174, i64 0
  %i.jq = insertelement <4 x ptr> %i.jp, ptr %scevgep175, i64 1
  %i.jr = insertelement <4 x ptr> poison, ptr %i.jd, i64 0
  %i.js = insertelement <4 x ptr> %i.jr, ptr %i.hb, i64 1
  %i.jt = insertelement <4 x ptr> poison, ptr %scevgep173, i64 0
  %i.ju = shufflevector <4 x ptr> %i.jt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jv = insertelement <2 x ptr> poison, ptr %i.jd, i64 0
  %i.jw = shufflevector <2 x ptr> %i.jv, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.jx = insertelement <2 x ptr> poison, ptr %scevgep175, i64 0
  %min.iters.check210 = icmp ult i32 %i.a, 12
  %i.jy = or i64 %i.je, %i.hn
  %stride.check188 = icmp slt i64 %i.hd, 0
  %bound1198 = icmp ult ptr %i.hb, %scevgep174
  %i.jz = icmp slt i64 %i.jy, 0
  %i.ka = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1198, i64 4
  %n.vec212 = and i64 %i.b, 4294967292            ; 3 uses
  %cmp.n221 = icmp eq i64 %n.vec212, %i.b
  %xtraiter246 = and i64 %i.b, 1
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
  %i.kb = add nsw i64 %i.b, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge.split
  %.058124 = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %i.mh, %._crit_edge.split ] ; 6 uses
  %i.kc = mul i64 %i.hd, %.058124
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.kc ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kd, i64 64) ]
  %i.ke = mul i64 %i.hn, %.058124
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ke ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kf, i64 64) ]
  %i.kg = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.kh = load i64, ptr %i.hf, align 8
  %i.ki = mul i64 %i.kh, %.058124                 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ki ; 7 uses
  %i.kk = load ptr, ptr %i.hg, align 8            ; 2 uses
  %i.kl = load i64, ptr %i.hh, align 8
  %i.km = mul i64 %i.kl, %.058124                 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.km ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kj, i64 64), "align"(ptr %i.kn, i64 64) ]
  %i.ko = mul i64 %i.je, %.058124
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ko ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kp, i64 64) ]
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.preheader
  %scevgep176 = getelementptr i8, ptr %i.kg, i64 %i.jh
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.ki ; 2 uses
  %scevgep178 = getelementptr i8, ptr %i.kk, i64 %i.jh
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.km ; 2 uses
  %i.kq = insertelement <4 x ptr> %i.js, ptr %i.kj, i64 2
  %i.kr = insertelement <4 x ptr> %i.kq, ptr %i.kn, i64 3
  %i.ks = icmp ult <4 x ptr> %i.kr, %i.ju
  %i.kt = insertelement <2 x ptr> %i.jx, ptr %scevgep177, i64 1
  %i.ku = icmp ult <2 x ptr> %i.jw, %i.kt
  %bound1202 = icmp ult ptr %i.kj, %scevgep174
  %bound0205 = icmp ult ptr %i.jd, %scevgep179
  %bound1206 = icmp ult ptr %i.kn, %scevgep174
  %i.kv = insertelement <4 x ptr> %i.jq, ptr %scevgep177, i64 2
  %i.kw = insertelement <4 x ptr> %i.kv, ptr %scevgep179, i64 3
  %i.kx = icmp ult <4 x ptr> %i.jo, %i.kw
  %i.ky = shufflevector <2 x i1> %i.ku, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.kz = insertelement <8 x i1> %i.ky, i1 %bound0205, i64 6
  %i.la = insertelement <8 x i1> %i.kz, i1 %i.jz, i64 7
  %i.lb = shufflevector <4 x i1> %i.kx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lc = shufflevector <8 x i1> %i.lb, <8 x i1> %i.la, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ld = insertelement <8 x i1> %i.ka, i1 %bound1202, i64 5
  %i.le = insertelement <8 x i1> %i.ld, i1 %bound1206, i64 6
  %i.lf = shufflevector <4 x i1> %i.ks, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lg = shufflevector <8 x i1> %i.lf, <8 x i1> %i.le, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.lh = and <8 x i1> %i.lc, %i.lg
  %i.li = bitcast <8 x i1> %i.lh to i8
  %i.lj = icmp ne i8 %i.li, 0
  %op.rdx = or i1 %i.lj, %stride.check188
  br i1 %op.rdx, label %scalar.ph209.preheader, label %vector.body213

vector.body213:                                   ; preds = %vector.memcheck172, %vector.body213
  %index214 = phi i64 [ %index.next219, %vector.body213 ], [ 0, %vector.memcheck172 ] ; 6 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index214
  %wide.load215 = load <4 x float>, ptr %i.lk, align 16, !tbaa !61, !alias.scope !1191
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %index214
  store <4 x float> %wide.load215, ptr %i.ll, align 16, !tbaa !61, !alias.scope !1192, !noalias !1193
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %index214
  %wide.load216 = load <4 x float>, ptr %i.lm, align 16, !tbaa !61, !alias.scope !1194
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %index214
  %wide.load217 = load <4 x float>, ptr %i.ln, align 16, !tbaa !61, !alias.scope !1195
  %i.lo = fsub <4 x float> %wide.load216, %wide.load217 ; 2 uses
  %i.lp = fmul <4 x float> %i.lo, splat (float 1.000000e+01)
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %index214 ; 2 uses
  %wide.load218 = load <4 x float>, ptr %i.lq, align 16, !tbaa !61, !alias.scope !1196, !noalias !1197
  %i.lr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lp, <4 x float> %i.lo, <4 x float> %wide.load218)
  store <4 x float> %i.lr, ptr %i.lq, align 16, !tbaa !61, !alias.scope !1196, !noalias !1197
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.ls, label %middle.block220, label %vector.body213, !llvm.loop !1173

middle.block220:                                  ; preds = %vector.body213
  br i1 %cmp.n221, label %._crit_edge.split, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %vector.memcheck172, %.preheader, %middle.block220
  %.0123.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.preheader ], [ %n.vec212, %middle.block220 ] ; 8 uses
  br i1 %lcmp.mod247.not, label %scalar.ph209.prol.loopexit, label %scalar.ph209.prol

scalar.ph209.prol:                                ; preds = %scalar.ph209.preheader
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.0123.ph
  %i.lu = load float, ptr %i.lt, align 16, !tbaa !61
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0123.ph
  store float %i.lu, ptr %i.lv, align 16, !tbaa !61
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.0123.ph
  %i.lx = load float, ptr %i.lw, align 16, !tbaa !61
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %.0123.ph
  %i.lz = load float, ptr %i.ly, align 16, !tbaa !61
  %i.ma = fsub float %i.lx, %i.lz                 ; 2 uses
  %i.mb = fmul float %i.ma, 1.000000e+01
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.0123.ph ; 2 uses
  %i.md = load float, ptr %i.mc, align 16, !tbaa !61
  %i.me = call float @llvm.fmuladd.f32(float %i.mb, float %i.ma, float %i.md)
  store float %i.me, ptr %i.mc, align 16, !tbaa !61
  %i.mf = or disjoint i64 %.0123.ph, 1
  br label %scalar.ph209.prol.loopexit

scalar.ph209.prol.loopexit:                       ; preds = %scalar.ph209.prol, %scalar.ph209.preheader
  %.0123.unr = phi i64 [ %.0123.ph, %scalar.ph209.preheader ], [ %i.mf, %scalar.ph209.prol ]
  %i.mg = icmp eq i64 %.0123.ph, %i.kb
  br i1 %i.mg, label %._crit_edge.split, label %scalar.ph209

._crit_edge.split:                                ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209, %middle.block220
  %i.mh = add nuw nsw i64 %.058124, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.mh, %i.e
  br i1 %exitcond131.not, label %.loopexit, label %.preheader, !llvm.loop !1166

scalar.ph209:                                     ; preds = %scalar.ph209.prol.loopexit, %scalar.ph209
  %.0123 = phi i64 [ %i.nh, %scalar.ph209 ], [ %.0123.unr, %scalar.ph209.prol.loopexit ] ; 7 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.0123
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !61
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %.0123
  store float %i.mj, ptr %i.mk, align 4, !tbaa !61
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.0123
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !61
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %.0123
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !61
  %i.mp = fsub float %i.mm, %i.mo                 ; 2 uses
  %i.mq = fmul float %i.mp, 1.000000e+01
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %.0123 ; 2 uses
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !61
  %i.mt = call float @llvm.fmuladd.f32(float %i.mq, float %i.mp, float %i.ms)
  store float %i.mt, ptr %i.mr, align 4, !tbaa !61
  %i.mu = add nuw nsw i64 %.0123, 1               ; 5 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %i.mu
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !61
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.mu
  store float %i.mw, ptr %i.mx, align 4, !tbaa !61
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.mu
  %i.mz = load float, ptr %i.my, align 4, !tbaa !61
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.mu
  %i.nb = load float, ptr %i.na, align 4, !tbaa !61
  %i.nc = fsub float %i.mz, %i.nb                 ; 2 uses
  %i.nd = fmul float %i.nc, 1.000000e+01
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.mu ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !61
  %i.ng = call float @llvm.fmuladd.f32(float %i.nd, float %i.nc, float %i.nf)
  store float %i.ng, ptr %i.ne, align 4, !tbaa !61
  %i.nh = add nuw nsw i64 %.0123, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.nh, %i.b
  br i1 %exitcond.not.1, label %._crit_edge.split, label %scalar.ph209, !llvm.loop !1174

.loopexit:                                        ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader122, %.preheader.lr.ph, %_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77, %bb.l
  %.sroa.0.0 = phi i32 [ %i.gy, %bb.l ], [ %i.gw, %_ZN3jxl6N_SSE214DiffPrecomputeERKNS_5PlaneIfEEffPS2_.exit77 ], [ 0, %.preheader.lr.ph ], [ 0, %._crit_edge.split.us.us ], [ 0, %.preheader122 ], [ 0, %._crit_edge.split ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  %.pr = load i32, ptr %i.bz, align 8, !tbaa !80
  %i.ni = icmp eq i32 %.pr, 0
  br i1 %i.ni, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67, %bb.m, %.loopexit
  %.sroa.0.1104 = phi i32 [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %.loopexit ], [ %i.cg, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit67 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  %.pr105 = load i32, ptr %i.bj, align 8, !tbaa !80
  %i.nj = icmp eq i32 %.pr105, 0
  br i1 %i.nj, label %bb.n, label %.thread106

bb.n:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #45
  br label %.thread106

.thread106:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65, %bb.n, %.thread
  %.sroa.0.2108 = phi i32 [ %.sroa.0.1104, %bb.n ], [ %.sroa.0.1104, %.thread ], [ %i.bq, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit65 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  %.pr109 = load i32, ptr %i.at, align 8, !tbaa !80
  %i.nk = icmp eq i32 %.pr109, 0
  br i1 %i.nk, label %bb.o, label %.thread110

bb.o:                                             ; preds = %.thread106
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #45
  br label %.thread110

.thread110:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit63, %bb.o, %.thread106
  %.sroa.0.3112 = phi i32 [ %.sroa.0.2108, %bb.o ], [ %.sroa.0.2108, %.thread106 ], [ %i.ba, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit63 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.am) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  %.pr113 = load i32, ptr %i.ad, align 8, !tbaa !80
  %i.nl = icmp eq i32 %.pr113, 0
  br i1 %i.nl, label %bb.p, label %.thread114

bb.p:                                             ; preds = %.thread110
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #45
  br label %.thread114

.thread114:                                       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit61, %bb.p, %.thread110
  %.sroa.0.4116 = phi i32 [ %.sroa.0.3112, %bb.p ], [ %.sroa.0.3112, %.thread110 ], [ %i.ak, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit61 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %.pr117 = load i32, ptr %i.j, align 8, !tbaa !80
  %i.nm = icmp eq i32 %.pr117, 0
  br i1 %i.nm, label %bb.q, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81

bb.q:                                             ; preds = %.thread114
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit81:       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread114, %bb.q
  %.sroa.0.5120 = phi i32 [ %.sroa.0.4116, %bb.q ], [ %.sroa.0.4116, %.thread114 ], [ %i.q, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  ret i32 %.sroa.0.5120
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(560) %1, i64 noundef %2, i64 noundef %3, ptr nofree nonnull readnone align 4 captures(none) %4, ptr noundef %5, ptr noalias noundef %6, ptr noalias nofree noundef readonly captures(address_is_null) %7) #0 {
bb.a:
  %8 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %10 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
end_hunk_7
begin_hunk_8_@_ZN3jxl6N_SSE215MaskPsychoImageERKNS_11PsychoImageES3_mmRKNS_17ButteraugliParamsEPNS_8BlurTempEPNS_5PlaneIfEESB_:bb.a
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !61
  %i.cf = fmul float %i.ce, 4.000000e-01
  %i.cg = call float @llvm.fmuladd.f32(float %i.cc, float 4.000000e-01, float %i.cf) ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.ch)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03334.us.i
  %i.ck = call noundef float @sqrtf(float noundef %i.ci) #45
  store float %i.ck, ptr %i.cj, align 4, !tbaa !61
  %i.cl = add nuw nsw i64 %.03334.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.bk
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.g, !llvm.loop !35

._crit_edge.us.i:                                 ; preds = %bb.g
  %i.cm = add nuw nsw i64 %.035.us.i, 1           ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.cm, %i.ao
  br i1 %exitcond41.not.i, label %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, label %.lr.ph.us.i, !llvm.loop !36

_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit: ; preds = %._crit_edge.us.i, %bb.f, %.lr.ph37.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !70 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.not.i21 = icmp eq i32 %i.co, 0
  br i1 %.not.i21, label %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph37.i22

.lr.ph37.i22:                                     ; preds = %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !72
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !71
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !72
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !72
  %i.dl = load i32, ptr %i.cq, align 8, !tbaa !68 ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %.not39.i23 = icmp eq i32 %i.dl, 0
  br i1 %.not39.i23, label %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24

.lr.ph.us.i24:                                    ; preds = %.lr.ph37.i22, %._crit_edge.us.i28
  %.035.us.i25 = phi i64 [ %i.eo, %._crit_edge.us.i28 ], [ 0, %.lr.ph37.i22 ] ; 6 uses
  %i.dn = mul i64 %.035.us.i25, %i.cu
  %i.do = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dn ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.do, i64 64) ]
  %i.dp = mul i64 %.035.us.i25, %i.cy
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dq, i64 64) ]
  %i.dr = mul i64 %.035.us.i25, %i.dc
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ds, i64 64) ]
  %i.dt = mul i64 %.035.us.i25, %i.dg
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  %i.dv = mul i64 %.035.us.i25, %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dw, i64 64) ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.i24
  %.03334.us.i26 = phi i64 [ 0, %.lr.ph.us.i24 ], [ %i.en, %bb.h ] ; 6 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.03334.us.i26
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.03334.us.i26
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !61
  %i.eb = fadd float %i.dy, %i.ea
  %i.ec = fmul float %i.eb, 2.500000e+00          ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.03334.us.i26
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !61
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03334.us.i26
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !61
  %i.eh = fmul float %i.eg, 4.000000e-01
  %i.ei = call float @llvm.fmuladd.f32(float %i.ee, float 4.000000e-01, float %i.eh) ; 2 uses
  %i.ej = fmul float %i.ei, %i.ei
  %i.ek = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ej)
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03334.us.i26
  %i.em = call noundef float @sqrtf(float noundef %i.ek) #45
  store float %i.em, ptr %i.el, align 4, !tbaa !61
  %i.en = add nuw nsw i64 %.03334.us.i26, 1       ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %i.en, %i.dm
  br i1 %exitcond.not.i27, label %._crit_edge.us.i28, label %bb.h, !llvm.loop !35

._crit_edge.us.i28:                               ; preds = %bb.h
  %i.eo = add nuw nsw i64 %.035.us.i25, 1         ; 2 uses
  %exitcond41.not.i29 = icmp eq i64 %i.eo, %i.cp
  br i1 %exitcond41.not.i29, label %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30, label %.lr.ph.us.i24, !llvm.loop !36

_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30: ; preds = %._crit_edge.us.i28, %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit, %.lr.ph37.i22
  %i.ep = call i32 @_ZN3jxl6N_SSE24MaskERKNS_5PlaneIfEES4_RKNS_17ButteraugliParamsEPNS_8BlurTempEPS2_SA_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %13, ptr nonnull align 4 poison, ptr noundef %5, ptr noundef %6, ptr noundef %7) #49 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %.pr = load i32, ptr %i.af, align 8, !tbaa !80
  %i.eq = icmp eq i32 %.pr, 0
  br i1 %i.eq, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #45
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20, %bb.i, %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30
  %.sroa.0.142 = phi i32 [ %i.ep, %bb.i ], [ %i.ep, %_ZN3jxl6N_SSE225CombineChannelsForMaskingEPKNS_5PlaneIfEES4_PS2_.exit30 ], [ %.pre48, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit20 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  %.pr43 = load i32, ptr %i.p, align 8, !tbaa !80
  %i.er = icmp eq i32 %.pr43, 0
  br i1 %i.er, label %bb.j, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

bb.j:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit31:       ; preds = %bb.a, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %.thread, %bb.j
  %.sroa.0.246 = phi i32 [ %.sroa.0.142, %bb.j ], [ %.sroa.0.142, %.thread ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  ret i32 %.sroa.0.246
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_SSE25MaskYEd(double noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x3FDCEC88D72DDFBF, double f0x3FEA8C0402103A76)
  %i.b = fdiv double f0x40046385809AE090, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef double @_ZN3jxl6N_SSE27MaskDcYEd(double noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = tail call double @llvm.fmuladd.f64(double %0, double f0x400EFEF6CF116418, double f0x3FC9A1FB482D66D1)
  %i.b = fdiv double f0x3FE029681B74E8CE, %i.a
  %i.c = fadd double %i.b, 1.000000e+00
  %i.d = fmul double %i.c, f0x3FB227F5C0000000    ; 2 uses
  %i.e = fmul double %i.d, %i.d
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl6N_SSE224CombineChannelsToDiffmapERKNS_5PlaneIfEERKNS_6Image3IfEES8_fPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) #22 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !68
  %i.c = icmp eq i32 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.a to i64
  %i.k = zext i32 %i.e to i64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  %.not42 = icmp eq i32 %i.a, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8
  br i1 %.not42, label %.loopexit, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph41
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.pre = load ptr, ptr %.phi.trans.insert63, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre50.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert52.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre53.pre = load ptr, ptr %.phi.trans.insert52.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.pre56.pre = load ptr, ptr %.phi.trans.insert55.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert58.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.pre59.pre = load ptr, ptr %.phi.trans.insert58.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %.phi.trans.insert61.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.pre62.pre = load ptr, ptr %.phi.trans.insert61.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.pre.pre, i64 64), "align"(ptr %.pre50.pre, i64 64), "align"(ptr %.pre53.pre, i64 64), "align"(ptr %.pre56.pre, i64 64), "align"(ptr %.pre59.pre, i64 64), "align"(ptr %.pre62.pre, i64 64) ]
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03539.us = phi i64 [ %i.bw, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %i.z = mul i64 %i.o, %.03539.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = mul i64 %i.s, %.03539.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = mul i64 %i.u, %.03539.us                ; 3 uses
  %i.ae = mul i64 %i.w, %.03539.us                ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.af, i64 64) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre50.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre53.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre56.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre59.pre, i64 %i.ad ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre62.pre, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %bb.c
  %.03438.us = phi i64 [ 0, %.lr.ph.us ], [ %i.bv, %bb.c ] ; 9 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.03438.us
  %i.am = load float, ptr %i.al, align 4, !tbaa !61
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.03438.us
  %i.ao = load float, ptr %i.an, align 4, !tbaa !61
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03438.us
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !61
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.03438.us
  %i.as = load float, ptr %i.ar, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.03438.us
  %i.au = load float, ptr %i.at, align 4, !tbaa !61
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.03438.us
  %i.aw = load float, ptr %i.av, align 4, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.03438.us
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !61
  %i.az = fpext float %i.am to double
  %i.ba = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> <double f0x400EFEF6CF116418, double f0x3FDCEC88D72DDFBF>, <2 x double> <double f0x3FC9A1FB482D66D1, double f0x3FEA8C0402103A76>)
  %i.bd = fdiv <2 x double> <double f0x3FE029681B74E8CE, double f0x40046385809AE090>, %i.bc
  %i.be = fadd <2 x double> %i.bd, splat (double 1.000000e+00)
  %i.bf = fmul <2 x double> %i.be, splat (double f0x3FB227F5C0000000) ; 2 uses
  %i.bg = fmul <2 x double> %i.bf, %i.bf
  %i.bh = fptrunc <2 x double> %i.bg to <2 x float> ; 3 uses
  %i.bi = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.aq, i64 1
  %i.bk = fmul <2 x float> %i.y, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.au, i64 1
  %i.bn = fmul <2 x float> %i.bm, %i.bh
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bh, <2 x float> %i.bn)
  %i.bp = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.ay, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bh, <2 x float> %i.bo)
  %i.bs = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.br)
  %i.bt = tail call noundef float @sqrtf(float noundef %i.bs) #45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.03438.us
  store float %i.bt, ptr %i.bu, align 4, !tbaa !61
  %i.bv = add nuw nsw i64 %.03438.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.j
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !1210

._crit_edge.us:                                   ; preds = %bb.c
  %i.bw = add nuw nsw i64 %.03539.us, 1           ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bw, %i.k
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph.us, !llvm.loop !1211

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph41, %bb.b, %bb.a
  %.sroa.036.0 = phi i32 [ 1, %bb.a ], [ 0, %.lr.ph41 ], [ 0, %bb.b ], [ 0, %._crit_edge.us ]
  ret i32 %.sroa.036.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_SSE218OpsinDynamicsImageERKNS_6Image3IfEERKNS_17ButteraugliParamsEPS2_PNS_8BlurTempES8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #21 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %2) #49 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.d) #49 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.i = tail call i32 @_ZN3jxl4BlurERKNS_5PlaneIfEEfRKNS_17ButteraugliParamsEPNS_8BlurTempEPS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, float noundef 1.200000e+00, ptr nonnull align 4 poison, ptr noundef %3, ptr noundef nonnull %i.h) #49 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !86
  %i.m = insertelement <4 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !70   ; 2 uses
  %.not193 = icmp eq i32 %i.p, 0
  br i1 %.not193, label %.loopexit, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 152
  %.pre = load i32, ptr %0, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph192, %._crit_edge
  %i.ac = phi i32 [ %i.p, %.lr.ph192 ], [ %i.bc, %._crit_edge ]
  %i.ad = phi i32 [ %.pre, %.lr.ph192 ], [ %i.bd, %._crit_edge ]
  %.0190 = phi i64 [ 0, %.lr.ph192 ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.ae = load i64, ptr %i.q, align 8, !tbaa !72
  %i.af = mul i64 %i.ae, %.0190                   ; 3 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ah, i64 64) ]
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.al, i64 64) ]
  %i.am = load i64, ptr %i.u, align 8, !tbaa !72
  %i.an = mul i64 %i.am, %.0190                   ; 3 uses
  %i.ao = load ptr, ptr %i.v, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ap, i64 64) ]
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aq, i64 64) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = load i64, ptr %i.y, align 8, !tbaa !72
  %i.av = mul i64 %i.au, %.0190                   ; 3 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ax, i64 64) ]
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 64) ]
  %i.ba = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bb, i64 64) ]
  %.not194 = icmp eq i32 %i.ad, 0
  br i1 %.not194, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre195 = load i32, ptr %i.o, align 4, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bc = phi i32 [ %.pre195, %._crit_edge.loopexit ], [ %i.ac, %bb.f ] ; 2 uses
  %i.bd = phi i32 [ %i.gy, %._crit_edge.loopexit ], [ 0, %bb.f ]
  %i.be = add nuw nsw i64 %.0190, 1               ; 2 uses
  %i.bf = zext i32 %i.bc to i64
  %i.bg = icmp samesign ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %.loopexit, !llvm.loop !1212

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0149189 = phi i64 [ %i.gx, %.lr.ph ], [ 0, %bb.f ] ; 10 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0149189
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !82
  %i.bj = fmul <4 x float> %i.n, %i.bi            ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.0149189
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !tbaa !82
end_hunk_8
begin_hunk_9_@_ZNK3jxl21ButteraugliComparator25DiffmapOpsinDynamicsImageERKNS_6Image3IfEERNS_5PlaneIfEE:bb.a
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !68
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = mul i64 %i.p, %.07.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = load i32, ptr %2, align 8, !tbaa !68
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !70
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, !llvm.loop !14

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %4, i8 0, i64 560, i1 false)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #45
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = and i64 %i.aa, 103425
  %i.ac = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.ab, i1 true)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL39SeparateFrequenciesHighwayDispatchTableE, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.af = load i64, ptr %i.c, align 8, !tbaa !103
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.aj = call i32 %i.ae(i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(560) %4) #45 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.al = load i64, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !tbaa !104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.an = icmp ult i64 %i.al, 4294967296
  %i.ao = icmp ult i64 %i.am, 4294967296
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.g, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = trunc nuw i64 %i.am to i32
  %i.aq = trunc nuw i64 %i.al to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46, !noalias !1318
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.aq, i32 noundef %i.ap, i64 noundef 4) #45, !noalias !1318
  %i.ar = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.b, i64 noundef 0) #45, !noalias !1318 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  br i1 %i.as, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !80, !alias.scope !1318
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.g
  store i32 0, ptr %i.at, align 8, !tbaa !80, !alias.scope !1318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av) #45
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !81, !noalias !1318
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !81, !alias.scope !1318
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.h, %.critedge.i
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !1318
  %.pre = load i32, ptr %i.at, align 8, !tbaa !80 ; 2 uses
  %i.ba = icmp eq i32 %.pre, 0
  br i1 %i.ba, label %bb.i, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.i:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(60) %5, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #45
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81, !noalias !1319
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !81, !alias.scope !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 24, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bc) #45 ; 0 uses
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !81
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %i.bl = call i32 @_ZNK3jxl21ButteraugliComparator18DiffmapPsychoImageERKNS_11PsychoImageERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(560) %4, ptr noundef nonnull align 8 dereferenceable(56) %2) #49 ; 2 uses
  %.pr = load i32, ptr %i.bb, align 8, !tbaa !80
  %i.bm = icmp eq i32 %.pr, 0
  br i1 %i.bm, label %bb.j, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bd) #45
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %bb.f, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %bb.i, %bb.j
  %.sroa.0.017 = phi i32 [ %i.bl, %bb.j ], [ %i.bl, %bb.i ], [ %.pre, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit
  %.sroa.0.1 = phi i32 [ %.sroa.0.017, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit ], [ %i.aj, %bb.e ]
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 528
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #45
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 472
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #45
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 416
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bp) #45
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 360
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bq) #45
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 304
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #45
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 248
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bs) #45
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bt) #45
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 136
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bu) #45
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bv) #45
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bw) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit

_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit:  ; preds = %bb.d, %.preheader.i, %bb.c, %bb.k
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %bb.k ], [ 0, %bb.c ], [ 0, %.preheader.i ], [ 0, %bb.d ]
  ret i32 %.sroa.0.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxlL17AddSupersampled2xERKNS_5PlaneIfEEfRS1_(i64 %.16.val, ptr nofree readonly captures(none) %.40.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge3.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !68     ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.not4 = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  br i1 %.not4, label %._crit_edge3.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter = and i64 %i.e, 1
  %i.j = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %i.e, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1 = trunc i32 %i.d to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0162 = phi i64 [ %i.y, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.k = mul i64 %i.i, %.0162
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k ; 4 uses
  %i.m = lshr i64 %.0162, 1
  %i.n = mul i64 %i.m, %.16.val
  %i.o = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.n ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64), "align"(ptr %i.l, i64 64) ]
  br i1 %i.j, label %.epil.preheader, label %.preheader.new

._crit_edge3.split:                               ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.01.epil.init = phi i64 [ 0, %.preheader ], [ %i.as, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01.epil.init ; 3 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !61
  %i.r = fpext float %i.q to double
  %i.s = fmul double %i.r, 8.500000e-01
  %i.t = fptrunc double %i.s to float             ; 2 uses
  store float %i.t, ptr %i.p, align 4, !tbaa !61
  %i.u = lshr i64 %.01.epil.init, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !61
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 5.000000e-01, float %i.t)
  store float %i.x, ptr %i.p, align 4, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.y = add nuw nsw i64 %.0162, 1                ; 2 uses
  %exitcond5.not = icmp eq i64 %i.y, %i.c
  br i1 %exitcond5.not, label %._crit_edge3.split, label %.preheader, !llvm.loop !1320

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.01 = phi i64 [ %i.as, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01 ; 3 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !61
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.ab, 8.500000e-01
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  store float %i.ad, ptr %i.z, align 8, !tbaa !61
  %i.ae = lshr exact i64 %.01, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !61
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 5.000000e-01, float %i.ad)
  store float %i.ah, ptr %i.z, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !61
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %i.al, 8.500000e-01
  %i.an = fptrunc double %i.am to float           ; 2 uses
  store float %i.an, ptr %i.aj, align 4, !tbaa !61
  %i.ao = lshr exact i64 %.01, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !61
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 5.000000e-01, float %i.an)
  store float %i.ar, ptr %i.aj, align 4, !tbaa !61
  %i.as = add nuw nsw i64 %.01, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !1321
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZNK3jxl21ButteraugliComparator18DiffmapPsychoImageERKNS_11PsychoImageERNS_5PlaneIfEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %4 = alloca %"class.jxl::StatusOr", align 8     ; 10 uses
  %5 = alloca %"class.jxl::Plane", align 8        ; 11 uses
  %6 = alloca %"class.jxl::StatusOr.1", align 8   ; 13 uses
  %7 = alloca %"class.jxl::Image3", align 8       ; 26 uses
  %8 = alloca %"class.jxl::StatusOr.1", align 8   ; 6 uses
  %9 = alloca %"class.jxl::Image3", align 8       ; 8 uses
  %10 = alloca %"class.jxl::Plane", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !103  ; 3 uses
  %i.e = icmp ult i64 %i.d, 8
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !104  ; 3 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i32, ptr %2, align 8, !tbaa !68
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.p = load i64, ptr %i.n, align 8, !tbaa !72
  %i.q = mul i64 %i.p, %.07.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = load i32, ptr %2, align 8, !tbaa !68
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.r, i8 0, i64 %i.u, i1 false)
  %i.v = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !70
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.d, label %_ZN3jxl13ZeroFillImageIfEEvPNS_5PlaneIT_EE.exit, !llvm.loop !14

bb.e:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !1349 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.ad = or i64 %i.d, %i.g
  %or.cond = icmp ult i64 %i.ad, 4294967296
  br i1 %or.cond, label %bb.f, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = trunc nuw i64 %i.g to i32
  %i.af = trunc nuw i64 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46, !noalias !1351
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.af, i32 noundef %i.ae, i64 noundef 4) #45, !noalias !1351
  %i.ag = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.b, i64 noundef 0) #45, !noalias !1351 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  br i1 %i.ah, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ag, ptr %i.ai, align 8, !tbaa !80, !alias.scope !1351
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.f
  store i32 0, ptr %i.ai, align 8, !tbaa !80, !alias.scope !1351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #45
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81, !noalias !1351
  store i64 %i.an, ptr %i.al, align 8, !tbaa !81, !alias.scope !1351
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.g, %.critedge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !1351
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aq = icmp eq i32 %.pre, 0
  br i1 %i.aq, label %bb.h, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.h:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as) #45
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !81, !noalias !1352
  store i64 %i.av, ptr %i.at, align 8, !tbaa !81, !alias.scope !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !103
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !104
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.1") align 8 %6, ptr noundef %i.b, i64 noundef %i.aw, i64 noundef %i.ax) #49
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !84 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bb, i8 0, i64 144, i1 false), !alias.scope !1353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(172) %6, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.bd = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc) #45 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !81, !noalias !1353
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !81, !alias.scope !1353
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
end_hunk_9
