Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dsbgst_:bb.a
  %i.fn = icmp eq i64 %index.next4400, %n.vec4391
  br i1 %i.fn, label %middle.block4401, label %vector.body4394, !llvm.loop !10

middle.block4401:                                 ; preds = %vector.body4394
  %cmp.n4402 = icmp eq i64 %i.ep, %n.vec4391
  br i1 %cmp.n4402, label %._crit_edge2953, label %vec.epilog.iter.check4407

vec.epilog.iter.check4407:                        ; preds = %middle.block4401
  %min.epilog.iters.check4408 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check4408, label %vec.epilog.scalar.ph4406.preheader, label %vec.epilog.ph4409, !prof !158

vec.epilog.ph4409:                                ; preds = %vector.main.loop.iter.check4388, %vec.epilog.iter.check4407
  %vec.epilog.resume.val4403 = phi i64 [ %n.vec4391, %vec.epilog.iter.check4407 ], [ 0, %vector.main.loop.iter.check4388 ]
  %n.vec4410 = and i64 %i.ep, -4                  ; 3 uses
  %i.fo = add nsw i64 %n.vec4410, %i.eo
  %broadcast.splatinsert4411 = insertelement <4 x double> poison, double %i.cf, i64 0
  %broadcast.splat4412 = shufflevector <4 x double> %broadcast.splatinsert4411, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4732 = add i32 %i.el, %invariant.op
  br label %vec.epilog.vector.body4413

vec.epilog.vector.body4413:                       ; preds = %vec.epilog.vector.body4413, %vec.epilog.ph4409
  %index4414 = phi i64 [ %vec.epilog.resume.val4403, %vec.epilog.ph4409 ], [ %index.next4416, %vec.epilog.vector.body4413 ] ; 2 uses
  %i.fp = trunc i64 %index4414 to i32
  %.reass4733 = add i32 %i.fp, %invariant.op4732
  %i.fq = sext i32 %.reass4733 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fq ; 2 uses
  %wide.load4415 = load <4 x double>, ptr %i.fr, align 8, !tbaa !153
  %i.fs = fdiv <4 x double> %wide.load4415, %broadcast.splat4412
  store <4 x double> %i.fs, ptr %i.fr, align 8, !tbaa !153
  %index.next4416 = add nuw i64 %index4414, 4     ; 2 uses
  %i.ft = icmp eq i64 %index.next4416, %n.vec4410
  br i1 %i.ft, label %vec.epilog.middle.block4417, label %vec.epilog.vector.body4413, !llvm.loop !11

vec.epilog.middle.block4417:                      ; preds = %vec.epilog.vector.body4413
  %cmp.n4418 = icmp eq i64 %i.ep, %n.vec4410
  br i1 %cmp.n4418, label %._crit_edge2953, label %vec.epilog.scalar.ph4406.preheader

vec.epilog.scalar.ph4406.preheader:               ; preds = %iter.check4405, %vector.scevcheck4385, %vec.epilog.iter.check4407, %vec.epilog.middle.block4417
  %indvars.iv3541.ph = phi i64 [ %i.eo, %iter.check4405 ], [ %i.eo, %vector.scevcheck4385 ], [ %i.fc, %vec.epilog.iter.check4407 ], [ %i.fo, %vec.epilog.middle.block4417 ] ; 4 uses
  %i.fu = sub nsw i64 %wide.trip.count, %indvars.iv3541.ph
  %xtraiter4665 = and i64 %i.fu, 3                ; 2 uses
  %lcmp.mod4666.not = icmp eq i64 %xtraiter4665, 0
  br i1 %lcmp.mod4666.not, label %vec.epilog.scalar.ph4406.prol.loopexit, label %vec.epilog.scalar.ph4406.prol

vec.epilog.scalar.ph4406.prol:                    ; preds = %vec.epilog.scalar.ph4406.preheader, %vec.epilog.scalar.ph4406.prol
  %indvars.iv3541.prol = phi i64 [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4406.prol ], [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4406.preheader ] ; 2 uses
  %prol.iter4667 = phi i64 [ %prol.iter4667.next, %vec.epilog.scalar.ph4406.prol ], [ 0, %vec.epilog.scalar.ph4406.preheader ]
  %i.fv = trunc nuw nsw i64 %indvars.iv3541.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fv
  %i.fw = sext i32 %.reass.prol to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !153
  %i.fz = fdiv double %i.fy, %i.cf
  store double %i.fz, ptr %i.fx, align 8, !tbaa !153
  %indvars.iv.next3542.prol = add nuw nsw i64 %indvars.iv3541.prol, 1 ; 2 uses
  %prol.iter4667.next = add i64 %prol.iter4667, 1 ; 2 uses
  %prol.iter4667.cmp.not = icmp eq i64 %prol.iter4667.next, %xtraiter4665
  br i1 %prol.iter4667.cmp.not, label %vec.epilog.scalar.ph4406.prol.loopexit, label %vec.epilog.scalar.ph4406.prol, !llvm.loop !12

vec.epilog.scalar.ph4406.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4406.prol, %vec.epilog.scalar.ph4406.preheader
  %indvars.iv3541.unr = phi i64 [ %indvars.iv3541.ph, %vec.epilog.scalar.ph4406.preheader ], [ %indvars.iv.next3542.prol, %vec.epilog.scalar.ph4406.prol ]
  %i.ga = sub nsw i64 %indvars.iv3541.ph, %wide.trip.count
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge2953, label %vec.epilog.scalar.ph4406.preheader.new

vec.epilog.scalar.ph4406.preheader.new:           ; preds = %vec.epilog.scalar.ph4406.prol.loopexit
  %invariant.op4734 = add i32 1, %invariant.op
  %invariant.op4735 = add i32 2, %invariant.op
  %invariant.op4736 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4406

vec.epilog.scalar.ph4406:                         ; preds = %vec.epilog.scalar.ph4406, %vec.epilog.scalar.ph4406.preheader.new
  %indvars.iv3541 = phi i64 [ %indvars.iv3541.unr, %vec.epilog.scalar.ph4406.preheader.new ], [ %indvars.iv.next3542.3, %vec.epilog.scalar.ph4406 ] ; 5 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv3541 to i32
  %.reass = add i32 %invariant.op, %i.gc
  %i.gd = sext i32 %.reass to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gd ; 2 uses
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !153
  %i.gg = fdiv double %i.gf, %i.cf
  store double %i.gg, ptr %i.ge, align 8, !tbaa !153
  %i.gh = trunc i64 %indvars.iv3541 to i32
  %.reass.1.reass = add i32 %i.gh, %invariant.op4734
  %i.gi = sext i32 %.reass.1.reass to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gi ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !153
  %i.gl = fdiv double %i.gk, %i.cf
  store double %i.gl, ptr %i.gj, align 8, !tbaa !153
  %i.gm = trunc i64 %indvars.iv3541 to i32
  %.reass.2.reass = add i32 %i.gm, %invariant.op4735
  %i.gn = sext i32 %.reass.2.reass to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gn ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !153
  %i.gq = fdiv double %i.gp, %i.cf
  store double %i.gq, ptr %i.go, align 8, !tbaa !153
  %i.gr = trunc i64 %indvars.iv3541 to i32
  %.reass.3.reass = add i32 %i.gr, %invariant.op4736
  %i.gs = sext i32 %.reass.3.reass to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gs ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !153
  %i.gv = fdiv double %i.gu, %i.cf
  store double %i.gv, ptr %i.gt, align 8, !tbaa !153
  %indvars.iv.next3542.3 = add nuw nsw i64 %indvars.iv3541, 4 ; 2 uses
  %exitcond3544.not.3 = icmp eq i64 %indvars.iv.next3542.3, %wide.trip.count
  br i1 %exitcond3544.not.3, label %._crit_edge2953, label %vec.epilog.scalar.ph4406, !llvm.loop !13

