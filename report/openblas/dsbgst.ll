loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@dsbgst_:bb.a
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.cg, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2954, label %.lr.ph2953.new, !llvm.loop !13

._crit_edge2954:                                  ; preds = %.prol.loopexit, %.lr.ph2953.new, %bb.s
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %i.ej = sub nsw i32 %i.bq, %.pre3786            ; 4 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !8
  store i32 %i.bq, ptr %i.c, align 4, !tbaa !8
  %i.ek = call i32 @llvm.smax.i32(i32 %i.ej, i32 1) ; 13 uses
  %.not2676.not2955 = icmp slt i32 %i.ek, %.02605.ph
  br i1 %.not2676.not2955, label %iter.check4438, label %._crit_edge2959

iter.check4438:                                   ; preds = %._crit_edge2954
  %i.el = mul nsw i32 %i.bq, %i.n                 ; 2 uses
  %i.em = add i32 %i.el, %.neg.le
  %invariant.op = add i32 %i.em, %i.bw            ; 7 uses
  %i.en = zext nneg i32 %i.ek to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.eo = sub nsw i64 %wide.trip.count, %i.en     ; 7 uses
  %min.iters.check4419 = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check4419, label %vec.epilog.scalar.ph4439.preheader, label %vector.scevcheck4417

vector.scevcheck4417:                             ; preds = %iter.check4438
  %i.ep = xor i64 %i.en, -1
  %i.eq = add nsw i64 %i.ep, %wide.trip.count     ; 2 uses
  %i.er = add i32 %i.bw, 1
  %i.es = add i32 %i.er, %i.ek
  %i.et = add i32 %i.es, %i.el
  %i.eu = sub i32 %i.et, %.02605.ph               ; 2 uses
  %i.ev = trunc i64 %i.eq to i32
  %i.ew = add i32 %i.eu, %i.ev
  %i.ex = icmp slt i32 %i.ew, %i.eu
  %i.ey = icmp ugt i64 %i.eq, 4294967295
  %i.ez = or i1 %i.ex, %i.ey
  br i1 %i.ez, label %vec.epilog.scalar.ph4439.preheader, label %vector.main.loop.iter.check4420

vector.main.loop.iter.check4420:                  ; preds = %vector.scevcheck4417
  %min.iters.check4421 = icmp ult i64 %i.eo, 16
  br i1 %min.iters.check4421, label %vec.epilog.ph4442, label %vector.ph4422

vector.ph4422:                                    ; preds = %vector.main.loop.iter.check4420
  %n.mod.vf4423 = and i64 %i.eo, 12
  %n.vec4424 = and i64 %i.eo, -16                 ; 4 uses
  %i.fa = add nsw i64 %n.vec4424, %i.en
  %broadcast.splatinsert4425 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4426 = shufflevector <4 x double> %broadcast.splatinsert4425, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4782 = add i32 %i.ek, %invariant.op
  br label %vector.body4427

vector.body4427:                                  ; preds = %vector.body4427, %vector.ph4422
  %index4428 = phi i64 [ 0, %vector.ph4422 ], [ %index.next4433, %vector.body4427 ] ; 2 uses
  %i.fb = trunc i64 %index4428 to i32
  %.reass4783 = add i32 %i.fb, %invariant.op4782
  %i.fc = sext i32 %.reass4783 to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fc ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 64 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 96 ; 2 uses
  %wide.load4429 = load <4 x double>, ptr %i.fd, align 8, !tbaa !9
  %wide.load4430 = load <4 x double>, ptr %i.fe, align 8, !tbaa !9
  %wide.load4431 = load <4 x double>, ptr %i.ff, align 8, !tbaa !9
  %wide.load4432 = load <4 x double>, ptr %i.fg, align 8, !tbaa !9
  %i.fh = fdiv <4 x double> %wide.load4429, %broadcast.splat4426
  %i.fi = fdiv <4 x double> %wide.load4430, %broadcast.splat4426
  %i.fj = fdiv <4 x double> %wide.load4431, %broadcast.splat4426
  %i.fk = fdiv <4 x double> %wide.load4432, %broadcast.splat4426
  store <4 x double> %i.fh, ptr %i.fd, align 8, !tbaa !9
  store <4 x double> %i.fi, ptr %i.fe, align 8, !tbaa !9
  store <4 x double> %i.fj, ptr %i.ff, align 8, !tbaa !9
  store <4 x double> %i.fk, ptr %i.fg, align 8, !tbaa !9
  %index.next4433 = add nuw i64 %index4428, 16    ; 2 uses
  %i.fl = icmp eq i64 %index.next4433, %n.vec4424
  br i1 %i.fl, label %middle.block4434, label %vector.body4427, !llvm.loop !15

middle.block4434:                                 ; preds = %vector.body4427
  %cmp.n4435 = icmp eq i64 %i.eo, %n.vec4424
  br i1 %cmp.n4435, label %._crit_edge2959, label %vec.epilog.iter.check4440

vec.epilog.iter.check4440:                        ; preds = %middle.block4434
  %min.epilog.iters.check4441 = icmp eq i64 %n.mod.vf4423, 0
  br i1 %min.epilog.iters.check4441, label %vec.epilog.scalar.ph4439.preheader, label %vec.epilog.ph4442, !prof !18

vec.epilog.ph4442:                                ; preds = %vector.main.loop.iter.check4420, %vec.epilog.iter.check4440
  %vec.epilog.resume.val4436 = phi i64 [ %n.vec4424, %vec.epilog.iter.check4440 ], [ 0, %vector.main.loop.iter.check4420 ]
  %n.vec4444 = and i64 %i.eo, -4                  ; 3 uses
  %i.fm = add nsw i64 %n.vec4444, %i.en
  %broadcast.splatinsert4445 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4446 = shufflevector <4 x double> %broadcast.splatinsert4445, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4784 = add i32 %i.ek, %invariant.op
  br label %vec.epilog.vector.body4447

vec.epilog.vector.body4447:                       ; preds = %vec.epilog.vector.body4447, %vec.epilog.ph4442
  %index4448 = phi i64 [ %vec.epilog.resume.val4436, %vec.epilog.ph4442 ], [ %index.next4450, %vec.epilog.vector.body4447 ] ; 2 uses
  %i.fn = trunc i64 %index4448 to i32
  %.reass4785 = add i32 %i.fn, %invariant.op4784
  %i.fo = sext i32 %.reass4785 to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fo ; 2 uses
  %wide.load4449 = load <4 x double>, ptr %i.fp, align 8, !tbaa !9
  %i.fq = fdiv <4 x double> %wide.load4449, %broadcast.splat4446
  store <4 x double> %i.fq, ptr %i.fp, align 8, !tbaa !9
  %index.next4450 = add nuw i64 %index4448, 4     ; 2 uses
  %i.fr = icmp eq i64 %index.next4450, %n.vec4444
  br i1 %i.fr, label %vec.epilog.middle.block4451, label %vec.epilog.vector.body4447, !llvm.loop !19

vec.epilog.middle.block4451:                      ; preds = %vec.epilog.vector.body4447
  %cmp.n4452 = icmp eq i64 %i.eo, %n.vec4444
  br i1 %cmp.n4452, label %._crit_edge2959, label %vec.epilog.scalar.ph4439.preheader

vec.epilog.scalar.ph4439.preheader:               ; preds = %vector.scevcheck4417, %iter.check4438, %vec.epilog.iter.check4440, %vec.epilog.middle.block4451
  %indvars.iv3551.ph = phi i64 [ %i.en, %iter.check4438 ], [ %i.en, %vector.scevcheck4417 ], [ %i.fa, %vec.epilog.iter.check4440 ], [ %i.fm, %vec.epilog.middle.block4451 ] ; 4 uses
  %i.fs = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4720 = and i64 %i.fs, 3                ; 2 uses
  %lcmp.mod4721.not = icmp eq i64 %xtraiter4720, 0
  br i1 %lcmp.mod4721.not, label %vec.epilog.scalar.ph4439.prol.loopexit, label %vec.epilog.scalar.ph4439.prol

vec.epilog.scalar.ph4439.prol:                    ; preds = %vec.epilog.scalar.ph4439.preheader, %vec.epilog.scalar.ph4439.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4439.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4439.preheader ] ; 2 uses
  %prol.iter4722 = phi i64 [ %prol.iter4722.next, %vec.epilog.scalar.ph4439.prol ], [ 0, %vec.epilog.scalar.ph4439.preheader ]
  %i.ft = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.ft
  %i.fu = sext i32 %.reass.prol to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fu ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !9
  %i.fx = fdiv double %i.fw, %i.ce
  store double %i.fx, ptr %i.fv, align 8, !tbaa !9
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4722.next = add i64 %prol.iter4722, 1 ; 2 uses
  %prol.iter4722.cmp.not = icmp eq i64 %prol.iter4722.next, %xtraiter4720
  br i1 %prol.iter4722.cmp.not, label %vec.epilog.scalar.ph4439.prol.loopexit, label %vec.epilog.scalar.ph4439.prol, !llvm.loop !20

vec.epilog.scalar.ph4439.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4439.prol, %vec.epilog.scalar.ph4439.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4439.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4439.prol ]
  %i.fy = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %._crit_edge2959, label %vec.epilog.scalar.ph4439.preheader.new

vec.epilog.scalar.ph4439.preheader.new:           ; preds = %vec.epilog.scalar.ph4439.prol.loopexit
  %invariant.op4786 = add i32 1, %invariant.op
  %invariant.op4787.a = add i32 2, %invariant.op
  %invariant.op4788 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4439

vec.epilog.scalar.ph4439:                         ; preds = %vec.epilog.scalar.ph4439, %vec.epilog.scalar.ph4439.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4439.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4439 ] ; 5 uses
  %i.ga = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.ga
  %i.gb = sext i32 %.reass to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gb ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !9
  %i.ge = fdiv double %i.gd, %i.ce
  store double %i.ge, ptr %i.gc, align 8, !tbaa !9
  %i.gf = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.gf, %invariant.op4786
  %i.gg = sext i32 %.reass.1.reass to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gg ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9
  %i.gj = fdiv double %i.gi, %i.ce
  store double %i.gj, ptr %i.gh, align 8, !tbaa !9
  %i.gk = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gk, %invariant.op4787.a
  %i.gl = sext i32 %.reass.2.reass to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !9
  %i.go = fdiv double %i.gn, %i.ce
  store double %i.go, ptr %i.gm, align 8, !tbaa !9
  %i.gp = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gp, %invariant.op4788
  %i.gq = sext i32 %.reass.3.reass to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gq ; 2 uses
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !9
  %i.gt = fdiv double %i.gs, %i.ce
  store double %i.gt, ptr %i.gr, align 8, !tbaa !9
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4439, !llvm.loop !21

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4439.prol.loopexit, %vec.epilog.scalar.ph4439, %middle.block4434, %vec.epilog.middle.block4451, %._crit_edge2954
  %.not26772979 = icmp sgt i32 %i.bv, %i.br
  br i1 %.not26772979, label %bb.u, label %.lr.ph2983

.lr.ph2983:                                       ; preds = %._crit_edge2959
  %i.gu = mul i32 %i.bq, %i.n                     ; 6 uses
  %i.gv = add i32 %i.bw, %i.gu                    ; 6 uses
  %i.gw = sext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.p, i64 %i.gw ; 5 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !8
  %i.gy = xor i32 %i.bs, -1
  %i.gz = add i32 %i.bq, %i.gy                    ; 3 uses
  store i32 %i.gz, ptr %i.d, align 4, !tbaa !8
  %.not26972969 = icmp sgt i32 %i.ek, %i.gz
  %i.ha = add i32 %.neg.le, %i.ac
  %invariant.op2985 = add i32 %i.by, %i.ha
  %i.hb = add i32 %i.gu, %.neg.le
  %invariant.op2974 = add i32 %i.hb, %i.bw        ; 3 uses
  %i.hc = sext i32 %i.bv to i64                   ; 6 uses
  %i.hd = sub i32 %.02605.ph, %i.bs
  %i.he = zext nneg i32 %i.ek to i64              ; 11 uses
  %i.hf = sext i32 %i.gz to i64                   ; 4 uses
  %smax4280 = call i64 @llvm.smax.i64(i64 %i.hf, i64 %i.he)
  %i.hg = sub nsw i64 %smax4280, %i.he            ; 2 uses
  %i.hh = add i32 %i.bw, %i.ek
  %i.hi = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.hj = xor i32 %i.hi, -1
  %i.hk = add i32 %.02605.ph, %i.hj
  %i.hl = mul i32 %.0255729803502, %i.hk
  %i.hm = add i32 %i.hh, %i.hl
  %i.hn = add i32 %i.bw, 1
  %i.ho = add i32 %i.hn, %i.ek
  %i.hp = add i32 %i.ho, %i.gu
  %i.hq = sub i32 %i.hp, %.02605.ph               ; 2 uses
  %i.hr = add i32 %i.bw, %i.ek
  %i.hs = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 2 uses
  %i.ht = xor i32 %i.hs, -1
  %i.hu = add i32 %.02605.ph, %i.ht
  %i.hv = mul i32 %.0255729803502, %i.hu
  %i.hw = add i32 %i.hr, %i.hv
  %smax4287 = call i64 @llvm.smax.i64(i64 %i.hf, i64 %i.he)
  %i.hx = shl nuw nsw i64 %smax4287, 3            ; 2 uses
  %i.hy = shl nuw nsw i64 %i.he, 3                ; 2 uses
  %i.hz = sub nsw i64 %i.hx, %i.hy
  %scevgep4288.a = getelementptr i8, ptr %scevgep4286.a, i64 %i.hz
  %i.ia = add i32 %i.bh, %i.by
  %i.ib = sub i32 %i.ia, %i.hs
  %i.ic = add i32 %i.bw, 1
  %i.id = add i32 %i.ic, %i.ek
  %i.ie = add i32 %i.id, %i.gu
  %i.if = sub i32 %i.ie, %.02605.ph
  %i.ig = sext i32 %i.if to i64
  %i.ih = shl nsw i64 %i.ig, 3                    ; 2 uses
  %scevgep4295 = getelementptr i8, ptr %scevgep4294.a, i64 %i.ih
  %i.ii = add i64 %i.hx, %i.ih
  %i.ij = sub i64 %i.ii, %i.hy
  %scevgep4297 = getelementptr i8, ptr %scevgep4296, i64 %i.ij
  %smax4302 = call i64 @llvm.smax.i64(i64 %i.hf, i64 %i.he)
  %i.ik = add nuw i64 %smax4302, 1
  %i.il = sub i64 %i.ik, %i.he                    ; 7 uses
  %i.im = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.in = sub i32 %i.im, %i.bs
  %i.io = add i32 %.02605.ph, -1                  ; 2 uses
  %i.ip = add i32 %i.io, %i.bw
  %i.iq = sub i32 %i.io, %i.im
  %i.ir = mul i32 %.0255729803502, %i.iq
  %i.is = add i32 %i.ip, %i.ir
  %i.it = sub i32 %i.is, %i.im
  %i.iu = add i32 %i.bj, %i.by
  %i.iv = sub i32 %i.iu, %i.im                    ; 2 uses
  %i.iw = add i32 %i.bw, %i.gu
  %i.ix = sub i32 %i.iw, %i.im                    ; 2 uses
  %i.iy = add i32 %.02605.ph, -1                  ; 2 uses
  %i.iz = add i32 %i.iy, %i.bw
  %i.ja = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.jb = sub i32 %i.iy, %i.ja
  %i.jc = mul i32 %.0255729803502, %i.jb
  %i.jd = add i32 %i.iz, %i.jc
  %i.je = sub i32 %i.jd, %i.ja
  %i.jf = sub i32 %i.ja, %i.bs
  %i.jg = add i32 %i.bn, %i.by
  %i.jh = sub i32 %i.jg, %i.ja                    ; 2 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 3                    ; 2 uses
  %scevgep4359.a = getelementptr i8, ptr %scevgep4358.a, i64 %i.jj
  %scevgep4361.a = getelementptr i8, ptr %scevgep4360.a, i64 %i.jj
  %i.jk = add i32 %i.bw, %i.gu
  %i.jl = sub i32 %i.jk, %i.ja                    ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = shl nsw i64 %i.jm, 3                    ; 2 uses
  %scevgep4368.a = getelementptr i8, ptr %scevgep4367.a, i64 %i.jn
  %scevgep4370 = getelementptr i8, ptr %scevgep4369, i64 %i.jn
  %i.jo = shl nsw i64 %i.gw, 3
  %scevgep4373 = getelementptr i8, ptr %scevgep4372, i64 %i.jo
  %i.jp = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.jq = sub i32 %i.jp, %i.bs
  %min.iters.check4304 = icmp ult i64 %i.il, 4
  %i.jr = trunc i64 %i.hg to i32                  ; 2 uses
  %i.js = add i32 %i.hq, %i.jr
  %i.jt = icmp slt i32 %i.js, %i.hq
  %i.ju = icmp ugt i64 %i.hg, 4294967295
  %i.jv = or i1 %i.jt, %i.ju
  %min.iters.check4306 = icmp ult i64 %i.il, 16
  %n.mod.vf4308 = and i64 %i.il, 12
  %n.vec4309 = and i64 %i.il, -16                 ; 4 uses
  %i.jw = add i64 %n.vec4309, %i.he
  %cmp.n4324 = icmp eq i64 %i.il, %n.vec4309
  %min.epilog.iters.check4330 = icmp eq i64 %n.mod.vf4308, 0
  %n.vec4333 = and i64 %i.il, -4                  ; 3 uses
  %i.jx = add i64 %n.vec4333, %i.he
  %cmp.n4342 = icmp eq i64 %i.il, %n.vec4333
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph2983, %._crit_edge2973
  %indvar = phi i32 [ 0, %.lr.ph2983 ], [ %indvar.next, %._crit_edge2973 ] ; 12 uses
  %indvars.iv3565 = phi i64 [ %i.hc, %.lr.ph2983 ], [ %indvars.iv.next3566, %._crit_edge2973 ] ; 5 uses
  %indvars.iv3558 = phi i32 [ %i.hd, %.lr.ph2983 ], [ %indvars.iv.next3559, %._crit_edge2973 ] ; 3 uses
  %i.jy = add i32 %i.bv, %indvar
  %i.jz = add i32 %i.jq, %indvar                  ; 2 uses
  %i.ka = zext i32 %i.jz to i64
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %i.kc = mul i32 %.0255729803502, %indvar
  %i.kd = add i32 %i.je, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = shl nsw i64 %i.ke, 3                    ; 2 uses
  %scevgep4351 = getelementptr i8, ptr %scevgep4349.a, i64 %i.kf ; 5 uses
  %i.kg = add i32 %i.jf, %indvar
  %i.kh = zext i32 %i.kg to i64
  %i.ki = shl nuw nsw i64 %i.kh, 3                ; 3 uses
  %i.kj = getelementptr i8, ptr %scevgep4352.a, i64 %i.kf
  %scevgep4353 = getelementptr i8, ptr %i.kj, i64 %i.ki ; 5 uses
  %i.kk = add i32 %i.jh, %indvar
  %i.kl = sext i32 %i.kk to i64
  %i.km = shl nsw i64 %i.kl, 3                    ; 2 uses
  %scevgep4355 = getelementptr i8, ptr %scevgep4354.a, i64 %i.km
  %scevgep4357.a = getelementptr i8, ptr %scevgep4356.a, i64 %i.km
  %scevgep4362 = getelementptr i8, ptr %scevgep4361.a, i64 %i.ki
  %i.kn = add i32 %i.jl, %indvar
  %i.ko = sext i32 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 3                    ; 2 uses
  %scevgep4364 = getelementptr i8, ptr %scevgep4363.a, i64 %i.kp
  %scevgep4366.a = getelementptr i8, ptr %scevgep4365.a, i64 %i.kp
  %scevgep4371 = getelementptr i8, ptr %scevgep4370, i64 %i.ki
  %i.kq = add i32 %i.in, %indvar                  ; 3 uses
  %i.kr = mul i32 %.0255729803502, %indvar
  %i.ks = add i32 %i.it, %i.kr                    ; 2 uses
  %i.kt = mul i32 %.0255729803502, %indvar
  %i.ku = add i32 %i.hw, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 3                    ; 2 uses
  %scevgep4285 = getelementptr i8, ptr %scevgep, i64 %i.kw ; 2 uses
  %scevgep4289 = getelementptr i8, ptr %scevgep4288.a, i64 %i.kw ; 2 uses
  %i.kx = add i32 %i.ib, %indvar
  %i.ky = sext i32 %i.kx to i64
  %i.kz = shl nsw i64 %i.ky, 3                    ; 2 uses
  %scevgep4291 = getelementptr i8, ptr %scevgep4290.a, i64 %i.kz
  %scevgep4293 = getelementptr i8, ptr %scevgep4292.a, i64 %i.kz
  %i.la = mul i32 %.0255729803502, %indvar
  %i.lb = add i32 %i.hm, %i.la                    ; 2 uses
  %.not26952960 = icmp slt i64 %indvars.iv3565, %i.hc
  br i1 %.not26952960, label %._crit_edge2964, label %.lr.ph2963

