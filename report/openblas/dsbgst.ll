Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@dsbgst_:bb.a

vec.epilog.vector.body4427:                       ; preds = %vec.epilog.vector.body4427, %vec.epilog.ph4423
  %index4428 = phi i64 [ %vec.epilog.resume.val4417, %vec.epilog.ph4423 ], [ %index.next4430, %vec.epilog.vector.body4427 ] ; 2 uses
  %i.fo = trunc i64 %index4428 to i32
  %.reass4751 = add i32 %i.fo, %invariant.op4750
  %i.fp = sext i32 %.reass4751 to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp ; 2 uses
  %wide.load4429 = load <4 x double>, ptr %i.fq, align 8, !tbaa !9
  %i.fr = fdiv <4 x double> %wide.load4429, %broadcast.splat4426
  store <4 x double> %i.fr, ptr %i.fq, align 8, !tbaa !9
  %index.next4430 = add nuw i64 %index4428, 4     ; 2 uses
  %i.fs = icmp eq i64 %index.next4430, %n.vec4424
  br i1 %i.fs, label %vec.epilog.middle.block4431, label %vec.epilog.vector.body4427, !llvm.loop !19

vec.epilog.middle.block4431:                      ; preds = %vec.epilog.vector.body4427
  %cmp.n4432 = icmp eq i64 %i.eo, %n.vec4424
  br i1 %cmp.n4432, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader

vec.epilog.scalar.ph4420.preheader:               ; preds = %vector.scevcheck4399, %iter.check4419, %vec.epilog.iter.check4421, %vec.epilog.middle.block4431
  %indvars.iv3551.ph = phi i64 [ %i.en, %iter.check4419 ], [ %i.en, %vector.scevcheck4399 ], [ %i.fb, %vec.epilog.iter.check4421 ], [ %i.fn, %vec.epilog.middle.block4431 ] ; 4 uses
  %i.ft = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4686 = and i64 %i.ft, 3                ; 2 uses
  %lcmp.mod4687.not = icmp eq i64 %xtraiter4686, 0
  br i1 %lcmp.mod4687.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol

vec.epilog.scalar.ph4420.prol:                    ; preds = %vec.epilog.scalar.ph4420.preheader, %vec.epilog.scalar.ph4420.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ] ; 2 uses
  %prol.iter4688 = phi i64 [ %prol.iter4688.next, %vec.epilog.scalar.ph4420.prol ], [ 0, %vec.epilog.scalar.ph4420.preheader ]
  %i.fu = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fu
  %i.fv = sext i32 %.reass.prol to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9
  %i.fy = fdiv double %i.fx, %i.ce
  store double %i.fy, ptr %i.fw, align 8, !tbaa !9
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4688.next = add i64 %prol.iter4688, 1 ; 2 uses
  %prol.iter4688.cmp.not = icmp eq i64 %prol.iter4688.next, %xtraiter4686
  br i1 %prol.iter4688.cmp.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol, !llvm.loop !20

vec.epilog.scalar.ph4420.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4420.prol, %vec.epilog.scalar.ph4420.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ]
  %i.fz = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader.new

vec.epilog.scalar.ph4420.preheader.new:           ; preds = %vec.epilog.scalar.ph4420.prol.loopexit
  %invariant.op4752.a = add i32 1, %invariant.op
  %invariant.op4753.a = add i32 2, %invariant.op
  %invariant.op4754.a = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4420

vec.epilog.scalar.ph4420:                         ; preds = %vec.epilog.scalar.ph4420, %vec.epilog.scalar.ph4420.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4420.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4420 ] ; 5 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.gb
  %i.gc = sext i32 %.reass to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !9
  %i.gf = fdiv double %i.ge, %i.ce
  store double %i.gf, ptr %i.gd, align 8, !tbaa !9
  %i.gg = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.gg, %invariant.op4752.a
  %i.gh = sext i32 %.reass.1.reass to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gh ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !9
  %i.gk = fdiv double %i.gj, %i.ce
  store double %i.gk, ptr %i.gi, align 8, !tbaa !9
  %i.gl = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gl, %invariant.op4753.a
  %i.gm = sext i32 %.reass.2.reass to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !9
  %i.gp = fdiv double %i.go, %i.ce
  store double %i.gp, ptr %i.gn, align 8, !tbaa !9
  %i.gq = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gq, %invariant.op4754.a
  %i.gr = sext i32 %.reass.3.reass to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %i.gu = fdiv double %i.gt, %i.ce
  store double %i.gu, ptr %i.gs, align 8, !tbaa !9
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4420, !llvm.loop !21

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4420.prol.loopexit, %vec.epilog.scalar.ph4420, %middle.block4415, %vec.epilog.middle.block4431, %._crit_edge2954
  %.not26772979 = icmp sgt i32 %i.bv, %i.br
  br i1 %.not26772979, label %bb.u, label %.lr.ph2983