._crit_edge2953:                                  ; preds = %vec.epilog.scalar.ph4406.prol.loopexit, %vec.epilog.scalar.ph4406, %middle.block4401, %vec.epilog.middle.block4417, %._crit_edge2948
  %.not26772973 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26772973, label %bb.t, label %.lr.ph2977

.lr.ph2977:                                       ; preds = %._crit_edge2953
  %i.gw = mul i32 %i.br, %i.n                     ; 6 uses
  %i.gx = add i32 %i.bx, %i.gw                    ; 6 uses
  %i.gy = sext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr %i.p, i64 %i.gy ; 5 uses
  store i32 %i.ek, ptr %i.b, align 4, !tbaa !151
  %i.ha = xor i32 %i.bt, -1
  %i.hb = add i32 %i.br, %i.ha                    ; 3 uses
  store i32 %i.hb, ptr %i.d, align 4, !tbaa !151
  %.not26972963 = icmp sgt i32 %i.el, %i.hb
  %i.hc = add i32 %.neg.le, %i.ac
  %invariant.op2979 = add i32 %i.cb, %i.hc
  %i.hd = add i32 %i.gw, %.neg.le
  %invariant.op2968 = add i32 %i.hd, %i.bx        ; 3 uses
  %i.he = zext i32 %i.bw to i64                   ; 5 uses
  %i.hf = sub i32 %.02605.ph, %i.bt
  %i.hg = zext nneg i32 %i.el to i64              ; 10 uses
  %i.hh = zext i32 %i.hb to i64                   ; 4 uses
  %i.hi = call i64 @llvm.usub.sat.i64(i64 %i.hh, i64 %i.hg)
  %i.hj = add i32 %i.bx, %i.el
  %i.hk = mul i32 %.0255729743492, %i.bw
  %i.hl = add i32 %i.hj, %i.hk
  %i.hm = add i32 %i.bx, 1
  %i.hn = add i32 %i.hm, %i.el
  %i.ho = add i32 %i.hn, %i.gw
  %i.hp = sub i32 %i.ho, %.02605.ph               ; 2 uses
  %i.hq = add i32 %i.bx, %i.el
  %i.hr = mul i32 %.0255729743492, %i.bw          ; 3 uses
  %i.hs = add i32 %i.hq, %i.hr
  %umax4273 = call i64 @llvm.umax.i64(i64 %i.hg, i64 %i.hh)
  %i.ht = shl nuw nsw i64 %umax4273, 3            ; 2 uses
  %i.hu = shl nuw nsw i64 %i.hg, 3                ; 2 uses
  %i.hv = sub nsw i64 %i.ht, %i.hu
  %scevgep4274 = getelementptr i8, ptr %scevgep4272, i64 %i.hv
  %i.hw = add i32 %i.bi, %i.cb
  %i.hx = sub i32 %i.hw, %i.bt
  %i.hy = add i32 %i.bx, 1
  %i.hz = add i32 %i.hy, %i.el
  %i.ia = add i32 %i.hz, %i.gw
  %i.ib = sub i32 %i.ia, %.02605.ph
  %i.ic = sext i32 %i.ib to i64
  %i.id = shl nsw i64 %i.ic, 3                    ; 2 uses
  %scevgep4279 = getelementptr i8, ptr %scevgep4278, i64 %i.id
  %i.ie = add nsw i64 %i.ht, %i.id
  %i.if = sub nsw i64 %i.ie, %i.hu
  %scevgep4281 = getelementptr i8, ptr %scevgep4280, i64 %i.if
  %umax4286 = call i64 @llvm.umax.i64(i64 %i.hg, i64 %i.hh)
  %i.ig = add nuw nsw i64 %umax4286, 1
  %i.ih = sub nsw i64 %i.ig, %i.hg                ; 7 uses
  %i.ii = add i32 %.02605.ph, -1
  %i.ij = add i32 %i.ii, %i.bx
  %i.ik = add i32 %i.ij, %i.hr
  %i.il = sub i32 %i.ik, %i.bt
  %i.im = add i32 %i.bj, %i.cb
  %i.in = sub i32 %i.im, %i.bt                    ; 2 uses
  %i.io = add i32 %i.bx, %i.gw
  %i.ip = sub i32 %i.io, %i.bt                    ; 2 uses
  %i.iq = add i32 %.02605.ph, -1
  %i.ir = add i32 %i.iq, %i.bx
  %i.is = add i32 %i.ir, %i.hr
  %i.it = sub i32 %i.is, %i.bt
  %i.iu = add i32 %i.bk, %i.cb
  %i.iv = sub i32 %i.iu, %i.bt
  %i.iw = sext i32 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 3                    ; 2 uses
  %scevgep4335 = getelementptr i8, ptr %scevgep4334, i64 %i.ix
  %i.iy = add i32 %i.bx, %i.gw
  %i.iz = sub i32 %i.iy, %i.bt                    ; 2 uses
  %i.ja = sext i32 %i.iz to i64
  %i.jb = shl nsw i64 %i.ja, 3                    ; 2 uses
  %scevgep4340 = getelementptr i8, ptr %scevgep4339, i64 %i.jb
  %i.jc = shl nsw i64 %i.gy, 3
  %scevgep4343 = getelementptr i8, ptr %scevgep4342, i64 %i.jc
  %i.jd = getelementptr i8, ptr %i.bn, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.bp, i64 %i.jb
  %min.iters.check4288 = icmp ult i64 %i.ih, 4
  %i.jf = trunc nuw i64 %i.hi to i32              ; 2 uses
  %i.jg = add i32 %i.hp, %i.jf
  %i.jh = icmp slt i32 %i.jg, %i.hp
  %min.iters.check4290 = icmp ult i64 %i.ih, 16
  %i.ji = and i64 %i.ih, 12
  %n.vec4292 = and i64 %i.ih, -16                 ; 4 uses
  %i.jj = add nsw i64 %n.vec4292, %i.hg
  %cmp.n4307 = icmp eq i64 %i.ih, %n.vec4292
  %min.epilog.iters.check4313 = icmp eq i64 %i.ji, 0
  %n.vec4315 = and i64 %i.ih, -4                  ; 3 uses
  %i.jk = add nsw i64 %n.vec4315, %i.hg
  %cmp.n4324 = icmp eq i64 %i.ih, %n.vec4315
  br label %.lr.ph2957