.lr.ph2963:                                       ; preds = %bb.t
  %i.lc = trunc nsw i64 %indvars.iv3565 to i32
  %i.ld = mul i32 %.0255729803501, %i.lc
  %invariant.op2965 = add i32 %i.ld, %i.bw        ; 4 uses
  %i.le = trunc i64 %indvars.iv3565 to i32
  %i.lf = sub i32 %i.le, %i.bq                    ; 2 uses
  %i.lg = add i32 %i.gv, %i.lf
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lh ; 4 uses
  %i.lj = add i32 %i.cb, %i.lf
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lk ; 4 uses
  %min.iters.check4395 = icmp ult i32 %i.jz, 7
  br i1 %min.iters.check4395, label %scalar.ph4394.preheader, label %vector.scevcheck4344

vector.scevcheck4344:                             ; preds = %.lr.ph2963
  %i.lm = add i32 %i.ks, %i.kq
  %i.ln = icmp slt i32 %i.lm, %i.ks
  %i.lo = add i32 %i.iv, %i.kq
  %i.lp = icmp slt i32 %i.lo, %i.iv
  %i.lq = add i32 %i.ix, %i.kq
  %i.lr = icmp slt i32 %i.lq, %i.ix
  %i.ls = or i1 %i.ln, %i.lp
  %i.lt = or i1 %i.ls, %i.lr
  br i1 %i.lt, label %scalar.ph4394.preheader, label %vector.memcheck4348

vector.memcheck4348:                              ; preds = %vector.scevcheck4344
  %bound04374 = icmp ult ptr %scevgep4351, %scevgep4357.a
  %bound14375 = icmp ult ptr %scevgep4355, %scevgep4353
  %found.conflict4376 = and i1 %bound04374, %bound14375
  %bound04377 = icmp ult ptr %scevgep4351, %scevgep4362
  %bound14378 = icmp ult ptr %scevgep4359.a, %scevgep4353
  %found.conflict4379 = and i1 %bound04377, %bound14378
  %conflict.rdx4380 = or i1 %found.conflict4376, %found.conflict4379
  %bound04381 = icmp ult ptr %scevgep4351, %scevgep4366.a
  %bound14382 = icmp ult ptr %scevgep4364, %scevgep4353
  %found.conflict4383 = and i1 %bound04381, %bound14382
  %conflict.rdx4384 = or i1 %conflict.rdx4380, %found.conflict4383
  %bound04385 = icmp ult ptr %scevgep4351, %scevgep4371
  %bound14386 = icmp ult ptr %scevgep4368.a, %scevgep4353
  %found.conflict4387 = and i1 %bound04385, %bound14386
  %conflict.rdx4388 = or i1 %conflict.rdx4384, %found.conflict4387
  %bound04389 = icmp ult ptr %scevgep4351, %scevgep4373
  %bound14390 = icmp ult ptr %i.gx, %scevgep4353
  %found.conflict4391 = and i1 %bound04389, %bound14390
  %conflict.rdx4392 = or i1 %conflict.rdx4388, %found.conflict4391
  br i1 %conflict.rdx4392, label %scalar.ph4394.preheader, label %vector.ph4396

vector.ph4396:                                    ; preds = %vector.memcheck4348
  %n.vec4398 = and i64 %i.kb, 8589934584          ; 3 uses
  %i.lu = add nsw i64 %n.vec4398, %i.hc
  %i.lv = load double, ptr %i.li, align 8, !tbaa !9, !alias.scope !22
  %broadcast.splatinsert4407 = insertelement <4 x double> poison, double %i.lv, i64 0
  %broadcast.splat4408 = shufflevector <4 x double> %broadcast.splatinsert4407, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lw = load double, ptr %i.ll, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert4399 = insertelement <4 x double> poison, double %i.lw, i64 0
  %broadcast.splat4400 = shufflevector <4 x double> %broadcast.splatinsert4399, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lx = fneg <4 x double> %broadcast.splat4400  ; 2 uses
  %i.ly = load double, ptr %i.gx, align 8, !tbaa !9, !alias.scope !27
  %broadcast.splatinsert4411 = insertelement <4 x double> poison, double %i.ly, i64 0
  %broadcast.splat4412 = shufflevector <4 x double> %broadcast.splatinsert4411, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4401

vector.body4401:                                  ; preds = %vector.body4401, %vector.ph4396
  %index4402 = phi i64 [ 0, %vector.ph4396 ], [ %index.next4413, %vector.body4401 ] ; 2 uses
  %i.lz = trunc i64 %index4402 to i32
  %i.ma = add i32 %i.bv, %i.lz                    ; 2 uses
  %i.mb = add i32 %invariant.op2965, %i.ma
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mc ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32 ; 2 uses
  %wide.load4403 = load <4 x double>, ptr %i.md, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load4404.a = load <4 x double>, ptr %i.me, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %i.mf = sub i32 %i.ma, %i.bq                    ; 2 uses
  %i.mg = add i32 %i.cb, %i.mf
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %wide.load4405.a = load <4 x double>, ptr %i.mi, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %wide.load4406 = load <4 x double>, ptr %i.mj, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %i.mk = fneg <4 x double> %wide.load4405.a
  %i.ml = fneg <4 x double> %wide.load4406
  %i.mm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mk, <4 x double> %broadcast.splat4408, <4 x double> %wide.load4403)
  %i.mn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ml, <4 x double> %broadcast.splat4408, <4 x double> %wide.load4404.a)
  %i.mo = add i32 %i.gv, %i.mf
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %wide.load4409 = load <4 x double>, ptr %i.mq, align 8, !tbaa !9, !alias.scope !35
  %wide.load4410 = load <4 x double>, ptr %i.mr, align 8, !tbaa !9, !alias.scope !35
  %i.ms = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lx, <4 x double> %wide.load4409, <4 x double> %i.mm)
  %i.mt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lx, <4 x double> %wide.load4410, <4 x double> %i.mn)
  %i.mu = fmul <4 x double> %wide.load4405.a, %broadcast.splat4412
  %i.mv = fmul <4 x double> %wide.load4406, %broadcast.splat4412
  %i.mw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mu, <4 x double> %broadcast.splat4400, <4 x double> %i.ms)
  %i.mx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mv, <4 x double> %broadcast.splat4400, <4 x double> %i.mt)
  store <4 x double> %i.mw, ptr %i.md, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  store <4 x double> %i.mx, ptr %i.me, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next4413 = add nuw i64 %index4402, 8     ; 2 uses
  %i.my = icmp eq i64 %index.next4413, %n.vec4398
  br i1 %i.my, label %middle.block4414, label %vector.body4401, !llvm.loop !36

middle.block4414:                                 ; preds = %vector.body4401
  %cmp.n4415 = icmp eq i64 %i.kb, %n.vec4398
  br i1 %cmp.n4415, label %._crit_edge2964, label %scalar.ph4394.preheader

scalar.ph4394.preheader:                          ; preds = %vector.memcheck4348, %vector.scevcheck4344, %.lr.ph2963, %middle.block4414
  %indvars.iv3555.ph = phi i64 [ %i.hc, %vector.memcheck4348 ], [ %i.hc, %vector.scevcheck4344 ], [ %i.hc, %.lr.ph2963 ], [ %i.lu, %middle.block4414 ] ; 5 uses
  %i.mz = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.na = sub i32 %indvars.iv3558, %i.mz
  %xtraiter4723 = and i32 %i.na, 1
  %lcmp.mod4724.not = icmp eq i32 %xtraiter4723, 0
  br i1 %lcmp.mod4724.not, label %scalar.ph4394.prol.loopexit, label %scalar.ph4394.prol

scalar.ph4394.prol:                               ; preds = %scalar.ph4394.preheader
  %i.nb = trunc nsw i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.nb
  %i.nc = sext i32 %.reass2966.prol to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !9
  %i.nf = trunc i64 %indvars.iv3555.ph to i32
  %i.ng = sub i32 %i.nf, %i.bq                    ; 2 uses
  %i.nh = add i32 %i.cb, %i.ng
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ni
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !9 ; 2 uses
  %i.nl = load double, ptr %i.li, align 8, !tbaa !9
  %i.nm = fneg double %i.nk
  %i.nn = call double @llvm.fmuladd.f64(double %i.nm, double %i.nl, double %i.ne)
  %i.no = load double, ptr %i.ll, align 8, !tbaa !9 ; 2 uses
  %i.np = add i32 %i.gv, %i.ng
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !9
  %i.nt = fneg double %i.no
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.nn)
  %i.nv = load double, ptr %i.gx, align 8, !tbaa !9
  %i.nw = fmul double %i.nk, %i.nv
  %i.nx = call double @llvm.fmuladd.f64(double %i.nw, double %i.no, double %i.nu)
  store double %i.nx, ptr %i.nd, align 8, !tbaa !9
  %indvars.iv.next3556.prol = add nsw i64 %indvars.iv3555.ph, 1
  br label %scalar.ph4394.prol.loopexit

scalar.ph4394.prol.loopexit:                      ; preds = %scalar.ph4394.prol, %scalar.ph4394.preheader
  %indvars.iv3555.unr = phi i64 [ %indvars.iv3555.ph, %scalar.ph4394.preheader ], [ %indvars.iv.next3556.prol, %scalar.ph4394.prol ]
  %i.ny = icmp eq i32 %i.jy, %i.mz
  br i1 %i.ny, label %._crit_edge2964, label %scalar.ph4394

scalar.ph4394:                                    ; preds = %scalar.ph4394.prol.loopexit, %scalar.ph4394
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556.1, %scalar.ph4394 ], [ %indvars.iv3555.unr, %scalar.ph4394.prol.loopexit ] ; 4 uses
  %i.nz = trunc nsw i64 %indvars.iv3555 to i32
  %.reass2966 = add i32 %invariant.op2965, %i.nz
  %i.oa = sext i32 %.reass2966 to i64
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.oa ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !9
  %i.od = trunc i64 %indvars.iv3555 to i32
  %i.oe = sub i32 %i.od, %i.bq                    ; 2 uses
  %i.of = add i32 %i.cb, %i.oe
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.og
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !9 ; 2 uses
  %i.oj = load double, ptr %i.li, align 8, !tbaa !9
  %i.ok = fneg double %i.oi
  %i.ol = call double @llvm.fmuladd.f64(double %i.ok, double %i.oj, double %i.oc)
  %i.om = load double, ptr %i.ll, align 8, !tbaa !9 ; 2 uses
  %i.on = add i32 %i.gv, %i.oe
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !9
  %i.or = fneg double %i.om
  %i.os = call double @llvm.fmuladd.f64(double %i.or, double %i.oq, double %i.ol)
  %i.ot = load double, ptr %i.gx, align 8, !tbaa !9
  %i.ou = fmul double %i.oi, %i.ot
  %i.ov = call double @llvm.fmuladd.f64(double %i.ou, double %i.om, double %i.os)
  store double %i.ov, ptr %i.ob, align 8, !tbaa !9
  %indvars.iv.next3556 = add nsw i64 %indvars.iv3555, 1 ; 2 uses
  %i.ow = trunc nsw i64 %indvars.iv.next3556 to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.ow
  %i.ox = sext i32 %.reass2966.1 to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ox ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !9
  %i.pa = trunc i64 %indvars.iv.next3556 to i32
  %i.pb = sub i32 %i.pa, %i.bq                    ; 2 uses
  %i.pc = add i32 %i.cb, %i.pb
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pd
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !9 ; 2 uses
  %i.pg = load double, ptr %i.li, align 8, !tbaa !9
  %i.ph = fneg double %i.pf
  %i.pi = call double @llvm.fmuladd.f64(double %i.ph, double %i.pg, double %i.oz)
  %i.pj = load double, ptr %i.ll, align 8, !tbaa !9 ; 2 uses
  %i.pk = add i32 %i.gv, %i.pb
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pl
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !9
  %i.po = fneg double %i.pj
  %i.pp = call double @llvm.fmuladd.f64(double %i.po, double %i.pn, double %i.pi)
  %i.pq = load double, ptr %i.gx, align 8, !tbaa !9
  %i.pr = fmul double %i.pf, %i.pq
  %i.ps = call double @llvm.fmuladd.f64(double %i.pr, double %i.pj, double %i.pp)
  store double %i.ps, ptr %i.oy, align 8, !tbaa !9
  %indvars.iv.next3556.1 = add nsw i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4394, !llvm.loop !37

._crit_edge2964:                                  ; preds = %scalar.ph4394.prol.loopexit, %scalar.ph4394, %middle.block4414, %bb.t
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4327

iter.check4327:                                   ; preds = %._crit_edge2964
  %i.pt = trunc nsw i64 %indvars.iv3565 to i32    ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985, %i.pt
  %i.pu = sext i32 %.reass2968.reass to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pu ; 3 uses
  %i.pw = mul i32 %.0255729803502, %i.pt
  %invariant.op2976 = add i32 %i.pw, %i.bw        ; 3 uses
  br i1 %min.iters.check4304, label %vec.epilog.scalar.ph4328.preheader, label %vector.scevcheck4279

vector.scevcheck4279:                             ; preds = %iter.check4327
  %i.px = add i32 %i.lb, %i.jr
  %i.py = icmp slt i32 %i.px, %i.lb
  %i.pz = or i1 %i.py, %i.jv
  br i1 %i.pz, label %vec.epilog.scalar.ph4328.preheader, label %vector.memcheck4283

vector.memcheck4283:                              ; preds = %vector.scevcheck4279
  %bound0 = icmp ult ptr %scevgep4285, %scevgep4293
  %bound1 = icmp ult ptr %scevgep4291, %scevgep4289
  %found.conflict = and i1 %bound0, %bound1
  %bound04298 = icmp ult ptr %scevgep4285, %scevgep4297
  %bound14299 = icmp ult ptr %scevgep4295, %scevgep4289
  %found.conflict4300 = and i1 %bound04298, %bound14299
  %conflict.rdx4301 = or i1 %found.conflict, %found.conflict4300
  br i1 %conflict.rdx4301, label %vec.epilog.scalar.ph4328.preheader, label %vector.main.loop.iter.check4305

vector.main.loop.iter.check4305:                  ; preds = %vector.memcheck4283
  br i1 %min.iters.check4306, label %vec.epilog.ph4331, label %vector.ph4307

vector.ph4307:                                    ; preds = %vector.main.loop.iter.check4305
  %i.qa = load double, ptr %i.pv, align 8, !tbaa !9, !alias.scope !38
  %.scalar = fneg double %i.qa
  %i.qb = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.qc = shufflevector <4 x double> %i.qb, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4312

vector.body4312:                                  ; preds = %vector.body4312, %vector.ph4307
  %index4313 = phi i64 [ 0, %vector.ph4307 ], [ %index.next4322, %vector.body4312 ] ; 2 uses
  %i.qd = trunc i64 %index4313 to i32
  %i.qe = add i32 %i.ek, %i.qd                    ; 2 uses
  %i.qf = add i32 %invariant.op2974, %i.qe
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qg ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qh, i64 96
  %wide.load4314.a = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !41
  %wide.load4315.a = load <4 x double>, ptr %i.qi, align 8, !tbaa !9, !alias.scope !41
  %wide.load4316.a = load <4 x double>, ptr %i.qj, align 8, !tbaa !9, !alias.scope !41
  %wide.load4317.a = load <4 x double>, ptr %i.qk, align 8, !tbaa !9, !alias.scope !41
  %i.ql = add i32 %invariant.op2976, %i.qe
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qm ; 5 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 32 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 64 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 96 ; 2 uses
  %wide.load4318.a = load <4 x double>, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4319 = load <4 x double>, ptr %i.qo, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4320 = load <4 x double>, ptr %i.qp, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4321 = load <4 x double>, ptr %i.qq, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.qr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qc, <4 x double> %wide.load4314.a, <4 x double> %wide.load4318.a)
  %i.qs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qc, <4 x double> %wide.load4315.a, <4 x double> %wide.load4319)
  %i.qt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qc, <4 x double> %wide.load4316.a, <4 x double> %wide.load4320)
  %i.qu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qc, <4 x double> %wide.load4317.a, <4 x double> %wide.load4321)
  store <4 x double> %i.qr, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qs, ptr %i.qo, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qt, ptr %i.qp, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qu, ptr %i.qq, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4322 = add nuw i64 %index4313, 16    ; 2 uses
  %i.qv = icmp eq i64 %index.next4322, %n.vec4309
  br i1 %i.qv, label %middle.block4323, label %vector.body4312, !llvm.loop !46

middle.block4323:                                 ; preds = %vector.body4312
  br i1 %cmp.n4324, label %._crit_edge2973, label %vec.epilog.iter.check4329

vec.epilog.iter.check4329:                        ; preds = %middle.block4323
  br i1 %min.epilog.iters.check4330, label %vec.epilog.scalar.ph4328.preheader, label %vec.epilog.ph4331, !prof !18

vec.epilog.ph4331:                                ; preds = %vector.main.loop.iter.check4305, %vec.epilog.iter.check4329
  %vec.epilog.resume.val4325 = phi i64 [ %n.vec4309, %vec.epilog.iter.check4329 ], [ 0, %vector.main.loop.iter.check4305 ]
  %i.qw = load double, ptr %i.pv, align 8, !tbaa !9, !alias.scope !38
  %.scalar4705 = fneg double %i.qw
  %i.qx = insertelement <4 x double> poison, double %.scalar4705, i64 0
  %i.qy = shufflevector <4 x double> %i.qx, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4336

vec.epilog.vector.body4336:                       ; preds = %vec.epilog.vector.body4336, %vec.epilog.ph4331
  %index4337 = phi i64 [ %vec.epilog.resume.val4325, %vec.epilog.ph4331 ], [ %index.next4340, %vec.epilog.vector.body4336 ] ; 2 uses
  %i.qz = trunc i64 %index4337 to i32
  %i.ra = add i32 %i.ek, %i.qz                    ; 2 uses
  %i.rb = add i32 %invariant.op2974, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rc
  %wide.load4338 = load <4 x double>, ptr %i.rd, align 8, !tbaa !9, !alias.scope !41
  %i.re = add i32 %invariant.op2976, %i.ra
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rf ; 2 uses
  %wide.load4339 = load <4 x double>, ptr %i.rg, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.rh = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qy, <4 x double> %wide.load4338, <4 x double> %wide.load4339)
  store <4 x double> %i.rh, ptr %i.rg, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4340 = add nuw i64 %index4337, 4     ; 2 uses
  %i.ri = icmp eq i64 %index.next4340, %n.vec4333
  br i1 %i.ri, label %vec.epilog.middle.block4341, label %vec.epilog.vector.body4336, !llvm.loop !47

vec.epilog.middle.block4341:                      ; preds = %vec.epilog.vector.body4336
  br i1 %cmp.n4342, label %._crit_edge2973, label %vec.epilog.scalar.ph4328.preheader

vec.epilog.scalar.ph4328.preheader:               ; preds = %vector.memcheck4283, %vector.scevcheck4279, %iter.check4327, %vec.epilog.iter.check4329, %vec.epilog.middle.block4341
  %indvars.iv3562.ph = phi i64 [ %i.he, %iter.check4327 ], [ %i.he, %vector.scevcheck4279 ], [ %i.he, %vector.memcheck4283 ], [ %i.jw, %vec.epilog.iter.check4329 ], [ %i.jx, %vec.epilog.middle.block4341 ]
  br label %vec.epilog.scalar.ph4328