.lr.ph2983:                                       ; preds = %._crit_edge2959
  %i.gv = mul i32 %i.bq, %i.n                     ; 6 uses
  %i.gw = add i32 %i.bw, %i.gv                    ; 6 uses
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.p, i64 %i.gx ; 5 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !8
  %i.gz = xor i32 %i.bs, -1
  %i.ha = add i32 %i.bq, %i.gz                    ; 3 uses
  store i32 %i.ha, ptr %i.d, align 4, !tbaa !8
  %.not26972969 = icmp sgt i32 %i.ek, %i.ha
  %i.hb = add i32 %.neg.le, %i.ac
  %invariant.op2985 = add i32 %i.by, %i.hb
  %i.hc = add i32 %i.gv, %.neg.le
  %invariant.op2974 = add i32 %i.hc, %i.bw        ; 3 uses
  %i.hd = sext i32 %i.bv to i64                   ; 6 uses
  %i.he = sub i32 %.02605.ph, %i.bs
  %i.hf = zext nneg i32 %i.ek to i64              ; 10 uses
  %i.hg = zext i32 %i.ha to i64                   ; 4 uses
  %i.hh = call i64 @llvm.usub.sat.i64(i64 %i.hg, i64 %i.hf)
  %i.hi = add i32 %i.bw, %i.ek
  %i.hj = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.hk = xor i32 %i.hj, -1
  %i.hl = add i32 %.02605.ph, %i.hk
  %i.hm = mul i32 %.0255729803502, %i.hl
  %i.hn = add i32 %i.hi, %i.hm
  %i.ho = add i32 %i.bw, 1
  %i.hp = add i32 %i.ho, %i.ek
  %i.hq = add i32 %i.hp, %i.gv
  %i.hr = sub i32 %i.hq, %.02605.ph               ; 2 uses
  %i.hs = add i32 %i.bw, %i.ek
  %i.ht = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 2 uses
  %i.hu = xor i32 %i.ht, -1
  %i.hv = add i32 %.02605.ph, %i.hu
  %i.hw = mul i32 %.0255729803502, %i.hv
  %i.hx = add i32 %i.hs, %i.hw
  %umax4280 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hg)
  %i.hy = shl nuw nsw i64 %umax4280, 3            ; 2 uses
  %i.hz = shl nuw nsw i64 %i.hf, 3                ; 2 uses
  %i.ia = sub nsw i64 %i.hy, %i.hz
  %scevgep4281 = getelementptr i8, ptr %scevgep4279, i64 %i.ia
  %i.ib = add i32 %i.bi, %i.by
  %i.ic = sub i32 %i.ib, %i.ht
  %i.id = add i32 %i.bw, 1
  %i.ie = add i32 %i.id, %i.ek
  %i.if = add i32 %i.ie, %i.gv
  %i.ig = sub i32 %i.if, %.02605.ph
  %i.ih = sext i32 %i.ig to i64
  %i.ii = shl nsw i64 %i.ih, 3                    ; 2 uses
  %scevgep4286 = getelementptr i8, ptr %scevgep4285, i64 %i.ii
  %i.ij = add nsw i64 %i.hy, %i.ii
  %i.ik = sub nsw i64 %i.ij, %i.hz
  %scevgep4288 = getelementptr i8, ptr %scevgep4287, i64 %i.ik
  %umax4293 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hg)
  %i.il = add nuw nsw i64 %umax4293, 1
  %i.im = sub nsw i64 %i.il, %i.hf                ; 7 uses
  %i.in = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.io = sub i32 %i.in, %i.bs
  %i.ip = add i32 %.02605.ph, -1                  ; 2 uses
  %i.iq = add i32 %i.ip, %i.bw
  %i.ir = sub i32 %i.ip, %i.in
  %i.is = mul i32 %.0255729803502, %i.ir
  %i.it = add i32 %i.iq, %i.is
  %i.iu = sub i32 %i.it, %i.in
  %i.iv = add i32 %i.bj, %i.by
  %i.iw = sub i32 %i.iv, %i.in                    ; 2 uses
  %i.ix = add i32 %i.bw, %i.gv
  %i.iy = sub i32 %i.ix, %i.in                    ; 2 uses
  %i.iz = add i32 %.02605.ph, -1                  ; 2 uses
  %i.ja = add i32 %i.iz, %i.bw
  %i.jb = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.jc = sub i32 %i.iz, %i.jb
  %i.jd = mul i32 %.0255729803502, %i.jc
  %i.je = add i32 %i.ja, %i.jd
  %i.jf = sub i32 %i.je, %i.jb
  %i.jg = sub i32 %i.jb, %i.bs
  %i.jh = add i32 %i.bo, %i.by
  %i.ji = sub i32 %i.jh, %i.jb                    ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 3                    ; 2 uses
  %scevgep4344 = getelementptr i8, ptr %scevgep4343, i64 %i.jk
  %scevgep4346 = getelementptr i8, ptr %scevgep4345, i64 %i.jk
  %i.jl = add i32 %i.bw, %i.gv
  %i.jm = sub i32 %i.jl, %i.jb                    ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = shl nsw i64 %i.jn, 3                    ; 2 uses
  %scevgep4351 = getelementptr i8, ptr %scevgep4350, i64 %i.jo
  %scevgep4353 = getelementptr i8, ptr %scevgep4352, i64 %i.jo
  %i.jp = shl nsw i64 %i.gx, 3
  %scevgep4356 = getelementptr i8, ptr %scevgep4355, i64 %i.jp
  %i.jq = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.jr = sub i32 %i.jq, %i.bs
  %min.iters.check4295 = icmp ult i64 %i.im, 4
  %i.js = trunc nuw i64 %i.hh to i32              ; 2 uses
  %i.jt = add i32 %i.hr, %i.js
  %i.ju = icmp slt i32 %i.jt, %i.hr
  %min.iters.check4297 = icmp ult i64 %i.im, 16
  %i.jv = and i64 %i.im, 12
  %n.vec4299 = and i64 %i.im, -16                 ; 4 uses
  %i.jw = add nsw i64 %n.vec4299, %i.hf
  %cmp.n4314 = icmp eq i64 %i.im, %n.vec4299
  %min.epilog.iters.check4320 = icmp eq i64 %i.jv, 0
  %n.vec4322 = and i64 %i.im, -4                  ; 3 uses
  %i.jx = add nsw i64 %n.vec4322, %i.hf
  %cmp.n4331 = icmp eq i64 %i.im, %n.vec4322
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph2983, %._crit_edge2973
  %indvar = phi i32 [ 0, %.lr.ph2983 ], [ %indvar.next, %._crit_edge2973 ] ; 12 uses
  %indvars.iv3565 = phi i64 [ %i.hd, %.lr.ph2983 ], [ %indvars.iv.next3566, %._crit_edge2973 ] ; 5 uses
  %indvars.iv3558 = phi i32 [ %i.he, %.lr.ph2983 ], [ %indvars.iv.next3559, %._crit_edge2973 ] ; 3 uses
  %i.jy = add i32 %i.bv, %indvar
  %i.jz = mul i32 %.0255729803502, %indvar
  %i.ka = add i32 %i.jf, %i.jz
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl nsw i64 %i.kb, 3                    ; 2 uses
  %scevgep4338 = getelementptr i8, ptr %scevgep4336, i64 %i.kc ; 5 uses
  %i.kd = add i32 %i.jg, %indvar
  %i.ke = zext i32 %i.kd to i64
  %i.kf = shl nuw nsw i64 %i.ke, 3                ; 3 uses
  %i.kg = getelementptr i8, ptr %scevgep4339, i64 %i.kc
  %scevgep4340 = getelementptr i8, ptr %i.kg, i64 %i.kf ; 5 uses
  %i.kh = add i32 %i.ji, %indvar
  %i.ki = sext i32 %i.kh to i64
  %i.kj = shl nsw i64 %i.ki, 3
  %scevgep4342 = getelementptr i8, ptr %scevgep4341, i64 %i.kj
  %scevgep4347 = getelementptr i8, ptr %scevgep4346, i64 %i.kf
  %i.kk = add i32 %i.jm, %indvar
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 3
  %scevgep4349 = getelementptr i8, ptr %scevgep4348, i64 %i.km
  %scevgep4354 = getelementptr i8, ptr %scevgep4353, i64 %i.kf
  %i.kn = add i32 %i.io, %indvar                  ; 3 uses
  %i.ko = mul i32 %.0255729803502, %indvar
  %i.kp = add i32 %i.iu, %i.ko                    ; 2 uses
  %i.kq = mul i32 %.0255729803502, %indvar
  %i.kr = add i32 %i.hx, %i.kq
  %i.ks = sext i32 %i.kr to i64
  %i.kt = shl nsw i64 %i.ks, 3                    ; 2 uses
  %scevgep4278 = getelementptr i8, ptr %scevgep, i64 %i.kt ; 2 uses
  %scevgep4282 = getelementptr i8, ptr %scevgep4281, i64 %i.kt ; 2 uses
  %i.ku = add i32 %i.ic, %indvar
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 3
  %scevgep4284 = getelementptr i8, ptr %scevgep4283, i64 %i.kw
  %i.kx = mul i32 %.0255729803502, %indvar
  %i.ky = add i32 %i.hn, %i.kx                    ; 2 uses
  %.not26952960 = icmp slt i64 %indvars.iv3565, %i.hd
  br i1 %.not26952960, label %._crit_edge2964, label %.lr.ph2963

.lr.ph2963:                                       ; preds = %bb.t
  %13 = add i32 %i.jr, %indvar                    ; 2 uses
  %i.kz = trunc nsw i64 %indvars.iv3565 to i32
  %i.la = mul i32 %.0255729803501, %i.kz
  %invariant.op2965 = add i32 %i.la, %i.bw        ; 4 uses
  %i.lb = trunc i64 %indvars.iv3565 to i32
  %i.lc = sub i32 %i.lb, %i.bq                    ; 2 uses
  %i.ld = add i32 %i.gw, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.le ; 5 uses
  %i.lg = add i32 %i.cb, %i.lc
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lh ; 5 uses
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 1                    ; 2 uses
  %min.iters.check4378 = icmp ult i32 %13, 7
  br i1 %min.iters.check4378, label %scalar.ph4377.preheader, label %vector.scevcheck4333

vector.scevcheck4333:                             ; preds = %.lr.ph2963
  %i.lj = add i32 %i.kp, %i.kn
  %i.lk = icmp slt i32 %i.lj, %i.kp
  %i.ll = add i32 %i.iw, %i.kn
  %i.lm = icmp slt i32 %i.ll, %i.iw
  %i.ln = add i32 %i.iy, %i.kn
  %i.lo = icmp slt i32 %i.ln, %i.iy
  %i.lp = or i1 %i.lk, %i.lm
  %i.lq = or i1 %i.lp, %i.lo
  br i1 %i.lq, label %scalar.ph4377.preheader, label %vector.memcheck4335

vector.memcheck4335:                              ; preds = %vector.scevcheck4333
  %bound04357 = icmp ult ptr %scevgep4338, %scevgep4342
  %bound14358 = icmp ult ptr %i.li, %scevgep4340
  %found.conflict4359 = and i1 %bound04357, %bound14358
  %bound04360 = icmp ult ptr %scevgep4338, %scevgep4347
  %bound14361 = icmp ult ptr %scevgep4344, %scevgep4340
  %found.conflict4362 = and i1 %bound04360, %bound14361
  %conflict.rdx4363 = or i1 %found.conflict4359, %found.conflict4362
  %bound04364 = icmp ult ptr %scevgep4338, %scevgep4349
  %bound14365 = icmp ult ptr %i.lf, %scevgep4340
  %found.conflict4366 = and i1 %bound04364, %bound14365
  %conflict.rdx4367 = or i1 %conflict.rdx4363, %found.conflict4366
  %bound04368 = icmp ult ptr %scevgep4338, %scevgep4354
  %bound14369 = icmp ult ptr %scevgep4351, %scevgep4340
  %found.conflict4370 = and i1 %bound04368, %bound14369
  %conflict.rdx4371 = or i1 %conflict.rdx4367, %found.conflict4370
  %bound04372 = icmp ult ptr %scevgep4338, %scevgep4356
  %bound14373 = icmp ult ptr %i.gy, %scevgep4340
  %found.conflict4374 = and i1 %bound04372, %bound14373
  %conflict.rdx4375 = or i1 %conflict.rdx4371, %found.conflict4374
  br i1 %conflict.rdx4375, label %scalar.ph4377.preheader, label %vector.ph4379