.lr.ph2957:                                       ; preds = %._crit_edge2967, %.lr.ph2977
  %indvar4330 = phi i64 [ %indvar.next4331, %._crit_edge2967 ], [ 0, %.lr.ph2977 ] ; 5 uses
  %indvar = phi i32 [ %indvar.next, %._crit_edge2967 ], [ 0, %.lr.ph2977 ] ; 9 uses
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556, %._crit_edge2967 ], [ %i.he, %.lr.ph2977 ] ; 4 uses
  %indvars.iv3548 = phi i32 [ %indvars.iv.next3549, %._crit_edge2967 ], [ %i.hf, %.lr.ph2977 ] ; 3 uses
  %i.jl = trunc i64 %indvar4330 to i32
  %i.jm = add i32 %i.bw, %i.jl
  %13 = add i64 %indvar4330, 1                    ; 3 uses
  %i.jn = mul i32 %.0255729743492, %indvar
  %i.jo = add i32 %i.it, %i.jn
  %i.jp = sext i32 %i.jo to i64
  %i.jq = shl nsw i64 %i.jp, 3                    ; 2 uses
  %scevgep4329 = getelementptr i8, ptr %scevgep4328, i64 %i.jq ; 5 uses
  %i.jr = shl nuw nsw i64 %indvar4330, 3          ; 3 uses
  %scevgep4332 = getelementptr i8, ptr %i.bl, i64 %i.jr
  %scevgep4333 = getelementptr i8, ptr %scevgep4332, i64 %i.jq ; 5 uses
  %scevgep4336 = getelementptr i8, ptr %i.jd, i64 %i.jr
  %i.js = trunc i64 %indvar4330 to i32
  %i.jt = add i32 %i.iz, %i.js
  %i.ju = sext i32 %i.jt to i64
  %i.jv = shl nsw i64 %i.ju, 3
  %scevgep4338 = getelementptr i8, ptr %scevgep4337, i64 %i.jv
  %scevgep4341 = getelementptr i8, ptr %i.je, i64 %i.jr
  %i.jw = mul i32 %.0255729743492, %indvar
  %i.jx = add i32 %i.hs, %i.jw
  %i.jy = sext i32 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 3                    ; 2 uses
  %scevgep4271 = getelementptr i8, ptr %scevgep, i64 %i.jz ; 2 uses
  %scevgep4275 = getelementptr i8, ptr %scevgep4274, i64 %i.jz ; 2 uses
  %i.ka = add i32 %i.hx, %indvar
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl nsw i64 %i.kb, 3
  %scevgep4277 = getelementptr i8, ptr %scevgep4276, i64 %i.kc ; 2 uses
  %i.kd = mul i32 %.0255729743492, %indvar
  %i.ke = add i32 %i.hl, %i.kd                    ; 2 uses
  %i.kf = trunc i64 %indvars.iv3555 to i32
  %i.kg = mul i32 %.0255729743491, %i.kf
  %invariant.op2959 = add i32 %i.kg, %i.bx        ; 4 uses
  %i.kh = trunc i64 %indvars.iv3555 to i32
  %i.ki = sub i32 %i.kh, %i.br                    ; 2 uses
  %i.kj = add i32 %i.gx, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.kk ; 5 uses
  %i.km = add i32 %i.cc, %i.ki
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kn ; 5 uses
  %min.iters.check4364 = icmp ult i64 %13, 8
  br i1 %min.iters.check4364, label %scalar.ph4363.preheader, label %vector.scevcheck4326

vector.scevcheck4326:                             ; preds = %.lr.ph2957
  %i.kp = mul i32 %.0255729743492, %indvar
  %i.kq = add i32 %i.il, %i.kp                    ; 2 uses
  %i.kr = add i32 %i.kq, %indvar
  %i.ks = icmp slt i32 %i.kr, %i.kq
  %i.kt = add i32 %i.in, %indvar
  %i.ku = icmp slt i32 %i.kt, %i.in
  %i.kv = add i32 %i.ip, %indvar
  %i.kw = icmp slt i32 %i.kv, %i.ip
  %i.kx = or i1 %i.ks, %i.ku
  %i.ky = or i1 %i.kx, %i.kw
  br i1 %i.ky, label %scalar.ph4363.preheader, label %vector.memcheck4327

vector.memcheck4327:                              ; preds = %vector.scevcheck4326
  %bound04344 = icmp ult ptr %scevgep4329, %scevgep4277
  %bound14345 = icmp ult ptr %i.ko, %scevgep4333
  %found.conflict4346 = and i1 %bound04344, %bound14345
  %bound04347 = icmp ult ptr %scevgep4329, %scevgep4336
  %bound14348 = icmp ult ptr %scevgep4335, %scevgep4333
  %found.conflict4349 = and i1 %bound04347, %bound14348
  %conflict.rdx4350 = or i1 %found.conflict4346, %found.conflict4349
  %bound04351 = icmp ult ptr %scevgep4329, %scevgep4338
  %bound14352 = icmp ult ptr %i.kl, %scevgep4333
  %found.conflict4353 = and i1 %bound04351, %bound14352
  %conflict.rdx4354 = or i1 %conflict.rdx4350, %found.conflict4353
  %bound04355 = icmp ult ptr %scevgep4329, %scevgep4341
  %bound14356 = icmp ult ptr %scevgep4340, %scevgep4333
  %found.conflict4357 = and i1 %bound04355, %bound14356
  %conflict.rdx4358 = or i1 %conflict.rdx4354, %found.conflict4357
  %bound04359 = icmp ult ptr %scevgep4329, %scevgep4343
  %bound14360 = icmp ult ptr %i.gz, %scevgep4333
  %found.conflict4361 = and i1 %bound04359, %bound14360
  %conflict.rdx4362 = or i1 %conflict.rdx4358, %found.conflict4361
  br i1 %conflict.rdx4362, label %scalar.ph4363.preheader, label %vector.ph4365

vector.ph4365:                                    ; preds = %vector.memcheck4327
  %n.vec4366 = and i64 %13, -8                    ; 3 uses
  %i.kz = add i64 %n.vec4366, %i.he
  %i.la = load double, ptr %i.kl, align 8, !tbaa !153, !alias.scope !159
  %broadcast.splatinsert4375 = insertelement <4 x double> poison, double %i.la, i64 0
  %broadcast.splat4376 = shufflevector <4 x double> %broadcast.splatinsert4375, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lb = load double, ptr %i.ko, align 8, !tbaa !153, !alias.scope !160
  %broadcast.splatinsert4367 = insertelement <4 x double> poison, double %i.lb, i64 0
  %broadcast.splat4368 = shufflevector <4 x double> %broadcast.splatinsert4367, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lc = fneg <4 x double> %broadcast.splat4368  ; 2 uses
  %i.ld = load double, ptr %i.gz, align 8, !tbaa !153, !alias.scope !161
  %broadcast.splatinsert4379 = insertelement <4 x double> poison, double %i.ld, i64 0
  %broadcast.splat4380 = shufflevector <4 x double> %broadcast.splatinsert4379, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4369

vector.body4369:                                  ; preds = %vector.body4369, %vector.ph4365
  %index4370 = phi i64 [ 0, %vector.ph4365 ], [ %index.next4381, %vector.body4369 ] ; 2 uses
  %i.le = trunc i64 %index4370 to i32
  %i.lf = add i32 %i.bw, %i.le                    ; 2 uses
  %i.lg = add i32 %invariant.op2959, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lh ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32 ; 2 uses
  %wide.load4371 = load <4 x double>, ptr %i.li, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %wide.load4372 = load <4 x double>, ptr %i.lj, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %i.lk = sub i32 %i.lf, %i.br                    ; 2 uses
  %i.ll = add i32 %i.cc, %i.lk
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %wide.load4373 = load <4 x double>, ptr %i.ln, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %wide.load4374 = load <4 x double>, ptr %i.lo, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %i.lp = fneg <4 x double> %wide.load4373
  %i.lq = fneg <4 x double> %wide.load4374
  %i.lr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lp, <4 x double> %broadcast.splat4376, <4 x double> %wide.load4371)
  %i.ls = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lq, <4 x double> %broadcast.splat4376, <4 x double> %wide.load4372)
  %i.lt = add i32 %i.gx, %i.lk
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %wide.load4377 = load <4 x double>, ptr %i.lv, align 8, !tbaa !153, !alias.scope !165
  %wide.load4378 = load <4 x double>, ptr %i.lw, align 8, !tbaa !153, !alias.scope !165
  %i.lx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lc, <4 x double> %wide.load4377, <4 x double> %i.lr)
  %i.ly = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lc, <4 x double> %wide.load4378, <4 x double> %i.ls)
  %i.lz = fmul <4 x double> %wide.load4373, %broadcast.splat4380
  %i.ma = fmul <4 x double> %wide.load4374, %broadcast.splat4380
  %i.mb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lz, <4 x double> %broadcast.splat4368, <4 x double> %i.lx)
  %i.mc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ma, <4 x double> %broadcast.splat4368, <4 x double> %i.ly)
  store <4 x double> %i.mb, ptr %i.li, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  store <4 x double> %i.mc, ptr %i.lj, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %index.next4381 = add nuw i64 %index4370, 8     ; 2 uses
  %i.md = icmp eq i64 %index.next4381, %n.vec4366
  br i1 %i.md, label %middle.block4382, label %vector.body4369, !llvm.loop !21