vec.epilog.scalar.ph4328:                         ; preds = %vec.epilog.scalar.ph4328.preheader, %vec.epilog.scalar.ph4328
  %indvars.iv3562 = phi i64 [ %indvars.iv.next3563, %vec.epilog.scalar.ph4328 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4328.preheader ] ; 3 uses
  %i.rj = load double, ptr %i.pv, align 8, !tbaa !9
  %i.rk = trunc nuw nsw i64 %indvars.iv3562 to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.rk
  %i.rl = sext i32 %.reass2975 to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rl
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !9
  %.reass2977 = add i32 %invariant.op2976, %i.rk
  %i.ro = sext i32 %.reass2977 to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ro ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !9
  %i.rr = fneg double %i.rj
  %i.rs = call double @llvm.fmuladd.f64(double %i.rr, double %i.rn, double %i.rq)
  store double %i.rs, ptr %i.rp, align 8, !tbaa !9
  %indvars.iv.next3563 = add nuw nsw i64 %indvars.iv3562, 1
  %.not2697.not = icmp slt i64 %indvars.iv3562, %i.hf
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4328, label %._crit_edge2973, !llvm.loop !48

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4328, %middle.block4323, %vec.epilog.middle.block4341, %._crit_edge2964
  %indvars.iv.next3566 = add nsw i64 %indvars.iv3565, 1 ; 2 uses
  %indvars.iv.next3559 = add i32 %indvars.iv3558, 1
  %lftr.wideiv3568 = trunc i64 %indvars.iv.next3566 to i32
  %exitcond3569.not = icmp eq i32 %i.bq, %lftr.wideiv3568
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond3569.not, label %._crit_edge2984, label %bb.t, !llvm.loop !49

._crit_edge2984:                                  ; preds = %._crit_edge2973
  store i32 1, ptr %i.a, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge2984, %._crit_edge2959
  br i1 %.not26533001, label %bb.x, label %.lr.ph2998

.lr.ph2998:                                       ; preds = %bb.u
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !8
  store i32 %i.br, ptr %i.b, align 4, !tbaa !8
  %i.rt = add i32 %.neg.le, %i.ac
  %i.ru = add i32 %i.rt, %i.by
  %i.rv = sext i32 %i.br to i64
  %i.rw = zext i32 %i.bq to i64
  %i.rx = add i32 %i.bu, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2998, %._crit_edge2990
  %indvars.iv3574 = phi i64 [ %i.rw, %.lr.ph2998 ], [ %indvars.iv.next3575, %._crit_edge2990 ] ; 4 uses
  %indvars.iv3570 = phi i32 [ %i.ej, %.lr.ph2998 ], [ %indvars.iv.next3571, %._crit_edge2990 ] ; 2 uses
  %.42585.neg2996 = phi i32 [ %.neg.le, %.lr.ph2998 ], [ %.42585.neg, %._crit_edge2990 ] ; 2 uses
  %i.ry = trunc i64 %indvars.iv3574 to i32
  %i.rz = sub i32 %i.ry, %.pre3786                ; 2 uses
  %i.sa = call i32 @llvm.smax.i32(i32 %i.rz, i32 %i.bv)
  %.not26942986 = icmp sgt i32 %i.sa, %i.br
  br i1 %.not26942986, label %._crit_edge2990, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.v
  %i.sb = call i32 @llvm.smax.i32(i32 %indvars.iv3570, i32 %i.bv)
  %smax = sext i32 %i.sb to i64
  %i.sc = add i32 %.42585.neg2996, %i.bq
  %i.sd = trunc i64 %indvars.iv3574 to i32
  %i.se = mul i32 %i.n, %i.sd                     ; 2 uses
  %i.sf = add i32 %i.sc, %i.se
  %i.sg = add i32 %i.sf, %i.bw
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sh
  %i.sj = add i32 %i.se, %.42585.neg2996
  %invariant.op2991 = add i32 %i.sj, %i.bw
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph2989, %bb.w
  %indvars.iv3572 = phi i64 [ %smax, %.lr.ph2989 ], [ %indvars.iv.next3573, %bb.w ] ; 3 uses
  %i.sk = trunc nsw i64 %indvars.iv3572 to i32    ; 2 uses
  %i.sl = add i32 %i.ru, %i.sk
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sm
  %i.so = load double, ptr %i.sn, align 8, !tbaa !9
  %i.sp = load double, ptr %i.si, align 8, !tbaa !9
  %.reass2992 = add i32 %invariant.op2991, %i.sk
  %i.sq = sext i32 %.reass2992 to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sq ; 2 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !9
  %i.st = fneg double %i.so
  %i.su = call double @llvm.fmuladd.f64(double %i.st, double %i.sp, double %i.ss)
  store double %i.su, ptr %i.sr, align 8, !tbaa !9
  %indvars.iv.next3573 = add nsw i64 %indvars.iv3572, 1
  %.not2694.not = icmp slt i64 %indvars.iv3572, %i.rv
  br i1 %.not2694.not, label %bb.w, label %._crit_edge2990, !llvm.loop !50

._crit_edge2990:                                  ; preds = %bb.w, %bb.v
  %indvars.iv.next3575 = add i64 %indvars.iv3574, 1 ; 2 uses
  %i.sv = trunc i64 %indvars.iv3574 to i32
  %.42585.neg = xor i32 %i.sv, -1
  %indvars.iv.next3571 = add i32 %indvars.iv3570, 1
  %lftr.wideiv3577 = trunc i64 %indvars.iv.next3575 to i32
  %exitcond3578.not = icmp eq i32 %i.rx, %lftr.wideiv3577
  br i1 %exitcond3578.not, label %._crit_edge2999, label %bb.v, !llvm.loop !51

._crit_edge2999:                                  ; preds = %._crit_edge2990
  store i32 %i.rz, ptr %i.d, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge2999, %bb.u
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %.pre3863 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph3102, %bb.bi
  %i.ajg = phi i32 [ %i.ajd, %.lr.ph3102 ], [ %i.ajz, %bb.bi ]
  %i.ajh = phi i32 [ %.pre3863, %.lr.ph3102 ], [ %i.aka, %bb.bi ] ; 3 uses
  %.42556.in3099 = phi i32 [ %i.ajb, %.lr.ph3102 ], [ %.425563100, %bb.bi ] ; 3 uses
  %.425563100 = add nsw i32 %.42556.in3099, -1    ; 4 uses
  %i.aji = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.ajj = sub i32 %.425563100, %i.ahb
  %i.ajk = add i32 %i.ajj, %i.aji
  %i.ajl = sdiv i32 %i.ajk, %i.ajh                ; 2 uses
  store i32 %i.ajl, ptr %i.m, align 4, !tbaa !8
  %i.ajm = icmp sgt i32 %i.ajl, 0
  br i1 %i.ajm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %reass.sub3528 = sub i32 %i.ahb, %.42556.in3099
  %i.ajn = add i32 %reass.sub3528, 1
  %i.ajo = add i32 %i.ajn, %i.ajh
  %i.ajp = mul nsw i32 %i.ajo, %i.n               ; 2 uses
  %i.ajq = add nsw i32 %i.ajp, %.425563100
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ajr
  %i.ajt = add nsw i32 %i.ajp, %.42556.in3099
  %i.aju = sext i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aju
  %i.ajw = add nsw i32 %i.aji, %i.ahb
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ajx
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.ajs, ptr noundef nonnull %i.f, ptr noundef %i.ajv, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ajy, ptr noundef nonnull %i.ajf, ptr noundef nonnull %i.j) #4
  %.pre3862 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3864 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.ajz = phi i32 [ %i.ajg, %bb.bg ], [ %.pre3864, %bb.bh ] ; 2 uses
  %i.aka = phi i32 [ %i.ajh, %bb.bg ], [ %.pre3862, %bb.bh ]
  %.not2683.not = icmp sgt i32 %.425563100, %i.ajz
  br i1 %.not2683.not, label %bb.bg, label %._crit_edge3103, !llvm.loop !62

._crit_edge3103:                                  ; preds = %bb.bi, %bb.bf
  br i1 %.not, label %.loopexit2882, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge3103
  store i32 %i.ahj, ptr %i.c, align 4, !tbaa !8
  %i.akb = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.akb, ptr %i.b, align 4, !tbaa !8
  %i.akc = icmp slt i32 %i.akb, 0
  %i.akd = icmp slt i32 %i.ahi, 1
  %i.ake = icmp sgt i32 %i.ahi, -1
  %.in26843104 = select i1 %i.akc, i1 %i.akd, i1 %i.ake
  br i1 %.in26843104, label %.lr.ph3107, label %.loopexit2882

.lr.ph3107:                                       ; preds = %bb.bj, %.lr.ph3107
  %.925903105 = phi i32 [ %i.akw, %.lr.ph3107 ], [ %i.ahb, %bb.bj ] ; 5 uses
  %i.akf = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.akg = sub nsw i32 %i.akf, %i.ay
  store i32 %i.akg, ptr %i.d, align 4, !tbaa !8
  %i.akh = mul nsw i32 %.925903105, %i.t
  %i.aki = add nsw i32 %i.akh, %i.ba
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.akj
  %i.akl = add nsw i32 %.925903105, 1
  %i.akm = mul nsw i32 %i.akl, %i.t
  %i.akn = add nsw i32 %i.akm, %i.ba
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ako
  %i.akq = add nsw i32 %i.akf, %.925903105
  %i.akr = sext i32 %i.akq to i64
  %i.aks = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.akr
  %i.akt = sext i32 %.925903105 to i64
  %i.aku = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.akt
  call void @drot_(ptr noundef nonnull %i.d, ptr noundef %i.akk, ptr noundef nonnull @c__1, ptr noundef %i.akp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.aks, ptr noundef nonnull %i.aku) #4
  %i.akv = load i32, ptr %i.b, align 4, !tbaa !8  ; 2 uses
  %i.akw = add nsw i32 %i.akv, %.925903105        ; 3 uses
  %i.akx = icmp slt i32 %i.akv, 0
  %i.aky = load i32, ptr %i.c, align 4            ; 2 uses
  %i.akz = icmp sge i32 %i.akw, %i.aky
  %i.ala = icmp sle i32 %i.akw, %i.aky
  %.in2684 = select i1 %i.akx, i1 %i.akz, i1 %i.ala
  br i1 %.in2684, label %.lr.ph3107, label %.loopexit2882, !llvm.loop !63

.loopexit2882:                                    ; preds = %.lr.ph3107, %bb.bj, %._crit_edge3103
  %i.alb = add nsw i32 %.425613110, -1
  %i.alc = icmp sgt i32 %.425613110, 1
  br i1 %i.alc, label %.lr.ph3112, label %._crit_edge3113, !llvm.loop !64

._crit_edge3113:                                  ; preds = %.loopexit2882
  %.pre3865 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.ald = add nsw i32 %.pre3865, -1              ; 2 uses
  store i32 %i.ald, ptr %i.b, align 4, !tbaa !8
  %.not26803118 = icmp slt i32 %.pre3865, 2
  br i1 %.not26803118, label %.loopexit2884, label %.lr.ph3121.preheader

.lr.ph3121.preheader:                             ; preds = %._crit_edge3113
  %.pre3912 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %.lr.ph3121

.lr.ph3121:                                       ; preds = %.lr.ph3121.preheader, %._crit_edge3117
  %.pre3867 = phi i32 [ %.pre38673913, %._crit_edge3117 ], [ %.pre3912, %.lr.ph3121.preheader ] ; 3 uses
  %i.ale = phi i32 [ %i.amq, %._crit_edge3117 ], [ %.pre3912, %.lr.ph3121.preheader ] ; 2 uses
  %i.alf = phi i32 [ %i.amr, %._crit_edge3117 ], [ %i.ald, %.lr.ph3121.preheader ]
  %.525623119 = phi i32 [ %i.ams, %._crit_edge3117 ], [ 1, %.lr.ph3121.preheader ] ; 5 uses
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.alg = sub nsw i32 %.525623119, %.1254827752794 ; 2 uses
  %i.alh = add nsw i32 %i.alg, 2                  ; 2 uses
  store i32 %i.alh, ptr %i.d, align 4, !tbaa !8
  %i.ali = xor i32 %.525623119, -1
  %i.alj = add i32 %.1260627722796, %i.ali
  %i.alk = icmp slt i32 %i.alg, 0
  %i.all = select i1 %i.alk, i32 1, i32 %i.alh
  %i.alm = mul nsw i32 %i.ale, %i.all
  %i.aln = add nsw i32 %i.alj, %i.alm             ; 3 uses
  %i.alo = load i32, ptr %4, align 4, !tbaa !8
  %i.alp = sub nsw i32 %i.alo, %.525623119        ; 2 uses
  %i.alq = icmp sgt i32 %i.alp, 0
  br i1 %i.alq, label %.lr.ph3116, label %._crit_edge3117

.lr.ph3116:                                       ; preds = %.lr.ph3121
  %i.alr = sub i32 %i.aln, %i.ay                  ; 2 uses
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.als
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph3116, %bb.bm
  %.pre38673915 = phi i32 [ %.pre3867, %.lr.ph3116 ], [ %.pre38673914, %bb.bm ]
  %i.alu = phi i32 [ %.pre3867, %.lr.ph3116 ], [ %i.amn, %bb.bm ] ; 3 uses
  %.53114 = phi i32 [ %i.alp, %.lr.ph3116 ], [ %i.amo, %bb.bm ] ; 6 uses
  %i.alv = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.alw = sub i32 %.53114, %i.aln
  %i.alx = add i32 %i.alw, %i.alv
  %i.aly = sdiv i32 %i.alx, %i.alu                ; 2 uses
  store i32 %i.aly, ptr %i.m, align 4, !tbaa !8
  %i.alz = icmp sgt i32 %i.aly, 0
  br i1 %i.alz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ama = sub i32 %i.aln, %.53114
  %i.amb = add i32 %i.ama, %i.alu
  %i.amc = mul nsw i32 %i.amb, %i.n               ; 2 uses
  %i.amd = add nsw i32 %i.amc, %.53114
  %i.ame = sext i32 %i.amd to i64
  %i.amf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ame
  %i.amg = add nuw nsw i32 %.53114, 1
  %i.amh = add nsw i32 %i.amg, %i.amc
  %i.ami = sext i32 %i.amh to i64
  %i.amj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ami
  %i.amk = add i32 %i.alr, %i.alv
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aml
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.amf, ptr noundef nonnull %i.f, ptr noundef %i.amj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.amm, ptr noundef nonnull %i.alt, ptr noundef nonnull %i.j) #4
  %.pre3866 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.pre38673914 = phi i32 [ %.pre38673915, %bb.bk ], [ %.pre3866, %bb.bl ] ; 2 uses
  %i.amn = phi i32 [ %i.alu, %bb.bk ], [ %.pre3866, %bb.bl ] ; 2 uses
  %i.amo = add nsw i32 %.53114, -1
  %i.amp = icmp sgt i32 %.53114, 1
  br i1 %i.amp, label %bb.bk, label %._crit_edge3117.loopexit, !llvm.loop !65

._crit_edge3117.loopexit:                         ; preds = %bb.bm
  %.pre3868 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %._crit_edge3117

._crit_edge3117:                                  ; preds = %._crit_edge3117.loopexit, %.lr.ph3121
  %.pre38673913 = phi i32 [ %.pre38673914, %._crit_edge3117.loopexit ], [ %.pre3867, %.lr.ph3121 ]
  %i.amq = phi i32 [ %i.amn, %._crit_edge3117.loopexit ], [ %i.ale, %.lr.ph3121 ]
  %i.amr = phi i32 [ %.pre3868, %._crit_edge3117.loopexit ], [ %i.alf, %.lr.ph3121 ] ; 2 uses
  %i.ams = add nuw nsw i32 %.525623119, 1
  %.not2680.not = icmp slt i32 %.525623119, %i.amr
  br i1 %.not2680.not, label %.lr.ph3121, label %._crit_edge3122, !llvm.loop !66

._crit_edge3122:                                  ; preds = %._crit_edge3117
  %.pre3869 = load i32, ptr %4, align 4, !tbaa !8 ; 6 uses
  %i.amt = icmp sgt i32 %.pre3869, 1
  br i1 %i.amt, label %bb.bn, label %.loopexit2884

bb.bn:                                            ; preds = %._crit_edge3122
  %i.amu = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.amv = shl i32 %i.amu, 1
  %i.amw = add i32 %.1260627722796, 1
  %i.amx = sub i32 %i.amw, %.pre3869
  %i.amy = add i32 %i.amx, %i.amv                 ; 3 uses
  store i32 %i.amy, ptr %i.b, align 4, !tbaa !8
  %i.amz = load i32, ptr %2, align 4, !tbaa !8    ; 6 uses
  %.not2681.not3123 = icmp sgt i32 %i.amz, %i.amy
  br i1 %.not2681.not3123, label %.lr.ph3126, label %.loopexit2884

.lr.ph3126:                                       ; preds = %bb.bn
  %i.ana = add i32 %i.amu, %i.ay                  ; 8 uses
  %i.anb = sext i32 %i.amz to i64                 ; 11 uses
  %i.anc = sext i32 %i.amy to i64                 ; 3 uses
  %i.and = sub nsw i64 %i.anb, %i.anc             ; 3 uses
  %min.iters.check4241 = icmp ult i64 %i.and, 28
  br i1 %min.iters.check4241, label %scalar.ph4240.preheader, label %vector.scevcheck4228

vector.scevcheck4228:                             ; preds = %.lr.ph3126
  %i.ane = xor i64 %i.anc, -1
  %i.anf = add nsw i64 %i.ane, %i.anb             ; 2 uses
  %i.ang = shl i32 %i.amz, 1
  %i.anh = xor i32 %i.ana, -1
  %i.ani = add i32 %i.ang, %i.anh                 ; 2 uses
  %i.anj = trunc i64 %i.anf to i32                ; 2 uses
  %i.ank = sub i32 %i.ani, %i.anj
  %i.anl = icmp sgt i32 %i.ank, %i.ani
  %i.anm = xor i32 %i.ana, -1
  %i.ann = add i32 %i.amz, %i.anm                 ; 2 uses
  %i.ano = sub i32 %i.ann, %i.anj
  %i.anp = icmp sgt i32 %i.ano, %i.ann
  %i.anq = icmp ugt i64 %i.anf, 4294967295
  %i.anr = or i1 %i.anp, %i.anq
  %i.ans = or i1 %i.anl, %i.anr
  br i1 %i.ans, label %scalar.ph4240.preheader, label %vector.memcheck4230

vector.memcheck4230:                              ; preds = %vector.scevcheck4228
  %i.ant = shl nsw i64 %i.anb, 3                  ; 3 uses
  %i.anu = add nsw i64 %i.ant, -1
  %diff.check4231 = icmp ult i64 %i.anu, 31
  %i.anv = shl i32 %i.amz, 1
  %i.anw = xor i32 %i.ana, -1
  %i.anx = add i32 %i.anv, %i.anw
  %i.any = sext i32 %i.anx to i64
  %i.anz = add nsw i64 %i.bd, %i.any
  %i.aoa = shl nsw i64 %i.anz, 3                  ; 2 uses
  %i.aob = shl nsw i64 %i.anb, 4                  ; 2 uses
  %i.aoc = sub nsw i64 %i.aoa, %i.aob
  %diff.check4232.a = icmp ult i64 %i.aoc, 24
  %conflict.rdx4233.a = or i1 %diff.check4231, %diff.check4232.a
  %i.aod = xor i32 %i.ana, -1
  %i.aoe = add i32 %i.amz, %i.aod
  %i.aof = sext i32 %i.aoe to i64
  %i.aog = add nsw i64 %i.bd, %i.aof
  %i.aoh = shl nsw i64 %i.aog, 3                  ; 2 uses
  %i.aoi = sub nsw i64 %i.aob, %i.aoh
  %i.aoj = add nsw i64 %i.aoi, -9
  %diff.check4234.a = icmp ult i64 %i.aoj, 31
  %conflict.rdx4235.a = or i1 %conflict.rdx4233.a, %diff.check4234.a
  %i.aok = sub nsw i64 %i.aoa, %i.ant
  %diff.check4236.a = icmp ult i64 %i.aok, 24
  %conflict.rdx4237.a = or i1 %conflict.rdx4235.a, %diff.check4236.a
  %i.aol = sub nsw i64 %i.aoh, %i.ant
  %diff.check4238 = icmp ult i64 %i.aol, 24
  %conflict.rdx4239 = or i1 %conflict.rdx4237.a, %diff.check4238
  br i1 %conflict.rdx4239, label %scalar.ph4240.preheader, label %vector.ph4242