vector.ph4379:                                    ; preds = %vector.memcheck4335
  %n.vec4380 = and i64 %15, 8589934584            ; 3 uses
  %i.lr = add nsw i64 %n.vec4380, %i.hd
  %i.ls = load double, ptr %i.lf, align 8, !tbaa !9, !alias.scope !22
  %broadcast.splatinsert4389 = insertelement <4 x double> poison, double %i.ls, i64 0
  %broadcast.splat4390 = shufflevector <4 x double> %broadcast.splatinsert4389, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lt = load double, ptr %i.li, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert4381 = insertelement <4 x double> poison, double %i.lt, i64 0
  %broadcast.splat4382 = shufflevector <4 x double> %broadcast.splatinsert4381, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lu = fneg <4 x double> %broadcast.splat4382  ; 2 uses
  %i.lv = load double, ptr %i.gy, align 8, !tbaa !9, !alias.scope !27
  %broadcast.splatinsert4393 = insertelement <4 x double> poison, double %i.lv, i64 0
  %broadcast.splat4394 = shufflevector <4 x double> %broadcast.splatinsert4393, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4383

vector.body4383:                                  ; preds = %vector.body4383, %vector.ph4379
  %index4384 = phi i64 [ 0, %vector.ph4379 ], [ %index.next4395, %vector.body4383 ] ; 2 uses
  %i.lw = trunc i64 %index4384 to i32
  %i.lx = add i32 %i.bv, %i.lw                    ; 2 uses
  %i.ly = add i32 %invariant.op2965, %i.lx
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lz ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32 ; 2 uses
  %wide.load4385 = load <4 x double>, ptr %i.ma, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load4386 = load <4 x double>, ptr %i.mb, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %i.mc = sub i32 %i.lx, %i.bq                    ; 2 uses
  %i.md = add i32 %i.cb, %i.mc
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %wide.load4387 = load <4 x double>, ptr %i.mf, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %wide.load4388 = load <4 x double>, ptr %i.mg, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %i.mh = fneg <4 x double> %wide.load4387
  %i.mi = fneg <4 x double> %wide.load4388
  %i.mj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mh, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4385)
  %i.mk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mi, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4386)
  %i.ml = add i32 %i.gw, %i.mc
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %wide.load4391 = load <4 x double>, ptr %i.mn, align 8, !tbaa !9, !alias.scope !35
  %wide.load4392 = load <4 x double>, ptr %i.mo, align 8, !tbaa !9, !alias.scope !35
  %i.mp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lu, <4 x double> %wide.load4391, <4 x double> %i.mj)
  %i.mq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lu, <4 x double> %wide.load4392, <4 x double> %i.mk)
  %i.mr = fmul <4 x double> %wide.load4387, %broadcast.splat4394
  %i.ms = fmul <4 x double> %wide.load4388, %broadcast.splat4394
  %i.mt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mr, <4 x double> %broadcast.splat4382, <4 x double> %i.mp)
  %i.mu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ms, <4 x double> %broadcast.splat4382, <4 x double> %i.mq)
  store <4 x double> %i.mt, ptr %i.ma, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  store <4 x double> %i.mu, ptr %i.mb, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next4395 = add nuw i64 %index4384, 8     ; 2 uses
  %i.mv = icmp eq i64 %index.next4395, %n.vec4380
  br i1 %i.mv, label %middle.block4396, label %vector.body4383, !llvm.loop !36

middle.block4396:                                 ; preds = %vector.body4383
  %cmp.n4397 = icmp eq i64 %15, %n.vec4380
  br i1 %cmp.n4397, label %._crit_edge2964, label %scalar.ph4377.preheader

scalar.ph4377.preheader:                          ; preds = %vector.memcheck4335, %vector.scevcheck4333, %.lr.ph2963, %middle.block4396
  %indvars.iv3555.ph = phi i64 [ %i.hd, %vector.memcheck4335 ], [ %i.hd, %vector.scevcheck4333 ], [ %i.hd, %.lr.ph2963 ], [ %i.lr, %middle.block4396 ] ; 5 uses
  %i.mw = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.mx = sub i32 %indvars.iv3558, %i.mw
  %xtraiter4689 = and i32 %i.mx, 1
  %lcmp.mod4690.not = icmp eq i32 %xtraiter4689, 0
  br i1 %lcmp.mod4690.not, label %scalar.ph4377.prol.loopexit, label %scalar.ph4377.prol

scalar.ph4377.prol:                               ; preds = %scalar.ph4377.preheader
  %i.my = trunc nsw i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.my
  %i.mz = sext i32 %.reass2966.prol to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mz ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !9
  %i.nc = trunc i64 %indvars.iv3555.ph to i32
  %i.nd = sub i32 %i.nc, %i.bq                    ; 2 uses
  %i.ne = add i32 %i.cb, %i.nd
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nf
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !9 ; 2 uses
  %i.ni = load double, ptr %i.lf, align 8, !tbaa !9
  %i.nj = fneg double %i.nh
  %i.nk = call double @llvm.fmuladd.f64(double %i.nj, double %i.ni, double %i.nb)
  %i.nl = load double, ptr %i.li, align 8, !tbaa !9 ; 2 uses
  %i.nm = add i32 %i.gw, %i.nd
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nn
  %i.np = load double, ptr %i.no, align 8, !tbaa !9
  %i.nq = fneg double %i.nl
  %i.nr = call double @llvm.fmuladd.f64(double %i.nq, double %i.np, double %i.nk)
  %i.ns = load double, ptr %i.gy, align 8, !tbaa !9
  %i.nt = fmul double %i.nh, %i.ns
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.nl, double %i.nr)
  store double %i.nu, ptr %i.na, align 8, !tbaa !9
  %indvars.iv.next3556.prol = add nsw i64 %indvars.iv3555.ph, 1
  br label %scalar.ph4377.prol.loopexit

scalar.ph4377.prol.loopexit:                      ; preds = %scalar.ph4377.prol, %scalar.ph4377.preheader
  %indvars.iv3555.unr = phi i64 [ %indvars.iv3555.ph, %scalar.ph4377.preheader ], [ %indvars.iv.next3556.prol, %scalar.ph4377.prol ]
  %i.nv = icmp eq i32 %i.jy, %i.mw
  br i1 %i.nv, label %._crit_edge2964, label %scalar.ph4377

scalar.ph4377:                                    ; preds = %scalar.ph4377.prol.loopexit, %scalar.ph4377
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556.1, %scalar.ph4377 ], [ %indvars.iv3555.unr, %scalar.ph4377.prol.loopexit ] ; 4 uses
  %i.nw = trunc nsw i64 %indvars.iv3555 to i32
  %.reass2966 = add i32 %invariant.op2965, %i.nw
  %i.nx = sext i32 %.reass2966 to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nx ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !9
  %i.oa = trunc i64 %indvars.iv3555 to i32
  %i.ob = sub i32 %i.oa, %i.bq                    ; 2 uses
  %i.oc = add i32 %i.cb, %i.ob
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.od
  %i.of = load double, ptr %i.oe, align 8, !tbaa !9 ; 2 uses
  %i.og = load double, ptr %i.lf, align 8, !tbaa !9
  %i.oh = fneg double %i.of
  %i.oi = call double @llvm.fmuladd.f64(double %i.oh, double %i.og, double %i.nz)
  %i.oj = load double, ptr %i.li, align 8, !tbaa !9 ; 2 uses
  %i.ok = add i32 %i.gw, %i.ob
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !9
  %i.oo = fneg double %i.oj
  %i.op = call double @llvm.fmuladd.f64(double %i.oo, double %i.on, double %i.oi)
  %i.oq = load double, ptr %i.gy, align 8, !tbaa !9
  %i.or = fmul double %i.of, %i.oq
  %i.os = call double @llvm.fmuladd.f64(double %i.or, double %i.oj, double %i.op)
  store double %i.os, ptr %i.ny, align 8, !tbaa !9
  %indvars.iv.next3556 = add nsw i64 %indvars.iv3555, 1 ; 2 uses
  %i.ot = trunc nsw i64 %indvars.iv.next3556 to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.ot
  %i.ou = sext i32 %.reass2966.1 to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ou ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9
  %i.ox = trunc i64 %indvars.iv.next3556 to i32
  %i.oy = sub i32 %i.ox, %i.bq                    ; 2 uses
  %i.oz = add i32 %i.cb, %i.oy
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pa
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !9 ; 2 uses
  %i.pd = load double, ptr %i.lf, align 8, !tbaa !9
  %i.pe = fneg double %i.pc
  %i.pf = call double @llvm.fmuladd.f64(double %i.pe, double %i.pd, double %i.ow)
  %i.pg = load double, ptr %i.li, align 8, !tbaa !9 ; 2 uses
  %i.ph = add i32 %i.gw, %i.oy
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pi
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !9
  %i.pl = fneg double %i.pg
  %i.pm = call double @llvm.fmuladd.f64(double %i.pl, double %i.pk, double %i.pf)
  %i.pn = load double, ptr %i.gy, align 8, !tbaa !9
  %i.po = fmul double %i.pc, %i.pn
  %i.pp = call double @llvm.fmuladd.f64(double %i.po, double %i.pg, double %i.pm)
  store double %i.pp, ptr %i.ov, align 8, !tbaa !9
  %indvars.iv.next3556.1 = add nsw i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4377, !llvm.loop !37