middle.block4382:                                 ; preds = %vector.body4369
  %cmp.n4383 = icmp eq i64 %13, %n.vec4366
  br i1 %cmp.n4383, label %._crit_edge2958, label %scalar.ph4363.preheader

scalar.ph4363.preheader:                          ; preds = %vector.memcheck4327, %vector.scevcheck4326, %.lr.ph2957, %middle.block4382
  %indvars.iv3545.ph = phi i64 [ %i.he, %vector.memcheck4327 ], [ %i.he, %vector.scevcheck4326 ], [ %i.he, %.lr.ph2957 ], [ %i.kz, %middle.block4382 ] ; 5 uses
  %i.me = trunc i64 %indvars.iv3545.ph to i32     ; 2 uses
  %i.mf = sub i32 %indvars.iv3548, %i.me
  %xtraiter4668 = and i32 %i.mf, 1
  %lcmp.mod4669.not = icmp eq i32 %xtraiter4668, 0
  br i1 %lcmp.mod4669.not, label %scalar.ph4363.prol.loopexit, label %scalar.ph4363.prol

scalar.ph4363.prol:                               ; preds = %scalar.ph4363.preheader
  %i.mg = trunc i64 %indvars.iv3545.ph to i32
  %.reass2960.prol = add i32 %invariant.op2959, %i.mg
  %i.mh = sext i32 %.reass2960.prol to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mh ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !153
  %i.mk = trunc i64 %indvars.iv3545.ph to i32
  %i.ml = sub i32 %i.mk, %i.br                    ; 2 uses
  %i.mm = add i32 %i.cc, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mn
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !153 ; 2 uses
  %i.mq = load double, ptr %i.kl, align 8, !tbaa !153
  %i.mr = fneg double %i.mp
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %i.mq, double %i.mj)
  %i.mt = load double, ptr %i.ko, align 8, !tbaa !153 ; 2 uses
  %i.mu = add i32 %i.gx, %i.ml
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mv
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !153
  %i.my = fneg double %i.mt
  %i.mz = call double @llvm.fmuladd.f64(double %i.my, double %i.mx, double %i.ms)
  %i.na = load double, ptr %i.gz, align 8, !tbaa !153
  %i.nb = fmul double %i.mp, %i.na
  %i.nc = call double @llvm.fmuladd.f64(double %i.nb, double %i.mt, double %i.mz)
  store double %i.nc, ptr %i.mi, align 8, !tbaa !153
  %indvars.iv.next3546.prol = add i64 %indvars.iv3545.ph, 1
  br label %scalar.ph4363.prol.loopexit

scalar.ph4363.prol.loopexit:                      ; preds = %scalar.ph4363.prol, %scalar.ph4363.preheader
  %indvars.iv3545.unr = phi i64 [ %indvars.iv3545.ph, %scalar.ph4363.preheader ], [ %indvars.iv.next3546.prol, %scalar.ph4363.prol ]
  %i.nd = icmp eq i32 %i.jm, %i.me
  br i1 %i.nd, label %._crit_edge2958, label %scalar.ph4363

scalar.ph4363:                                    ; preds = %scalar.ph4363.prol.loopexit, %scalar.ph4363
  %indvars.iv3545 = phi i64 [ %indvars.iv.next3546.1, %scalar.ph4363 ], [ %indvars.iv3545.unr, %scalar.ph4363.prol.loopexit ] ; 4 uses
  %i.ne = trunc i64 %indvars.iv3545 to i32
  %.reass2960 = add i32 %invariant.op2959, %i.ne
  %i.nf = sext i32 %.reass2960 to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nf ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !153
  %i.ni = trunc i64 %indvars.iv3545 to i32
  %i.nj = sub i32 %i.ni, %i.br                    ; 2 uses
  %i.nk = add i32 %i.cc, %i.nj
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !153 ; 2 uses
  %i.no = load double, ptr %i.kl, align 8, !tbaa !153
  %i.np = fneg double %i.nn
  %i.nq = call double @llvm.fmuladd.f64(double %i.np, double %i.no, double %i.nh)
  %i.nr = load double, ptr %i.ko, align 8, !tbaa !153 ; 2 uses
  %i.ns = add i32 %i.gx, %i.nj
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nt
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !153
  %i.nw = fneg double %i.nr
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %i.nv, double %i.nq)
  %i.ny = load double, ptr %i.gz, align 8, !tbaa !153
  %i.nz = fmul double %i.nn, %i.ny
  %i.oa = call double @llvm.fmuladd.f64(double %i.nz, double %i.nr, double %i.nx)
  store double %i.oa, ptr %i.ng, align 8, !tbaa !153
  %indvars.iv.next3546 = add i64 %indvars.iv3545, 1 ; 2 uses
  %i.ob = trunc i64 %indvars.iv.next3546 to i32
  %.reass2960.1 = add i32 %invariant.op2959, %i.ob
  %i.oc = sext i32 %.reass2960.1 to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.oc ; 2 uses
  %i.oe = load double, ptr %i.od, align 8, !tbaa !153
  %i.of = trunc i64 %indvars.iv.next3546 to i32
  %i.og = sub i32 %i.of, %i.br                    ; 2 uses
  %i.oh = add i32 %i.cc, %i.og
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !153 ; 2 uses
  %i.ol = load double, ptr %i.kl, align 8, !tbaa !153
  %i.om = fneg double %i.ok
  %i.on = call double @llvm.fmuladd.f64(double %i.om, double %i.ol, double %i.oe)
  %i.oo = load double, ptr %i.ko, align 8, !tbaa !153 ; 2 uses
  %i.op = add i32 %i.gx, %i.og
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.oq
  %i.os = load double, ptr %i.or, align 8, !tbaa !153
  %i.ot = fneg double %i.oo
  %i.ou = call double @llvm.fmuladd.f64(double %i.ot, double %i.os, double %i.on)
  %i.ov = load double, ptr %i.gz, align 8, !tbaa !153
  %i.ow = fmul double %i.ok, %i.ov
  %i.ox = call double @llvm.fmuladd.f64(double %i.ow, double %i.oo, double %i.ou)
  store double %i.ox, ptr %i.od, align 8, !tbaa !153
  %indvars.iv.next3546.1 = add i64 %indvars.iv3545, 2 ; 2 uses
  %lftr.wideiv3550.1 = trunc i64 %indvars.iv.next3546.1 to i32
  %exitcond3551.not.1 = icmp eq i32 %indvars.iv3548, %lftr.wideiv3550.1
  br i1 %exitcond3551.not.1, label %._crit_edge2958, label %scalar.ph4363, !llvm.loop !22

._crit_edge2958:                                  ; preds = %scalar.ph4363.prol.loopexit, %scalar.ph4363, %middle.block4382
  br i1 %.not26972963, label %._crit_edge2967, label %iter.check4310