vector.ph4242:                                    ; preds = %vector.memcheck4230
  %n.vec4244 = and i64 %i.and, -4                 ; 3 uses
  %i.aom = sub nsw i64 %i.anb, %n.vec4244
  br label %vector.body4245

vector.body4245:                                  ; preds = %vector.body4245, %vector.ph4242
  %index4246 = phi i64 [ 0, %vector.ph4242 ], [ %index.next4249, %vector.body4245 ] ; 2 uses
  %i.aon = xor i64 %index4246, -1
  %i.aoo = add i64 %i.aon, %i.anb                 ; 3 uses
  %i.aop = add nsw i64 %i.aoo, %i.anb             ; 2 uses
  %i.aoq = trunc nsw i64 %i.aop to i32
  %i.aor = sub i32 %i.aoq, %i.ana
  %i.aos = sext i32 %i.aor to i64
  %i.aot = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aos
  %i.aou = getelementptr inbounds i8, ptr %i.aot, i64 -24
  %wide.load4247 = load <4 x double>, ptr %i.aou, align 8, !tbaa !9
  %i.aov = sub nsw i64 %i.aop, %i.bd
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aov
  %i.aox = getelementptr inbounds i8, ptr %i.aow, i64 -24
  store <4 x double> %wide.load4247, ptr %i.aox, align 8, !tbaa !9
  %i.aoy = trunc nsw i64 %i.aoo to i32
  %i.aoz = sub i32 %i.aoy, %i.ana
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apa
  %i.apc = getelementptr inbounds i8, ptr %i.apb, i64 -24
  %wide.load4248 = load <4 x double>, ptr %i.apc, align 8, !tbaa !9
  %i.apd = sub nsw i64 %i.aoo, %i.bd
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apd
  %i.apf = getelementptr inbounds i8, ptr %i.ape, i64 -24
  store <4 x double> %wide.load4248, ptr %i.apf, align 8, !tbaa !9
  %index.next4249 = add nuw i64 %index4246, 4     ; 2 uses
  %i.apg = icmp eq i64 %index.next4249, %n.vec4244
  br i1 %i.apg, label %middle.block4250, label %vector.body4245, !llvm.loop !67

middle.block4250:                                 ; preds = %vector.body4245
  %cmp.n4251 = icmp eq i64 %i.and, %n.vec4244
  br i1 %cmp.n4251, label %.loopexit2884, label %scalar.ph4240.preheader

scalar.ph4240.preheader:                          ; preds = %vector.memcheck4230, %vector.scevcheck4228, %.lr.ph3126, %middle.block4250
  %indvars.iv3636.ph = phi i64 [ %i.anb, %vector.memcheck4230 ], [ %i.anb, %vector.scevcheck4228 ], [ %i.anb, %.lr.ph3126 ], [ %i.aom, %middle.block4250 ]
  br label %scalar.ph4240

scalar.ph4240:                                    ; preds = %scalar.ph4240.preheader, %scalar.ph4240
  %indvars.iv3636 = phi i64 [ %indvars.iv.next3637, %scalar.ph4240 ], [ %indvars.iv3636.ph, %scalar.ph4240.preheader ]
  %indvars.iv.next3637 = add nsw i64 %indvars.iv3636, -1 ; 5 uses
  %i.aph = add nsw i64 %indvars.iv.next3637, %i.anb ; 2 uses
  %i.api = trunc nsw i64 %i.aph to i32
  %i.apj = sub i32 %i.api, %i.ana
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apk
  %i.apm = load double, ptr %i.apl, align 8, !tbaa !9
  %i.apn = sub nsw i64 %i.aph, %i.bd
  %i.apo = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apn
  store double %i.apm, ptr %i.apo, align 8, !tbaa !9
  %i.app = trunc nsw i64 %indvars.iv.next3637 to i32
  %i.apq = sub i32 %i.app, %i.ana
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apr
  %i.apt = load double, ptr %i.aps, align 8, !tbaa !9
  %i.apu = sub nsw i64 %indvars.iv.next3637, %i.bd
  %i.apv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apu
  store double %i.apt, ptr %i.apv, align 8, !tbaa !9
  %.not2681.not = icmp sgt i64 %indvars.iv.next3637, %i.anc
  br i1 %.not2681.not, label %scalar.ph4240, label %.loopexit2884, !llvm.loop !68

bb.bo:                                            ; preds = %.lr.ph.split.us
  %i.apw = sext i32 %i.by to i64
  %i.apx = getelementptr [8 x i8], ptr %i.s, i64 %i.apw
  %i.apy = getelementptr i8, ptr %i.apx, i64 8
  %i.apz = load double, ptr %i.apy, align 8, !tbaa !9 ; 13 uses
  br i1 %.not26533001, label %._crit_edge3005, label %iter.check

iter.check:                                       ; preds = %bb.bo
  %i.aqa = mul nsw i32 %i.bq, %i.n                ; 2 uses
  %reass.sub = sub i32 %i.aqa, %.02605.ph
  %i.aqb = add i32 %reass.sub, 2                  ; 7 uses
  %i.aqc = zext i32 %i.bq to i64                  ; 4 uses
  %i.aqd = add i32 %i.bu, 1                       ; 2 uses
  %i.aqe = sub i32 %i.aqd, %.02605.ph             ; 3 uses
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = add nuw nsw i64 %i.aqf, 1              ; 5 uses
  %min.iters.check4255 = icmp ult i32 %i.aqe, 3
  br i1 %min.iters.check4255, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck4253

vector.scevcheck4253:                             ; preds = %iter.check
  %i.aqh = add i32 %i.bu, 1
  %i.aqi = sub i32 %i.aqh, %.02605.ph
  %i.aqj = add i32 %i.aqa, 1                      ; 2 uses
  %i.aqk = add i32 %i.aqj, %i.aqi
  %i.aql = icmp slt i32 %i.aqk, %i.aqj
  br i1 %i.aql, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck4253
  %min.iters.check4256 = icmp ult i32 %i.aqe, 15
  br i1 %min.iters.check4256, label %vec.epilog.ph, label %vector.ph4257

vector.ph4257:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf4258 = and i64 %i.aqg, 12
  %n.vec4259 = and i64 %i.aqg, 8589934576         ; 4 uses
  %i.aqm = add nuw nsw i64 %n.vec4259, %i.aqc
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.apz, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4789.a = add i32 %i.bq, %i.aqb
  br label %vector.body4260

vector.body4260:                                  ; preds = %vector.body4260, %vector.ph4257
  %index4261 = phi i64 [ 0, %vector.ph4257 ], [ %index.next4266, %vector.body4260 ] ; 2 uses
  %i.aqn = trunc i64 %index4261 to i32
  %.reass4790.a = add i32 %i.aqn, %invariant.op4789.a
  %i.aqo = sext i32 %.reass4790.a to i64
  %i.aqp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqo ; 5 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 32 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 64 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 96 ; 2 uses
  %wide.load4262.a = load <4 x double>, ptr %i.aqp, align 8, !tbaa !9
  %wide.load4263.a = load <4 x double>, ptr %i.aqq, align 8, !tbaa !9
  %wide.load4264 = load <4 x double>, ptr %i.aqr, align 8, !tbaa !9
  %wide.load4265 = load <4 x double>, ptr %i.aqs, align 8, !tbaa !9
  %i.aqt = fdiv <4 x double> %wide.load4262.a, %broadcast.splat
  %i.aqu = fdiv <4 x double> %wide.load4263.a, %broadcast.splat
  %i.aqv = fdiv <4 x double> %wide.load4264, %broadcast.splat
  %i.aqw = fdiv <4 x double> %wide.load4265, %broadcast.splat
  store <4 x double> %i.aqt, ptr %i.aqp, align 8, !tbaa !9
  store <4 x double> %i.aqu, ptr %i.aqq, align 8, !tbaa !9
  store <4 x double> %i.aqv, ptr %i.aqr, align 8, !tbaa !9
  store <4 x double> %i.aqw, ptr %i.aqs, align 8, !tbaa !9
  %index.next4266 = add nuw i64 %index4261, 16    ; 2 uses
  %i.aqx = icmp eq i64 %index.next4266, %n.vec4259
  br i1 %i.aqx, label %middle.block4267, label %vector.body4260, !llvm.loop !69

middle.block4267:                                 ; preds = %vector.body4260
  %cmp.n4268 = icmp eq i64 %i.aqg, %n.vec4259
  br i1 %cmp.n4268, label %._crit_edge3005, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4267
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf4258, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4259, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4271 = and i64 %i.aqg, 8589934588         ; 3 uses
  %i.aqy = add nuw nsw i64 %n.vec4271, %i.aqc
  %broadcast.splatinsert4272 = insertelement <4 x double> poison, double %i.apz, i64 0
  %broadcast.splat4273 = shufflevector <4 x double> %broadcast.splatinsert4272, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4791 = add i32 %i.bq, %i.aqb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4274 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4276, %vec.epilog.vector.body ] ; 2 uses
  %i.aqz = trunc i64 %index4274 to i32
  %.reass4792 = add i32 %i.aqz, %invariant.op4791
  %i.ara = sext i32 %.reass4792 to i64
  %i.arb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ara ; 2 uses
  %wide.load4275 = load <4 x double>, ptr %i.arb, align 8, !tbaa !9
  %i.arc = fdiv <4 x double> %wide.load4275, %broadcast.splat4273
  store <4 x double> %i.arc, ptr %i.arb, align 8, !tbaa !9
  %index.next4276 = add nuw i64 %index4274, 4     ; 2 uses
  %i.ard = icmp eq i64 %index.next4276, %n.vec4271
  br i1 %i.ard, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4277 = icmp eq i64 %i.aqg, %n.vec4271
  br i1 %cmp.n4277, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  store i32 %i.bpz, ptr %i.d, align 4, !tbaa !8
  %.not2661.not3181 = icmp sgt i32 %i.bpx, %i.bpz
  br i1 %.not2661.not3181, label %.lr.ph3184, label %._crit_edge3185

.lr.ph3184:                                       ; preds = %bb.dc
  %i.bqa = mul nsw i32 %i.boa, %i.n
  %i.bqb = add i32 %i.bqa, 1
  %i.bqc = add nsw i32 %i.boa, 1
  %i.bqd = mul nsw i32 %i.bqc, %i.n
  %i.bqe = sext i32 %i.boa to i64
  %i.bqf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bqe
  %.pre3887 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph3184, %bb.df
  %i.bqg = phi i32 [ %i.bpz, %.lr.ph3184 ], [ %i.bqx, %bb.df ]
  %i.bqh = phi i32 [ %.pre3887, %.lr.ph3184 ], [ %i.bqy, %bb.df ] ; 3 uses
  %.103182.in = phi i32 [ %i.bpx, %.lr.ph3184 ], [ %.103182, %bb.df ]
  %.103182 = add nsw i32 %.103182.in, -1          ; 4 uses
  %i.bqi = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.bqj = sub i32 %.103182, %i.boa
  %i.bqk = add i32 %i.bqj, %i.bqi
  %i.bql = sdiv i32 %i.bqk, %i.bqh                ; 2 uses
  store i32 %i.bql, ptr %i.m, align 4, !tbaa !8
  %i.bqm = icmp sgt i32 %i.bql, 0
  br i1 %i.bqm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.bqn = sub nsw i32 %i.bqh, %.103182           ; 2 uses
  %i.bqo = add i32 %i.bqb, %i.bqn
  %i.bqp = sext i32 %i.bqo to i64
  %i.bqq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bqp
  %i.bqr = add nsw i32 %i.bqn, %i.bqd
  %i.bqs = sext i32 %i.bqr to i64
  %i.bqt = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bqs
  %i.bqu = add nsw i32 %i.bqi, %i.boa
  %i.bqv = sext i32 %i.bqu to i64
  %i.bqw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bqv
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.bqq, ptr noundef nonnull %i.f, ptr noundef %i.bqt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bqw, ptr noundef nonnull %i.bqf, ptr noundef nonnull %i.j) #4
  %.pre3886 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3888 = load i32, ptr %i.d, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %i.bqx = phi i32 [ %i.bqg, %bb.dd ], [ %.pre3888, %bb.de ] ; 2 uses
  %i.bqy = phi i32 [ %i.bqh, %bb.dd ], [ %.pre3886, %bb.de ]
  %.not2661.not = icmp sgt i32 %.103182, %i.bqx
  br i1 %.not2661.not, label %bb.dd, label %._crit_edge3185, !llvm.loop !90

._crit_edge3185:                                  ; preds = %bb.df, %bb.dc
  br i1 %.not, label %.loopexit2880, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge3185
  store i32 %i.boi, ptr %i.d, align 4, !tbaa !8
  %i.bqz = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  store i32 %i.bqz, ptr %i.c, align 4, !tbaa !8
  %i.bra = icmp slt i32 %i.bqz, 0
  %i.brb = icmp slt i32 %i.boh, 1
  %i.brc = icmp sgt i32 %i.boh, -1
  %.in3186 = select i1 %i.bra, i1 %i.brb, i1 %i.brc
  br i1 %.in3186, label %.lr.ph3189, label %.loopexit2880

.lr.ph3189:                                       ; preds = %bb.dg, %.lr.ph3189
  %.2026013187 = phi i32 [ %i.bru, %.lr.ph3189 ], [ %i.boa, %bb.dg ] ; 5 uses
  %i.brd = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.bre = sub nsw i32 %i.brd, %i.ay
  store i32 %i.bre, ptr %i.a, align 4, !tbaa !8
  %i.brf = mul nsw i32 %.2026013187, %i.t
  %i.brg = add nsw i32 %i.brf, %i.ba
  %i.brh = sext i32 %i.brg to i64
  %i.bri = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.brh
  %i.brj = add nsw i32 %.2026013187, 1
  %i.brk = mul nsw i32 %i.brj, %i.t
  %i.brl = add nsw i32 %i.brk, %i.ba
  %i.brm = sext i32 %i.brl to i64
  %i.brn = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.brm
  %i.bro = add nsw i32 %i.brd, %.2026013187
  %i.brp = sext i32 %i.bro to i64
  %i.brq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.brp
  %i.brr = sext i32 %.2026013187 to i64
  %i.brs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.brr
  call void @drot_(ptr noundef nonnull %i.a, ptr noundef %i.bri, ptr noundef nonnull @c__1, ptr noundef %i.brn, ptr noundef nonnull @c__1, ptr noundef nonnull %i.brq, ptr noundef nonnull %i.brs) #4
  %i.brt = load i32, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.bru = add nsw i32 %i.brt, %.2026013187       ; 3 uses
  %i.brv = icmp slt i32 %i.brt, 0
  %i.brw = load i32, ptr %i.d, align 4            ; 2 uses
  %i.brx = icmp sge i32 %i.bru, %i.brw
  %i.bry = icmp sle i32 %i.bru, %i.brw
  %.in = select i1 %i.brv, i1 %i.brx, i1 %i.bry
  br i1 %.in, label %.lr.ph3189, label %.loopexit2880, !llvm.loop !91

.loopexit2880:                                    ; preds = %.lr.ph3189, %bb.dg, %._crit_edge3185
  %i.brz = add nsw i32 %.1025673192, -1
  %i.bsa = icmp sgt i32 %.1025673192, 1
  br i1 %i.bsa, label %.lr.ph3194, label %._crit_edge3195, !llvm.loop !92

._crit_edge3195:                                  ; preds = %.loopexit2880
  %.pre3889 = load i32, ptr %4, align 4, !tbaa !8 ; 3 uses
  %i.bsb = add nsw i32 %.pre3889, -1              ; 2 uses
  store i32 %i.bsb, ptr %i.c, align 4, !tbaa !8
  %.not26583200 = icmp slt i32 %.pre3889, 2
  br i1 %.not26583200, label %.loopexit2884, label %.lr.ph3203

.lr.ph3203:                                       ; preds = %._crit_edge3195, %._crit_edge3199
  %i.bsc = phi i32 [ %i.btp, %._crit_edge3199 ], [ %i.bsb, %._crit_edge3195 ]
  %.1125683201 = phi i32 [ %i.btq, %._crit_edge3199 ], [ 1, %._crit_edge3195 ] ; 5 uses
  store i32 1, ptr %i.d, align 4, !tbaa !8
  %i.bsd = sub nsw i32 %.1125683201, %.1254827772807 ; 2 uses
  %i.bse = add nsw i32 %i.bsd, 2                  ; 2 uses
  store i32 %i.bse, ptr %i.a, align 4, !tbaa !8
  %i.bsf = load i32, ptr %4, align 4, !tbaa !8
  %i.bsg = sub nsw i32 %i.bsf, %.1125683201       ; 2 uses
  %i.bsh = icmp sgt i32 %i.bsg, 0
  br i1 %i.bsh, label %.lr.ph3198, label %._crit_edge3199

.lr.ph3198:                                       ; preds = %.lr.ph3203
  %i.bsi = xor i32 %.1125683201, -1
  %i.bsj = add i32 %.1260627742809, %i.bsi
  %i.bsk = load i32, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.bsl = icmp slt i32 %i.bsd, 0
  %i.bsm = select i1 %i.bsl, i32 1, i32 %i.bse
  %i.bsn = mul nsw i32 %i.bsk, %i.bsm
  %i.bso = add nsw i32 %i.bsj, %i.bsn             ; 4 uses
  %i.bsp = mul nsw i32 %i.bso, %i.n
  %i.bsq = add i32 %i.bsp, 1
  %i.bsr = add nsw i32 %i.bso, 1
  %i.bss = mul nsw i32 %i.bsr, %i.n
  %i.bst = sub i32 %i.bso, %i.ay                  ; 2 uses
  %i.bsu = sext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bsu
  br label %bb.dh

bb.dh:                                            ; preds = %.lr.ph3198, %bb.dj
  %i.bsw = phi i32 [ %i.bsk, %.lr.ph3198 ], [ %i.btm, %bb.dj ] ; 3 uses
  %.113196 = phi i32 [ %i.bsg, %.lr.ph3198 ], [ %i.btn, %bb.dj ] ; 4 uses
  %i.bsx = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.bsy = sub i32 %.113196, %i.bso
  %i.bsz = add i32 %i.bsy, %i.bsx
  %i.bta = sdiv i32 %i.bsz, %i.bsw                ; 2 uses
  store i32 %i.bta, ptr %i.m, align 4, !tbaa !8
  %i.btb = icmp sgt i32 %i.bta, 0
  br i1 %i.btb, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.btc = sub nsw i32 %i.bsw, %.113196           ; 2 uses
  %i.btd = add i32 %i.bsq, %i.btc
  %i.bte = sext i32 %i.btd to i64
  %i.btf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bte
  %i.btg = add nsw i32 %i.btc, %i.bss
  %i.bth = sext i32 %i.btg to i64
  %i.bti = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bth
  %i.btj = add i32 %i.bst, %i.bsx
  %i.btk = sext i32 %i.btj to i64
  %i.btl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.btk
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.btf, ptr noundef nonnull %i.f, ptr noundef %i.bti, ptr noundef nonnull %i.f, ptr noundef nonnull %i.btl, ptr noundef nonnull %i.bsv, ptr noundef nonnull %i.j) #4
  %.pre3890 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %i.btm = phi i32 [ %i.bsw, %bb.dh ], [ %.pre3890, %bb.di ]
  %i.btn = add nsw i32 %.113196, -1
  %i.bto = icmp sgt i32 %.113196, 1
  br i1 %i.bto, label %bb.dh, label %._crit_edge3199.loopexit, !llvm.loop !93

._crit_edge3199.loopexit:                         ; preds = %bb.dj
  %.pre3892 = load i32, ptr %i.c, align 4, !tbaa !8
  br label %._crit_edge3199

._crit_edge3199:                                  ; preds = %._crit_edge3199.loopexit, %.lr.ph3203
  %i.btp = phi i32 [ %.pre3892, %._crit_edge3199.loopexit ], [ %i.bsc, %.lr.ph3203 ] ; 2 uses
  %i.btq = add nuw nsw i32 %.1125683201, 1
  %.not2658.not = icmp slt i32 %.1125683201, %i.btp
  br i1 %.not2658.not, label %.lr.ph3203, label %._crit_edge3204, !llvm.loop !94