._crit_edge2964:                                  ; preds = %scalar.ph4377.prol.loopexit, %scalar.ph4377, %middle.block4396, %bb.t
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4317

iter.check4317:                                   ; preds = %._crit_edge2964
  %i.pq = trunc nsw i64 %indvars.iv3565 to i32    ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985, %i.pq
  %i.pr = sext i32 %.reass2968.reass to i64
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pr ; 4 uses
  %i.pt = mul i32 %.0255729803502, %i.pq
  %invariant.op2976 = add i32 %i.pt, %i.bw        ; 3 uses
  br i1 %min.iters.check4295, label %vec.epilog.scalar.ph4318.preheader, label %vector.scevcheck4274

vector.scevcheck4274:                             ; preds = %iter.check4317
  %i.pu = add i32 %i.ky, %i.js
  %i.pv = icmp slt i32 %i.pu, %i.ky
  %i.pw = or i1 %i.pv, %i.ju
  br i1 %i.pw, label %vec.epilog.scalar.ph4318.preheader, label %vector.memcheck4276

vector.memcheck4276:                              ; preds = %vector.scevcheck4274
  %bound0 = icmp ult ptr %scevgep4278, %scevgep4284
  %bound1 = icmp ult ptr %i.ps, %scevgep4282
  %found.conflict = and i1 %bound0, %bound1
  %bound04289 = icmp ult ptr %scevgep4278, %scevgep4288
  %bound14290 = icmp ult ptr %scevgep4286, %scevgep4282
  %found.conflict4291 = and i1 %bound04289, %bound14290
  %conflict.rdx4292 = or i1 %found.conflict, %found.conflict4291
  br i1 %conflict.rdx4292, label %vec.epilog.scalar.ph4318.preheader, label %vector.main.loop.iter.check4296

vector.main.loop.iter.check4296:                  ; preds = %vector.memcheck4276
  br i1 %min.iters.check4297, label %vec.epilog.ph4321, label %vector.ph4298

vector.ph4298:                                    ; preds = %vector.main.loop.iter.check4296
  %i.px = load double, ptr %i.ps, align 8, !tbaa !9, !alias.scope !38
  %.scalar = fneg double %i.px
  %i.py = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.pz = shufflevector <4 x double> %i.py, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4302

vector.body4302:                                  ; preds = %vector.body4302, %vector.ph4298
  %index4303 = phi i64 [ 0, %vector.ph4298 ], [ %index.next4312, %vector.body4302 ] ; 2 uses
  %i.qa = trunc i64 %index4303 to i32
  %i.qb = add i32 %i.ek, %i.qa                    ; 2 uses
  %i.qc = add i32 %invariant.op2974, %i.qb
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qd ; 4 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 96
  %wide.load4304 = load <4 x double>, ptr %i.qe, align 8, !tbaa !9, !alias.scope !41
  %wide.load4305 = load <4 x double>, ptr %i.qf, align 8, !tbaa !9, !alias.scope !41
  %wide.load4306 = load <4 x double>, ptr %i.qg, align 8, !tbaa !9, !alias.scope !41
  %wide.load4307 = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !41
  %i.qi = add i32 %invariant.op2976, %i.qb
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qj ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 32 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 64 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qk, i64 96 ; 2 uses
  %wide.load4308 = load <4 x double>, ptr %i.qk, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4309 = load <4 x double>, ptr %i.ql, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4310 = load <4 x double>, ptr %i.qm, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4311 = load <4 x double>, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.qo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pz, <4 x double> %wide.load4304, <4 x double> %wide.load4308)
  %i.qp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pz, <4 x double> %wide.load4305, <4 x double> %wide.load4309)
  %i.qq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pz, <4 x double> %wide.load4306, <4 x double> %wide.load4310)
  %i.qr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pz, <4 x double> %wide.load4307, <4 x double> %wide.load4311)
  store <4 x double> %i.qo, ptr %i.qk, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qp, ptr %i.ql, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qq, ptr %i.qm, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qr, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4312 = add nuw i64 %index4303, 16    ; 2 uses
  %i.qs = icmp eq i64 %index.next4312, %n.vec4299
  br i1 %i.qs, label %middle.block4313, label %vector.body4302, !llvm.loop !46

middle.block4313:                                 ; preds = %vector.body4302
  br i1 %cmp.n4314, label %._crit_edge2973, label %vec.epilog.iter.check4319

vec.epilog.iter.check4319:                        ; preds = %middle.block4313
  br i1 %min.epilog.iters.check4320, label %vec.epilog.scalar.ph4318.preheader, label %vec.epilog.ph4321, !prof !18

vec.epilog.ph4321:                                ; preds = %vector.main.loop.iter.check4296, %vec.epilog.iter.check4319
  %vec.epilog.resume.val4315 = phi i64 [ %n.vec4299, %vec.epilog.iter.check4319 ], [ 0, %vector.main.loop.iter.check4296 ]
  %i.qt = load double, ptr %i.ps, align 8, !tbaa !9, !alias.scope !38
  %.scalar4671.a = fneg double %i.qt
  %i.qu = insertelement <4 x double> poison, double %.scalar4671.a, i64 0
  %i.qv = shufflevector <4 x double> %i.qu, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4325

vec.epilog.vector.body4325:                       ; preds = %vec.epilog.vector.body4325, %vec.epilog.ph4321
  %index4326 = phi i64 [ %vec.epilog.resume.val4315, %vec.epilog.ph4321 ], [ %index.next4329, %vec.epilog.vector.body4325 ] ; 2 uses
  %i.qw = trunc i64 %index4326 to i32
  %i.qx = add i32 %i.ek, %i.qw                    ; 2 uses
  %i.qy = add i32 %invariant.op2974, %i.qx
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qz
  %wide.load4327 = load <4 x double>, ptr %i.ra, align 8, !tbaa !9, !alias.scope !41
  %i.rb = add i32 %invariant.op2976, %i.qx
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rc ; 2 uses
  %wide.load4328 = load <4 x double>, ptr %i.rd, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.re = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qv, <4 x double> %wide.load4327, <4 x double> %wide.load4328)
  store <4 x double> %i.re, ptr %i.rd, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4329 = add nuw i64 %index4326, 4     ; 2 uses
  %i.rf = icmp eq i64 %index.next4329, %n.vec4322
  br i1 %i.rf, label %vec.epilog.middle.block4330, label %vec.epilog.vector.body4325, !llvm.loop !47

vec.epilog.middle.block4330:                      ; preds = %vec.epilog.vector.body4325
  br i1 %cmp.n4331, label %._crit_edge2973, label %vec.epilog.scalar.ph4318.preheader

vec.epilog.scalar.ph4318.preheader:               ; preds = %vector.memcheck4276, %vector.scevcheck4274, %iter.check4317, %vec.epilog.iter.check4319, %vec.epilog.middle.block4330
  %indvars.iv3562.ph = phi i64 [ %i.hf, %iter.check4317 ], [ %i.hf, %vector.scevcheck4274 ], [ %i.hf, %vector.memcheck4276 ], [ %i.jw, %vec.epilog.iter.check4319 ], [ %i.jx, %vec.epilog.middle.block4330 ]
  br label %vec.epilog.scalar.ph4318