iter.check4310:                                   ; preds = %._crit_edge2958
  %i.oy = trunc i64 %indvars.iv3555 to i32        ; 2 uses
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  store i32 %i.bwa, ptr %.sink4175, align 4, !tbaa !151
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4233, %scalar.ph, %middle.block4242, %middle.block, %.loopexit2884.sink.split, %._crit_edge3189, %._crit_edge3107, %bb.bm, %bb.di, %._crit_edge3198, %._crit_edge3116
  %i.bwb = phi i32 [ %.pre3888, %._crit_edge3198 ], [ %.pre3888, %bb.di ], [ %.pre3864, %._crit_edge3116 ], [ %.pre3864, %bb.bm ], [ %.pre3860, %._crit_edge3107 ], [ %.pre3884, %._crit_edge3189 ], [ %.ph4084.sink, %.loopexit2884.sink.split ], [ %.pre3888, %middle.block ], [ %.pre3864, %middle.block4242 ], [ %.pre3888, %scalar.ph ], [ %.pre3864, %scalar.ph4233 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3198 ], [ %.025322918, %bb.di ], [ %.025322917, %._crit_edge3116 ], [ %.025322917, %bb.bm ], [ %.025322917, %._crit_edge3107 ], [ %.025322918, %._crit_edge3189 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4242 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4233 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3198 ], [ %.1253927832803, %bb.di ], [ %.1253927812790, %._crit_edge3116 ], [ %.1253927812790, %bb.bm ], [ %.1253927812790, %._crit_edge3107 ], [ %.1253927832803, %._crit_edge3189 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4242 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4233 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3198 ], [ %.1254327802805, %bb.di ], [ %.1254327782792, %._crit_edge3116 ], [ %.1254327782792, %bb.bm ], [ %.1254327782792, %._crit_edge3107 ], [ %.1254327802805, %._crit_edge3189 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4242 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4233 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3198 ], [ %.1254827772807, %bb.di ], [ %.1254827752794, %._crit_edge3116 ], [ %.1254827752794, %bb.bm ], [ %.1254827752794, %._crit_edge3107 ], [ %.1254827772807, %._crit_edge3189 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4242 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4233 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3198 ], [ %.1260627742809, %bb.di ], [ %.1260627722796, %._crit_edge3116 ], [ %.1260627722796, %bb.bm ], [ %.1260627722796, %._crit_edge3107 ], [ %.1260627742809, %._crit_edge3189 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4242 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4233 ]
  %.pre3782.pre = load i32, ptr %2, align 4, !tbaa !151
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bv, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.by, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3505 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bwc = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4131 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwc
  %invariant.gep4129 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwc ; 3 uses
  %.326083496 = add i32 %i.n, -1
  %.326083497 = add i32 %i.n, -1
  %invariant.op4764 = sub i32 1, %i.ay
  %invariant.op4765 = sub i32 2, %i.ay
  %invariant.op4766 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3502 = add i32 %i.n, -1
  %i.bwd = add i32 %i.n, -1
  %scevgep4503 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4507 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4509 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4563 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4565 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4568 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4570 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4572 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bwe = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4574 = getelementptr i8, ptr %i.bwe, i64 16
  %invariant.op4785 = sub i32 1, %i.ay
  %invariant.op4786 = sub i32 2, %i.ay
  %invariant.op4787 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3814 = phi i32 [ %.pre3781, %.outer.us.preheader ], [ %.pre3814.be, %.outer.us.backedge ] ; 6 uses
  %i.bwf = phi i32 [ %i.bq, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983203.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983203.us, label %bb.dj, label %.lr.ph3206.us

bb.dj:                                            ; preds = %.lr.ph3206.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3206.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.czf, %.lr.ph3206.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.czi, %.lr.ph3206.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bwg = sub nsw i32 %.22607.ph.us, %.pre3814   ; 2 uses
  %i.bwh = icmp slt i32 %i.bwg, 2
  br i1 %i.bwh, label %.loopexit2877, label %bb.dk

bb.dk:                                            ; preds = %.loopexit2878.us, %bb.dj
  %.125332894.us = phi i32 [ 0, %bb.dj ], [ 1, %.loopexit2878.us ]
  %.not26982891.us = phi i1 [ true, %bb.dj ], [ false, %.loopexit2878.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bwg, %bb.dj ], [ %i.czb, %.loopexit2878.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dj ], [ %i.cza, %.loopexit2878.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dj ], [ %i.czf, %.loopexit2878.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dj ], [ %i.czi, %.loopexit2878.us ] ; 2 uses
  %i.bwi = load i32, ptr %i.l, align 4, !tbaa !151 ; 6 uses
  %i.bwj = sub nsw i32 %i.ay, %i.bwi
  %i.bwk = icmp slt i32 %.32608.us, %i.bwj
  br i1 %i.bwk, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bwl = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge.us = phi i32 [ %i.bwl, %bb.dl ], [ %i.ay, %bb.dk ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891.us, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bwm = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bwn = sext i32 %i.bwm to i64
  %i.bwo = getelementptr [8 x i8], ptr %i.s, i64 %i.bwn ; 2 uses
  %i.bwp = getelementptr i8, ptr %i.bwo, i64 8
  %i.bwq = load double, ptr %i.bwp, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  %.not27023360.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023360.us, label %._crit_edge3364.us, label %.lr.ph3363.us

.lr.ph3363.us.new:                                ; preds = %.prol.loopexit4708, %.lr.ph3363.us.new
  %indvars.iv3714 = phi i64 [ %indvars.iv.next3715.3, %.lr.ph3363.us.new ], [ %indvars.iv3714.unr, %.prol.loopexit4708 ] ; 6 uses
  %i.bwr = mul nsw i64 %indvars.iv3714, %i.bb
  %i.bws = trunc nsw i64 %indvars.iv3714 to i32
  %i.bwt = sub i32 %i.czk, %i.bws
  %i.bwu = sext i32 %i.bwt to i64
  %i.bwv = getelementptr [8 x i8], ptr %i.p, i64 %i.bwr
  %i.bww = getelementptr [8 x i8], ptr %i.bwv, i64 %i.bwu ; 2 uses
  %i.bwx = load double, ptr %i.bww, align 8, !tbaa !153
  %i.bwy = fdiv double %i.bwx, %i.bwq
  store double %i.bwy, ptr %i.bww, align 8, !tbaa !153
  %indvars.iv.next3715 = add nsw i64 %indvars.iv3714, 1 ; 2 uses
  %i.bwz = mul nsw i64 %indvars.iv.next3715, %i.bb
  %i.bxa = trunc nsw i64 %indvars.iv.next3715 to i32
  %i.bxb = sub i32 %i.czk, %i.bxa
  %i.bxc = sext i32 %i.bxb to i64
  %i.bxd = getelementptr [8 x i8], ptr %i.p, i64 %i.bwz
  %i.bxe = getelementptr [8 x i8], ptr %i.bxd, i64 %i.bxc ; 2 uses
  %i.bxf = load double, ptr %i.bxe, align 8, !tbaa !153
  %i.bxg = fdiv double %i.bxf, %i.bwq
  store double %i.bxg, ptr %i.bxe, align 8, !tbaa !153
  %indvars.iv.next3715.1 = add nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.bxh = mul nsw i64 %indvars.iv.next3715.1, %i.bb
  %i.bxi = trunc nsw i64 %indvars.iv.next3715.1 to i32
  %i.bxj = sub i32 %i.czk, %i.bxi
  %i.bxk = sext i32 %i.bxj to i64
  %i.bxl = getelementptr [8 x i8], ptr %i.p, i64 %i.bxh
  %i.bxm = getelementptr [8 x i8], ptr %i.bxl, i64 %i.bxk ; 2 uses
  %i.bxn = load double, ptr %i.bxm, align 8, !tbaa !153
  %i.bxo = fdiv double %i.bxn, %i.bwq
  store double %i.bxo, ptr %i.bxm, align 8, !tbaa !153
  %indvars.iv.next3715.2 = add nsw i64 %indvars.iv3714, 3 ; 2 uses
  %i.bxp = mul nsw i64 %indvars.iv.next3715.2, %i.bb
  %i.bxq = trunc nsw i64 %indvars.iv.next3715.2 to i32
  %i.bxr = sub i32 %i.czk, %i.bxq
  %i.bxs = sext i32 %i.bxr to i64
  %i.bxt = getelementptr [8 x i8], ptr %i.p, i64 %i.bxp
  %i.bxu = getelementptr [8 x i8], ptr %i.bxt, i64 %i.bxs ; 2 uses
  %i.bxv = load double, ptr %i.bxu, align 8, !tbaa !153
  %i.bxw = fdiv double %i.bxv, %i.bwq
  store double %i.bxw, ptr %i.bxu, align 8, !tbaa !153
  %indvars.iv.next3715.3 = add nsw i64 %indvars.iv3714, 4 ; 2 uses
  %lftr.wideiv3717.3 = trunc i64 %indvars.iv.next3715.3 to i32
  %exitcond3718.not.3 = icmp eq i32 %i.czk, %lftr.wideiv3717.3
  br i1 %exitcond3718.not.3, label %._crit_edge3364.us, label %.lr.ph3363.us.new, !llvm.loop !78

._crit_edge3364.us:                               ; preds = %.prol.loopexit4708, %.lr.ph3363.us.new, %bb.dn
  %i.bxx = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.bxx, ptr %i.c, align 4, !tbaa !151
  %i.bxy = add nsw i32 %.pre3814, %.32608.us      ; 4 uses
  store i32 %i.bxy, ptr %i.a, align 4, !tbaa !151
  %i.bxz = call i32 @llvm.smin.i32(i32 %i.bxx, i32 %i.bxy) ; 9 uses
  %.not27043365.us = icmp sgt i32 %.32608.us, %i.bxz
  br i1 %.not27043365.us, label %._crit_edge3369.us, label %iter.check4634

vec.epilog.scalar.ph4635:                         ; preds = %vec.epilog.scalar.ph4635, %vec.epilog.scalar.ph4635.preheader.new
  %indvars.iv3719 = phi i64 [ %indvars.iv3719.unr, %vec.epilog.scalar.ph4635.preheader.new ], [ %indvars.iv.next3720.3, %vec.epilog.scalar.ph4635 ] ; 5 uses
  %i.bya = trunc nsw i64 %indvars.iv3719 to i32
  %i.byb = add i32 %i.czy, %i.bya
  %i.byc = sext i32 %i.byb to i64
  %i.byd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byc ; 2 uses
  %i.bye = load double, ptr %i.byd, align 8, !tbaa !153
  %i.byf = fdiv double %i.bye, %i.bwq
  store double %i.byf, ptr %i.byd, align 8, !tbaa !153
  %i.byg = trunc i64 %indvars.iv3719 to i32
  %.reass4772 = add i32 %i.byg, %invariant.op4771
  %i.byh = sext i32 %.reass4772 to i64
  %i.byi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byh ; 2 uses
  %i.byj = load double, ptr %i.byi, align 8, !tbaa !153
  %i.byk = fdiv double %i.byj, %i.bwq
  store double %i.byk, ptr %i.byi, align 8, !tbaa !153
  %i.byl = trunc i64 %indvars.iv3719 to i32
  %.reass4774 = add i32 %i.byl, %invariant.op4773
  %i.bym = sext i32 %.reass4774 to i64
  %i.byn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bym ; 2 uses
  %i.byo = load double, ptr %i.byn, align 8, !tbaa !153
  %i.byp = fdiv double %i.byo, %i.bwq
  store double %i.byp, ptr %i.byn, align 8, !tbaa !153
  %i.byq = trunc i64 %indvars.iv3719 to i32
  %.reass4776 = add i32 %i.byq, %invariant.op4775
  %i.byr = sext i32 %.reass4776 to i64
  %i.bys = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byr ; 2 uses
  %i.byt = load double, ptr %i.bys, align 8, !tbaa !153
  %i.byu = fdiv double %i.byt, %i.bwq
  store double %i.byu, ptr %i.bys, align 8, !tbaa !153
  %indvars.iv.next3720.3 = add nuw nsw i64 %indvars.iv3719, 4 ; 2 uses
  %lftr.wideiv3722.3 = trunc i64 %indvars.iv.next3720.3 to i32
  %exitcond3723.not.3 = icmp eq i32 %i.daa, %lftr.wideiv3722.3
  br i1 %exitcond3723.not.3, label %._crit_edge3369.us, label %vec.epilog.scalar.ph4635, !llvm.loop !79

._crit_edge3369.us:                               ; preds = %vec.epilog.scalar.ph4635.prol.loopexit, %vec.epilog.scalar.ph4635, %middle.block4630, %vec.epilog.middle.block4646, %._crit_edge3364.us
  %i.byv = add i32 %i.bwi, %.32608.us             ; 7 uses
  %i.byw = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053383.us = icmp slt i32 %i.bwi, 1
  br i1 %.not27053383.us, label %bb.dp, label %.lr.ph3387.us

bb.do:                                            ; preds = %.lr.ph3387.us, %._crit_edge3379.us
  %indvar4560 = phi i64 [ 0, %.lr.ph3387.us ], [ %indvar.next4561, %._crit_edge3379.us ] ; 8 uses
  %indvar4500 = phi i32 [ 0, %.lr.ph3387.us ], [ %indvar.next4501, %._crit_edge3379.us ] ; 4 uses
  %indvars.iv3724 = phi i64 [ %i.ddt, %.lr.ph3387.us ], [ %indvars.iv.next3725, %._crit_edge3379.us ] ; 12 uses
  %.182575.neg3385.us.in = phi i32 [ %.32608.us, %.lr.ph3387.us ], [ %i.cae, %._crit_edge3379.us ]
  %14 = add i64 %indvar4560, %i.ddt
  %i.byx = trunc i64 %indvar4560 to i32
  %i.byy = mul i32 %i.n, %i.byx
  %i.byz = add i32 %i.byy, %i.deq
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = shl nsw i64 %i.bza, 3                  ; 2 uses
  %scevgep4564 = getelementptr i8, ptr %scevgep4563, i64 %i.bzb ; 5 uses
  %smax4566 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %i.bzc = add i64 %indvar4560, %i.ddt
  %i.bzd = sub i64 %smax4566, %i.bzc              ; 2 uses
  %i.bze = shl nsw i64 %i.bzd, 3                  ; 2 uses
  %i.bzf = getelementptr i8, ptr %scevgep4565, i64 %i.bze
  %scevgep4567 = getelementptr i8, ptr %i.bzf, i64 %i.bzb ; 5 uses
  %i.bzg = trunc i64 %indvar4560 to i32
  %i.bzh = add i32 %i.der, %i.bzg
  %i.bzi = sext i32 %i.bzh to i64
  %i.bzj = add i64 %i.bzd, %i.bzi
  %i.bzk = shl i64 %i.bzj, 3
  %scevgep4569 = getelementptr i8, ptr %scevgep4568, i64 %i.bzk
  %i.bzl = trunc i64 %indvar4560 to i32
  %i.bzm = add i32 %i.des, %i.bzl
  %i.bzn = sext i32 %i.bzm to i64
  %i.bzo = shl nsw i64 %i.bzn, 3                  ; 2 uses
  %scevgep4571 = getelementptr i8, ptr %scevgep4570, i64 %i.bzo
  %i.bzp = getelementptr i8, ptr %scevgep4572, i64 %i.bze
  %scevgep4573 = getelementptr i8, ptr %i.bzp, i64 %i.bzo
  %i.bzq = mul i32 %.0255729743492, %indvar4500
  %i.bzr = add i32 %i.ddz, %i.bzq
  %i.bzs = sext i32 %i.bzr to i64                 ; 2 uses
  %i.bzt = shl nsw i64 %i.bzs, 3
  %scevgep4504 = getelementptr i8, ptr %scevgep4503, i64 %i.bzt ; 2 uses
  %i.bzu = add nsw i64 %i.dee, %i.bzs
  %i.bzv = shl nsw i64 %i.bzu, 3
  %scevgep4506 = getelementptr i8, ptr %scevgep4505, i64 %i.bzv ; 2 uses
  %i.bzw = add i32 %i.def, %indvar4500
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = shl nsw i64 %i.bzx, 3
  %scevgep4508 = getelementptr i8, ptr %scevgep4507, i64 %i.bzy ; 2 uses
  %i.bzz = mul i32 %.0255729743492, %indvar4500
  %i.caa = add i32 %i.ddz, %i.bzz                 ; 2 uses
  %i.cab = trunc i64 %indvars.iv3724 to i32
  %i.cac = mul i32 %i.n, %i.cab
  %i.cad = sub i32 %i.cac, %.182575.neg3385.us.in ; 9 uses
  %i.cae = trunc i64 %indvars.iv3724 to i32       ; 3 uses
  %.reass3381.us.reass.reass = add i32 %i.cae, %invariant.op4784 ; 2 uses
  %i.caf = add i32 %.reass3381.us.reass.reass, %i.ddo ; 3 uses
  %i.cag = sext i32 %i.caf to i64
  %i.cah = getelementptr [8 x i8], ptr %i.p, i64 %i.cag ; 4 uses
  %i.cai = add i32 %.reass3381.us.reass.reass, %i.bwm ; 3 uses
  %i.caj = sext i32 %i.cai to i64
  %i.cak = getelementptr [8 x i8], ptr %i.s, i64 %i.caj ; 4 uses
  %i.cal = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %reass.sub4649 = sub i64 %i.cal, %14
  %i.cam = add i64 %reass.sub4649, 1              ; 3 uses
  %min.iters.check4596 = icmp ult i64 %i.cam, 12
  br i1 %min.iters.check4596, label %scalar.ph4595.preheader, label %vector.scevcheck4558

vector.scevcheck4558:                             ; preds = %bb.do
  %i.can = trunc i64 %indvar4560 to i32
  %i.cao = mul i32 %i.n, %i.can
  %i.cap = add i32 %i.cao, %i.deq                 ; 2 uses
  %smax4559 = call i64 @llvm.smax.i64(i64 %indvars.iv3724, i64 %i.ddu)
  %i.caq = add i64 %indvar4560, %i.ddt
  %i.car = sub i64 %smax4559, %i.caq              ; 2 uses
  %i.cas = trunc i64 %i.car to i32                ; 3 uses
  %i.cat = add i32 %i.cap, %i.cas
  %i.cau = icmp slt i32 %i.cat, %i.cap
  %i.cav = add i32 %i.cai, %i.cas
  %i.caw = icmp slt i32 %i.cav, %i.cai
  %i.cax = icmp ugt i64 %i.car, 4294967295
  %i.cay = or i1 %i.caw, %i.cax
  %i.caz = add i32 %i.caf, %i.cas
  %i.cba = icmp slt i32 %i.caz, %i.caf
  %i.cbb = or i1 %i.cau, %i.cay
  %i.cbc = or i1 %i.cba, %i.cbb
  br i1 %i.cbc, label %scalar.ph4595.preheader, label %vector.memcheck4562

vector.memcheck4562:                              ; preds = %vector.scevcheck4558
  %bound04576 = icmp ult ptr %scevgep4564, %scevgep4508
  %bound14577 = icmp ult ptr %i.cak, %scevgep4567
  %found.conflict4578 = and i1 %bound04576, %bound14577
  %bound04579 = icmp ult ptr %scevgep4564, %scevgep4569
  %bound14580 = icmp ult ptr %i.cak, %scevgep4567
  %found.conflict4581 = and i1 %bound04579, %bound14580
  %conflict.rdx4582 = or i1 %found.conflict4578, %found.conflict4581
  %bound04583 = icmp ult ptr %scevgep4564, %scevgep4571
  %bound14584 = icmp ult ptr %i.cah, %scevgep4567
  %found.conflict4585 = and i1 %bound04583, %bound14584
  %conflict.rdx4586 = or i1 %conflict.rdx4582, %found.conflict4585
  %bound04587 = icmp ult ptr %scevgep4564, %scevgep4573
  %bound14588 = icmp ult ptr %i.cah, %scevgep4567
  %found.conflict4589 = and i1 %bound04587, %bound14588
  %conflict.rdx4590 = or i1 %conflict.rdx4586, %found.conflict4589
  %bound04591 = icmp ult ptr %scevgep4564, %scevgep4575
  %bound14592 = icmp ult ptr %i.ddr, %scevgep4567
  %found.conflict4593 = and i1 %bound04591, %bound14592
  %conflict.rdx4594 = or i1 %conflict.rdx4590, %found.conflict4593
  br i1 %conflict.rdx4594, label %scalar.ph4595.preheader, label %vector.ph4597

vector.ph4597:                                    ; preds = %vector.memcheck4562
  %n.vec4598 = and i64 %i.cam, -4                 ; 3 uses
  %i.cbd = add i64 %indvars.iv3724, %n.vec4598
  %i.cbe = load double, ptr %i.cah, align 8, !tbaa !153, !alias.scope !170
  %broadcast.splatinsert4605 = insertelement <4 x double> poison, double %i.cbe, i64 0
  %broadcast.splat4606 = shufflevector <4 x double> %broadcast.splatinsert4605, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cbf = load double, ptr %i.cak, align 8, !tbaa !153, !alias.scope !171
  %broadcast.splatinsert4599 = insertelement <4 x double> poison, double %i.cbf, i64 0
  %broadcast.splat4600 = shufflevector <4 x double> %broadcast.splatinsert4599, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbg = fneg <4 x double> %broadcast.splat4600
  %i.cbh = load double, ptr %i.ddr, align 8, !tbaa !153, !alias.scope !172
  %broadcast.splatinsert4608 = insertelement <4 x double> poison, double %i.cbh, i64 0
  %broadcast.splat4609 = shufflevector <4 x double> %broadcast.splatinsert4608, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4601

vector.body4601:                                  ; preds = %vector.body4601, %vector.ph4597
  %index4602 = phi i64 [ 0, %vector.ph4597 ], [ %index.next4610, %vector.body4601 ] ; 2 uses
  %i.cbi = add i64 %indvars.iv3724, %index4602
  %i.cbj = trunc nsw i64 %i.cbi to i32            ; 2 uses
  %i.cbk = add i32 %i.cad, %i.cbj
  %i.cbl = sext i32 %i.cbk to i64
  %i.cbm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbl ; 2 uses
  %wide.load4603 = load <4 x double>, ptr %i.cbm, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %.reass4778 = add i32 %i.cbj, %invariant.op4777 ; 2 uses
  %i.cbn = add nsw i32 %.reass4778, %i.bwm
  %i.cbo = sext i32 %i.cbn to i64
  %i.cbp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbo
  %wide.load4604 = load <4 x double>, ptr %i.cbp, align 8, !tbaa !153, !alias.scope !175 ; 2 uses
  %i.cbq = fneg <4 x double> %wide.load4604
  %i.cbr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbq, <4 x double> %broadcast.splat4606, <4 x double> %wide.load4603)
  %i.cbs = add nsw i32 %.reass4778, %i.ddo
  %i.cbt = sext i32 %i.cbs to i64
  %i.cbu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbt
  %wide.load4607 = load <4 x double>, ptr %i.cbu, align 8, !tbaa !153, !alias.scope !176
  %i.cbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbg, <4 x double> %wide.load4607, <4 x double> %i.cbr)
  %i.cbw = fmul <4 x double> %wide.load4604, %broadcast.splat4609
  %i.cbx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbw, <4 x double> %broadcast.splat4600, <4 x double> %i.cbv)
  store <4 x double> %i.cbx, ptr %i.cbm, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %index.next4610 = add nuw i64 %index4602, 4     ; 2 uses
  %i.cby = icmp eq i64 %index.next4610, %n.vec4598
  br i1 %i.cby, label %middle.block4611, label %vector.body4601, !llvm.loop !87