._crit_edge3204:                                  ; preds = %._crit_edge3199
  %.pre3893 = load i32, ptr %4, align 4, !tbaa !8 ; 6 uses
  %i.btr = icmp sgt i32 %.pre3893, 1
  br i1 %i.btr, label %bb.dk, label %.loopexit2884

bb.dk:                                            ; preds = %._crit_edge3204
  %i.bts = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.btt = shl i32 %i.bts, 1
  %i.btu = add i32 %.1260627742809, 1
  %i.btv = sub i32 %i.btu, %.pre3893
  %i.btw = add i32 %i.btv, %i.btt                 ; 3 uses
  store i32 %i.btw, ptr %i.c, align 4, !tbaa !8
  %i.btx = load i32, ptr %2, align 4, !tbaa !8    ; 6 uses
  %.not2659.not3205 = icmp sgt i32 %i.btx, %i.btw
  br i1 %.not2659.not3205, label %.lr.ph3208, label %.loopexit2884

.lr.ph3208:                                       ; preds = %bb.dk
  %i.bty = add i32 %i.bts, %i.ay                  ; 8 uses
  %i.btz = sext i32 %i.btx to i64                 ; 11 uses
  %i.bua = sext i32 %i.btw to i64                 ; 3 uses
  %i.bub = sub nsw i64 %i.btz, %i.bua             ; 3 uses
  %min.iters.check = icmp ult i64 %i.bub, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3208
  %i.buc = xor i64 %i.bua, -1
  %i.bud = add nsw i64 %i.buc, %i.btz             ; 2 uses
  %i.bue = shl i32 %i.btx, 1
  %i.buf = xor i32 %i.bty, -1
  %i.bug = add i32 %i.bue, %i.buf                 ; 2 uses
  %i.buh = trunc i64 %i.bud to i32                ; 2 uses
  %i.bui = sub i32 %i.bug, %i.buh
  %i.buj = icmp sgt i32 %i.bui, %i.bug
  %i.buk = xor i32 %i.bty, -1
  %i.bul = add i32 %i.btx, %i.buk                 ; 2 uses
  %i.bum = sub i32 %i.bul, %i.buh
  %i.bun = icmp sgt i32 %i.bum, %i.bul
  %i.buo = icmp ugt i64 %i.bud, 4294967295
  %i.bup = or i1 %i.bun, %i.buo
  %i.buq = or i1 %i.buj, %i.bup
  br i1 %i.buq, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bur = shl nsw i64 %i.btz, 3                  ; 3 uses
  %i.bus = add nsw i64 %i.bur, -1
  %diff.check = icmp ult i64 %i.bus, 31
  %i.but = shl i32 %i.btx, 1
  %i.buu = xor i32 %i.bty, -1
  %i.buv = add i32 %i.but, %i.buu
  %i.buw = sext i32 %i.buv to i64
  %i.bux = add nsw i64 %i.bd, %i.buw
  %i.buy = shl nsw i64 %i.bux, 3                  ; 2 uses
  %i.buz = shl nsw i64 %i.btz, 4                  ; 2 uses
  %i.bva = sub nsw i64 %i.buy, %i.buz
  %diff.check4220.a = icmp ult i64 %i.bva, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4220.a
  %i.bvb = xor i32 %i.bty, -1
  %i.bvc = add i32 %i.btx, %i.bvb
  %i.bvd = sext i32 %i.bvc to i64
  %i.bve = add nsw i64 %i.bd, %i.bvd
  %i.bvf = shl nsw i64 %i.bve, 3                  ; 2 uses
  %i.bvg = sub nsw i64 %i.buz, %i.bvf
  %i.bvh = add nsw i64 %i.bvg, -9
  %diff.check4221 = icmp ult i64 %i.bvh, 31
  %conflict.rdx4222 = or i1 %conflict.rdx, %diff.check4221
  %i.bvi = sub nsw i64 %i.buy, %i.bur
  %diff.check4223 = icmp ult i64 %i.bvi, 24
  %conflict.rdx4224 = or i1 %conflict.rdx4222, %diff.check4223
  %i.bvj = sub nsw i64 %i.bvf, %i.bur
  %diff.check4225 = icmp ult i64 %i.bvj, 24
  %conflict.rdx4226 = or i1 %conflict.rdx4224, %diff.check4225
  br i1 %conflict.rdx4226, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bub, -4                     ; 3 uses
  %i.bvk = sub nsw i64 %i.btz, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bvl = xor i64 %index, -1
  %i.bvm = add i64 %i.bvl, %i.btz                 ; 3 uses
  %i.bvn = add nsw i64 %i.bvm, %i.btz             ; 2 uses
  %i.bvo = trunc nsw i64 %i.bvn to i32
  %i.bvp = sub i32 %i.bvo, %i.bty
  %i.bvq = sext i32 %i.bvp to i64
  %i.bvr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvq
  %i.bvs = getelementptr inbounds i8, ptr %i.bvr, i64 -24
  %wide.load = load <4 x double>, ptr %i.bvs, align 8, !tbaa !9
  %i.bvt = sub nsw i64 %i.bvn, %i.bd
  %i.bvu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvt
  %i.bvv = getelementptr inbounds i8, ptr %i.bvu, i64 -24
  store <4 x double> %wide.load, ptr %i.bvv, align 8, !tbaa !9
  %i.bvw = trunc nsw i64 %i.bvm to i32
  %i.bvx = sub i32 %i.bvw, %i.bty
  %i.bvy = sext i32 %i.bvx to i64
  %i.bvz = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvy
  %i.bwa = getelementptr inbounds i8, ptr %i.bvz, i64 -24
  %wide.load4227 = load <4 x double>, ptr %i.bwa, align 8, !tbaa !9
  %i.bwb = sub nsw i64 %i.bvm, %i.bd
  %i.bwc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwb
  %i.bwd = getelementptr inbounds i8, ptr %i.bwc, i64 -24
  store <4 x double> %wide.load4227, ptr %i.bwd, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bwe = icmp eq i64 %index.next, %n.vec
  br i1 %i.bwe, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bub, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3208, %middle.block
  %indvars.iv3658.ph = phi i64 [ %i.btz, %vector.memcheck ], [ %i.btz, %vector.scevcheck ], [ %i.btz, %.lr.ph3208 ], [ %i.bvk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3658 = phi i64 [ %indvars.iv.next3659, %scalar.ph ], [ %indvars.iv3658.ph, %scalar.ph.preheader ]
  %indvars.iv.next3659 = add nsw i64 %indvars.iv3658, -1 ; 5 uses
  %i.bwf = add nsw i64 %indvars.iv.next3659, %i.btz ; 2 uses
  %i.bwg = trunc nsw i64 %i.bwf to i32
  %i.bwh = sub i32 %i.bwg, %i.bty
  %i.bwi = sext i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwi
  %i.bwk = load double, ptr %i.bwj, align 8, !tbaa !9
  %i.bwl = sub nsw i64 %i.bwf, %i.bd
  %i.bwm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwl
  store double %i.bwk, ptr %i.bwm, align 8, !tbaa !9
  %i.bwn = trunc nsw i64 %indvars.iv.next3659 to i32
  %i.bwo = sub i32 %i.bwn, %i.bty
  %i.bwp = sext i32 %i.bwo to i64
  %i.bwq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwp
  %i.bwr = load double, ptr %i.bwq, align 8, !tbaa !9
  %i.bws = sub nsw i64 %indvars.iv.next3659, %i.bd
  %i.bwt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bws
  store double %i.bwr, ptr %i.bwt, align 8, !tbaa !9
  %.not2659.not = icmp sgt i64 %indvars.iv.next3659, %i.bua
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !96

.loopexit2884.sink.split:                         ; preds = %bb.cr, %._crit_edge3174, %bb.au, %._crit_edge3090
  %.ph4089.sink = phi i32 [ %i.acy, %bb.au ], [ %.pre3859, %._crit_edge3090 ], [ %.pre3884, %._crit_edge3174 ], [ %i.bjv, %bb.cr ] ; 2 uses
  %.sink4180 = phi ptr [ %i.b, %bb.au ], [ %i.b, %._crit_edge3090 ], [ %i.c, %._crit_edge3174 ], [ %i.c, %bb.cr ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.au ], [ %.025322917, %._crit_edge3090 ], [ %.025322918, %._crit_edge3174 ], [ %.025322918, %bb.cr ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.au ], [ %.1253927812790, %._crit_edge3090 ], [ %.1253927832803, %._crit_edge3174 ], [ %.1253927832803, %bb.cr ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.au ], [ %.1254327782792, %._crit_edge3090 ], [ %.1254327802805, %._crit_edge3174 ], [ %.1254327802805, %bb.cr ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.au ], [ %.1254827752794, %._crit_edge3090 ], [ %.1254827772807, %._crit_edge3174 ], [ %.1254827772807, %bb.cr ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.au ], [ %.1260627722796, %._crit_edge3090 ], [ %.1260627742809, %._crit_edge3174 ], [ %.1260627742809, %bb.cr ]
  %i.bwu = add nsw i32 %.ph4089.sink, -1
  store i32 %i.bwu, ptr %.sink4180, align 4, !tbaa !8
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4240, %scalar.ph, %middle.block4250, %middle.block, %.loopexit2884.sink.split, %._crit_edge3195, %._crit_edge3113, %bb.bn, %bb.dk, %._crit_edge3204, %._crit_edge3122
  %i.bwv = phi i32 [ %.pre3893, %._crit_edge3204 ], [ %.pre3893, %bb.dk ], [ %.pre3869, %._crit_edge3122 ], [ %.pre3869, %bb.bn ], [ %.pre3865, %._crit_edge3113 ], [ %.pre3889, %._crit_edge3195 ], [ %.ph4089.sink, %.loopexit2884.sink.split ], [ %.pre3893, %middle.block ], [ %.pre3869, %middle.block4250 ], [ %.pre3893, %scalar.ph ], [ %.pre3869, %scalar.ph4240 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3204 ], [ %.025322918, %bb.dk ], [ %.025322917, %._crit_edge3122 ], [ %.025322917, %bb.bn ], [ %.025322917, %._crit_edge3113 ], [ %.025322918, %._crit_edge3195 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4250 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4240 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3204 ], [ %.1253927832803, %bb.dk ], [ %.1253927812790, %._crit_edge3122 ], [ %.1253927812790, %bb.bn ], [ %.1253927812790, %._crit_edge3113 ], [ %.1253927832803, %._crit_edge3195 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4250 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4240 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3204 ], [ %.1254327802805, %bb.dk ], [ %.1254327782792, %._crit_edge3122 ], [ %.1254327782792, %bb.bn ], [ %.1254327782792, %._crit_edge3113 ], [ %.1254327802805, %._crit_edge3195 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4250 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4240 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3204 ], [ %.1254827772807, %bb.dk ], [ %.1254827752794, %._crit_edge3122 ], [ %.1254827752794, %bb.bn ], [ %.1254827752794, %._crit_edge3113 ], [ %.1254827772807, %._crit_edge3195 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4250 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4240 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3204 ], [ %.1260627742809, %bb.dk ], [ %.1260627722796, %._crit_edge3122 ], [ %.1260627722796, %bb.bn ], [ %.1260627722796, %._crit_edge3113 ], [ %.1260627742809, %._crit_edge3195 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4250 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4240 ]
  %.pre3787.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bu, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.bx, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3515 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bww = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4136 = getelementptr [8 x i8], ptr %i.s, i64 %i.bww
  %invariant.gep4134 = getelementptr [8 x i8], ptr %i.s, i64 %i.bww ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4816 = sub i32 1, %i.ay
  %invariant.op4817.a = sub i32 2, %i.ay
  %invariant.op4818 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bwx = add i32 %i.n, -1
  %i.bwy = shl nsw i64 %i.o, 3                    ; 6 uses
  %scevgep4542.a = getelementptr i8, ptr %5, i64 %i.bwy
  %i.bwz = shl nsw i64 %i.r, 3                    ; 3 uses
  %scevgep4546.a = getelementptr i8, ptr %7, i64 %i.bwz
  %i.bxa = add nsw i64 %i.bwz, 8                  ; 3 uses
  %scevgep4548 = getelementptr i8, ptr %7, i64 %i.bxa
  %scevgep4550 = getelementptr i8, ptr %5, i64 %i.bwy
  %scevgep4608.a = getelementptr i8, ptr %5, i64 %i.bwy
  %i.bxb = add nsw i64 %i.bwy, 8                  ; 3 uses
  %scevgep4610.a = getelementptr i8, ptr %5, i64 %i.bxb
  %scevgep4613.a = getelementptr i8, ptr %7, i64 %i.bwz
  %scevgep4615.a = getelementptr i8, ptr %7, i64 %i.bxa
  %scevgep4617.a = getelementptr i8, ptr %7, i64 %i.bxa
  %scevgep4619 = getelementptr i8, ptr %5, i64 %i.bwy
  %scevgep4621 = getelementptr i8, ptr %5, i64 %i.bxb
  %scevgep4623 = getelementptr i8, ptr %5, i64 %i.bxb
  %i.bxc = getelementptr i8, ptr %5, i64 %i.bwy
  %scevgep4625 = getelementptr i8, ptr %i.bxc, i64 16
  %invariant.op4837 = sub i32 1, %i.ay
  %invariant.op4838 = sub i32 2, %i.ay
  %invariant.op4839 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3819 = phi i32 [ %.pre3786, %.outer.us.preheader ], [ %.pre3819.be, %.outer.us.backedge ] ; 6 uses
  %i.bxd = phi i32 [ %i.bp, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dl, label %.lr.ph3212.us

bb.dl:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %i.cyt, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %i.cyw, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bxe = sub nsw i32 %.22607.ph.us, %.pre3819   ; 2 uses
  %i.bxf = icmp slt i32 %i.bxe, 2
  br i1 %i.bxf, label %.loopexit2877, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph3212.split.us.us, %bb.dl
  %.125332894.us = phi i32 [ 0, %bb.dl ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %bb.dl ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bxe, %bb.dl ], [ %i.cyp, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %bb.dl ], [ %i.cyy, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %bb.dl ], [ %i.cyt, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %bb.dl ], [ %i.cyw, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bxg = load i32, ptr %i.l, align 4, !tbaa !8  ; 6 uses
  %i.bxh = sub nsw i32 %i.ay, %i.bxg
  %i.bxi = icmp slt i32 %.32608.us, %i.bxh
  br i1 %i.bxi, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bxj = load i32, ptr %2, align 4, !tbaa !8
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %storemerge.us = phi i32 [ %i.bxj, %bb.dn ], [ %i.ay, %bb.dm ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !8
  br i1 %.not26982891.us, label %bb.dy, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bxk = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = getelementptr [8 x i8], ptr %i.s, i64 %i.bxl ; 2 uses
  %i.bxn = getelementptr i8, ptr %i.bxm, i64 8
  %i.bxo = load double, ptr %i.bxn, align 8, !tbaa !9 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4763, %.lr.ph3372.us.new
  %indvars.iv3722 = phi i64 [ %indvars.iv.next3723.3, %.lr.ph3372.us.new ], [ %indvars.iv3722.unr, %.prol.loopexit4763 ] ; 6 uses
  %i.bxp = mul nsw i64 %indvars.iv3722, %i.bb
  %i.bxq = trunc nsw i64 %indvars.iv3722 to i32
  %i.bxr = sub i32 %i.cyz, %i.bxq
  %i.bxs = sext i32 %i.bxr to i64
  %i.bxt = getelementptr [8 x i8], ptr %i.p, i64 %i.bxp
  %i.bxu = getelementptr [8 x i8], ptr %i.bxt, i64 %i.bxs ; 2 uses
  %i.bxv = load double, ptr %i.bxu, align 8, !tbaa !9
  %i.bxw = fdiv double %i.bxv, %i.bxo
  store double %i.bxw, ptr %i.bxu, align 8, !tbaa !9
  %indvars.iv.next3723 = add nsw i64 %indvars.iv3722, 1 ; 2 uses
  %i.bxx = mul nsw i64 %indvars.iv.next3723, %i.bb
  %i.bxy = trunc nsw i64 %indvars.iv.next3723 to i32
  %i.bxz = sub i32 %i.cyz, %i.bxy
  %i.bya = sext i32 %i.bxz to i64
  %i.byb = getelementptr [8 x i8], ptr %i.p, i64 %i.bxx
  %i.byc = getelementptr [8 x i8], ptr %i.byb, i64 %i.bya ; 2 uses
  %i.byd = load double, ptr %i.byc, align 8, !tbaa !9
  %i.bye = fdiv double %i.byd, %i.bxo
  store double %i.bye, ptr %i.byc, align 8, !tbaa !9
  %indvars.iv.next3723.1 = add nsw i64 %indvars.iv3722, 2 ; 2 uses
  %i.byf = mul nsw i64 %indvars.iv.next3723.1, %i.bb
  %i.byg = trunc nsw i64 %indvars.iv.next3723.1 to i32
  %i.byh = sub i32 %i.cyz, %i.byg
  %i.byi = sext i32 %i.byh to i64
  %i.byj = getelementptr [8 x i8], ptr %i.p, i64 %i.byf
  %i.byk = getelementptr [8 x i8], ptr %i.byj, i64 %i.byi ; 2 uses
  %i.byl = load double, ptr %i.byk, align 8, !tbaa !9
  %i.bym = fdiv double %i.byl, %i.bxo
  store double %i.bym, ptr %i.byk, align 8, !tbaa !9
  %indvars.iv.next3723.2 = add nsw i64 %indvars.iv3722, 3 ; 2 uses
  %i.byn = mul nsw i64 %indvars.iv.next3723.2, %i.bb
  %i.byo = trunc nsw i64 %indvars.iv.next3723.2 to i32
  %i.byp = sub i32 %i.cyz, %i.byo
  %i.byq = sext i32 %i.byp to i64
  %i.byr = getelementptr [8 x i8], ptr %i.p, i64 %i.byn
  %i.bys = getelementptr [8 x i8], ptr %i.byr, i64 %i.byq ; 2 uses
  %i.byt = load double, ptr %i.bys, align 8, !tbaa !9
  %i.byu = fdiv double %i.byt, %i.bxo
  store double %i.byu, ptr %i.bys, align 8, !tbaa !9
  %indvars.iv.next3723.3 = add nsw i64 %indvars.iv3722, 4 ; 2 uses
  %lftr.wideiv3725.3 = trunc i64 %indvars.iv.next3723.3 to i32
  %exitcond3726.not.3 = icmp eq i32 %i.cyz, %lftr.wideiv3725.3
  br i1 %exitcond3726.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !97

._crit_edge3373.us:                               ; preds = %.prol.loopexit4763, %.lr.ph3372.us.new, %bb.dp
  %i.byv = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  store i32 %i.byv, ptr %i.c, align 4, !tbaa !8
  %i.byw = add nsw i32 %.pre3819, %.32608.us      ; 4 uses
  store i32 %i.byw, ptr %i.a, align 4, !tbaa !8
  %i.byx = call i32 @llvm.smin.i32(i32 %i.byv, i32 %i.byw) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byx
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4688

vec.epilog.scalar.ph4689:                         ; preds = %vec.epilog.scalar.ph4689, %vec.epilog.scalar.ph4689.preheader.new
  %indvars.iv3727 = phi i64 [ %indvars.iv3727.unr, %vec.epilog.scalar.ph4689.preheader.new ], [ %indvars.iv.next3728.3, %vec.epilog.scalar.ph4689 ] ; 5 uses
  %i.byy = trunc nsw i64 %indvars.iv3727 to i32
  %i.byz = add i32 %i.czn, %i.byy
  %i.bza = sext i32 %i.byz to i64
  %i.bzb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bza ; 2 uses
  %i.bzc = load double, ptr %i.bzb, align 8, !tbaa !9
  %i.bzd = fdiv double %i.bzc, %i.bxo
  store double %i.bzd, ptr %i.bzb, align 8, !tbaa !9
  %i.bze = trunc i64 %indvars.iv3727 to i32
  %.reass4824 = add i32 %i.bze, %invariant.op4823.a
  %i.bzf = sext i32 %.reass4824 to i64
  %i.bzg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzf ; 2 uses
  %i.bzh = load double, ptr %i.bzg, align 8, !tbaa !9
  %i.bzi = fdiv double %i.bzh, %i.bxo
  store double %i.bzi, ptr %i.bzg, align 8, !tbaa !9
  %i.bzj = trunc i64 %indvars.iv3727 to i32
  %.reass4826 = add i32 %i.bzj, %invariant.op4825
  %i.bzk = sext i32 %.reass4826 to i64
  %i.bzl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzk ; 2 uses
  %i.bzm = load double, ptr %i.bzl, align 8, !tbaa !9
  %i.bzn = fdiv double %i.bzm, %i.bxo
  store double %i.bzn, ptr %i.bzl, align 8, !tbaa !9
  %i.bzo = trunc i64 %indvars.iv3727 to i32
  %.reass4828 = add i32 %i.bzo, %invariant.op4827
  %i.bzp = sext i32 %.reass4828 to i64
  %i.bzq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bzp ; 2 uses
  %i.bzr = load double, ptr %i.bzq, align 8, !tbaa !9
  %i.bzs = fdiv double %i.bzr, %i.bxo
  store double %i.bzs, ptr %i.bzq, align 8, !tbaa !9
  %indvars.iv.next3728.3 = add nuw nsw i64 %indvars.iv3727, 4 ; 2 uses
  %lftr.wideiv3730.3 = trunc i64 %indvars.iv.next3728.3 to i32
  %exitcond3731.not.3 = icmp eq i32 %i.czp, %lftr.wideiv3730.3
  br i1 %exitcond3731.not.3, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4689, !llvm.loop !98

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4689.prol.loopexit, %vec.epilog.scalar.ph4689, %middle.block4684, %vec.epilog.middle.block4701, %._crit_edge3373.us
  %i.bzt = add i32 %i.bxg, %.32608.us             ; 7 uses
  %i.bzu = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %i.bxg, 1
  br i1 %.not27053392.us, label %bb.dr, label %.lr.ph3396.us

bb.dq:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us
  %indvar4603 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4604, %._crit_edge3388.us ] ; 10 uses
  %indvar4538 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4539, %._crit_edge3388.us ] ; 4 uses
  %indvars.iv3732 = phi i64 [ %i.dcs, %.lr.ph3396.us ], [ %indvars.iv.next3733, %._crit_edge3388.us ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.cbe, %._crit_edge3388.us ]
  %smax4646 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dct)
  %i.bzv = add i64 %indvar4603, %i.dcs
  %reass.sub4704 = sub i64 %smax4646, %i.bzv
  %i.bzw = add i64 %reass.sub4704, 1              ; 3 uses
  %i.bzx = trunc i64 %indvar4603 to i32
  %i.bzy = mul i32 %i.n, %i.bzx
  %i.bzz = add i32 %i.bzy, %i.ddq
  %i.caa = sext i32 %i.bzz to i64
  %i.cab = shl nsw i64 %i.caa, 3                  ; 2 uses
  %scevgep4609 = getelementptr i8, ptr %scevgep4608.a, i64 %i.cab ; 5 uses
  %smax4611 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dct)
  %i.cac = add i64 %indvar4603, %i.dcs
  %i.cad = sub i64 %smax4611, %i.cac
  %i.cae = shl nsw i64 %i.cad, 3                  ; 3 uses
  %i.caf = getelementptr i8, ptr %scevgep4610.a, i64 %i.cae
  %scevgep4612.a = getelementptr i8, ptr %i.caf, i64 %i.cab ; 5 uses
  %i.cag = trunc i64 %indvar4603 to i32
  %i.cah = add i32 %i.ddr, %i.cag
  %i.cai = sext i32 %i.cah to i64
  %i.caj = shl nsw i64 %i.cai, 3                  ; 3 uses
  %scevgep4614.a = getelementptr i8, ptr %scevgep4613.a, i64 %i.caj ; 2 uses
  %scevgep4616.a = getelementptr i8, ptr %scevgep4615.a, i64 %i.caj
  %i.cak = getelementptr i8, ptr %scevgep4617.a, i64 %i.cae
  %scevgep4618.a = getelementptr i8, ptr %i.cak, i64 %i.caj
  %i.cal = trunc i64 %indvar4603 to i32
  %i.cam = add i32 %i.dds, %i.cal
  %i.can = sext i32 %i.cam to i64
  %i.cao = shl nsw i64 %i.can, 3                  ; 3 uses
  %scevgep4620 = getelementptr i8, ptr %scevgep4619, i64 %i.cao ; 2 uses
  %scevgep4622 = getelementptr i8, ptr %scevgep4621, i64 %i.cao
  %i.cap = getelementptr i8, ptr %scevgep4623, i64 %i.cae
  %scevgep4624 = getelementptr i8, ptr %i.cap, i64 %i.cao
  %i.caq = mul i32 %.0255729803502, %indvar4538
  %i.car = add i32 %i.dcz, %i.caq
  %i.cas = sext i32 %i.car to i64                 ; 2 uses
  %i.cat = shl nsw i64 %i.cas, 3
  %scevgep4543.a = getelementptr i8, ptr %scevgep4542.a, i64 %i.cat ; 2 uses
  %i.cau = add nsw i64 %i.dde, %i.cas
  %i.cav = shl nsw i64 %i.cau, 3
  %scevgep4545.a = getelementptr i8, ptr %scevgep4544, i64 %i.cav ; 2 uses
  %i.caw = add i32 %i.ddf, %indvar4538
  %i.cax = sext i32 %i.caw to i64
  %i.cay = shl nsw i64 %i.cax, 3                  ; 2 uses
  %scevgep4547 = getelementptr i8, ptr %scevgep4546.a, i64 %i.cay
  %scevgep4549 = getelementptr i8, ptr %scevgep4548, i64 %i.cay
  %i.caz = mul i32 %.0255729803502, %indvar4538
  %i.cba = add i32 %i.dcz, %i.caz                 ; 2 uses
  %i.cbb = trunc i64 %indvars.iv3732 to i32
  %i.cbc = mul i32 %i.n, %i.cbb
  %i.cbd = sub i32 %i.cbc, %.182575.neg3394.us.in ; 5 uses
  %i.cbe = trunc nsw i64 %indvars.iv3732 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.cbe, %invariant.op4836 ; 2 uses
  %i.cbf = add nsw i32 %.reass3390.us.reass.reass, %i.dcn
  %i.cbg = sext i32 %i.cbf to i64
  %i.cbh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbg ; 2 uses
  %i.cbi = add nsw i32 %.reass3390.us.reass.reass, %i.bxk
  %i.cbj = sext i32 %i.cbi to i64
  %i.cbk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbj ; 2 uses
  %min.iters.check4648 = icmp ult i64 %i.bzw, 12
  br i1 %min.iters.check4648, label %scalar.ph4647.preheader, label %vector.scevcheck4601