vec.epilog.scalar.ph4318:                         ; preds = %vec.epilog.scalar.ph4318.preheader, %vec.epilog.scalar.ph4318
  %indvars.iv3562 = phi i64 [ %indvars.iv.next3563, %vec.epilog.scalar.ph4318 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4318.preheader ] ; 3 uses
  %i.rg = load double, ptr %i.ps, align 8, !tbaa !9
  %i.rh = trunc nuw nsw i64 %indvars.iv3562 to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.rh
  %i.ri = sext i32 %.reass2975 to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ri
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !9
  %.reass2977 = add i32 %invariant.op2976, %i.rh
  %i.rl = sext i32 %.reass2977 to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rl ; 2 uses
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !9
  %i.ro = fneg double %i.rg
  %i.rp = call double @llvm.fmuladd.f64(double %i.ro, double %i.rk, double %i.rn)
  store double %i.rp, ptr %i.rm, align 8, !tbaa !9
  %indvars.iv.next3563 = add nuw nsw i64 %indvars.iv3562, 1
  %.not2697.not = icmp samesign ult i64 %indvars.iv3562, %i.hg
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4318, label %._crit_edge2973, !llvm.loop !48

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4318, %middle.block4313, %vec.epilog.middle.block4330, %._crit_edge2964
  %indvars.iv.next3566 = add nsw i64 %indvars.iv3565, 1 ; 2 uses
  %indvars.iv.next3559 = add i32 %indvars.iv3558, 1
  %lftr.wideiv3568 = trunc i64 %indvars.iv.next3566 to i32
  %exitcond3569.not = icmp eq i32 %i.bq, %lftr.wideiv3568
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond3569.not, label %._crit_edge2984, label %bb.t, !llvm.loop !49

end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3204 ], [ %.1254327802805, %bb.dk ], [ %.1254327782792, %._crit_edge3122 ], [ %.1254327782792, %bb.bn ], [ %.1254327782792, %._crit_edge3113 ], [ %.1254327802805, %._crit_edge3195 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4247 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4238 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3204 ], [ %.1254827772807, %bb.dk ], [ %.1254827752794, %._crit_edge3122 ], [ %.1254827752794, %bb.bn ], [ %.1254827752794, %._crit_edge3113 ], [ %.1254827772807, %._crit_edge3195 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4247 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4238 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3204 ], [ %.1260627742809, %bb.dk ], [ %.1260627722796, %._crit_edge3122 ], [ %.1260627722796, %bb.bn ], [ %.1260627722796, %._crit_edge3113 ], [ %.1260627742809, %._crit_edge3195 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4247 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4238 ]
  %.pre3787.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bu, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.bx, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3515 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bwu = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4136 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwu
  %invariant.gep4134 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwu ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4782.a = sub i32 1, %i.ay
  %invariant.op4783.a = sub i32 2, %i.ay
  %invariant.op4784.a = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bwv = add i32 %i.n, -1
  %i.bww = shl nsw i64 %i.o, 3                    ; 6 uses
  %scevgep4517 = getelementptr i8, ptr %5, i64 %i.bww
  %i.bwx = shl nsw i64 %i.r, 3                    ; 2 uses
  %i.bwy = add nsw i64 %i.bwx, 8                  ; 3 uses
  %scevgep4521 = getelementptr i8, ptr %7, i64 %i.bwy
  %scevgep4523 = getelementptr i8, ptr %5, i64 %i.bww
  %scevgep4577 = getelementptr i8, ptr %5, i64 %i.bww
  %i.bwz = add nsw i64 %i.bww, 8                  ; 3 uses
  %scevgep4579 = getelementptr i8, ptr %5, i64 %i.bwz
  %scevgep4582 = getelementptr i8, ptr %7, i64 %i.bwx
  %scevgep4584 = getelementptr i8, ptr %7, i64 %i.bwy
  %scevgep4586 = getelementptr i8, ptr %7, i64 %i.bwy
  %scevgep4588 = getelementptr i8, ptr %5, i64 %i.bww
  %scevgep4590 = getelementptr i8, ptr %5, i64 %i.bwz
  %scevgep4592 = getelementptr i8, ptr %5, i64 %i.bwz
  %i.bxa = getelementptr i8, ptr %5, i64 %i.bww
  %scevgep4594 = getelementptr i8, ptr %i.bxa, i64 16
  %invariant.op4803.a = sub i32 1, %i.ay
  %invariant.op4804.a = sub i32 2, %i.ay
  %invariant.op4805 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3819 = phi i32 [ %.pre3786, %.outer.us.preheader ], [ %.pre3819.be, %.outer.us.backedge ] ; 6 uses
  %i.bxb = phi i32 [ %i.bp, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dl, label %.lr.ph3212.us

bb.dl:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.cym, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cyp, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bxc = sub nsw i32 %.22607.ph.us, %.pre3819   ; 2 uses
  %i.bxd = icmp slt i32 %i.bxc, 2
  br i1 %i.bxd, label %.loopexit2877, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dl
  %.125332894.us = phi i32 [ 0, %bb.dl ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dl ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bxc, %bb.dl ], [ %i.cyi, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dl ], [ %i.cyr, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dl ], [ %i.cym, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dl ], [ %i.cyp, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bxe = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.bxf = sub nsw i32 %i.ay, %i.bxe
  %i.bxg = icmp slt i32 %.32608.us, %i.bxf
  br i1 %i.bxg, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bxh = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %storemerge.us = phi i32 [ %i.bxh, %bb.dn ], [ %i.ay, %bb.dm ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891.us, label %bb.dy, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bxi = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bxj = sext i32 %i.bxi to i64
  %i.bxk = getelementptr [8 x i8], ptr %i.s, i64 %i.bxj ; 2 uses
  %i.bxl = getelementptr i8, ptr %i.bxk, i64 8
  %i.bxm = load double, ptr %i.bxl, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4729 ] ; 6 uses
  %i.bxn = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bxo = trunc nsw i64 %indvars.iv3722 to i32
  %i.bxp = sub i32 %i.cys, %i.bxo
  %i.bxq = sext i32 %i.bxp to i64
  %i.bxr = getelementptr [8 x i8], ptr %i.p, i64 %i.bxn
  %i.bxs = getelementptr [8 x i8], ptr %i.bxr, i64 %i.bxq ; 2 uses
  %i.bxt = load double, ptr %i.bxs, align 8, !tbaa !9
  %i.bxu = fdiv double %i.bxt, %i.bxm
  store double %i.bxu, ptr %i.bxs, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bxv = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bxw = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bxx = sub i32 %i.cys, %i.bxw
  %i.bxy = sext i32 %i.bxx to i64
  %i.bxz = getelementptr [8 x i8], ptr %i.p, i64 %i.bxv
  %i.bya = getelementptr [8 x i8], ptr %i.bxz, i64 %i.bxy ; 2 uses
  %i.byb = load double, ptr %i.bya, align 8, !tbaa !9
  %i.byc = fdiv double %i.byb, %i.bxm
  store double %i.byc, ptr %i.bya, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.byd = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.bye = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.byf = sub i32 %i.cys, %i.bye
  %i.byg = sext i32 %i.byf to i64
  %i.byh = getelementptr [8 x i8], ptr %i.p, i64 %i.byd
  %i.byi = getelementptr [8 x i8], ptr %i.byh, i64 %i.byg ; 2 uses
  %i.byj = load double, ptr %i.byi, align 8, !tbaa !9
  %i.byk = fdiv double %i.byj, %i.bxm
  store double %i.byk, ptr %i.byi, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.byl = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.bym = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.byn = sub i32 %i.cys, %i.bym
  %i.byo = sext i32 %i.byn to i64
  %i.byp = getelementptr [8 x i8], ptr %i.p, i64 %i.byl
  %i.byq = getelementptr [8 x i8], ptr %i.byp, i64 %i.byo ; 2 uses
  %i.byr = load double, ptr %i.byq, align 8, !tbaa !9
  %i.bys = fdiv double %i.byr, %i.bxm
  store double %i.bys, ptr %i.byq, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cys, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4729, %.lr.ph3372.us.new, %bb.dp
  %i.byt = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.byt, ptr %i.c, align 4, !tbaa !8
  %i.byu = add nsw i32 %.pre3819, %.32608.us      ; 4 uses
  store i32 %i.byu, ptr %i.a, align 4, !tbaa !8
  %i.byv = call i32 @llvm.smin.i32(i32 %i.byt, i32 %i.byu) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byv
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4655

vec.epilog.scalar.ph4656:                         ; preds = %vec.epilog.scalar.ph4656, %vec.epilog.scalar.ph4656.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4656.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4656 ] ; 5 uses
  %i.byw = trunc nsw i64 %indvars.iv3727 to i32
  %i.byx = add i32 %i.czg, %i.byw
  %i.byy = sext i32 %i.byx to i64
  %i.byz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byy ; 2 uses
  %i.bza = load double, ptr %i.byz, align 8, !tbaa !9
  %i.bzb = fdiv double %i.bza, %i.bxm
  store double %i.bzb, ptr %i.byz, align 8, !tbaa !9
  %i.bzc = trunc i64 %indvars.iv3727 to i32
  %.reass4790 = add i32 %i.bzc, %invariant.op4789
  %i.bzd = sext i32 %.reass4790 to i64
  %i.bze = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzd ; 2 uses
  %i.bzf = load double, ptr %i.bze, align 8, !tbaa !9
  %i.bzg = fdiv double %i.bzf, %i.bxm
  store double %i.bzg, ptr %i.bze, align 8, !tbaa !9
  %i.bzh = trunc i64 %indvars.iv3727 to i32
  %.reass4792 = add i32 %i.bzh, %invariant.op4791
  %i.bzi = sext i32 %.reass4792 to i64
  %i.bzj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzi ; 2 uses
  %i.bzk = load double, ptr %i.bzj, align 8, !tbaa !9
  %i.bzl = fdiv double %i.bzk, %i.bxm
  store double %i.bzl, ptr %i.bzj, align 8, !tbaa !9
  %i.bzm = trunc i64 %indvars.iv3727 to i32
  %.reass4794 = add i32 %i.bzm, %invariant.op4793
  %i.bzn = sext i32 %.reass4794 to i64
  %i.bzo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzn ; 2 uses
  %i.bzp = load double, ptr %i.bzo, align 8, !tbaa !9
  %i.bzq = fdiv double %i.bzp, %i.bxm
  store double %i.bzq, ptr %i.bzo, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.czi, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4656, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4656.prol.loopexit, %vec.epilog.scalar.ph4656, %middle.block4651, %vec.epilog.middle.block4667, %._crit_edge3373.us
  %i.bzr = add i32 %i.bxe, %.32608.us             ; 7 uses
  %i.bzs = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bxe, 1
  br i1 %.not27053392.us, label %bb.dr, label %.lr.ph3396.us

bb.dq:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4574 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4575, %._crit_edge3388.us ] ; 8 uses
  %indvar4514 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4515, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.dcm, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.cbb, %._crit_edge3388.us ]
  %i.bzt = add i64 %indvar4574, %i.dcm
  %i.bzu = trunc i64 %indvar4574 to i32
  %i.bzv = mul i32 %i.n, %i.bzu
  %i.bzw = add i32 %i.bzv, %i.ddk
  %i.bzx = sext i32 %i.bzw to i64
  %i.bzy = shl nsw i64 %i.bzx, 3                  ; 2 uses
  %scevgep4578 = getelementptr i8, ptr %scevgep4577, i64 %i.bzy ; 5 uses
  %smax4580 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcn)
  %i.bzz = add i64 %indvar4574, %i.dcm
  %i.caa = sub i64 %smax4580, %i.bzz
  %i.cab = shl nsw i64 %i.caa, 3                  ; 3 uses
  %i.cac = getelementptr i8, ptr %scevgep4579, i64 %i.cab
  %scevgep4581 = getelementptr i8, ptr %i.cac, i64 %i.bzy ; 5 uses
  %i.cad = trunc i64 %indvar4574 to i32
  %i.cae = add i32 %i.ddl, %i.cad
  %i.caf = sext i32 %i.cae to i64
  %i.cag = shl nsw i64 %i.caf, 3                  ; 3 uses
  %scevgep4583 = getelementptr i8, ptr %scevgep4582, i64 %i.cag ; 2 uses
  %scevgep4585 = getelementptr i8, ptr %scevgep4584, i64 %i.cag
  %i.cah = getelementptr i8, ptr %scevgep4586, i64 %i.cab
  %scevgep4587 = getelementptr i8, ptr %i.cah, i64 %i.cag
  %i.cai = trunc i64 %indvar4574 to i32
  %i.caj = add i32 %i.ddm, %i.cai
  %i.cak = sext i32 %i.caj to i64
  %i.cal = shl nsw i64 %i.cak, 3                  ; 3 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.cal ; 2 uses
  %scevgep4591 = getelementptr i8, ptr %scevgep4590, i64 %i.cal
  %i.cam = getelementptr i8, ptr %scevgep4592, i64 %i.cab
  %scevgep4593 = getelementptr i8, ptr %i.cam, i64 %i.cal
  %i.can = mul i32 %.0255729803502, %indvar4514
  %i.cao = add i32 %i.dct, %i.can
  %i.cap = sext i32 %i.cao to i64                 ; 2 uses
  %i.caq = shl nsw i64 %i.cap, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517, i64 %i.caq ; 2 uses
  %i.car = add nsw i64 %i.dcy, %i.cap
  %i.cas = shl nsw i64 %i.car, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519, i64 %i.cas ; 2 uses
  %i.cat = add i32 %i.dcz, %indvar4514
  %i.cau = sext i32 %i.cat to i64
  %i.cav = shl nsw i64 %i.cau, 3
  %scevgep4522 = getelementptr i8, ptr %scevgep4521, i64 %i.cav
  %i.caw = mul i32 %.0255729803502, %indvar4514
  %i.cax = add i32 %i.dct, %i.caw                 ; 2 uses
  %i.cay = trunc i64 %indvars.iv3732 to i32
  %i.caz = mul i32 %i.n, %i.cay
  %i.cba = sub i32 %i.caz, %.182575.neg3394.us.in ; 5 uses
  %i.cbb = trunc nsw i64 %indvars.iv3732 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.cbb, %invariant.op4802 ; 2 uses
  %i.cbc = add nsw i32 %.reass3390.us.reass.reass, %i.dch ; 3 uses
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbd ; 2 uses
  %i.cbf = add nsw i32 %.reass3390.us.reass.reass, %i.bxi ; 3 uses
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbg ; 2 uses
  %16 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcn)
  %reass.sub4669 = sub i64 %16, %i.bzt
  %17 = add i64 %reass.sub4669, 1                 ; 3 uses
  %min.iters.check4617 = icmp ult i64 %17, 12
  br i1 %min.iters.check4617, label %scalar.ph4616.preheader, label %vector.scevcheck4572