middle.block4611:                                 ; preds = %vector.body4601
  %cmp.n4612 = icmp eq i64 %i.cam, %n.vec4598
  br i1 %cmp.n4612, label %.loopexit, label %scalar.ph4595.preheader

scalar.ph4595.preheader:                          ; preds = %vector.memcheck4562, %vector.scevcheck4558, %bb.do, %middle.block4611
  %indvars.iv3726.ph = phi i64 [ %indvars.iv3724, %vector.memcheck4562 ], [ %indvars.iv3724, %vector.scevcheck4558 ], [ %indvars.iv3724, %bb.do ], [ %i.cbd, %middle.block4611 ]
  br label %scalar.ph4595

scalar.ph4595:                                    ; preds = %scalar.ph4595.preheader, %scalar.ph4595
  %indvars.iv3726 = phi i64 [ %indvars.iv.next3727, %scalar.ph4595 ], [ %indvars.iv3726.ph, %scalar.ph4595.preheader ] ; 3 uses
  %i.cbz = trunc nsw i64 %indvars.iv3726 to i32   ; 2 uses
  %i.cca = add i32 %i.cad, %i.cbz
  %i.ccb = sext i32 %i.cca to i64
  %i.ccc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccb ; 2 uses
  %i.ccd = load double, ptr %i.ccc, align 8, !tbaa !153
  %.reass3371.us.reass.reass = add i32 %i.cbz, %invariant.op4779 ; 2 uses
  %i.cce = add nsw i32 %.reass3371.us.reass.reass, %i.bwm
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccf
  %i.cch = load double, ptr %i.ccg, align 8, !tbaa !153 ; 2 uses
  %i.cci = load double, ptr %i.cah, align 8, !tbaa !153
  %i.ccj = fneg double %i.cch
  %i.cck = call double @llvm.fmuladd.f64(double %i.ccj, double %i.cci, double %i.ccd)
  %i.ccl = load double, ptr %i.cak, align 8, !tbaa !153 ; 2 uses
  %i.ccm = add nsw i32 %.reass3371.us.reass.reass, %i.ddo
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccn
  %i.ccp = load double, ptr %i.cco, align 8, !tbaa !153
  %i.ccq = fneg double %i.ccl
  %i.ccr = call double @llvm.fmuladd.f64(double %i.ccq, double %i.ccp, double %i.cck)
  %i.ccs = load double, ptr %i.ddr, align 8, !tbaa !153
  %i.cct = fmul double %i.cch, %i.ccs
  %i.ccu = call double @llvm.fmuladd.f64(double %i.cct, double %i.ccl, double %i.ccr)
  store double %i.ccu, ptr %i.ccc, align 8, !tbaa !153
  %indvars.iv.next3727 = add nsw i64 %indvars.iv3726, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3726, %i.ddu
  br i1 %.not2726.us.not, label %scalar.ph4595, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph4595, %middle.block4611
  br i1 %.not2728.not3375.us, label %iter.check4542, label %._crit_edge3379.us