vector.scevcheck4601:                             ; preds = %bb.dq
  %i.cbl = trunc i64 %indvar4603 to i32
  %i.cbm = add i32 %i.dds, %i.cbl                 ; 2 uses
  %i.cbn = trunc i64 %indvar4603 to i32
  %i.cbo = add i32 %i.ddr, %i.cbn                 ; 2 uses
  %i.cbp = trunc i64 %indvar4603 to i32
  %i.cbq = mul i32 %i.n, %i.cbp
  %i.cbr = add i32 %i.cbq, %i.ddq                 ; 2 uses
  %smax4602 = call i64 @llvm.smax.i64(i64 %indvars.iv3732, i64 %i.dct)
  %i.cbs = add i64 %indvar4603, %i.dcs
  %i.cbt = sub i64 %smax4602, %i.cbs              ; 2 uses
  %i.cbu = trunc i64 %i.cbt to i32                ; 3 uses
  %i.cbv = add i32 %i.cbr, %i.cbu
  %i.cbw = icmp slt i32 %i.cbv, %i.cbr
  %i.cbx = add i32 %i.cbo, %i.cbu
  %i.cby = icmp slt i32 %i.cbx, %i.cbo
  %i.cbz = icmp ugt i64 %i.cbt, 4294967295
  %i.cca = or i1 %i.cby, %i.cbz
  %i.ccb = add i32 %i.cbm, %i.cbu
  %i.ccc = icmp slt i32 %i.ccb, %i.cbm
  %i.ccd = or i1 %i.cbw, %i.cca
  %i.cce = or i1 %i.ccc, %i.ccd
  br i1 %i.cce, label %scalar.ph4647.preheader, label %vector.memcheck4607

vector.memcheck4607:                              ; preds = %vector.scevcheck4601
  %bound04627 = icmp ult ptr %scevgep4609, %scevgep4616.a
  %bound14628 = icmp ult ptr %scevgep4614.a, %scevgep4612.a
  %found.conflict4629 = and i1 %bound04627, %bound14628
  %bound04630.a = icmp ult ptr %scevgep4609, %scevgep4618.a
  %bound14631.a = icmp ult ptr %scevgep4614.a, %scevgep4612.a
  %found.conflict4632.a = and i1 %bound04630.a, %bound14631.a
  %conflict.rdx4633.a = or i1 %found.conflict4629, %found.conflict4632.a
  %bound04634.a = icmp ult ptr %scevgep4609, %scevgep4622
  %bound14635.a = icmp ult ptr %scevgep4620, %scevgep4612.a
  %found.conflict4636.a = and i1 %bound04634.a, %bound14635.a
  %conflict.rdx4637.a = or i1 %conflict.rdx4633.a, %found.conflict4636.a
  %bound04638 = icmp ult ptr %scevgep4609, %scevgep4624
  %bound14639 = icmp ult ptr %scevgep4620, %scevgep4612.a
  %found.conflict4640 = and i1 %bound04638, %bound14639
  %conflict.rdx4641 = or i1 %conflict.rdx4637.a, %found.conflict4640
  %bound04642 = icmp ult ptr %scevgep4609, %scevgep4626
  %bound14643 = icmp ult ptr %i.dcq, %scevgep4612.a
  %found.conflict4644 = and i1 %bound04642, %bound14643
  %conflict.rdx4645 = or i1 %conflict.rdx4641, %found.conflict4644
  br i1 %conflict.rdx4645, label %scalar.ph4647.preheader, label %vector.ph4649

vector.ph4649:                                    ; preds = %vector.memcheck4607
  %n.vec4651 = and i64 %i.bzw, -4                 ; 3 uses
  %i.ccf = add i64 %indvars.iv3732, %n.vec4651
  %i.ccg = load double, ptr %i.cbh, align 8, !tbaa !9, !alias.scope !99
  %broadcast.splatinsert4658 = insertelement <4 x double> poison, double %i.ccg, i64 0
  %broadcast.splat4659 = shufflevector <4 x double> %broadcast.splatinsert4658, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cch = load double, ptr %i.cbk, align 8, !tbaa !9, !alias.scope !102
  %broadcast.splatinsert4652 = insertelement <4 x double> poison, double %i.cch, i64 0
  %broadcast.splat4653 = shufflevector <4 x double> %broadcast.splatinsert4652, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cci = fneg <4 x double> %broadcast.splat4653
  %i.ccj = load double, ptr %i.dcq, align 8, !tbaa !9, !alias.scope !104
  %broadcast.splatinsert4661 = insertelement <4 x double> poison, double %i.ccj, i64 0
  %broadcast.splat4662 = shufflevector <4 x double> %broadcast.splatinsert4661, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4654

vector.body4654:                                  ; preds = %vector.body4654, %vector.ph4649
  %index4655 = phi i64 [ 0, %vector.ph4649 ], [ %index.next4663, %vector.body4654 ] ; 2 uses
  %i.cck = add i64 %indvars.iv3732, %index4655
  %i.ccl = trunc nsw i64 %i.cck to i32            ; 2 uses
  %i.ccm = add i32 %i.cbd, %i.ccl
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccn ; 2 uses
  %wide.load4656 = load <4 x double>, ptr %i.cco, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %.reass4830 = add i32 %i.ccl, %invariant.op4829 ; 2 uses
  %i.ccp = add nsw i32 %.reass4830, %i.bxk
  %i.ccq = sext i32 %i.ccp to i64
  %i.ccr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccq
  %wide.load4657 = load <4 x double>, ptr %i.ccr, align 8, !tbaa !9, !alias.scope !111 ; 2 uses
  %i.ccs = fneg <4 x double> %wide.load4657
  %i.cct = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccs, <4 x double> %broadcast.splat4659, <4 x double> %wide.load4656)
  %i.ccu = add nsw i32 %.reass4830, %i.dcn
  %i.ccv = sext i32 %i.ccu to i64
  %i.ccw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccv
  %wide.load4660 = load <4 x double>, ptr %i.ccw, align 8, !tbaa !9, !alias.scope !112
  %i.ccx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cci, <4 x double> %wide.load4660, <4 x double> %i.cct)
  %i.ccy = fmul <4 x double> %wide.load4657, %broadcast.splat4662
  %i.ccz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ccy, <4 x double> %broadcast.splat4653, <4 x double> %i.ccx)
  store <4 x double> %i.ccz, ptr %i.cco, align 8, !tbaa !9, !alias.scope !106, !noalias !108
  %index.next4663 = add nuw i64 %index4655, 4     ; 2 uses
  %i.cda = icmp eq i64 %index.next4663, %n.vec4651
  br i1 %i.cda, label %middle.block4664, label %vector.body4654, !llvm.loop !113

middle.block4664:                                 ; preds = %vector.body4654
  %cmp.n4665 = icmp eq i64 %i.bzw, %n.vec4651
  br i1 %cmp.n4665, label %.loopexit, label %scalar.ph4647.preheader

scalar.ph4647.preheader:                          ; preds = %vector.memcheck4607, %vector.scevcheck4601, %bb.dq, %middle.block4664
  %indvars.iv3734.ph = phi i64 [ %indvars.iv3732, %vector.memcheck4607 ], [ %indvars.iv3732, %vector.scevcheck4601 ], [ %indvars.iv3732, %bb.dq ], [ %i.ccf, %middle.block4664 ]
  br label %scalar.ph4647

scalar.ph4647:                                    ; preds = %scalar.ph4647.preheader, %scalar.ph4647
  %indvars.iv3734 = phi i64 [ %indvars.iv.next3735, %scalar.ph4647 ], [ %indvars.iv3734.ph, %scalar.ph4647.preheader ] ; 3 uses
  %i.cdb = trunc nsw i64 %indvars.iv3734 to i32   ; 2 uses
  %i.cdc = add i32 %i.cbd, %i.cdb
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdd ; 2 uses
  %i.cdf = load double, ptr %i.cde, align 8, !tbaa !9
  %.reass3380.us.reass.reass = add i32 %i.cdb, %invariant.op4831 ; 2 uses
  %i.cdg = add nsw i32 %.reass3380.us.reass.reass, %i.bxk
  %i.cdh = sext i32 %i.cdg to i64
  %i.cdi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cdh
  %i.cdj = load double, ptr %i.cdi, align 8, !tbaa !9 ; 2 uses
  %i.cdk = load double, ptr %i.cbh, align 8, !tbaa !9
  %i.cdl = fneg double %i.cdj
  %i.cdm = call double @llvm.fmuladd.f64(double %i.cdl, double %i.cdk, double %i.cdf)
  %i.cdn = load double, ptr %i.cbk, align 8, !tbaa !9 ; 2 uses
  %i.cdo = add nsw i32 %.reass3380.us.reass.reass, %i.dcn
  %i.cdp = sext i32 %i.cdo to i64
  %i.cdq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdp
  %i.cdr = load double, ptr %i.cdq, align 8, !tbaa !9
  %i.cds = fneg double %i.cdn
  %i.cdt = call double @llvm.fmuladd.f64(double %i.cds, double %i.cdr, double %i.cdm)
  %i.cdu = load double, ptr %i.dcq, align 8, !tbaa !9
  %i.cdv = fmul double %i.cdj, %i.cdu
  %i.cdw = call double @llvm.fmuladd.f64(double %i.cdv, double %i.cdn, double %i.cdt)
  store double %i.cdw, ptr %i.cde, align 8, !tbaa !9
  %indvars.iv.next3735 = add nsw i64 %indvars.iv3734, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3734, %i.dct
  br i1 %.not2726.us.not, label %scalar.ph4647, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %scalar.ph4647, %middle.block4664
  br i1 %.not2728.not3384.us, label %iter.check4584, label %._crit_edge3388.us

vec.epilog.scalar.ph4585:                         ; preds = %vec.epilog.scalar.ph4585.preheader, %vec.epilog.scalar.ph4585
  %indvars.iv3737 = phi i64 [ %indvars.iv.next3738, %vec.epilog.scalar.ph4585 ], [ %indvars.iv3737.ph, %vec.epilog.scalar.ph4585.preheader ]
  %indvars.iv.next3738 = add nsw i64 %indvars.iv3737, 1 ; 3 uses
  %i.cdx = load double, ptr %i.dbc, align 8, !tbaa !9
  %i.cdy = trunc nsw i64 %indvars.iv.next3738 to i32 ; 2 uses
  %i.cdz = add i32 %i.dcr, %i.cdy
  %i.cea = sext i32 %i.cdz to i64
  %i.ceb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cea
  %i.cec = load double, ptr %i.ceb, align 8, !tbaa !9
  %i.ced = add i32 %i.cbd, %i.cdy
  %i.cee = sext i32 %i.ced to i64
  %i.cef = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cee ; 2 uses
  %i.ceg = load double, ptr %i.cef, align 8, !tbaa !9
  %i.ceh = fneg double %i.cdx
  %i.cei = call double @llvm.fmuladd.f64(double %i.ceh, double %i.cec, double %i.ceg)
  store double %i.cei, ptr %i.cef, align 8, !tbaa !9
  %.not2728.not.us = icmp slt i64 %indvars.iv.next3738, %i.dcu
  br i1 %.not2728.not.us, label %vec.epilog.scalar.ph4585, label %._crit_edge3388.us, !llvm.loop !115

._crit_edge3388.us:                               ; preds = %vec.epilog.scalar.ph4585, %middle.block4580, %vec.epilog.middle.block4598, %.loopexit
  %indvars.iv.next3733 = add nsw i64 %indvars.iv3732, 1
  %.not2705.us.not = icmp slt i64 %indvars.iv3732, %i.dct
  %indvar.next4539 = add i32 %indvar4538, 1
  %indvar.next4604 = add i64 %indvar4603, 1
  br i1 %.not2705.us.not, label %bb.dq, label %._crit_edge3397.us, !llvm.loop !116

bb.dr:                                            ; preds = %._crit_edge3397.us, %._crit_edge3378.us
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !8
  br i1 %.not27023369.us, label %bb.du, label %.lr.ph3409.us

bb.ds:                                            ; preds = %.lr.ph3409.us, %._crit_edge3403.us
  %indvars.iv3744 = phi i64 [ %i.dek, %.lr.ph3409.us ], [ %indvars.iv.next3745, %._crit_edge3403.us ] ; 4 uses
  %i.cej = trunc i64 %indvars.iv3744 to i32
  %i.cek = add i32 %.pre3819, %i.cej
  %i.cel = call i32 @llvm.smin.i32(i32 %i.cek, i32 %i.bzt) ; 2 uses
  %.not27253399.us.not = icmp slt i32 %.32608.us, %i.cel
  br i1 %.not27253399.us.not, label %.lr.ph3402.us, label %._crit_edge3403.us

bb.dt:                                            ; preds = %.lr.ph3402.us, %bb.dt
  %indvars.iv3741.in = phi i64 [ %i.dej, %.lr.ph3402.us ], [ %indvars.iv3741, %bb.dt ]
  %indvars.iv3741 = add nuw nsw i64 %indvars.iv3741.in, 1 ; 3 uses
  %i.cem = trunc nsw i64 %indvars.iv3741 to i32   ; 2 uses
  %i.cen = add i32 %i.dei, %i.cem
  %i.ceo = sext i32 %i.cen to i64
  %i.cep = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ceo
  %i.ceq = load double, ptr %i.cep, align 8, !tbaa !9
  %i.cer = load double, ptr %i.def, align 8, !tbaa !9
  %i.ces = add i32 %i.deg, %i.cem
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cet ; 2 uses
  %i.cev = load double, ptr %i.ceu, align 8, !tbaa !9
  %i.cew = fneg double %i.ceq
  %i.cex = call double @llvm.fmuladd.f64(double %i.cew, double %i.cer, double %i.cev)
  store double %i.cex, ptr %i.ceu, align 8, !tbaa !9
  %.not2725.us.not = icmp samesign ult i64 %indvars.iv3741, %i.deh
  br i1 %.not2725.us.not, label %bb.dt, label %._crit_edge3403.us, !llvm.loop !117