vector.scevcheck4572:                             ; preds = %bb.dq
  %i.cbi = trunc i64 %indvar4574 to i32
  %i.cbj = mul i32 %i.n, %i.cbi
  %i.cbk = add i32 %i.cbj, %i.ddk                 ; 2 uses
  %smax4573 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dcn)
  %i.cbl = add i64 %indvar4574, %i.dcm
  %i.cbm = sub i64 %smax4573, %i.cbl              ; 2 uses
  %i.cbn = trunc i64 %i.cbm to i32                ; 3 uses
  %i.cbo = add i32 %i.cbk, %i.cbn
  %i.cbp = icmp slt i32 %i.cbo, %i.cbk
  %i.cbq = add i32 %i.cbf, %i.cbn
  %i.cbr = icmp slt i32 %i.cbq, %i.cbf
  %i.cbs = icmp ugt i64 %i.cbm, 4294967295
  %i.cbt = or i1 %i.cbr, %i.cbs
  %i.cbu = add i32 %i.cbc, %i.cbn
  %i.cbv = icmp slt i32 %i.cbu, %i.cbc
  %i.cbw = or i1 %i.cbp, %i.cbt
  %i.cbx = or i1 %i.cbv, %i.cbw
  br i1 %i.cbx, label %scalar.ph4616.preheader, label %vector.memcheck4576

vector.memcheck4576:                              ; preds = %vector.scevcheck4572
  %bound04596 = icmp ult ptr %scevgep4578, %scevgep4585
  %bound14597 = icmp ult ptr %scevgep4583, %scevgep4581
  %found.conflict4598 = and i1 %bound04596, %bound14597
  %bound04599 = icmp ult ptr %scevgep4578, %scevgep4587
  %bound14600 = icmp ult ptr %scevgep4583, %scevgep4581
  %found.conflict4601 = and i1 %bound04599, %bound14600
  %conflict.rdx4602 = or i1 %found.conflict4598, %found.conflict4601
  %bound04603 = icmp ult ptr %scevgep4578, %scevgep4591
  %bound14604 = icmp ult ptr %scevgep4589, %scevgep4581
  %found.conflict4605 = and i1 %bound04603, %bound14604
  %conflict.rdx4606 = or i1 %conflict.rdx4602, %found.conflict4605
  %bound04607 = icmp ult ptr %scevgep4578, %scevgep4593
  %bound14608 = icmp ult ptr %scevgep4589, %scevgep4581
  %found.conflict4609 = and i1 %bound04607, %bound14608
  %conflict.rdx4610 = or i1 %conflict.rdx4606, %found.conflict4609
  %bound04611 = icmp ult ptr %scevgep4578, %scevgep4595
  %bound14612 = icmp ult ptr %i.dck, %scevgep4581
  %found.conflict4613 = and i1 %bound04611, %bound14612
  %conflict.rdx4614 = or i1 %conflict.rdx4610, %found.conflict4613
  br i1 %conflict.rdx4614, label %scalar.ph4616.preheader, label %vector.ph4618