vec.epilog.scalar.ph4543:                         ; preds = %vec.epilog.scalar.ph4543.prol.loopexit, %vec.epilog.scalar.ph4543
  %indvars.iv3729 = phi i64 [ %indvars.iv.next3730.3, %vec.epilog.scalar.ph4543 ], [ %indvars.iv3729.unr, %vec.epilog.scalar.ph4543.prol.loopexit ] ; 4 uses
  %i.ccv = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.ccw = trunc i64 %indvars.iv3729 to i32
  %i.ccx = add i32 %i.ccw, 1                      ; 2 uses
  %i.ccy = add i32 %i.dds, %i.ccx
  %i.ccz = sext i32 %i.ccy to i64
  %i.cda = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccz
  %i.cdb = load double, ptr %i.cda, align 8, !tbaa !153
  %i.cdc = add i32 %i.cad, %i.ccx
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdd ; 2 uses
  %i.cdf = load double, ptr %i.cde, align 8, !tbaa !153
  %i.cdg = fneg double %i.ccv
  %i.cdh = call double @llvm.fmuladd.f64(double %i.cdg, double %i.cdb, double %i.cdf)
  store double %i.cdh, ptr %i.cde, align 8, !tbaa !153
  %i.cdi = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cdj = trunc i64 %indvars.iv3729 to i32
  %i.cdk = add i32 %i.cdj, 2                      ; 2 uses
  %i.cdl = add i32 %i.dds, %i.cdk
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdm
  %i.cdo = load double, ptr %i.cdn, align 8, !tbaa !153
  %i.cdp = add i32 %i.cad, %i.cdk
  %i.cdq = sext i32 %i.cdp to i64
  %i.cdr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdq ; 2 uses
  %i.cds = load double, ptr %i.cdr, align 8, !tbaa !153
  %i.cdt = fneg double %i.cdi
  %i.cdu = call double @llvm.fmuladd.f64(double %i.cdt, double %i.cdo, double %i.cds)
  store double %i.cdu, ptr %i.cdr, align 8, !tbaa !153
  %i.cdv = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cdw = trunc i64 %indvars.iv3729 to i32
  %i.cdx = add i32 %i.cdw, 3                      ; 2 uses
  %i.cdy = add i32 %i.dds, %i.cdx
  %i.cdz = sext i32 %i.cdy to i64
  %i.cea = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdz
  %i.ceb = load double, ptr %i.cea, align 8, !tbaa !153
  %i.cec = add i32 %i.cad, %i.cdx
  %i.ced = sext i32 %i.cec to i64
  %i.cee = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ced ; 2 uses
  %i.cef = load double, ptr %i.cee, align 8, !tbaa !153
  %i.ceg = fneg double %i.cdv
  %i.ceh = call double @llvm.fmuladd.f64(double %i.ceg, double %i.ceb, double %i.cef)
  store double %i.ceh, ptr %i.cee, align 8, !tbaa !153
  %indvars.iv.next3730.3 = add nsw i64 %indvars.iv3729, 4 ; 3 uses
  %i.cei = load double, ptr %i.dbo, align 8, !tbaa !153
  %i.cej = trunc nsw i64 %indvars.iv.next3730.3 to i32 ; 2 uses
  %i.cek = add i32 %i.dds, %i.cej
  %i.cel = sext i32 %i.cek to i64
  %i.cem = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cel
  %i.cen = load double, ptr %i.cem, align 8, !tbaa !153
  %i.ceo = add i32 %i.cad, %i.cej
  %i.cep = sext i32 %i.ceo to i64
  %i.ceq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cep ; 2 uses
  %i.cer = load double, ptr %i.ceq, align 8, !tbaa !153
  %i.ces = fneg double %i.cei
  %i.cet = call double @llvm.fmuladd.f64(double %i.ces, double %i.cen, double %i.cer)
  store double %i.cet, ptr %i.ceq, align 8, !tbaa !153
  %exitcond3733.not.3 = icmp eq i64 %indvars.iv.next3730.3, %wide.trip.count3732
  br i1 %exitcond3733.not.3, label %._crit_edge3379.us, label %vec.epilog.scalar.ph4543, !llvm.loop !89

._crit_edge3379.us:                               ; preds = %vec.epilog.scalar.ph4543.prol.loopexit, %vec.epilog.scalar.ph4543, %middle.block4538, %vec.epilog.middle.block4555, %.loopexit
  %indvars.iv.next3725 = add nsw i64 %indvars.iv3724, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3724, %i.ddu
  %indvar.next4501 = add i32 %indvar4500, 1
  %indvar.next4561 = add i64 %indvar4560, 1
  br i1 %.not2705.us.not, label %bb.do, label %._crit_edge3388.us, !llvm.loop !90

bb.dp:                                            ; preds = %._crit_edge3388.us, %._crit_edge3369.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
end_hunk_1