._crit_edge3403.us:                               ; preds = %bb.dt, %bb.ds
  %indvars.iv.next3745 = add nsw i64 %indvars.iv3744, 1 ; 2 uses
  %lftr.wideiv3748 = trunc i64 %indvars.iv.next3745 to i32
  %exitcond3749.not = icmp eq i32 %i.bzu, %lftr.wideiv3748
  br i1 %exitcond3749.not, label %._crit_edge3410.us, label %bb.ds, !llvm.loop !118

bb.du:                                            ; preds = %._crit_edge3410.us, %bb.dr
  br i1 %.not, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.cey = fdiv double 1.000000e+00, %i.bxo
  store double %i.cey, ptr %i.e, align 8, !tbaa !9
  %i.cez = mul nsw i32 %.32608.us, %i.t
  %i.cfa = sext i32 %i.cez to i64
  %i.cfb = getelementptr [8 x i8], ptr %i.v, i64 %i.cfa
  %i.cfc = getelementptr i8, ptr %i.cfb, i64 8    ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef %i.cfc, ptr noundef nonnull @c__1) #4
  %i.cfd = load i32, ptr %i.l, align 4, !tbaa !8
  %i.cfe = icmp sgt i32 %i.cfd, 0
  br i1 %i.cfe, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.cff = getelementptr i8, ptr %i.bxm, i64 16
  %i.cfg = mul nsw i32 %i.bzu, %i.t
  %i.cfh = sext i32 %i.cfg to i64
  %i.cfi = getelementptr [8 x i8], ptr %i.v, i64 %i.cfh
  %i.cfj = getelementptr i8, ptr %i.cfi, i64 8
  call void @dger_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.cfc, ptr noundef nonnull @c__1, ptr noundef %i.cff, ptr noundef nonnull @c__1, ptr noundef %i.cfj, ptr noundef nonnull %10) #4
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du
  %i.cfk = mul nsw i32 %.42546.us, %i.n
  %i.cfl = sub i32 %i.bzu, %.42546.us
end_hunk_2
begin_hunk_3_@dsbgst_:bb.a
  %gep4165.3 = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %indvars.iv.next3776.2
  %i.cyn = load double, ptr %gep4165.3, align 8, !tbaa !9
  %i.cyo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3776.2
  store double %i.cyn, ptr %i.cyo, align 8, !tbaa !9
  %indvars.iv.next3776.3 = add nuw nsw i64 %indvars.iv3775, 4 ; 2 uses
  %exitcond3779.not.3 = icmp eq i64 %indvars.iv.next3776.3, %wide.trip.count3778
  br i1 %exitcond3779.not.3, label %.outer.us.backedge, label %scalar.ph4522, !llvm.loop !134

.lr.ph3212.us:                                    ; preds = %.outer.us
  %i.cyp = add nuw nsw i32 %.22607.ph.us, 1       ; 4 uses
  %i.cyq = sub nsw i32 %i.ay, %i.cyp
  %i.cyr = call i32 @llvm.smin.i32(i32 %i.bxd, i32 %i.cyq) ; 2 uses
  store i32 %i.cyr, ptr %i.l, align 4, !tbaa !8
  %i.cys = sub nsw i32 %i.cyp, %.pre3819
  %i.cyt = call i32 @llvm.smax.i32(i32 %i.cys, i32 1) ; 2 uses
  %i.cyu = add nsw i32 %i.cyr, %i.cyp
  %i.cyv = load i32, ptr %i.j, align 4, !tbaa !8
  %i.cyw = sub i32 %i.cyu, %i.cyv                 ; 2 uses
  %.not2700.us = icmp slt i32 %.22607.ph.us, %i.ay
  br i1 %.not2700.us, label %.lr.ph3212.split.us.us, label %.lr.ph3212.split.us3500

.lr.ph3212.split.us3500:                          ; preds = %.lr.ph3212.us
  %i.cyx = icmp eq i32 %.pre3819, 0
  br i1 %i.cyx, label %.loopexit2877, label %.lr.ph3212.split.split.us

.lr.ph3212.split.us.us:                           ; preds = %.lr.ph3212.us
  store i32 1, ptr %i.c, align 4, !tbaa !8
  %i.cyy = add nuw nsw i32 %.22607.ph.us, 2
  br label %bb.dm

.lr.ph3212.split.split.us:                        ; preds = %.lr.ph3212.split.us3500
  store i32 1, ptr %i.c, align 4, !tbaa !8
  br label %bb.dl

.lr.ph3372.us:                                    ; preds = %bb.dp
  %i.cyz = add nuw i32 %.32608.us, 1              ; 6 uses
  %i.cza = sext i32 %.42546.us to i64             ; 2 uses
  %i.czb = add i32 %.32608.us, 1
  %i.czc = sub i32 %i.czb, %.42546.us
  %i.czd = sub i32 %.32608.us, %.42546.us
  %xtraiter4764 = and i32 %i.czc, 3               ; 2 uses
  %lcmp.mod4765.not = icmp eq i32 %xtraiter4764, 0
  br i1 %lcmp.mod4765.not, label %.prol.loopexit4763, label %.prol.preheader4762

.prol.preheader4762:                              ; preds = %.lr.ph3372.us, %.prol.preheader4762
  %indvars.iv3722.prol = phi i64 [ %indvars.iv.next3723.prol, %.prol.preheader4762 ], [ %i.cza, %.lr.ph3372.us ] ; 3 uses
  %prol.iter4766 = phi i32 [ %prol.iter4766.next, %.prol.preheader4762 ], [ 0, %.lr.ph3372.us ]
  %i.cze = mul nsw i64 %indvars.iv3722.prol, %i.bb
  %i.czf = trunc nsw i64 %indvars.iv3722.prol to i32
  %i.czg = sub i32 %i.cyz, %i.czf
  %i.czh = sext i32 %i.czg to i64
  %i.czi = getelementptr [8 x i8], ptr %i.p, i64 %i.cze
  %i.czj = getelementptr [8 x i8], ptr %i.czi, i64 %i.czh ; 2 uses
  %i.czk = load double, ptr %i.czj, align 8, !tbaa !9
  %i.czl = fdiv double %i.czk, %i.bxo
  store double %i.czl, ptr %i.czj, align 8, !tbaa !9
  %indvars.iv.next3723.prol = add nsw i64 %indvars.iv3722.prol, 1 ; 2 uses
  %prol.iter4766.next = add i32 %prol.iter4766, 1 ; 2 uses
  %prol.iter4766.cmp.not = icmp eq i32 %prol.iter4766.next, %xtraiter4764
  br i1 %prol.iter4766.cmp.not, label %.prol.loopexit4763, label %.prol.preheader4762, !llvm.loop !135

.prol.loopexit4763:                               ; preds = %.prol.preheader4762, %.lr.ph3372.us
  %indvars.iv3722.unr = phi i64 [ %i.cza, %.lr.ph3372.us ], [ %indvars.iv.next3723.prol, %.prol.preheader4762 ]
  %i.czm = icmp ult i32 %i.czd, 3
  br i1 %i.czm, label %._crit_edge3373.us, label %.lr.ph3372.us.new

iter.check4688:                                   ; preds = %._crit_edge3373.us
  %reass.sub3511 = mul i32 %.32608.us, %.32608.us3512
  %i.czn = add i32 %reass.sub3511, 1              ; 7 uses
  %i.czo = zext nneg i32 %.32608.us to i64        ; 4 uses
  %i.czp = add nuw i32 %i.byx, 1
  %i.czq = sub i32 %i.byx, %.32608.us             ; 3 uses
  %i.czr = zext i32 %i.czq to i64
  %i.czs = add nuw nsw i64 %i.czr, 1              ; 5 uses
  %min.iters.check4669 = icmp ult i32 %i.czq, 3
  br i1 %min.iters.check4669, label %vec.epilog.scalar.ph4689.preheader, label %vector.scevcheck4667

vector.scevcheck4667:                             ; preds = %iter.check4688
  %i.czt = sub i32 %i.byx, %.32608.us
  %i.czu = mul i32 %i.n, %.32608.us
  %i.czv = add i32 %i.czu, 1                      ; 2 uses
  %i.czw = add i32 %i.czv, %i.czt
  %i.czx = icmp slt i32 %i.czw, %i.czv
  br i1 %i.czx, label %vec.epilog.scalar.ph4689.preheader, label %vector.main.loop.iter.check4670

vector.main.loop.iter.check4670:                  ; preds = %vector.scevcheck4667
  %min.iters.check4671 = icmp ult i32 %i.czq, 15
  br i1 %min.iters.check4671, label %vec.epilog.ph4692, label %vector.ph4672

vector.ph4672:                                    ; preds = %vector.main.loop.iter.check4670
  %n.mod.vf4673 = and i64 %i.czs, 12
  %n.vec4674 = and i64 %i.czs, 8589934576         ; 4 uses
  %i.czy = add nuw nsw i64 %n.vec4674, %i.czo
  %broadcast.splatinsert4675 = insertelement <4 x double> poison, double %i.bxo, i64 0
  %broadcast.splat4676 = shufflevector <4 x double> %broadcast.splatinsert4675, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4819.a = add i32 %.32608.us, %i.czn
  br label %vector.body4677

vector.body4677:                                  ; preds = %vector.body4677, %vector.ph4672
  %index4678 = phi i64 [ 0, %vector.ph4672 ], [ %index.next4683, %vector.body4677 ] ; 2 uses
  %i.czz = trunc i64 %index4678 to i32
  %.reass4820 = add i32 %i.czz, %invariant.op4819.a
  %i.daa = sext i32 %.reass4820 to i64
  %i.dab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.daa ; 5 uses
  %i.dac = getelementptr inbounds nuw i8, ptr %i.dab, i64 32 ; 2 uses
  %i.dad = getelementptr inbounds nuw i8, ptr %i.dab, i64 64 ; 2 uses
  %i.dae = getelementptr inbounds nuw i8, ptr %i.dab, i64 96 ; 2 uses
  %wide.load4679 = load <4 x double>, ptr %i.dab, align 8, !tbaa !9
  %wide.load4680 = load <4 x double>, ptr %i.dac, align 8, !tbaa !9
  %wide.load4681 = load <4 x double>, ptr %i.dad, align 8, !tbaa !9
  %wide.load4682 = load <4 x double>, ptr %i.dae, align 8, !tbaa !9
  %i.daf = fdiv <4 x double> %wide.load4679, %broadcast.splat4676
  %i.dag = fdiv <4 x double> %wide.load4680, %broadcast.splat4676
  %i.dah = fdiv <4 x double> %wide.load4681, %broadcast.splat4676
  %i.dai = fdiv <4 x double> %wide.load4682, %broadcast.splat4676
  store <4 x double> %i.daf, ptr %i.dab, align 8, !tbaa !9
  store <4 x double> %i.dag, ptr %i.dac, align 8, !tbaa !9
  store <4 x double> %i.dah, ptr %i.dad, align 8, !tbaa !9
  store <4 x double> %i.dai, ptr %i.dae, align 8, !tbaa !9
  %index.next4683 = add nuw i64 %index4678, 16    ; 2 uses
  %i.daj = icmp eq i64 %index.next4683, %n.vec4674
  br i1 %i.daj, label %middle.block4684, label %vector.body4677, !llvm.loop !136

middle.block4684:                                 ; preds = %vector.body4677
  %cmp.n4685 = icmp eq i64 %i.czs, %n.vec4674
  br i1 %cmp.n4685, label %._crit_edge3378.us, label %vec.epilog.iter.check4690

vec.epilog.iter.check4690:                        ; preds = %middle.block4684
  %min.epilog.iters.check4691 = icmp eq i64 %n.mod.vf4673, 0
  br i1 %min.epilog.iters.check4691, label %vec.epilog.scalar.ph4689.preheader, label %vec.epilog.ph4692, !prof !18

vec.epilog.ph4692:                                ; preds = %vector.main.loop.iter.check4670, %vec.epilog.iter.check4690
  %vec.epilog.resume.val4686 = phi i64 [ %n.vec4674, %vec.epilog.iter.check4690 ], [ 0, %vector.main.loop.iter.check4670 ]
  %n.vec4694 = and i64 %i.czs, 8589934588         ; 3 uses
  %i.dak = add nuw nsw i64 %n.vec4694, %i.czo
  %broadcast.splatinsert4695 = insertelement <4 x double> poison, double %i.bxo, i64 0
  %broadcast.splat4696 = shufflevector <4 x double> %broadcast.splatinsert4695, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4821.a = add i32 %.32608.us, %i.czn
  br label %vec.epilog.vector.body4697

vec.epilog.vector.body4697:                       ; preds = %vec.epilog.vector.body4697, %vec.epilog.ph4692
  %index4698 = phi i64 [ %vec.epilog.resume.val4686, %vec.epilog.ph4692 ], [ %index.next4700, %vec.epilog.vector.body4697 ] ; 2 uses
  %i.dal = trunc i64 %index4698 to i32
  %.reass4822 = add i32 %i.dal, %invariant.op4821.a
  %i.dam = sext i32 %.reass4822 to i64
  %i.dan = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dam ; 2 uses
  %wide.load4699 = load <4 x double>, ptr %i.dan, align 8, !tbaa !9
  %i.dao = fdiv <4 x double> %wide.load4699, %broadcast.splat4696
  store <4 x double> %i.dao, ptr %i.dan, align 8, !tbaa !9
  %index.next4700 = add nuw i64 %index4698, 4     ; 2 uses
  %i.dap = icmp eq i64 %index.next4700, %n.vec4694
  br i1 %i.dap, label %vec.epilog.middle.block4701, label %vec.epilog.vector.body4697, !llvm.loop !137

vec.epilog.middle.block4701:                      ; preds = %vec.epilog.vector.body4697
  %cmp.n4702 = icmp eq i64 %i.czs, %n.vec4694
  br i1 %cmp.n4702, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4689.preheader

vec.epilog.scalar.ph4689.preheader:               ; preds = %vector.scevcheck4667, %iter.check4688, %vec.epilog.iter.check4690, %vec.epilog.middle.block4701
  %indvars.iv3727.ph = phi i64 [ %i.czo, %iter.check4688 ], [ %i.czo, %vector.scevcheck4667 ], [ %i.czy, %vec.epilog.iter.check4690 ], [ %i.dak, %vec.epilog.middle.block4701 ] ; 3 uses
  %i.daq = add i32 %i.byx, 1
  %i.dar = trunc i64 %indvars.iv3727.ph to i32    ; 2 uses
  %i.das = sub i32 %i.daq, %i.dar
  %i.dat = sub i32 %i.byx, %i.dar
  %xtraiter4767 = and i32 %i.das, 3               ; 2 uses
  %lcmp.mod4768.not = icmp eq i32 %xtraiter4767, 0
  br i1 %lcmp.mod4768.not, label %vec.epilog.scalar.ph4689.prol.loopexit, label %vec.epilog.scalar.ph4689.prol

vec.epilog.scalar.ph4689.prol:                    ; preds = %vec.epilog.scalar.ph4689.preheader, %vec.epilog.scalar.ph4689.prol
  %indvars.iv3727.prol = phi i64 [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4689.prol ], [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4689.preheader ] ; 2 uses
  %prol.iter4769 = phi i32 [ %prol.iter4769.next, %vec.epilog.scalar.ph4689.prol ], [ 0, %vec.epilog.scalar.ph4689.preheader ]
  %i.dau = trunc nsw i64 %indvars.iv3727.prol to i32
  %i.dav = add i32 %i.czn, %i.dau
  %i.daw = sext i32 %i.dav to i64
  %i.dax = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.daw ; 2 uses
  %i.day = load double, ptr %i.dax, align 8, !tbaa !9
  %i.daz = fdiv double %i.day, %i.bxo
  store double %i.daz, ptr %i.dax, align 8, !tbaa !9
  %indvars.iv.next3728.prol = add nuw nsw i64 %indvars.iv3727.prol, 1 ; 2 uses
  %prol.iter4769.next = add i32 %prol.iter4769, 1 ; 2 uses
  %prol.iter4769.cmp.not = icmp eq i32 %prol.iter4769.next, %xtraiter4767
  br i1 %prol.iter4769.cmp.not, label %vec.epilog.scalar.ph4689.prol.loopexit, label %vec.epilog.scalar.ph4689.prol, !llvm.loop !138

vec.epilog.scalar.ph4689.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4689.prol, %vec.epilog.scalar.ph4689.preheader
  %indvars.iv3727.unr = phi i64 [ %indvars.iv3727.ph, %vec.epilog.scalar.ph4689.preheader ], [ %indvars.iv.next3728.prol, %vec.epilog.scalar.ph4689.prol ]
  %i.dba = icmp ult i32 %i.dat, 3
  br i1 %i.dba, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4689.preheader.new

vec.epilog.scalar.ph4689.preheader.new:           ; preds = %vec.epilog.scalar.ph4689.prol.loopexit
  %invariant.op4823.a = add i32 1, %i.czn
  %invariant.op4825 = add i32 2, %i.czn
  %invariant.op4827 = add i32 3, %i.czn
  br label %vec.epilog.scalar.ph4689

iter.check4584:                                   ; preds = %.loopexit
  %.reass3383.reass.us = add i32 %invariant.op3398.us, %i.cbe
  %i.dbb = sext i32 %.reass3383.reass.us to i64
  %i.dbc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dbb ; 3 uses
  br i1 %min.iters.check4561, label %vec.epilog.scalar.ph4585.preheader, label %vector.scevcheck4537

vector.scevcheck4537:                             ; preds = %iter.check4584
  %i.dbd = add i32 %i.cba, %i.ddu
  %i.dbe = icmp slt i32 %i.dbd, %i.cba
  %i.dbf = or i1 %i.dbe, %i.ddy
  br i1 %i.dbf, label %vec.epilog.scalar.ph4585.preheader, label %vector.memcheck4541

vector.memcheck4541:                              ; preds = %vector.scevcheck4537
  %bound04553 = icmp ult ptr %scevgep4543.a, %scevgep4549
  %bound14554 = icmp ult ptr %scevgep4547, %scevgep4545.a
  %found.conflict4555 = and i1 %bound04553, %bound14554
  %bound04556 = icmp ult ptr %scevgep4543.a, %scevgep4552
  %bound14557 = icmp ult ptr %scevgep4551, %scevgep4545.a
  %found.conflict4558 = and i1 %bound04556, %bound14557
  %conflict.rdx4559 = or i1 %found.conflict4555, %found.conflict4558
  br i1 %conflict.rdx4559, label %vec.epilog.scalar.ph4585.preheader, label %vector.main.loop.iter.check4562

vector.main.loop.iter.check4562:                  ; preds = %vector.memcheck4541
  br i1 %min.iters.check4563, label %vec.epilog.ph4588, label %vector.ph4564

vector.ph4564:                                    ; preds = %vector.main.loop.iter.check4562
  %i.dbg = load double, ptr %i.dbc, align 8, !tbaa !9, !alias.scope !139
  %.scalar4706 = fneg double %i.dbg
  %i.dbh = insertelement <4 x double> poison, double %.scalar4706, i64 0
  %i.dbi = shufflevector <4 x double> %i.dbh, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4569