vector.ph4618:                                    ; preds = %vector.memcheck4576
  %n.vec4619 = and i64 %17, -4                    ; 3 uses
  %i.cby = add i64 %indvars.iv3732, %n.vec4619
  %i.cbz = load double, ptr %i.cbe, align 8, !tbaa !9, !alias.scope !99
  %broadcast.splatinsert4626 = insertelement <4 x double> poison, double %i.cbz, i64 0
  %broadcast.splat4627 = shufflevector <4 x double> %broadcast.splatinsert4626, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cca = load double, ptr %i.cbh, align 8, !tbaa !9, !alias.scope !102
  %broadcast.splatinsert4620 = insertelement <4 x double> poison, double %i.cca, i64 0
  %broadcast.splat4621 = shufflevector <4 x double> %broadcast.splatinsert4620, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ccb = fneg <4 x double> %broadcast.splat4621
  %i.ccc = load double, ptr %i.dck, align 8, !tbaa !9, !alias.scope !104
  %broadcast.splatinsert4629 = insertelement <4 x double> poison, double %i.ccc, i64 0
  %broadcast.splat4630 = shufflevector <4 x double> %broadcast.splatinsert4629, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4622

vector.body4622:                                  ; preds = %vector.body4622, %vector.ph4618
  %index4623 = phi i64 [ 0, %vector.ph4618 ], [ %index.next4631, %vector.body4622 ] ; 2 uses
  %i.ccd = add i64 %indvars.iv3732, %index4623
  %i.cce = trunc nsw i64 %i.ccd to i32            ; 2 uses
  %i.ccf = add i32 %i.cba, %i.cce
  %i.ccg = sext i32 %i.ccf to i64
  %i.cch = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccg ; 2 uses
  %wide.load4624.a = load <4 x double>, ptr %i.cch, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %.reass4796 = add i32 %i.cce, %invariant.op4795 ; 2 uses
  %i.cci = add nsw i32 %.reass4796, %i.bxi
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccj
  %wide.load4625 = load <4 x double>, ptr %i.cck, align 8, !tbaa !9, !alias.scope !111 ; 2 uses
  %i.ccl = fneg <4 x double> %wide.load4625
  %i.ccm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccl, <4 x double> %broadcast.splat4627, <4 x double> %wide.load4624.a)
  %i.ccn = add nsw i32 %.reass4796, %i.dch
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cco
  %wide.load4628 = load <4 x double>, ptr %i.ccp, align 8, !tbaa !9, !alias.scope !112
  %i.ccq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccb, <4 x double> %wide.load4628, <4 x double> %i.ccm)
  %i.ccr = fmul <4 x double> %wide.load4625, %broadcast.splat4630
  %i.ccs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccr, <4 x double> %broadcast.splat4621, <4 x double> %i.ccq)
  store <4 x double> %i.ccs, ptr %i.cch, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %index.next4631 = add nuw i64 %index4623, 4     ; 2 uses
  %i.cct = icmp eq i64 %index.next4631, %n.vec4619
  br i1 %i.cct, label %middle.block4632, label %vector.body4622, !llvm.loop !113

middle.block4632:                                 ; preds = %vector.body4622
  %cmp.n4633 = icmp eq i64 %17, %n.vec4619
  br i1 %cmp.n4633, label %.loopexit, label %scalar.ph4616.preheader

scalar.ph4616.preheader:                          ; preds = %vector.memcheck4576, %vector.scevcheck4572, %bb.dq, %middle.block4632
  %indvars.iv3734.ph = phi i64 [ %indvars.iv3732, %vector.memcheck4576 ], [ %indvars.iv3732, %vector.scevcheck4572 ], [ %indvars.iv3732, %bb.dq ], [ %i.cby, %middle.block4632 ]
  br label %scalar.ph4616

scalar.ph4616:                                    ; preds = %scalar.ph4616.preheader, %scalar.ph4616
  %indvars.iv3734 = phi i64 [ %indvars.iv.next3735, %scalar.ph4616 ], [ %indvars.iv3734.ph, %scalar.ph4616.preheader ] ; 3 uses
  %i.ccu = trunc nsw i64 %indvars.iv3734 to i32   ; 2 uses
  %i.ccv = add i32 %i.cba, %i.ccu
  %i.ccw = sext i32 %i.ccv to i64
  %i.ccx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccw ; 2 uses
  %i.ccy = load double, ptr %i.ccx, align 8, !tbaa !9
  %.reass3380.us.reass.reass = add i32 %i.ccu, %invariant.op4797.a ; 2 uses
  %i.ccz = add nsw i32 %.reass3380.us.reass.reass, %i.bxi
  %i.cda = sext i32 %i.ccz to i64
  %i.cdb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cda
  %i.cdc = load double, ptr %i.cdb, align 8, !tbaa !9 ; 2 uses
  %i.cdd = load double, ptr %i.cbe, align 8, !tbaa !9
  %i.cde = fneg double %i.cdc
  %i.cdf = call double @llvm.fmuladd.f64(double %i.cde, double %i.cdd, double %i.ccy)
  %i.cdg = load double, ptr %i.cbh, align 8, !tbaa !9 ; 2 uses
  %i.cdh = add nsw i32 %.reass3380.us.reass.reass, %i.dch
  %i.cdi = sext i32 %i.cdh to i64
  %i.cdj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdi
  %i.cdk = load double, ptr %i.cdj, align 8, !tbaa !9
  %i.cdl = fneg double %i.cdg
  %i.cdm = call double @llvm.fmuladd.f64(double %i.cdl, double %i.cdk, double %i.cdf)
  %i.cdn = load double, ptr %i.dck, align 8, !tbaa !9
  %i.cdo = fmul double %i.cdc, %i.cdn
  %i.cdp = call double @llvm.fmuladd.f64(double %i.cdo, double %i.cdg, double %i.cdm)
  store double %i.cdp, ptr %i.ccx, align 8, !tbaa !9
  %indvars.iv.next3735 = add nsw i64 %indvars.iv3734, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3734, %i.dcn
  br i1 %.not2726.us.not, label %scalar.ph4616, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph4616, %middle.block4632
  br i1 %.not2728.not3384.us, label %iter.check4556, label %._crit_edge3388.us

vec.epilog.scalar.ph4557:                         ; preds = %vec.epilog.scalar.ph4557.preheader, %vec.epilog.scalar.ph4557
  %indvars.iv3737 = phi i64 [ %indvars.iv.next3738, %vec.epilog.scalar.ph4557 ], [ %indvars.iv3737.ph, %vec.epilog.scalar.ph4557.preheader ]
  %indvars.iv.next3738 = add nsw i64 %indvars.iv3737, 1 ; 3 uses
  %i.cdq = load double, ptr %i.daw, align 8, !tbaa !9
  %i.cdr = trunc nsw i64 %indvars.iv.next3738 to i32 ; 2 uses
  %i.cds = add i32 %i.dcl, %i.cdr
  %i.cdt = sext i32 %i.cds to i64
  %i.cdu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdt
  %i.cdv = load double, ptr %i.cdu, align 8, !tbaa !9
  %i.cdw = add i32 %i.cba, %i.cdr
  %i.cdx = sext i32 %i.cdw to i64
  %i.cdy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdx ; 2 uses
  %i.cdz = load double, ptr %i.cdy, align 8, !tbaa !9
  %i.cea = fneg double %i.cdq
  %i.ceb = call double @llvm.fmuladd.f64(double %i.cea, double %i.cdv, double %i.cdz)
  store double %i.ceb, ptr %i.cdy, align 8, !tbaa !9
  %.not2728.not.us = icmp slt i64 %indvars.iv.next3738, %i.dco
  br i1 %.not2728.not.us, label %vec.epilog.scalar.ph4557, label %._crit_edge3388.us, !llvm.loop !115

._crit_edge3388.us:                               ; preds = %vec.epilog.scalar.ph4557, %middle.block4552, %vec.epilog.middle.block4569, %.loopexit
  %indvars.iv.next3733 = add nsw i64 %indvars.iv3732, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3732, %i.dcn
  %indvar.next4515 = add i32 %indvar4514, 1
  %indvar.next4575 = add i64 %indvar4574, 1
  br i1 %.not2705.us.not, label %bb.dq, label %._crit_edge3397.us, !llvm.loop !116

bb.dr:                                            ; preds = %._crit_edge3397.us, %._crit_edge3378.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  br i1 %.not27023369.us, label %bb.du, label %.lr.ph3409.us

bb.ds:                                            ; preds = %.lr.ph3409.us, %._crit_edge3403.us
  %indvars.iv3744 = phi i64 [ %i.def, %.lr.ph3409.us ], [ %indvars.iv.next3745, %._crit_edge3403.us ] ; 4 uses
  %i.cec = trunc i64 %indvars.iv3744 to i32
  %i.ced = add i32 %.pre3819, %i.cec
  %i.cee = call i32 @llvm.smin.i32(i32 %i.ced, i32 %i.bzr) ; 2 uses
  %.not27253399.us.not = icmp slt i32 %.32608.us, %i.cee
  br i1 %.not27253399.us.not, label %.lr.ph3402.us, label %._crit_edge3403.us

bb.dt:                                            ; preds = %.lr.ph3402.us, %bb.dt
  %indvars.iv3741.in = phi i64 [ %i.dee, %.lr.ph3402.us ], [ %indvars.iv3741, %bb.dt ]
  %indvars.iv3741 = add nuw nsw i64 %indvars.iv3741.in, 1 ; 3 uses
  %i.cef = trunc nsw i64 %indvars.iv3741 to i32   ; 2 uses
  %i.ceg = add i32 %i.ded, %i.cef
  %i.ceh = sext i32 %i.ceg to i64
  %i.cei = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ceh
  %i.cej = load double, ptr %i.cei, align 8, !tbaa !9
  %i.cek = load double, ptr %i.dea, align 8, !tbaa !9
  %i.cel = add i32 %i.deb, %i.cef
  %i.cem = sext i32 %i.cel to i64
  %i.cen = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cem ; 2 uses
  %i.ceo = load double, ptr %i.cen, align 8, !tbaa !9
  %i.cep = fneg double %i.cej
  %i.ceq = call double @llvm.fmuladd.f64(double %i.cep, double %i.cek, double %i.ceo)
  store double %i.ceq, ptr %i.cen, align 8, !tbaa !9
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3741, %i.dec
  br i1 %.not2725.us.not, label %bb.dt, label %._crit_edge3403.us, !llvm.loop !117

._crit_edge3403.us:                               ; preds = %bb.dt, %bb.ds
  %indvars.iv.next3745 = add nsw i64 %indvars.iv3744, 1 ; 2 uses
  %lftr.wideiv3748 = trunc i64 %indvars.iv.next3745 to i32
  %exitcond3749.not = icmp eq i32 %i.bzs, %lftr.wideiv3748
  br i1 %exitcond3749.not, label %._crit_edge3410.us, label %bb.ds, !llvm.loop !118

bb.du:                                            ; preds = %._crit_edge3410.us, %bb.dr
  br i1 %.not, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.cer = fdiv double 1.000000e+00, %i.bxm
  store double %i.cer, ptr %i.e, align 8, !tbaa !9
  %i.ces = mul nsw i32 %.32608.us, %i.t
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = getelementptr [8 x i8], ptr %i.v, i64 %i.cet
  %i.cev = getelementptr i8, ptr %i.ceu, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.cev, ptr noundef nonnull @c__1) #4
  %i.cew = load i32, ptr %i.l, align 4, !tbaa !8
  %i.cex = icmp sgt i32 %i.cew, 0
  br i1 %i.cex, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.cey = getelementptr i8, ptr %i.bxk, i64 16
  %i.cez = mul nsw i32 %i.bzs, %i.t
  %i.cfa = sext i32 %i.cez to i64
  %i.cfb = getelementptr [8 x i8], ptr %i.v, i64 %i.cfa
  %i.cfc = getelementptr i8, ptr %i.cfb, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.cev, ptr noundef nonnull @c__1, ptr noundef %i.cey, ptr noundef nonnull @c__1, ptr noundef %i.cfc, ptr noundef nonnull %10) #4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.cfd = mul nsw i32 %.42546.us, %i.n
  %i.cfe = sub i32 %i.bzs, %.42546.us
  %i.cff = add nsw i32 %i.cfe, %i.cfd
  %i.cfg = sext i32 %i.cff to i64
  %i.cfh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfg
  %i.cfi = load double, ptr %i.cfh, align 8, !tbaa !9
  store double %i.cfi, ptr %i.k, align 8, !tbaa !9
  %.pre3820 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.do
  %i.cfj = phi i32 [ %.pre3820, %bb.dx ], [ %i.bxb, %bb.do ] ; 2 uses
  %i.cfk = add nsw i32 %i.cfj, -1
  store i32 %i.cfk, ptr %i.d, align 4, !tbaa !8
  %.not27073433.us = icmp slt i32 %i.cfj, 2
  br i1 %.not27073433.us, label %._crit_edge3438.us, label %.lr.ph3437.us

bb.dz:                                            ; preds = %.lr.ph3437.us, %.loopexit2872.us
  %indvars.iv3761 = phi i64 [ 1, %.lr.ph3437.us ], [ %indvars.iv.next3762, %.loopexit2872.us ] ; 6 uses
  %indvars.iv3752 = phi i32 [ %.reass4169.reass, %.lr.ph3437.us ], [ %indvars.iv.next3753, %.loopexit2872.us ] ; 2 uses
  %indvars.iv3750 = phi i32 [ %i.dfb, %.lr.ph3437.us ], [ %indvars.iv.next3751, %.loopexit2872.us ] ; 2 uses
  %.202577.neg3435.us = phi i32 [ -1, %.lr.ph3437.us ], [ %i.cmm, %.loopexit2872.us ] ; 2 uses
  %smax3754 = call i32 @llvm.smax.i32(i32 %indvars.iv3752, i32 1)
  %.pre3821 = load i32, ptr %i.j, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26982891.us, label %._crit_edge3822, label %bb.ea

._crit_edge3822:                                  ; preds = %bb.dz
  %.pre3823 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.cfl = add nuw nsw i64 %indvars.iv3761, %i.dfc ; 3 uses
  %i.cfm = sext i32 %.pre3821 to i64
  %i.cfn = icmp sgt i64 %i.cfl, %i.cfm
  %i.cfo = icmp slt i64 %i.cfl, %i.bd
  %or.cond2763.us = select i1 %i.cfn, i1 %i.cfo, i1 false
  %.pre3824 = load i32, ptr %3, align 4, !tbaa !8 ; 3 uses
  br i1 %or.cond2763.us, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.cfp = add i32 %.pre3821, %.202577.neg3435.us
  %i.cfq = trunc nsw i64 %i.cfl to i32            ; 2 uses
  %i.cfr = sub nsw i32 %i.cfq, %.pre3824          ; 2 uses
  %i.cfs = mul nsw i32 %i.cfr, %i.n
  %i.cft = add nsw i32 %i.cfp, %i.cfs
  %i.cfu = sext i32 %i.cft to i64
  %i.cfv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cfu
  %i.cfw = load i32, ptr %2, align 4, !tbaa !8
  %i.cfx = trunc nuw nsw i64 %indvars.iv3761 to i32 ; 3 uses
  %i.cfy = add i32 %.32608.us, %i.cfx             ; 2 uses
  %i.cfz = sub i32 %i.cfy, %.pre3824
  %i.cga = add i32 %i.cfz, %i.cfw
  %i.cgb = sext i32 %i.cga to i64
  %i.cgc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgb
  %i.cgd = sext i32 %i.cfr to i64
  %i.cge = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgd
  call void @dlartg_(ptr noundef %i.cfv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.cgc, ptr noundef nonnull %i.cge, ptr noundef nonnull %i.g) #4
  %i.cgf = add i32 %i.dex, %i.cfx
  %i.cgg = sext i32 %i.cgf to i64
  %i.cgh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cgg
  %i.cgi = load double, ptr %i.cgh, align 8, !tbaa !9
  %i.cgj = fneg double %i.cgi
  %i.cgk = load double, ptr %i.k, align 8, !tbaa !9
  %i.cgl = fmul double %i.cgk, %i.cgj             ; 2 uses
  %i.cgm = load i32, ptr %2, align 4, !tbaa !8
  %i.cgn = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.cgo = add i32 %i.cfy, %i.cgm
  %i.cgp = sub i32 %i.cgo, %i.cgn
  %i.cgq = sext i32 %i.cgp to i64
  %i.cgr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cgq ; 2 uses
  %i.cgs = load double, ptr %i.cgr, align 8, !tbaa !9
  %i.cgt = sub nsw i32 %i.cfq, %i.cgn             ; 2 uses
  %i.cgu = sext i32 %i.cgt to i64
end_hunk_1