vector.body4569:                                  ; preds = %vector.body4569, %vector.ph4564
  %index4570 = phi i64 [ 0, %vector.ph4564 ], [ %index.next4579, %vector.body4569 ] ; 2 uses
  %i.dbj = trunc i64 %index4570 to i32
  %.reass4833 = add i32 %i.dbj, %invariant.op4832 ; 2 uses
  %i.dbk = add i32 %i.dcr, %.reass4833
  %i.dbl = sext i32 %i.dbk to i64
  %i.dbm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbl ; 4 uses
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbm, i64 32
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbm, i64 64
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.dbm, i64 96
  %wide.load4571.a = load <4 x double>, ptr %i.dbm, align 8, !tbaa !9, !alias.scope !142
  %wide.load4572.a = load <4 x double>, ptr %i.dbn, align 8, !tbaa !9, !alias.scope !142
  %wide.load4573 = load <4 x double>, ptr %i.dbo, align 8, !tbaa !9, !alias.scope !142
  %wide.load4574 = load <4 x double>, ptr %i.dbp, align 8, !tbaa !9, !alias.scope !142
  %i.dbq = add i32 %i.cbd, %.reass4833
  %i.dbr = sext i32 %i.dbq to i64
  %i.dbs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbr ; 5 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 32 ; 2 uses
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbs, i64 64 ; 2 uses
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.dbs, i64 96 ; 2 uses
  %wide.load4575 = load <4 x double>, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4576 = load <4 x double>, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4577 = load <4 x double>, ptr %i.dbu, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %wide.load4578 = load <4 x double>, ptr %i.dbv, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dbw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbi, <4 x double> %wide.load4571.a, <4 x double> %wide.load4575)
  %i.dbx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbi, <4 x double> %wide.load4572.a, <4 x double> %wide.load4576)
  %i.dby = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbi, <4 x double> %wide.load4573, <4 x double> %wide.load4577)
  %i.dbz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbi, <4 x double> %wide.load4574, <4 x double> %wide.load4578)
  store <4 x double> %i.dbw, ptr %i.dbs, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbx, ptr %i.dbt, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dby, ptr %i.dbu, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  store <4 x double> %i.dbz, ptr %i.dbv, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4579 = add nuw i64 %index4570, 16    ; 2 uses
  %i.dca = icmp eq i64 %index.next4579, %n.vec4566
  br i1 %i.dca, label %middle.block4580, label %vector.body4569, !llvm.loop !147

middle.block4580:                                 ; preds = %vector.body4569
  br i1 %cmp.n4581, label %._crit_edge3388.us, label %vec.epilog.iter.check4586

vec.epilog.iter.check4586:                        ; preds = %middle.block4580
  br i1 %min.epilog.iters.check4587, label %vec.epilog.scalar.ph4585.preheader, label %vec.epilog.ph4588, !prof !18

vec.epilog.ph4588:                                ; preds = %vector.main.loop.iter.check4562, %vec.epilog.iter.check4586
  %vec.epilog.resume.val4582 = phi i64 [ %n.vec4566, %vec.epilog.iter.check4586 ], [ 0, %vector.main.loop.iter.check4562 ]
  %i.dcb = load double, ptr %i.dbc, align 8, !tbaa !9, !alias.scope !139
  %.scalar4707 = fneg double %i.dcb
  %i.dcc = insertelement <4 x double> poison, double %.scalar4707, i64 0
  %i.dcd = shufflevector <4 x double> %i.dcc, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4593

vec.epilog.vector.body4593:                       ; preds = %vec.epilog.vector.body4593, %vec.epilog.ph4588
  %index4594 = phi i64 [ %vec.epilog.resume.val4582, %vec.epilog.ph4588 ], [ %index.next4597, %vec.epilog.vector.body4593 ] ; 2 uses
  %i.dce = trunc i64 %index4594 to i32
  %.reass4835 = add i32 %i.dce, %invariant.op4834 ; 2 uses
  %i.dcf = add i32 %i.dcr, %.reass4835
  %i.dcg = sext i32 %i.dcf to i64
  %i.dch = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcg
  %wide.load4595 = load <4 x double>, ptr %i.dch, align 8, !tbaa !9, !alias.scope !142
  %i.dci = add i32 %i.cbd, %.reass4835
  %i.dcj = sext i32 %i.dci to i64
  %i.dck = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcj ; 2 uses
  %wide.load4596 = load <4 x double>, ptr %i.dck, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %i.dcl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dcd, <4 x double> %wide.load4595, <4 x double> %wide.load4596)
  store <4 x double> %i.dcl, ptr %i.dck, align 8, !tbaa !9, !alias.scope !144, !noalias !146
  %index.next4597 = add nuw i64 %index4594, 4     ; 2 uses
  %i.dcm = icmp eq i64 %index.next4597, %n.vec4590
  br i1 %i.dcm, label %vec.epilog.middle.block4598, label %vec.epilog.vector.body4593, !llvm.loop !148

vec.epilog.middle.block4598:                      ; preds = %vec.epilog.vector.body4593
  br i1 %cmp.n4599, label %._crit_edge3388.us, label %vec.epilog.scalar.ph4585.preheader

vec.epilog.scalar.ph4585.preheader:               ; preds = %vector.memcheck4541, %vector.scevcheck4537, %iter.check4584, %vec.epilog.iter.check4586, %vec.epilog.middle.block4598
  %indvars.iv3737.ph = phi i64 [ %i.dct, %iter.check4584 ], [ %i.dct, %vector.scevcheck4537 ], [ %i.dct, %vector.memcheck4541 ], [ %i.ddz, %vec.epilog.iter.check4586 ], [ %i.dea, %vec.epilog.middle.block4598 ]
  br label %vec.epilog.scalar.ph4585

.lr.ph3396.us:                                    ; preds = %._crit_edge3378.us
  %i.dcn = mul i32 %.32608.us, %i.n               ; 5 uses
  %i.dco = sext i32 %i.dcn to i64                 ; 2 uses
  %i.dcp = getelementptr [8 x i8], ptr %i.p, i64 %i.dco
  %i.dcq = getelementptr i8, ptr %i.dcp, i64 8    ; 3 uses
  store i32 %i.byv, ptr %i.a, align 4, !tbaa !8
  store i32 %i.byw, ptr %i.b, align 4, !tbaa !8
  %.not2728.not3384.us = icmp slt i32 %i.bzt, %i.byx
  %reass.sub3513 = sub i32 %i.bxk, %.32608.us
  %invariant.op3398.us = add i32 %reass.sub3513, 1
  %reass.sub3514 = mul i32 %.32608.us, %.32608.us3515
  %i.dcr = add i32 %reass.sub3514, 1              ; 3 uses
  %i.dcs = sext i32 %i.bzu to i64                 ; 4 uses
  %i.dct = sext i32 %i.bzt to i64                 ; 14 uses
  %i.dcu = sext i32 %i.byx to i64                 ; 5 uses
  %i.dcv = xor i64 %i.dct, -1
  %i.dcw = add nsw i64 %i.dcv, %i.dcu             ; 2 uses
  %i.dcx = add nuw i32 %i.bxg, 1
  %i.dcy = mul i32 %i.n, %i.bzu                   ; 2 uses
  %i.dcz = add i32 %i.dcx, %i.dcy                 ; 2 uses
  %i.dda = add nuw i32 %i.bxg, 2
  %i.ddb = mul i32 %i.n, %.32608.us
  %i.ddc = add i32 %i.dda, %i.ddb                 ; 2 uses
  %i.ddd = mul nsw i64 %i.dct, -8
  %scevgep4544 = getelementptr i8, ptr %5, i64 %i.ddd
  %i.dde = add nsw i64 %i.o, %i.dcu
  %i.ddf = add i32 %i.bxk, 2
  %i.ddg = add nuw i32 %i.bxg, 2
  %i.ddh = mul i32 %i.n, %.32608.us
  %i.ddi = add i32 %i.ddg, %i.ddh
  %i.ddj = sext i32 %i.ddi to i64                 ; 2 uses
  %i.ddk = shl nsw i64 %i.ddj, 3
  %scevgep4551 = getelementptr i8, ptr %scevgep4550, i64 %i.ddk
  %i.ddl = add nsw i64 %i.o, %i.dcu
  %i.ddm = add nsw i64 %i.ddl, %i.ddj
  %i.ddn = sub nsw i64 %i.ddm, %i.dct
  %i.ddo = shl nsw i64 %i.ddn, 3
  %scevgep4552 = getelementptr i8, ptr %5, i64 %i.ddo
  %i.ddp = sub nsw i64 %i.dcu, %i.dct             ; 7 uses
  %i.ddq = add i32 %i.dcy, 1                      ; 2 uses
  %i.ddr = add i32 %i.bxk, 2                      ; 2 uses
  %i.dds = add i32 %i.dcn, 2                      ; 2 uses
  %i.ddt = shl nsw i64 %i.dco, 3
  %scevgep4626 = getelementptr i8, ptr %scevgep4625, i64 %i.ddt
  %invariant.op4836 = sub i32 1, %.32608.us
  %invariant.op4829 = sub i32 1, %.32608.us
  %invariant.op4831 = sub i32 1, %.32608.us
  %min.iters.check4561 = icmp ult i64 %i.ddp, 4
  %i.ddu = trunc i64 %i.dcw to i32                ; 2 uses
  %i.ddv = add i32 %i.ddc, %i.ddu
  %i.ddw = icmp slt i32 %i.ddv, %i.ddc
  %i.ddx = icmp ugt i64 %i.dcw, 4294967295
  %i.ddy = or i1 %i.ddw, %i.ddx
  %min.iters.check4563 = icmp ult i64 %i.ddp, 16
  %n.mod.vf4565 = and i64 %i.ddp, 12
  %n.vec4566 = and i64 %i.ddp, -16                ; 4 uses
  %i.ddz = add nsw i64 %n.vec4566, %i.dct
  %invariant.op4832 = add i32 %i.bzt, 1
  %cmp.n4581 = icmp eq i64 %i.ddp, %n.vec4566
  %min.epilog.iters.check4587 = icmp eq i64 %n.mod.vf4565, 0
  %n.vec4590 = and i64 %i.ddp, -4                 ; 3 uses
  %i.dea = add nsw i64 %n.vec4590, %i.dct
  %invariant.op4834 = add i32 %i.bzt, 1
  %cmp.n4599 = icmp eq i64 %i.ddp, %n.vec4590
  br label %bb.dq

._crit_edge3397.us:                               ; preds = %._crit_edge3388.us
  store i32 %i.byx, ptr %i.c, align 4, !tbaa !8
  br label %bb.dr

.lr.ph3402.us:                                    ; preds = %bb.ds
  %indvars3747 = trunc i64 %indvars.iv3744 to i32 ; 2 uses
  %i.deb = mul nsw i64 %indvars.iv3744, %i.bb
  %i.dec = sub i32 %i.bzu, %indvars3747
  %i.ded = sext i32 %i.dec to i64
  %i.dee = getelementptr [8 x i8], ptr %i.p, i64 %i.deb
  %i.def = getelementptr [8 x i8], ptr %i.dee, i64 %i.ded
  %reass.sub3519 = mul i32 %i.bwx, %indvars3747
  %i.deg = add i32 %reass.sub3519, 1
  %i.deh = zext nneg i32 %i.cel to i64
  br label %bb.dt

.lr.ph3409.us:                                    ; preds = %bb.dr
  store i32 %i.bzt, ptr %i.b, align 4, !tbaa !8
  %reass.sub3518 = sub i32 %i.bxk, %.32608.us
  %i.dei = add i32 %reass.sub3518, 1
  %i.dej = zext nneg i32 %.32608.us to i64
  %i.dek = sext i32 %.42546.us to i64
  br label %bb.ds

._crit_edge3410.us:                               ; preds = %._crit_edge3403.us
  %i.del = add i32 %.32608.us, %.pre3819
  %smin3746 = call i32 @llvm.smin.i32(i32 %i.byw, i32 %i.bzt)
  store i32 %i.del, ptr %i.a, align 4, !tbaa !8
  store i32 %smin3746, ptr %i.c, align 4, !tbaa !8
  br label %bb.du

.lr.ph3416.us:                                    ; preds = %bb.ee
  %i.dem = load i32, ptr %2, align 4, !tbaa !8
  %i.den = add i32 %i.cii, %smax3754
  %i.deo = sub i32 1, %i.den
  %i.dep = mul i32 %i.chz, %i.deo
  %i.deq = add i32 %indvars.iv3750, %i.dep
  %i.der = sext i32 %i.deq to i64
  %i.des = sext i32 %i.chz to i64                 ; 2 uses
  %i.det = sext i32 %i.dem to i64
  %i.deu = sext i32 %.3.us to i64                 ; 2 uses
  %invariant.gep4152 = getelementptr [8 x i8], ptr %i.p, i64 %i.des
  %invariant.gep4154 = getelementptr [8 x i8], ptr %i.w, i64 %i.det
  br label %bb.ef

.lr.ph3421.us:                                    ; preds = %bb.ei
  %i.dev = add nsw i32 %i.cil, -1
  %i.dew = mul nsw i32 %i.dev, %i.n               ; 2 uses
  %i.dex = add i32 %i.dew, 2
  %i.dey = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3959
  %i.dez = sext i32 %.pre3951 to i64              ; 2 uses
  %invariant.gep4156 = getelementptr [8 x i8], ptr %i.p, i64 %i.dez
  br label %bb.ej

.lr.ph3427.us:                                    ; preds = %bb.ek
  %i.dfa = add i32 %i.cif, -1
  %.pre3829 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.el

.lr.ph3437.us:                                    ; preds = %bb.dy
  %i.dfb = mul nsw i32 %.32608.us, %i.q
  %i.dfc = add i32 %i.dfb, 1
  %i.dfd = add i32 %.32608.us, %i.ay
  %.reass4167.reass = add i32 %.42551.us, %invariant.op4837
  %i.dfe = add nuw i32 %.32608.us, 1
  %i.dff = add nsw i32 %.32608.us, -1
  %i.dfg = add nuw i32 %.32608.us, 2
  %.reass4169.reass = add i32 %.42551.us, %invariant.op4838
  %i.dfh = zext nneg i32 %.32608.us to i64
  br label %bb.dz

.lr.ph3446.us:                                    ; preds = %._crit_edge3442.us
  %i.dfi = load i32, ptr %4, align 4, !tbaa !8
  %i.dfj = sub i32 %i.ay, %i.dfi                  ; 2 uses
  %i.dfk = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3451.us = add i32 %i.dfj, %i.dfk
  %i.dfl = sext i32 %i.cpk to i64
  %i.dfm = sext i32 %i.cpe to i64
  %i.dfn = sext i32 %i.cnt to i64                 ; 2 uses
  br label %bb.ey

.lr.ph3456.us:                                    ; preds = %bb.ey
  store i32 %i.cnt, ptr %i.c, align 4, !tbaa !8
  store i32 %i.cpe, ptr %i.d, align 4, !tbaa !8
  %i.dfo = load i32, ptr %4, align 4, !tbaa !8
  %invariant.op3458.us = sub i32 %i.ay, %i.dfo    ; 2 uses
  %i.dfp = load i32, ptr %2, align 4, !tbaa !8
  %invariant.op3462.us = add i32 %invariant.op3458.us, %i.dfp
  %i.dfq = sext i32 %i.cpk to i64
  %i.dfr = sext i32 %i.cpe to i64                 ; 2 uses
  %i.dfs = sext i32 %i.cnt to i64                 ; 2 uses
  %invariant.gep4158 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfr
  br label %bb.ez

.lr.ph3466.us:                                    ; preds = %bb.er
  %i.dft = sub i32 %.42551.us, %i.ay
  %i.dfu = add nuw i32 %.32608.us, 1
  %i.dfv = add i32 %.32608.us, %i.ay
  br label %bb.es

.lr.ph3471.us:                                    ; preds = %bb.fe
  %i.dfw = add nsw i32 %i.cru, -1
  %i.dfx = mul nsw i32 %i.dfw, %i.n               ; 2 uses
  %i.dfy = add i32 %i.dfx, 2
  %i.dfz = sext i32 %i.crw to i64                 ; 2 uses
  %invariant.gep4160 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfz
  br label %bb.ff

.lr.ph3477.us:                                    ; preds = %bb.fg
  %i.dga = add i32 %i.crn, -1
  %.pre3840 = load i32, ptr %i.j, align 4, !tbaa !8
  br label %bb.fh

.lr.ph3485.us:                                    ; preds = %._crit_edge3467.us
  %i.dgb = sub i32 %.42551.us, %i.ay
  %i.dgc = add nuw i32 %.32608.us, 1
  br label %bb.fd

.lr.ph3489.us:                                    ; preds = %bb.fl
  %i.dgd = add i32 %i.cwi, -1
  br label %bb.fm

.lr.ph3494.us:                                    ; preds = %._crit_edge3486.us
  %.reass4171.reass = add i32 %.42551.us, %invariant.op4839
  %i.dge = add nuw i32 %.32608.us, 1
  %.pre3906 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br label %bb.fl

.lr.ph3499.us:                                    ; preds = %bb.fp
  %i.dgf = load i32, ptr %2, align 4, !tbaa !8
  %i.dgg = sext i32 %i.dgf to i64                 ; 9 uses
  %i.dgh = sext i32 %.pre3819.pre.pre to i64      ; 5 uses
  %i.dgi = sub i32 %i.cxr, %i.cxs
  %wide.trip.count3778 = zext i32 %i.dgi to i64   ; 4 uses
  %invariant.gep4162 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgh ; 6 uses
  %invariant.gep4164 = getelementptr [8 x i8], ptr %i.w, i64 %i.dgh ; 6 uses
  %i.dgj = add nsw i64 %wide.trip.count3778, -2   ; 3 uses
  %min.iters.check4523 = icmp ult i64 %i.dgj, 16
  br i1 %min.iters.check4523, label %scalar.ph4522.preheader, label %vector.memcheck4514

vector.memcheck4514:                              ; preds = %.lr.ph3499.us
  %i.dgk = shl nsw i64 %i.dgg, 3
  %diff.check4515.a = icmp ugt i64 %i.dgk, -64
  %i.dgl = shl nsw i64 %i.dgh, 3
  %diff.check4516 = icmp ugt i64 %i.dgl, -64
  %conflict.rdx4517 = or i1 %diff.check4515.a, %diff.check4516
  %i.dgm = sub nsw i64 %i.dgh, %i.dgg
  %i.dgn = shl nsw i64 %i.dgm, 3
  %i.dgo = add nsw i64 %i.dgn, -1
  %diff.check4518 = icmp ult i64 %i.dgo, 63
  %conflict.rdx4519 = or i1 %conflict.rdx4517, %diff.check4518
  %i.dgp = add nsw i64 %i.dgg, %i.dgh
  %i.dgq = shl nsw i64 %i.dgp, 3
  %diff.check4520 = icmp ugt i64 %i.dgq, -64
  %conflict.rdx4521 = or i1 %conflict.rdx4519, %diff.check4520
  br i1 %conflict.rdx4521, label %scalar.ph4522.preheader, label %vector.ph4524

vector.ph4524:                                    ; preds = %vector.memcheck4514
  %n.vec4526 = and i64 %i.dgj, -8                 ; 3 uses
  %i.dgr = or disjoint i64 %n.vec4526, 2
  br label %vector.body4527

vector.body4527:                                  ; preds = %vector.body4527, %vector.ph4524
  %index4528 = phi i64 [ 0, %vector.ph4524 ], [ %index.next4533, %vector.body4527 ] ; 2 uses
  %i.dgs = or disjoint i64 %index4528, 2          ; 3 uses
  %i.dgt = add nsw i64 %i.dgs, %i.dgg             ; 2 uses
  %i.dgu = getelementptr [8 x i8], ptr %invariant.gep4162, i64 %i.dgt ; 2 uses
  %i.dgv = getelementptr i8, ptr %i.dgu, i64 32
  %wide.load4529 = load <4 x double>, ptr %i.dgu, align 8, !tbaa !9
  %wide.load4530 = load <4 x double>, ptr %i.dgv, align 8, !tbaa !9
  %i.dgw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dgt ; 2 uses
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dgw, i64 32
  store <4 x double> %wide.load4529, ptr %i.dgw, align 8, !tbaa !9
  store <4 x double> %wide.load4530, ptr %i.dgx, align 8, !tbaa !9
  %i.dgy = getelementptr [8 x i8], ptr %invariant.gep4164, i64 %i.dgs ; 2 uses
  %i.dgz = getelementptr i8, ptr %i.dgy, i64 32
  %wide.load4531 = load <4 x double>, ptr %i.dgy, align 8, !tbaa !9
  %wide.load4532 = load <4 x double>, ptr %i.dgz, align 8, !tbaa !9
  %i.dha = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dgs ; 2 uses
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 32
  store <4 x double> %wide.load4531, ptr %i.dha, align 8, !tbaa !9
  store <4 x double> %wide.load4532, ptr %i.dhb, align 8, !tbaa !9
  %index.next4533 = add nuw i64 %index4528, 8     ; 2 uses
end_hunk_3
