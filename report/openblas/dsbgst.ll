loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@dsbgst_:bb.a
  %i.ei = fdiv double %i.eh, %i.ce
  store double %i.ei, ptr %i.eg, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
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
  br i1 %.not2676.not2955, label %iter.check4426, label %._crit_edge2959

iter.check4426:                                   ; preds = %._crit_edge2954
  %i.el = mul nsw i32 %i.bq, %i.n                 ; 2 uses
  %i.em = add i32 %i.el, %.neg.le
  %invariant.op = add i32 %i.em, %i.bw            ; 7 uses
  %i.en = zext nneg i32 %i.ek to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.eo = sub nsw i64 %wide.trip.count, %i.en     ; 7 uses
  %min.iters.check4408 = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check4408, label %vec.epilog.scalar.ph4427.preheader, label %vector.scevcheck4406

vector.scevcheck4406:                             ; preds = %iter.check4426
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
  br i1 %i.ez, label %vec.epilog.scalar.ph4427.preheader, label %vector.main.loop.iter.check4409

vector.main.loop.iter.check4409:                  ; preds = %vector.scevcheck4406
  %min.iters.check4410 = icmp ult i64 %i.eo, 16
  br i1 %min.iters.check4410, label %vec.epilog.ph4430, label %vector.ph4411

vector.ph4411:                                    ; preds = %vector.main.loop.iter.check4409
  %i.fa = and i64 %i.eo, 12
  %n.vec4412 = and i64 %i.eo, -16                 ; 4 uses
  %i.fb = add nsw i64 %n.vec4412, %i.en
  %broadcast.splatinsert4413 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4414 = shufflevector <4 x double> %broadcast.splatinsert4413, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4757 = add i32 %i.ek, %invariant.op
  br label %vector.body4415

vector.body4415:                                  ; preds = %vector.body4415, %vector.ph4411
  %index4416 = phi i64 [ 0, %vector.ph4411 ], [ %index.next4421, %vector.body4415 ] ; 2 uses
  %i.fc = trunc i64 %index4416 to i32
  %.reass4758 = add i32 %i.fc, %invariant.op4757
  %i.fd = sext i32 %.reass4758 to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fd ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %wide.load4417.a = load <4 x double>, ptr %i.fe, align 8, !tbaa !9
  %wide.load4418.a = load <4 x double>, ptr %i.ff, align 8, !tbaa !9
  %wide.load4419.a = load <4 x double>, ptr %i.fg, align 8, !tbaa !9
  %wide.load4420 = load <4 x double>, ptr %i.fh, align 8, !tbaa !9
  %i.fi = fdiv <4 x double> %wide.load4417.a, %broadcast.splat4414
  %i.fj = fdiv <4 x double> %wide.load4418.a, %broadcast.splat4414
  %i.fk = fdiv <4 x double> %wide.load4419.a, %broadcast.splat4414
  %i.fl = fdiv <4 x double> %wide.load4420, %broadcast.splat4414
  store <4 x double> %i.fi, ptr %i.fe, align 8, !tbaa !9
  store <4 x double> %i.fj, ptr %i.ff, align 8, !tbaa !9
  store <4 x double> %i.fk, ptr %i.fg, align 8, !tbaa !9
  store <4 x double> %i.fl, ptr %i.fh, align 8, !tbaa !9
  %index.next4421 = add nuw i64 %index4416, 16    ; 2 uses
  %i.fm = icmp eq i64 %index.next4421, %n.vec4412
  br i1 %i.fm, label %middle.block4422, label %vector.body4415, !llvm.loop !15

middle.block4422:                                 ; preds = %vector.body4415
  %cmp.n4423 = icmp eq i64 %i.eo, %n.vec4412
  br i1 %cmp.n4423, label %._crit_edge2959, label %vec.epilog.iter.check4428

vec.epilog.iter.check4428:                        ; preds = %middle.block4422
  %min.epilog.iters.check4429 = icmp eq i64 %i.fa, 0
  br i1 %min.epilog.iters.check4429, label %vec.epilog.scalar.ph4427.preheader, label %vec.epilog.ph4430, !prof !18

vec.epilog.ph4430:                                ; preds = %vector.main.loop.iter.check4409, %vec.epilog.iter.check4428
  %vec.epilog.resume.val4424 = phi i64 [ %n.vec4412, %vec.epilog.iter.check4428 ], [ 0, %vector.main.loop.iter.check4409 ]
  %n.vec4431 = and i64 %i.eo, -4                  ; 3 uses
  %i.fn = add nsw i64 %n.vec4431, %i.en
  %broadcast.splatinsert4432 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4433 = shufflevector <4 x double> %broadcast.splatinsert4432, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4759 = add i32 %i.ek, %invariant.op
  br label %vec.epilog.vector.body4434

vec.epilog.vector.body4434:                       ; preds = %vec.epilog.vector.body4434, %vec.epilog.ph4430
  %index4435 = phi i64 [ %vec.epilog.resume.val4424, %vec.epilog.ph4430 ], [ %index.next4437, %vec.epilog.vector.body4434 ] ; 2 uses
  %i.fo = trunc i64 %index4435 to i32
  %.reass4760 = add i32 %i.fo, %invariant.op4759
  %i.fp = sext i32 %.reass4760 to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp ; 2 uses
  %wide.load4436 = load <4 x double>, ptr %i.fq, align 8, !tbaa !9
  %i.fr = fdiv <4 x double> %wide.load4436, %broadcast.splat4433
  store <4 x double> %i.fr, ptr %i.fq, align 8, !tbaa !9
  %index.next4437 = add nuw i64 %index4435, 4     ; 2 uses
  %i.fs = icmp eq i64 %index.next4437, %n.vec4431
  br i1 %i.fs, label %vec.epilog.middle.block4438, label %vec.epilog.vector.body4434, !llvm.loop !19

vec.epilog.middle.block4438:                      ; preds = %vec.epilog.vector.body4434
  %cmp.n4439 = icmp eq i64 %i.eo, %n.vec4431
  br i1 %cmp.n4439, label %._crit_edge2959, label %vec.epilog.scalar.ph4427.preheader

vec.epilog.scalar.ph4427.preheader:               ; preds = %vector.scevcheck4406, %iter.check4426, %vec.epilog.iter.check4428, %vec.epilog.middle.block4438
  %indvars.iv3551.ph = phi i64 [ %i.en, %iter.check4426 ], [ %i.en, %vector.scevcheck4406 ], [ %i.fb, %vec.epilog.iter.check4428 ], [ %i.fn, %vec.epilog.middle.block4438 ] ; 4 uses
  %i.ft = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4695 = and i64 %i.ft, 3                ; 2 uses
  %lcmp.mod4696.not = icmp eq i64 %xtraiter4695, 0
  br i1 %lcmp.mod4696.not, label %vec.epilog.scalar.ph4427.prol.loopexit, label %vec.epilog.scalar.ph4427.prol

vec.epilog.scalar.ph4427.prol:                    ; preds = %vec.epilog.scalar.ph4427.preheader, %vec.epilog.scalar.ph4427.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4427.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4427.preheader ] ; 2 uses
  %prol.iter4697 = phi i64 [ %prol.iter4697.next, %vec.epilog.scalar.ph4427.prol ], [ 0, %vec.epilog.scalar.ph4427.preheader ]
  %i.fu = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fu
  %i.fv = sext i32 %.reass.prol to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9
  %i.fy = fdiv double %i.fx, %i.ce
  store double %i.fy, ptr %i.fw, align 8, !tbaa !9
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4697.next = add i64 %prol.iter4697, 1 ; 2 uses
  %prol.iter4697.cmp.not = icmp eq i64 %prol.iter4697.next, %xtraiter4695
  br i1 %prol.iter4697.cmp.not, label %vec.epilog.scalar.ph4427.prol.loopexit, label %vec.epilog.scalar.ph4427.prol, !llvm.loop !20

vec.epilog.scalar.ph4427.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4427.prol, %vec.epilog.scalar.ph4427.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4427.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4427.prol ]
  %i.fz = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge2959, label %vec.epilog.scalar.ph4427.preheader.new

vec.epilog.scalar.ph4427.preheader.new:           ; preds = %vec.epilog.scalar.ph4427.prol.loopexit
  %invariant.op4761.a = add i32 1, %invariant.op
  %invariant.op4762.a = add i32 2, %invariant.op
  %invariant.op4763.a = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4427

vec.epilog.scalar.ph4427:                         ; preds = %vec.epilog.scalar.ph4427, %vec.epilog.scalar.ph4427.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4427.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4427 ] ; 5 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.gb
  %i.gc = sext i32 %.reass to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !9
  %i.gf = fdiv double %i.ge, %i.ce
  store double %i.gf, ptr %i.gd, align 8, !tbaa !9
  %i.gg = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.gg, %invariant.op4761.a
  %i.gh = sext i32 %.reass.1.reass to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gh ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !9
  %i.gk = fdiv double %i.gj, %i.ce
  store double %i.gk, ptr %i.gi, align 8, !tbaa !9
  %i.gl = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gl, %invariant.op4762.a
  %i.gm = sext i32 %.reass.2.reass to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !9
  %i.gp = fdiv double %i.go, %i.ce
  store double %i.gp, ptr %i.gn, align 8, !tbaa !9
  %i.gq = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gq, %invariant.op4763.a
  %i.gr = sext i32 %.reass.3.reass to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %i.gu = fdiv double %i.gt, %i.ce
  store double %i.gu, ptr %i.gs, align 8, !tbaa !9
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4427, !llvm.loop !21

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4427.prol.loopexit, %vec.epilog.scalar.ph4427, %middle.block4422, %vec.epilog.middle.block4438, %._crit_edge2954
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
  %13 = zext i32 %i.ha to i64                     ; 4 uses
  %smax4275 = call i64 @llvm.usub.sat.i64(i64 %13, i64 %i.hf)
  %i.hg = add i32 %i.bw, %i.ek
  %i.hh = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.hi = xor i32 %i.hh, -1
  %i.hj = add i32 %.02605.ph, %i.hi
  %i.hk = mul i32 %.0255729803502, %i.hj
  %i.hl = add i32 %i.hg, %i.hk
  %i.hm = add i32 %i.bw, 1
  %i.hn = add i32 %i.hm, %i.ek
  %i.ho = add i32 %i.hn, %i.gv
  %i.hp = sub i32 %i.ho, %.02605.ph               ; 2 uses
  %i.hq = add i32 %i.bw, %i.ek
  %i.hr = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 2 uses
  %i.hs = xor i32 %i.hr, -1
  %i.ht = add i32 %.02605.ph, %i.hs
  %i.hu = mul i32 %.0255729803502, %i.ht
  %i.hv = add i32 %i.hq, %i.hu
  %smax4281 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %13)
  %i.hw = shl nuw nsw i64 %smax4281, 3            ; 2 uses
  %i.hx = shl nuw nsw i64 %i.hf, 3                ; 2 uses
  %i.hy = sub nsw i64 %i.hw, %i.hx
  %scevgep4282.a = getelementptr i8, ptr %scevgep4280, i64 %i.hy
  %i.hz = add i32 %i.bh, %i.by
  %i.ia = sub i32 %i.hz, %i.hr
  %i.ib = add i32 %i.bw, 1
  %i.ic = add i32 %i.ib, %i.ek
  %i.id = add i32 %i.ic, %i.gv
  %i.ie = sub i32 %i.id, %.02605.ph
  %i.if = sext i32 %i.ie to i64
  %i.ig = shl nsw i64 %i.if, 3                    ; 2 uses
  %scevgep4289 = getelementptr i8, ptr %scevgep4288.a, i64 %i.ig
  %i.ih = add nsw i64 %i.hw, %i.ig
  %i.ii = sub nsw i64 %i.ih, %i.hx
  %scevgep4291 = getelementptr i8, ptr %scevgep4290.a, i64 %i.ii
  %smax4296 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %13)
  %i.ij = add nuw nsw i64 %smax4296, 1
  %i.ik = sub nsw i64 %i.ij, %i.hf                ; 7 uses
  %i.il = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.im = sub i32 %i.il, %i.bs
  %i.in = add i32 %.02605.ph, -1                  ; 2 uses
  %i.io = add i32 %i.in, %i.bw
  %i.ip = sub i32 %i.in, %i.il
  %i.iq = mul i32 %.0255729803502, %i.ip
  %i.ir = add i32 %i.io, %i.iq
  %i.is = sub i32 %i.ir, %i.il
  %i.it = add i32 %i.bj, %i.by
  %i.iu = sub i32 %i.it, %i.il                    ; 2 uses
  %i.iv = add i32 %i.bw, %i.gv
  %i.iw = sub i32 %i.iv, %i.il                    ; 2 uses
  %i.ix = add i32 %.02605.ph, -1                  ; 2 uses
  %i.iy = add i32 %i.ix, %i.bw
  %i.iz = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 5 uses
  %i.ja = sub i32 %i.ix, %i.iz
  %i.jb = mul i32 %.0255729803502, %i.ja
  %i.jc = add i32 %i.iy, %i.jb
  %i.jd = sub i32 %i.jc, %i.iz
  %i.je = sub i32 %i.iz, %i.bs
  %i.jf = add i32 %i.bn, %i.by
  %i.jg = sub i32 %i.jf, %i.iz                    ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = shl nsw i64 %i.jh, 3                    ; 2 uses
  %scevgep4349 = getelementptr i8, ptr %scevgep4348.a, i64 %i.ji
  %scevgep4351.a = getelementptr i8, ptr %scevgep4350.a, i64 %i.ji
  %i.jj = add i32 %i.bw, %i.gv
  %i.jk = sub i32 %i.jj, %i.iz                    ; 2 uses
  %i.jl = sext i32 %i.jk to i64
  %i.jm = shl nsw i64 %i.jl, 3                    ; 2 uses
  %scevgep4358 = getelementptr i8, ptr %scevgep4357.a, i64 %i.jm
  %scevgep4360.a = getelementptr i8, ptr %scevgep4359.a, i64 %i.jm
  %i.jn = shl nsw i64 %i.gx, 3
  %scevgep4363 = getelementptr i8, ptr %scevgep4362.a, i64 %i.jn
  %i.jo = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br)
  %i.jp = sub i32 %i.jo, %i.bs
  %min.iters.check4298 = icmp ult i64 %i.ik, 4
  %i.jq = trunc nuw i64 %smax4275 to i32          ; 2 uses
  %i.jr = add i32 %i.hp, %i.jq
  %i.js = icmp slt i32 %i.jr, %i.hp
  %min.iters.check4300 = icmp ult i64 %i.ik, 16
  %i.jt = and i64 %i.ik, 12
  %n.vec4302 = and i64 %i.ik, -16                 ; 4 uses
  %i.ju = add nsw i64 %n.vec4302, %i.hf
  %cmp.n4317 = icmp eq i64 %i.ik, %n.vec4302
  %min.epilog.iters.check4323 = icmp eq i64 %i.jt, 0
  %n.vec4325 = and i64 %i.ik, -4                  ; 3 uses
  %i.jv = add nsw i64 %n.vec4325, %i.hf
  %cmp.n4334 = icmp eq i64 %i.ik, %n.vec4325
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph2983, %._crit_edge2973
  %indvar = phi i32 [ 0, %.lr.ph2983 ], [ %indvar.next, %._crit_edge2973 ] ; 12 uses
  %indvars.iv3565 = phi i64 [ %i.hd, %.lr.ph2983 ], [ %indvars.iv.next3566, %._crit_edge2973 ] ; 5 uses
  %indvars.iv3558 = phi i32 [ %i.he, %.lr.ph2983 ], [ %indvars.iv.next3559, %._crit_edge2973 ] ; 3 uses
  %i.jw = add i32 %i.bv, %indvar
  %i.jx = add i32 %i.jp, %indvar                  ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %i.ka = mul i32 %.0255729803502, %indvar
  %i.kb = add i32 %i.jd, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = shl nsw i64 %i.kc, 3                    ; 2 uses
  %scevgep4341 = getelementptr i8, ptr %scevgep4339, i64 %i.kd ; 5 uses
  %i.ke = add i32 %i.je, %indvar
  %i.kf = zext i32 %i.ke to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3                ; 3 uses
  %i.kh = getelementptr i8, ptr %scevgep4342.a, i64 %i.kd
  %scevgep4343 = getelementptr i8, ptr %i.kh, i64 %i.kg ; 5 uses
  %i.ki = add i32 %i.jg, %indvar
  %i.kj = sext i32 %i.ki to i64
  %i.kk = shl nsw i64 %i.kj, 3                    ; 2 uses
  %scevgep4345 = getelementptr i8, ptr %scevgep4344.a, i64 %i.kk
  %scevgep4347 = getelementptr i8, ptr %scevgep4346.a, i64 %i.kk
  %scevgep4352 = getelementptr i8, ptr %scevgep4351.a, i64 %i.kg
  %i.kl = add i32 %i.jk, %indvar
  %i.km = sext i32 %i.kl to i64
  %i.kn = shl nsw i64 %i.km, 3                    ; 2 uses
  %scevgep4354 = getelementptr i8, ptr %scevgep4353.a, i64 %i.kn
  %scevgep4356 = getelementptr i8, ptr %scevgep4355.a, i64 %i.kn
  %scevgep4361 = getelementptr i8, ptr %scevgep4360.a, i64 %i.kg
  %i.ko = add i32 %i.im, %indvar                  ; 3 uses
  %i.kp = mul i32 %.0255729803502, %indvar
  %i.kq = add i32 %i.is, %i.kp                    ; 2 uses
  %i.kr = mul i32 %.0255729803502, %indvar
  %i.ks = add i32 %i.hv, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = shl nsw i64 %i.kt, 3                    ; 2 uses
  %scevgep4279 = getelementptr i8, ptr %scevgep, i64 %i.ku ; 2 uses
  %scevgep4283 = getelementptr i8, ptr %scevgep4282.a, i64 %i.ku ; 2 uses
  %i.kv = add i32 %i.ia, %indvar
  %i.kw = sext i32 %i.kv to i64
  %i.kx = shl nsw i64 %i.kw, 3                    ; 2 uses
  %scevgep4285 = getelementptr i8, ptr %scevgep4284.a, i64 %i.kx
  %scevgep4287 = getelementptr i8, ptr %scevgep4286.a, i64 %i.kx
  %i.ky = mul i32 %.0255729803502, %indvar
  %i.kz = add i32 %i.hl, %i.ky                    ; 2 uses
  %.not26952960 = icmp slt i64 %indvars.iv3565, %i.hd
  br i1 %.not26952960, label %._crit_edge2964, label %.lr.ph2963

.lr.ph2963:                                       ; preds = %bb.t
  %i.la = trunc nsw i64 %indvars.iv3565 to i32
  %i.lb = mul i32 %.0255729803501, %i.la
  %invariant.op2965 = add i32 %i.lb, %i.bw        ; 4 uses
  %i.lc = trunc i64 %indvars.iv3565 to i32
  %i.ld = sub i32 %i.lc, %i.bq                    ; 2 uses
  %i.le = add i32 %i.gw, %i.ld
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.lf ; 4 uses
  %i.lh = add i32 %i.cb, %i.ld
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.li ; 4 uses
  %min.iters.check4385 = icmp ult i32 %i.jx, 7
  br i1 %min.iters.check4385, label %scalar.ph4384.preheader, label %vector.scevcheck4336

vector.scevcheck4336:                             ; preds = %.lr.ph2963
  %i.lk = add i32 %i.kq, %i.ko
  %i.ll = icmp slt i32 %i.lk, %i.kq
  %i.lm = add i32 %i.iu, %i.ko
  %i.ln = icmp slt i32 %i.lm, %i.iu
  %i.lo = add i32 %i.iw, %i.ko
  %i.lp = icmp slt i32 %i.lo, %i.iw
  %i.lq = or i1 %i.ll, %i.ln
  %i.lr = or i1 %i.lq, %i.lp
  br i1 %i.lr, label %scalar.ph4384.preheader, label %vector.memcheck4338

vector.memcheck4338:                              ; preds = %vector.scevcheck4336
  %bound04364 = icmp ult ptr %scevgep4341, %scevgep4347
  %bound14365 = icmp ult ptr %scevgep4345, %scevgep4343
  %found.conflict4366 = and i1 %bound04364, %bound14365
  %bound04367 = icmp ult ptr %scevgep4341, %scevgep4352
  %bound14368 = icmp ult ptr %scevgep4349, %scevgep4343
  %found.conflict4369 = and i1 %bound04367, %bound14368
  %conflict.rdx4370 = or i1 %found.conflict4366, %found.conflict4369
  %bound04371 = icmp ult ptr %scevgep4341, %scevgep4356
  %bound14372 = icmp ult ptr %scevgep4354, %scevgep4343
  %found.conflict4373 = and i1 %bound04371, %bound14372
  %conflict.rdx4374 = or i1 %conflict.rdx4370, %found.conflict4373
  %bound04375 = icmp ult ptr %scevgep4341, %scevgep4361
  %bound14376 = icmp ult ptr %scevgep4358, %scevgep4343
  %found.conflict4377 = and i1 %bound04375, %bound14376
  %conflict.rdx4378 = or i1 %conflict.rdx4374, %found.conflict4377
  %bound04379 = icmp ult ptr %scevgep4341, %scevgep4363
  %bound14380 = icmp ult ptr %i.gy, %scevgep4343
  %found.conflict4381 = and i1 %bound04379, %bound14380
  %conflict.rdx4382 = or i1 %conflict.rdx4378, %found.conflict4381
  br i1 %conflict.rdx4382, label %scalar.ph4384.preheader, label %vector.ph4386

vector.ph4386:                                    ; preds = %vector.memcheck4338
  %n.vec4387 = and i64 %i.jz, 8589934584          ; 3 uses
  %i.ls = add nsw i64 %n.vec4387, %i.hd
  %i.lt = load double, ptr %i.lg, align 8, !tbaa !9, !alias.scope !22
  %broadcast.splatinsert4396 = insertelement <4 x double> poison, double %i.lt, i64 0
  %broadcast.splat4397 = shufflevector <4 x double> %broadcast.splatinsert4396, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lu = load double, ptr %i.lj, align 8, !tbaa !9, !alias.scope !25
  %broadcast.splatinsert4388 = insertelement <4 x double> poison, double %i.lu, i64 0
  %broadcast.splat4389 = shufflevector <4 x double> %broadcast.splatinsert4388, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lv = fneg <4 x double> %broadcast.splat4389  ; 2 uses
  %i.lw = load double, ptr %i.gy, align 8, !tbaa !9, !alias.scope !27
  %broadcast.splatinsert4400 = insertelement <4 x double> poison, double %i.lw, i64 0
  %broadcast.splat4401 = shufflevector <4 x double> %broadcast.splatinsert4400, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4390

vector.body4390:                                  ; preds = %vector.body4390, %vector.ph4386
  %index4391 = phi i64 [ 0, %vector.ph4386 ], [ %index.next4402, %vector.body4390 ] ; 2 uses
  %i.lx = trunc i64 %index4391 to i32
  %i.ly = add i32 %i.bv, %i.lx                    ; 2 uses
  %i.lz = add i32 %invariant.op2965, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ma ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32 ; 2 uses
  %wide.load4392.a = load <4 x double>, ptr %i.mb, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load4393.a = load <4 x double>, ptr %i.mc, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %i.md = sub i32 %i.ly, %i.bq                    ; 2 uses
  %i.me = add i32 %i.cb, %i.md
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %wide.load4394.a = load <4 x double>, ptr %i.mg, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %wide.load4395 = load <4 x double>, ptr %i.mh, align 8, !tbaa !9, !alias.scope !34 ; 2 uses
  %i.mi = fneg <4 x double> %wide.load4394.a
  %i.mj = fneg <4 x double> %wide.load4395
  %i.mk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mi, <4 x double> %broadcast.splat4397, <4 x double> %wide.load4392.a)
  %i.ml = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mj, <4 x double> %broadcast.splat4397, <4 x double> %wide.load4393.a)
  %i.mm = add i32 %i.gw, %i.md
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %wide.load4398.a = load <4 x double>, ptr %i.mo, align 8, !tbaa !9, !alias.scope !35
  %wide.load4399 = load <4 x double>, ptr %i.mp, align 8, !tbaa !9, !alias.scope !35
  %i.mq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lv, <4 x double> %wide.load4398.a, <4 x double> %i.mk)
  %i.mr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lv, <4 x double> %wide.load4399, <4 x double> %i.ml)
  %i.ms = fmul <4 x double> %wide.load4394.a, %broadcast.splat4401
  %i.mt = fmul <4 x double> %wide.load4395, %broadcast.splat4401
  %i.mu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ms, <4 x double> %broadcast.splat4389, <4 x double> %i.mq)
  %i.mv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mt, <4 x double> %broadcast.splat4389, <4 x double> %i.mr)
  store <4 x double> %i.mu, ptr %i.mb, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  store <4 x double> %i.mv, ptr %i.mc, align 8, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next4402 = add nuw i64 %index4391, 8     ; 2 uses
  %i.mw = icmp eq i64 %index.next4402, %n.vec4387
  br i1 %i.mw, label %middle.block4403, label %vector.body4390, !llvm.loop !36

middle.block4403:                                 ; preds = %vector.body4390
  %cmp.n4404 = icmp eq i64 %i.jz, %n.vec4387
  br i1 %cmp.n4404, label %._crit_edge2964, label %scalar.ph4384.preheader

scalar.ph4384.preheader:                          ; preds = %vector.memcheck4338, %vector.scevcheck4336, %.lr.ph2963, %middle.block4403
  %indvars.iv3555.ph = phi i64 [ %i.hd, %vector.memcheck4338 ], [ %i.hd, %vector.scevcheck4336 ], [ %i.hd, %.lr.ph2963 ], [ %i.ls, %middle.block4403 ] ; 5 uses
  %i.mx = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.my = sub i32 %indvars.iv3558, %i.mx
  %xtraiter4698 = and i32 %i.my, 1
  %lcmp.mod4699.not = icmp eq i32 %xtraiter4698, 0
  br i1 %lcmp.mod4699.not, label %scalar.ph4384.prol.loopexit, label %scalar.ph4384.prol

scalar.ph4384.prol:                               ; preds = %scalar.ph4384.preheader
  %i.mz = trunc nsw i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.mz
  %i.na = sext i32 %.reass2966.prol to i64
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.na ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !9
  %i.nd = trunc i64 %indvars.iv3555.ph to i32
  %i.ne = sub i32 %i.nd, %i.bq                    ; 2 uses
  %i.nf = add i32 %i.cb, %i.ne
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !9 ; 2 uses
  %i.nj = load double, ptr %i.lg, align 8, !tbaa !9
  %i.nk = fneg double %i.ni
  %i.nl = call double @llvm.fmuladd.f64(double %i.nk, double %i.nj, double %i.nc)
  %i.nm = load double, ptr %i.lj, align 8, !tbaa !9 ; 2 uses
  %i.nn = add i32 %i.gw, %i.ne
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.no
  %i.nq = load double, ptr %i.np, align 8, !tbaa !9
  %i.nr = fneg double %i.nm
  %i.ns = call double @llvm.fmuladd.f64(double %i.nr, double %i.nq, double %i.nl)
  %i.nt = load double, ptr %i.gy, align 8, !tbaa !9
  %i.nu = fmul double %i.ni, %i.nt
  %i.nv = call double @llvm.fmuladd.f64(double %i.nu, double %i.nm, double %i.ns)
  store double %i.nv, ptr %i.nb, align 8, !tbaa !9
  %indvars.iv.next3556.prol = add nsw i64 %indvars.iv3555.ph, 1
  br label %scalar.ph4384.prol.loopexit

scalar.ph4384.prol.loopexit:                      ; preds = %scalar.ph4384.prol, %scalar.ph4384.preheader
  %indvars.iv3555.unr = phi i64 [ %indvars.iv3555.ph, %scalar.ph4384.preheader ], [ %indvars.iv.next3556.prol, %scalar.ph4384.prol ]
  %i.nw = icmp eq i32 %i.jw, %i.mx
  br i1 %i.nw, label %._crit_edge2964, label %scalar.ph4384

scalar.ph4384:                                    ; preds = %scalar.ph4384.prol.loopexit, %scalar.ph4384
  %indvars.iv3555 = phi i64 [ %indvars.iv.next3556.1, %scalar.ph4384 ], [ %indvars.iv3555.unr, %scalar.ph4384.prol.loopexit ] ; 4 uses
  %i.nx = trunc nsw i64 %indvars.iv3555 to i32
  %.reass2966 = add i32 %invariant.op2965, %i.nx
  %i.ny = sext i32 %.reass2966 to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ny ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !9
  %i.ob = trunc i64 %indvars.iv3555 to i32
  %i.oc = sub i32 %i.ob, %i.bq                    ; 2 uses
  %i.od = add i32 %i.cb, %i.oc
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.oe
  %i.og = load double, ptr %i.of, align 8, !tbaa !9 ; 2 uses
  %i.oh = load double, ptr %i.lg, align 8, !tbaa !9
  %i.oi = fneg double %i.og
  %i.oj = call double @llvm.fmuladd.f64(double %i.oi, double %i.oh, double %i.oa)
  %i.ok = load double, ptr %i.lj, align 8, !tbaa !9 ; 2 uses
  %i.ol = add i32 %i.gw, %i.oc
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !9
  %i.op = fneg double %i.ok
  %i.oq = call double @llvm.fmuladd.f64(double %i.op, double %i.oo, double %i.oj)
  %i.or = load double, ptr %i.gy, align 8, !tbaa !9
  %i.os = fmul double %i.og, %i.or
  %i.ot = call double @llvm.fmuladd.f64(double %i.os, double %i.ok, double %i.oq)
  store double %i.ot, ptr %i.nz, align 8, !tbaa !9
  %indvars.iv.next3556 = add nsw i64 %indvars.iv3555, 1 ; 2 uses
  %i.ou = trunc nsw i64 %indvars.iv.next3556 to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.ou
  %i.ov = sext i32 %.reass2966.1 to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ov ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !9
  %i.oy = trunc i64 %indvars.iv.next3556 to i32
  %i.oz = sub i32 %i.oy, %i.bq                    ; 2 uses
  %i.pa = add i32 %i.cb, %i.oz
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pb
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !9 ; 2 uses
  %i.pe = load double, ptr %i.lg, align 8, !tbaa !9
  %i.pf = fneg double %i.pd
  %i.pg = call double @llvm.fmuladd.f64(double %i.pf, double %i.pe, double %i.ox)
  %i.ph = load double, ptr %i.lj, align 8, !tbaa !9 ; 2 uses
  %i.pi = add i32 %i.gw, %i.oz
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !9
  %i.pm = fneg double %i.ph
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %i.pl, double %i.pg)
  %i.po = load double, ptr %i.gy, align 8, !tbaa !9
  %i.pp = fmul double %i.pd, %i.po
  %i.pq = call double @llvm.fmuladd.f64(double %i.pp, double %i.ph, double %i.pn)
  store double %i.pq, ptr %i.ow, align 8, !tbaa !9
  %indvars.iv.next3556.1 = add nsw i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4384, !llvm.loop !37

._crit_edge2964:                                  ; preds = %scalar.ph4384.prol.loopexit, %scalar.ph4384, %middle.block4403, %bb.t
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4320

iter.check4320:                                   ; preds = %._crit_edge2964
  %i.pr = trunc nsw i64 %indvars.iv3565 to i32    ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985, %i.pr
  %i.ps = sext i32 %.reass2968.reass to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ps ; 3 uses
  %i.pu = mul i32 %.0255729803502, %i.pr
  %invariant.op2976 = add i32 %i.pu, %i.bw        ; 3 uses
  br i1 %min.iters.check4298, label %vec.epilog.scalar.ph4321.preheader, label %vector.scevcheck4274

vector.scevcheck4274:                             ; preds = %iter.check4320
  %i.pv = add i32 %i.kz, %i.jq
  %i.pw = icmp slt i32 %i.pv, %i.kz
  %i.px = or i1 %i.pw, %i.js
  br i1 %i.px, label %vec.epilog.scalar.ph4321.preheader, label %vector.memcheck4277

vector.memcheck4277:                              ; preds = %vector.scevcheck4274
  %bound0 = icmp ult ptr %scevgep4279, %scevgep4287
  %bound1 = icmp ult ptr %scevgep4285, %scevgep4283
  %found.conflict = and i1 %bound0, %bound1
  %bound04292 = icmp ult ptr %scevgep4279, %scevgep4291
  %bound14293 = icmp ult ptr %scevgep4289, %scevgep4283
  %found.conflict4294 = and i1 %bound04292, %bound14293
  %conflict.rdx4295 = or i1 %found.conflict, %found.conflict4294
  br i1 %conflict.rdx4295, label %vec.epilog.scalar.ph4321.preheader, label %vector.main.loop.iter.check4299

vector.main.loop.iter.check4299:                  ; preds = %vector.memcheck4277
  br i1 %min.iters.check4300, label %vec.epilog.ph4324, label %vector.ph4301

vector.ph4301:                                    ; preds = %vector.main.loop.iter.check4299
  %i.py = load double, ptr %i.pt, align 8, !tbaa !9, !alias.scope !38
  %.scalar = fneg double %i.py
  %i.pz = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.qa = shufflevector <4 x double> %i.pz, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4305

vector.body4305:                                  ; preds = %vector.body4305, %vector.ph4301
  %index4306 = phi i64 [ 0, %vector.ph4301 ], [ %index.next4315, %vector.body4305 ] ; 2 uses
  %i.qb = trunc i64 %index4306 to i32
  %i.qc = add i32 %i.ek, %i.qb                    ; 2 uses
  %i.qd = add i32 %invariant.op2974, %i.qc
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qe ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 96
  %wide.load4307.a = load <4 x double>, ptr %i.qf, align 8, !tbaa !9, !alias.scope !41
  %wide.load4308.a = load <4 x double>, ptr %i.qg, align 8, !tbaa !9, !alias.scope !41
  %wide.load4309.a = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !41
  %wide.load4310.a = load <4 x double>, ptr %i.qi, align 8, !tbaa !9, !alias.scope !41
  %i.qj = add i32 %invariant.op2976, %i.qc
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qk ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 64 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 96 ; 2 uses
  %wide.load4311.a = load <4 x double>, ptr %i.ql, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4312.a = load <4 x double>, ptr %i.qm, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4313.a = load <4 x double>, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %wide.load4314 = load <4 x double>, ptr %i.qo, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.qp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qa, <4 x double> %wide.load4307.a, <4 x double> %wide.load4311.a)
  %i.qq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qa, <4 x double> %wide.load4308.a, <4 x double> %wide.load4312.a)
  %i.qr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qa, <4 x double> %wide.load4309.a, <4 x double> %wide.load4313.a)
  %i.qs = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qa, <4 x double> %wide.load4310.a, <4 x double> %wide.load4314)
  store <4 x double> %i.qp, ptr %i.ql, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qq, ptr %i.qm, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qr, ptr %i.qn, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  store <4 x double> %i.qs, ptr %i.qo, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4315 = add nuw i64 %index4306, 16    ; 2 uses
  %i.qt = icmp eq i64 %index.next4315, %n.vec4302
  br i1 %i.qt, label %middle.block4316, label %vector.body4305, !llvm.loop !46

middle.block4316:                                 ; preds = %vector.body4305
  br i1 %cmp.n4317, label %._crit_edge2973, label %vec.epilog.iter.check4322

vec.epilog.iter.check4322:                        ; preds = %middle.block4316
  br i1 %min.epilog.iters.check4323, label %vec.epilog.scalar.ph4321.preheader, label %vec.epilog.ph4324, !prof !18

vec.epilog.ph4324:                                ; preds = %vector.main.loop.iter.check4299, %vec.epilog.iter.check4322
  %vec.epilog.resume.val4318 = phi i64 [ %n.vec4302, %vec.epilog.iter.check4322 ], [ 0, %vector.main.loop.iter.check4299 ]
  %i.qu = load double, ptr %i.pt, align 8, !tbaa !9, !alias.scope !38
  %.scalar4680.a = fneg double %i.qu
  %i.qv = insertelement <4 x double> poison, double %.scalar4680.a, i64 0
  %i.qw = shufflevector <4 x double> %i.qv, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4328

vec.epilog.vector.body4328:                       ; preds = %vec.epilog.vector.body4328, %vec.epilog.ph4324
  %index4329 = phi i64 [ %vec.epilog.resume.val4318, %vec.epilog.ph4324 ], [ %index.next4332, %vec.epilog.vector.body4328 ] ; 2 uses
  %i.qx = trunc i64 %index4329 to i32
  %i.qy = add i32 %i.ek, %i.qx                    ; 2 uses
  %i.qz = add i32 %invariant.op2974, %i.qy
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ra
  %wide.load4330.a = load <4 x double>, ptr %i.rb, align 8, !tbaa !9, !alias.scope !41
  %i.rc = add i32 %invariant.op2976, %i.qy
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rd ; 2 uses
  %wide.load4331 = load <4 x double>, ptr %i.re, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %i.rf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qw, <4 x double> %wide.load4330.a, <4 x double> %wide.load4331)
  store <4 x double> %i.rf, ptr %i.re, align 8, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next4332 = add nuw i64 %index4329, 4     ; 2 uses
  %i.rg = icmp eq i64 %index.next4332, %n.vec4325
  br i1 %i.rg, label %vec.epilog.middle.block4333, label %vec.epilog.vector.body4328, !llvm.loop !47

vec.epilog.middle.block4333:                      ; preds = %vec.epilog.vector.body4328
  br i1 %cmp.n4334, label %._crit_edge2973, label %vec.epilog.scalar.ph4321.preheader

vec.epilog.scalar.ph4321.preheader:               ; preds = %vector.memcheck4277, %vector.scevcheck4274, %iter.check4320, %vec.epilog.iter.check4322, %vec.epilog.middle.block4333
  %indvars.iv3562.ph = phi i64 [ %i.hf, %iter.check4320 ], [ %i.hf, %vector.scevcheck4274 ], [ %i.hf, %vector.memcheck4277 ], [ %i.ju, %vec.epilog.iter.check4322 ], [ %i.jv, %vec.epilog.middle.block4333 ]
  br label %vec.epilog.scalar.ph4321

vec.epilog.scalar.ph4321:                         ; preds = %vec.epilog.scalar.ph4321.preheader, %vec.epilog.scalar.ph4321
  %indvars.iv3562 = phi i64 [ %indvars.iv.next3563, %vec.epilog.scalar.ph4321 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4321.preheader ] ; 3 uses
  %i.rh = load double, ptr %i.pt, align 8, !tbaa !9
  %i.ri = trunc nuw nsw i64 %indvars.iv3562 to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.ri
  %i.rj = sext i32 %.reass2975 to i64
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rj
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !9
  %.reass2977 = add i32 %invariant.op2976, %i.ri
  %i.rm = sext i32 %.reass2977 to i64
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rm ; 2 uses
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !9
  %i.rp = fneg double %i.rh
  %i.rq = call double @llvm.fmuladd.f64(double %i.rp, double %i.rl, double %i.ro)
  store double %i.rq, ptr %i.rn, align 8, !tbaa !9
  %indvars.iv.next3563 = add nuw nsw i64 %indvars.iv3562, 1
  %.not2697.not = icmp samesign ult i64 %indvars.iv3562, %13
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4321, label %._crit_edge2973, !llvm.loop !48

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4321, %middle.block4316, %vec.epilog.middle.block4333, %._crit_edge2964
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
  %i.rr = add i32 %.neg.le, %i.ac
  %i.rs = add i32 %i.rr, %i.by
  %i.rt = sext i32 %i.br to i64
  %i.ru = zext i32 %i.bq to i64
  %i.rv = add i32 %i.bu, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2998, %._crit_edge2990
  %indvars.iv3574 = phi i64 [ %i.ru, %.lr.ph2998 ], [ %indvars.iv.next3575, %._crit_edge2990 ] ; 4 uses
  %indvars.iv3570 = phi i32 [ %i.ej, %.lr.ph2998 ], [ %indvars.iv.next3571, %._crit_edge2990 ] ; 2 uses
  %.42585.neg2996 = phi i32 [ %.neg.le, %.lr.ph2998 ], [ %.42585.neg, %._crit_edge2990 ] ; 2 uses
  %i.rw = trunc i64 %indvars.iv3574 to i32
  %i.rx = sub i32 %i.rw, %.pre3786                ; 2 uses
  %i.ry = call i32 @llvm.smax.i32(i32 %i.rx, i32 %i.bv)
  %.not26942986 = icmp sgt i32 %i.ry, %i.br
  br i1 %.not26942986, label %._crit_edge2990, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.v
  %i.rz = call i32 @llvm.smax.i32(i32 %indvars.iv3570, i32 %i.bv)
  %smax = sext i32 %i.rz to i64
  %i.sa = add i32 %.42585.neg2996, %i.bq
  %i.sb = trunc i64 %indvars.iv3574 to i32
  %i.sc = mul i32 %i.n, %i.sb                     ; 2 uses
  %i.sd = add i32 %i.sa, %i.sc
  %i.se = add i32 %i.sd, %i.bw
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.sf
  %i.sh = add i32 %i.sc, %.42585.neg2996
  %invariant.op2991 = add i32 %i.sh, %i.bw
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph2989, %bb.w
  %indvars.iv3572 = phi i64 [ %smax, %.lr.ph2989 ], [ %indvars.iv.next3573, %bb.w ] ; 3 uses
  %i.si = trunc nsw i64 %indvars.iv3572 to i32    ; 2 uses
  %i.sj = add i32 %i.rs, %i.si
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !9
  %i.sn = load double, ptr %i.sg, align 8, !tbaa !9
  %.reass2992 = add i32 %invariant.op2991, %i.si
  %i.so = sext i32 %.reass2992 to i64
  %i.sp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.so ; 2 uses
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !9
  %i.sr = fneg double %i.sm
  %i.ss = call double @llvm.fmuladd.f64(double %i.sr, double %i.sn, double %i.sq)
  store double %i.ss, ptr %i.sp, align 8, !tbaa !9
  %indvars.iv.next3573 = add nsw i64 %indvars.iv3572, 1
  %.not2694.not = icmp slt i64 %indvars.iv3572, %i.rt
  br i1 %.not2694.not, label %bb.w, label %._crit_edge2990, !llvm.loop !50

._crit_edge2990:                                  ; preds = %bb.w, %bb.v
  %indvars.iv.next3575 = add i64 %indvars.iv3574, 1 ; 2 uses
  %i.st = trunc i64 %indvars.iv3574 to i32
  %.42585.neg = xor i32 %i.st, -1
  %indvars.iv.next3571 = add i32 %indvars.iv3570, 1
  %lftr.wideiv3577 = trunc i64 %indvars.iv.next3575 to i32
  %exitcond3578.not = icmp eq i32 %i.rv, %lftr.wideiv3577
  br i1 %exitcond3578.not, label %._crit_edge2999, label %bb.v, !llvm.loop !51

._crit_edge2999:                                  ; preds = %._crit_edge2990
  store i32 %i.rx, ptr %i.d, align 4, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge2999, %bb.u
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.su = sub nsw i32 %.pre3787, %i.ay
  store i32 %i.su, ptr %i.c, align 4, !tbaa !8
  %i.sv = fdiv double 1.000000e+00, %i.ce
  store double %i.sv, ptr %i.e, align 8, !tbaa !9
  %i.sw = mul nsw i32 %i.bq, %i.t
  %i.sx = add nsw i32 %i.sw, %i.ba
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.sy ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.sz, ptr noundef nonnull @c__1) #4
  %i.ta = load i32, ptr %i.l, align 4, !tbaa !8   ; 3 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.tc = load i32, ptr %2, align 4, !tbaa !8
  %i.td = sub nsw i32 %i.tc, %i.ay
  store i32 %i.td, ptr %i.c, align 4, !tbaa !8
  %i.te = sub i32 %i.cb, %i.ta
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.tf
  %i.th = sub nsw i32 %i.bq, %i.ta
  %i.ti = mul nsw i32 %i.th, %i.t
  %i.tj = add nsw i32 %i.ti, %i.ba
  %i.tk = sext i32 %i.tj to i64
  %i.tl = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.tk
  call void @dger_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.sz, ptr noundef nonnull @c__1, ptr noundef %i.tg, ptr noundef nonnull @c__1, ptr noundef %i.tl, ptr noundef nonnull %10) #4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %i.tm = sub i32 %i.bq, %i.bu
  %i.tn = load i32, ptr %i.j, align 4, !tbaa !8
  %i.to = mul nsw i32 %i.bu, %i.n
  %i.tp = add i32 %i.tm, %i.to
  %i.tq = add i32 %i.tp, %i.tn
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.tr
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !9
  store double %i.tt, ptr %i.k, align 8, !tbaa !9
  %.pre3847 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %bb.aa
  %i.tu = phi i32 [ %.pre3847, %bb.aa ], [ %i.bp, %bb.r ] ; 2 uses
  %.025322917 = phi i32 [ 1, %bb.aa ], [ 0, %bb.r ] ; 7 uses
  %.not26472913 = phi i1 [ false, %bb.aa ], [ true, %bb.r ] ; 5 uses
  %.1260627722796 = phi i32 [ %i.bq, %bb.aa ], [ %i.ca, %bb.r ] ; 19 uses
  %.1254827752794 = phi i32 [ %i.br, %bb.aa ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327782792 = phi i32 [ %i.bu, %bb.aa ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927812790 = phi i32 [ %i.bx, %bb.aa ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.tv = add nsw i32 %i.tu, -1
  store i32 %i.tv, ptr %i.c, align 4, !tbaa !8
  %.not26793063 = icmp slt i32 %i.tu, 2
  br i1 %.not26793063, label %._crit_edge3068, label %.lr.ph3067

.lr.ph3067:                                       ; preds = %bb.ab
  %i.tw = mul nsw i32 %.1260627722796, %i.q
  %i.tx = add i32 %i.tw, %i.ac
  %i.ty = add i32 %.1260627722796, 1
  %i.tz = sext i32 %.1260627722796 to i64
  %i.ua = sext i32 %.1254827752794 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph3067, %.loopexit2883
  %indvars.iv3619 = phi i64 [ 1, %.lr.ph3067 ], [ %indvars.iv.next3620, %.loopexit2883 ] ; 7 uses
  %indvars.iv3617 = phi i64 [ -1, %.lr.ph3067 ], [ %indvars.iv.next3618, %.loopexit2883 ] ; 4 uses
  %.pre3848 = load i32, ptr %2, align 4, !tbaa !8 ; 4 uses
  %.pre3849 = load i32, ptr %3, align 4, !tbaa !8 ; 4 uses
  br i1 %.not26472913, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ub = sub nsw i64 %i.tz, %indvars.iv3619      ; 3 uses
  %i.uc = trunc nsw i64 %i.ub to i32              ; 2 uses
  %i.ud = add nsw i32 %.pre3849, %i.uc            ; 3 uses
  %i.ue = icmp slt i32 %i.ud, %.pre3848
  %i.uf = icmp sgt i64 %i.ub, 1
  %or.cond2757 = and i1 %i.uf, %i.ue
  br i1 %or.cond2757, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ug = mul nsw i32 %i.ud, %i.n
  %i.uh = sext i32 %i.ug to i64
  %i.ui = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv3619
  %i.uj = getelementptr i8, ptr %i.ui, i64 8
  %i.uk = getelementptr [8 x i8], ptr %i.uj, i64 %i.uh
  %i.ul = trunc nuw nsw i64 %indvars.iv3619 to i32
  %i.um = add i32 %i.ay, %i.ul
  %i.un = sub i32 %.1260627722796, %i.um          ; 2 uses
  %i.uo = add i32 %i.un, %.pre3849
  %i.up = add i32 %i.uo, %.pre3848
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.uq
  %i.us = sub nsw i32 %i.ud, %i.ay
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ut
  call void @dlartg_(ptr noundef %i.uk, ptr noundef nonnull %i.k, ptr noundef nonnull %i.ur, ptr noundef nonnull %i.uu, ptr noundef nonnull %i.g) #4
  %i.uv = trunc nsw i64 %indvars.iv3617 to i32
  %i.uw = add i32 %i.tx, %i.uv
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ux
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !9
  %i.va = fneg double %i.uz
  %i.vb = load double, ptr %i.k, align 8, !tbaa !9
  %i.vc = fmul double %i.vb, %i.va                ; 2 uses
  %i.vd = load i32, ptr %2, align 4, !tbaa !8     ; 2 uses
  %i.ve = load i32, ptr %3, align 4, !tbaa !8     ; 3 uses
  %i.vf = add i32 %i.un, %i.vd
  %i.vg = add i32 %i.vf, %i.ve
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.vh ; 2 uses
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !9
  %i.vk = add nsw i32 %i.ve, %i.uc                ; 2 uses
  %i.vl = sub nsw i32 %i.vk, %i.ay
  %i.vm = sext i32 %i.vl to i64
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4255, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4266 = and i64 %i.aqe, 8589934588         ; 3 uses
  %i.aqx = add nuw nsw i64 %n.vec4266, %i.aqa
  %broadcast.splatinsert4267 = insertelement <4 x double> poison, double %i.apx, i64 0
  %broadcast.splat4268 = shufflevector <4 x double> %broadcast.splatinsert4267, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4766 = add i32 %i.bq, %i.apz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4269 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4271, %vec.epilog.vector.body ] ; 2 uses
  %i.aqy = trunc i64 %index4269 to i32
  %.reass4767 = add i32 %i.aqy, %invariant.op4766
  %i.aqz = sext i32 %.reass4767 to i64
  %i.ara = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqz ; 2 uses
  %wide.load4270 = load <4 x double>, ptr %i.ara, align 8, !tbaa !9
  %i.arb = fdiv <4 x double> %wide.load4270, %broadcast.splat4268
  store <4 x double> %i.arb, ptr %i.ara, align 8, !tbaa !9
  %index.next4271 = add nuw i64 %index4269, 4     ; 2 uses
  %i.arc = icmp eq i64 %index.next4271, %n.vec4266
  br i1 %i.arc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4272 = icmp eq i64 %i.aqe, %n.vec4266
  br i1 %cmp.n4272, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck4250, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3579.ph = phi i64 [ %i.aqa, %iter.check ], [ %i.aqa, %vector.scevcheck4250 ], [ %i.aql, %vec.epilog.iter.check ], [ %i.aqx, %vec.epilog.middle.block ] ; 3 uses
  %i.ard = add i32 %i.bu, 1
  %i.are = trunc i64 %indvars.iv3579.ph to i32    ; 2 uses
  %i.arf = sub i32 %i.ard, %i.are
  %i.arg = sub i32 %i.bu, %i.are
  %xtraiter4701 = and i32 %i.arf, 3               ; 2 uses
  %lcmp.mod4702.not = icmp eq i32 %xtraiter4701, 0
  br i1 %lcmp.mod4702.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3579.prol = phi i64 [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4703 = phi i32 [ %prol.iter4703.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.arh = trunc i64 %indvars.iv3579.prol to i32
  %i.ari = add i32 %i.apz, %i.arh
  %i.arj = sext i32 %i.ari to i64
  %i.ark = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arj ; 2 uses
  %i.arl = load double, ptr %i.ark, align 8, !tbaa !9
  %i.arm = fdiv double %i.arl, %i.apx
  store double %i.arm, ptr %i.ark, align 8, !tbaa !9
  %indvars.iv.next3580.prol = add i64 %indvars.iv3579.prol, 1 ; 2 uses
  %prol.iter4703.next = add i32 %prol.iter4703, 1 ; 2 uses
  %prol.iter4703.cmp.not = icmp eq i32 %prol.iter4703.next, %xtraiter4701
  br i1 %prol.iter4703.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !71

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3579.unr = phi i64 [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3580.prol, %vec.epilog.scalar.ph.prol ]
  %i.arn = icmp ult i32 %i.arg, 3
  br i1 %i.arn, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4768 = add i32 1, %i.apz
  %invariant.op4770 = add i32 2, %i.apz
  %invariant.op4772 = add i32 3, %i.apz
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3579 = phi i64 [ %indvars.iv3579.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3580.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aro = trunc i64 %indvars.iv3579 to i32
  %i.arp = add i32 %i.apz, %i.aro
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arq ; 2 uses
  %i.ars = load double, ptr %i.arr, align 8, !tbaa !9
  %i.art = fdiv double %i.ars, %i.apx
  store double %i.art, ptr %i.arr, align 8, !tbaa !9
  %i.aru = trunc i64 %indvars.iv3579 to i32
  %.reass4769 = add i32 %i.aru, %invariant.op4768
  %i.arv = sext i32 %.reass4769 to i64
  %i.arw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arv ; 2 uses
  %i.arx = load double, ptr %i.arw, align 8, !tbaa !9
  %i.ary = fdiv double %i.arx, %i.apx
  store double %i.ary, ptr %i.arw, align 8, !tbaa !9
  %i.arz = trunc i64 %indvars.iv3579 to i32
  %.reass4771 = add i32 %i.arz, %invariant.op4770
  %i.asa = sext i32 %.reass4771 to i64
  %i.asb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.asa ; 2 uses
  %i.asc = load double, ptr %i.asb, align 8, !tbaa !9
  %i.asd = fdiv double %i.asc, %i.apx
  store double %i.asd, ptr %i.asb, align 8, !tbaa !9
  %i.ase = trunc i64 %indvars.iv3579 to i32
  %.reass4773 = add i32 %i.ase, %invariant.op4772
  %i.asf = sext i32 %.reass4773 to i64
  %i.asg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.asf ; 2 uses
  %i.ash = load double, ptr %i.asg, align 8, !tbaa !9
  %i.asi = fdiv double %i.ash, %i.apx
  store double %i.asi, ptr %i.asg, align 8, !tbaa !9
  %indvars.iv.next3580.3 = add nsw i64 %indvars.iv3579, 4 ; 2 uses
  %lftr.wideiv3582.3 = trunc i64 %indvars.iv.next3580.3 to i32
  %exitcond3583.not.3 = icmp eq i32 %i.aqb, %lftr.wideiv3582.3
  br i1 %exitcond3583.not.3, label %._crit_edge3005, label %vec.epilog.scalar.ph, !llvm.loop !72

._crit_edge3005:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4263, %vec.epilog.middle.block, %bb.bo
  store i32 1, ptr %i.b, align 4, !tbaa !8
  %i.asj = sub nsw i32 %i.bq, %.pre3786           ; 4 uses
  store i32 %i.asj, ptr %i.c, align 4, !tbaa !8
  store i32 %i.bq, ptr %i.d, align 4, !tbaa !8
  %i.ask = call i32 @llvm.smax.i32(i32 %i.asj, i32 1) ; 4 uses
  %.not2654.not3006 = icmp slt i32 %i.ask, %.02605.ph
  br i1 %.not2654.not3006, label %.lr.ph3009.preheader, label %._crit_edge3010

.lr.ph3009.preheader:                             ; preds = %._crit_edge3005
  %i.asl = zext nneg i32 %i.ask to i64            ; 4 uses
  %wide.trip.count3587 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.asm = sub nsw i64 %wide.trip.count3587, %i.asl
  %xtraiter4704 = and i64 %i.asm, 3               ; 2 uses
  %lcmp.mod4705.not = icmp eq i64 %xtraiter4704, 0
  br i1 %lcmp.mod4705.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol

.lr.ph3009.prol:                                  ; preds = %.lr.ph3009.preheader, %.lr.ph3009.prol
  %indvars.iv3584.prol = phi i64 [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ], [ %i.asl, %.lr.ph3009.preheader ] ; 3 uses
  %prol.iter4706 = phi i64 [ %prol.iter4706.next, %.lr.ph3009.prol ], [ 0, %.lr.ph3009.preheader ]
  %i.asn = mul nsw i64 %indvars.iv3584.prol, %i.bb
  %i.aso = trunc nuw nsw i64 %indvars.iv3584.prol to i32
  %i.asp = sub i32 %.02605.ph, %i.aso
  %i.asq = sext i32 %i.asp to i64
  %i.asr = getelementptr [8 x i8], ptr %i.p, i64 %i.asn
  %i.ass = getelementptr [8 x i8], ptr %i.asr, i64 %i.asq ; 2 uses
  %i.ast = load double, ptr %i.ass, align 8, !tbaa !9
  %i.asu = fdiv double %i.ast, %i.apx
  store double %i.asu, ptr %i.ass, align 8, !tbaa !9
  %indvars.iv.next3585.prol = add nuw nsw i64 %indvars.iv3584.prol, 1 ; 2 uses
  %prol.iter4706.next = add i64 %prol.iter4706, 1 ; 2 uses
  %prol.iter4706.cmp.not = icmp eq i64 %prol.iter4706.next, %xtraiter4704
  br i1 %prol.iter4706.cmp.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol, !llvm.loop !73

.lr.ph3009.prol.loopexit:                         ; preds = %.lr.ph3009.prol, %.lr.ph3009.preheader
  %indvars.iv3584.unr = phi i64 [ %i.asl, %.lr.ph3009.preheader ], [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ]
  %i.asv = sub nsw i64 %i.asl, %wide.trip.count3587
  %i.asw = icmp ugt i64 %i.asv, -4
  br i1 %i.asw, label %._crit_edge3010, label %.lr.ph3009

.lr.ph3009:                                       ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009
  %indvars.iv3584 = phi i64 [ %indvars.iv.next3585.3, %.lr.ph3009 ], [ %indvars.iv3584.unr, %.lr.ph3009.prol.loopexit ] ; 6 uses
  %i.asx = mul nsw i64 %indvars.iv3584, %i.bb
  %i.asy = trunc nuw nsw i64 %indvars.iv3584 to i32
  %i.asz = sub i32 %.02605.ph, %i.asy
  %i.ata = sext i32 %i.asz to i64
  %i.atb = getelementptr [8 x i8], ptr %i.p, i64 %i.asx
  %i.atc = getelementptr [8 x i8], ptr %i.atb, i64 %i.ata ; 2 uses
  %i.atd = load double, ptr %i.atc, align 8, !tbaa !9
  %i.ate = fdiv double %i.atd, %i.apx
  store double %i.ate, ptr %i.atc, align 8, !tbaa !9
  %indvars.iv.next3585 = add nuw nsw i64 %indvars.iv3584, 1 ; 2 uses
  %i.atf = mul nsw i64 %indvars.iv.next3585, %i.bb
  %i.atg = trunc nuw nsw i64 %indvars.iv.next3585 to i32
  %i.ath = sub i32 %.02605.ph, %i.atg
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr [8 x i8], ptr %i.p, i64 %i.atf
  %i.atk = getelementptr [8 x i8], ptr %i.atj, i64 %i.ati ; 2 uses
  %i.atl = load double, ptr %i.atk, align 8, !tbaa !9
  %i.atm = fdiv double %i.atl, %i.apx
  store double %i.atm, ptr %i.atk, align 8, !tbaa !9
  %indvars.iv.next3585.1 = add nuw nsw i64 %indvars.iv3584, 2 ; 2 uses
  %i.atn = mul nsw i64 %indvars.iv.next3585.1, %i.bb
  %i.ato = trunc nuw nsw i64 %indvars.iv.next3585.1 to i32
  %i.atp = sub i32 %.02605.ph, %i.ato
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr [8 x i8], ptr %i.p, i64 %i.atn
  %i.ats = getelementptr [8 x i8], ptr %i.atr, i64 %i.atq ; 2 uses
  %i.att = load double, ptr %i.ats, align 8, !tbaa !9
  %i.atu = fdiv double %i.att, %i.apx
  store double %i.atu, ptr %i.ats, align 8, !tbaa !9
  %indvars.iv.next3585.2 = add nuw nsw i64 %indvars.iv3584, 3 ; 2 uses
  %i.atv = mul nsw i64 %indvars.iv.next3585.2, %i.bb
  %i.atw = trunc nuw nsw i64 %indvars.iv.next3585.2 to i32
  %i.atx = sub i32 %.02605.ph, %i.atw
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr [8 x i8], ptr %i.p, i64 %i.atv
  %i.aua = getelementptr [8 x i8], ptr %i.atz, i64 %i.aty ; 2 uses
  %i.aub = load double, ptr %i.aua, align 8, !tbaa !9
  %i.auc = fdiv double %i.aub, %i.apx
  store double %i.auc, ptr %i.aua, align 8, !tbaa !9
  %indvars.iv.next3585.3 = add nuw nsw i64 %indvars.iv3584, 4 ; 2 uses
  %exitcond3588.not.3 = icmp eq i64 %indvars.iv.next3585.3, %wide.trip.count3587
  br i1 %exitcond3588.not.3, label %._crit_edge3010, label %.lr.ph3009, !llvm.loop !74

._crit_edge3010:                                  ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009, %._crit_edge3005
  %.not26553023 = icmp sgt i32 %i.bv, %i.br
  br i1 %.not26553023, label %bb.br, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %._crit_edge3010
  %i.aud = mul nsw i32 %i.bq, %i.n
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr [8 x i8], ptr %i.p, i64 %i.aue
  %i.aug = getelementptr i8, ptr %i.auf, i64 8    ; 3 uses
  store i32 %i.asj, ptr %i.c, align 4, !tbaa !8
  %i.auh = xor i32 %i.bs, -1
  %i.aui = add i32 %i.bq, %i.auh                  ; 3 uses
  store i32 %i.aui, ptr %i.a, align 4, !tbaa !8
  %.not26743017 = icmp sgt i32 %i.ask, %i.aui
  %i.auj = sext i32 %i.bv to i64                  ; 8 uses
  %i.auk = sext i32 %i.bq to i64                  ; 4 uses
  %i.aul = sub i32 %.02605.ph, %i.bs
  %i.aum = zext nneg i32 %i.ask to i64
  %14 = zext nneg i32 %i.aui to i64
  %i.aun = mul nsw i64 %i.auj, %i.bb              ; 2 uses
  %invariant.gep4774 = getelementptr [8 x i8], ptr %i.p, i64 %i.aun
  %i.auo = sub nsw i64 %i.auk, %i.auj
  %i.aup = add nsw i64 %i.auo, 1                  ; 2 uses
  %i.auq = mul nsw i64 %i.auj, %i.bc
  %i.aur = getelementptr [8 x i8], ptr %i.s, i64 %i.aup
  %i.aus = getelementptr [8 x i8], ptr %i.aur, i64 %i.auq
  %i.aut = getelementptr [8 x i8], ptr %i.p, i64 %i.aup
  %i.auu = getelementptr [8 x i8], ptr %i.aut, i64 %i.aun
  %indvars.iv.next3590.prol = add nsw i64 %i.auj, 1
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph3026, %._crit_edge3022
  %indvar4709 = phi i32 [ 0, %.lr.ph3026 ], [ %indvar.next4710, %._crit_edge3022 ] ; 3 uses
  %indvars.iv3599 = phi i64 [ %i.auj, %.lr.ph3026 ], [ %indvars.iv.next3600, %._crit_edge3022 ] ; 10 uses
  %indvars.iv3592 = phi i32 [ %i.aul, %.lr.ph3026 ], [ %indvars.iv.next3593, %._crit_edge3022 ] ; 2 uses
  %.not26723011 = icmp slt i64 %indvars.iv3599, %i.auj
  br i1 %.not26723011, label %._crit_edge3015, label %.lr.ph3014

.lr.ph3014:                                       ; preds = %bb.bp
  %i.auv = add i64 %indvars.iv3599, 1             ; 2 uses
  %i.auw = sub nsw i64 %i.auk, %indvars.iv3599
  %i.aux = add nsw i64 %i.auw, 1                  ; 2 uses
  %i.auy = mul nsw i64 %indvars.iv3599, %i.bb
  %i.auz = getelementptr [8 x i8], ptr %i.p, i64 %i.aux
  %i.ava = getelementptr [8 x i8], ptr %i.auz, i64 %i.auy ; 3 uses
  %i.avb = mul nsw i64 %indvars.iv3599, %i.bc
  %i.avc = getelementptr [8 x i8], ptr %i.s, i64 %i.aux
  %i.avd = getelementptr [8 x i8], ptr %i.avc, i64 %i.avb ; 3 uses
  %i.ave = and i32 %indvar4709, 1
  %lcmp.mod4712.not.not = icmp eq i32 %i.ave, 0
  br i1 %lcmp.mod4712.not.not, label %.prol.loopexit4708.unr-lcssa, label %.prol.loopexit4708

.prol.loopexit4708.unr-lcssa:                     ; preds = %.lr.ph3014
  %i.avf = sub i64 %i.auv, %i.auj
  %sext.prol = shl i64 %i.avf, 32
  %i.avg = ashr exact i64 %sext.prol, 29
  %gep4775 = getelementptr i8, ptr %invariant.gep4774, i64 %i.avg ; 2 uses
  %i.avh = load double, ptr %gep4775, align 8, !tbaa !9
  %i.avi = load double, ptr %i.aus, align 8, !tbaa !9 ; 2 uses
  %i.avj = load double, ptr %i.ava, align 8, !tbaa !9
  %i.avk = fneg double %i.avi
  %i.avl = call double @llvm.fmuladd.f64(double %i.avk, double %i.avj, double %i.avh)
  %i.avm = load double, ptr %i.avd, align 8, !tbaa !9 ; 2 uses
  %i.avn = load double, ptr %i.auu, align 8, !tbaa !9
  %i.avo = fneg double %i.avm
  %i.avp = call double @llvm.fmuladd.f64(double %i.avo, double %i.avn, double %i.avl)
  %i.avq = load double, ptr %i.aug, align 8, !tbaa !9
  %i.avr = fmul double %i.avi, %i.avq
  %i.avs = call double @llvm.fmuladd.f64(double %i.avr, double %i.avm, double %i.avp)
  store double %i.avs, ptr %gep4775, align 8, !tbaa !9
  br label %.prol.loopexit4708

.prol.loopexit4708:                               ; preds = %.prol.loopexit4708.unr-lcssa, %.lr.ph3014
  %indvars.iv3589.unr = phi i64 [ %i.auj, %.lr.ph3014 ], [ %indvars.iv.next3590.prol, %.prol.loopexit4708.unr-lcssa ]
  %i.avt = icmp eq i32 %indvar4709, 0
  br i1 %i.avt, label %._crit_edge3015, label %.lr.ph3014.new

.lr.ph3014.new:                                   ; preds = %.prol.loopexit4708, %.lr.ph3014.new
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.1, %.lr.ph3014.new ], [ %indvars.iv3589.unr, %.prol.loopexit4708 ] ; 7 uses
  %i.avu = mul nsw i64 %indvars.iv3589, %i.bb     ; 2 uses
  %i.avv = sub i64 %i.auv, %indvars.iv3589
  %sext = shl i64 %i.avv, 32
  %i.avw = ashr exact i64 %sext, 29
  %i.avx = getelementptr i8, ptr %i.p, i64 %i.avw
  %i.avy = getelementptr [8 x i8], ptr %i.avx, i64 %i.avu ; 2 uses
  %i.avz = load double, ptr %i.avy, align 8, !tbaa !9
  %i.awa = sub nsw i64 %i.auk, %indvars.iv3589
  %i.awb = add nsw i64 %i.awa, 1                  ; 2 uses
  %i.awc = mul nsw i64 %indvars.iv3589, %i.bc
  %i.awd = getelementptr [8 x i8], ptr %i.s, i64 %i.awb
  %i.awe = getelementptr [8 x i8], ptr %i.awd, i64 %i.awc
  %i.awf = load double, ptr %i.awe, align 8, !tbaa !9 ; 2 uses
  %i.awg = load double, ptr %i.ava, align 8, !tbaa !9
  %i.awh = fneg double %i.awf
  %i.awi = call double @llvm.fmuladd.f64(double %i.awh, double %i.awg, double %i.avz)
  %i.awj = load double, ptr %i.avd, align 8, !tbaa !9 ; 2 uses
  %i.awk = getelementptr [8 x i8], ptr %i.p, i64 %i.awb
  %i.awl = getelementptr [8 x i8], ptr %i.awk, i64 %i.avu
  %i.awm = load double, ptr %i.awl, align 8, !tbaa !9
  %i.awn = fneg double %i.awj
  %i.awo = call double @llvm.fmuladd.f64(double %i.awn, double %i.awm, double %i.awi)
  %i.awp = load double, ptr %i.aug, align 8, !tbaa !9
  %i.awq = fmul double %i.awf, %i.awp
  %i.awr = call double @llvm.fmuladd.f64(double %i.awq, double %i.awj, double %i.awo)
  store double %i.awr, ptr %i.avy, align 8, !tbaa !9
  %indvars.iv.next3590 = add nsw i64 %indvars.iv3589, 1 ; 3 uses
  %i.aws = mul nsw i64 %indvars.iv.next3590, %i.bb ; 2 uses
  %i.awt = sub i64 %indvars.iv3599, %indvars.iv3589
  %sext.1 = shl i64 %i.awt, 32
  %i.awu = ashr exact i64 %sext.1, 29
  %i.awv = getelementptr i8, ptr %i.p, i64 %i.awu
  %i.aww = getelementptr [8 x i8], ptr %i.awv, i64 %i.aws ; 2 uses
  %i.awx = load double, ptr %i.aww, align 8, !tbaa !9
  %i.awy = sub nsw i64 %i.auk, %indvars.iv.next3590
  %i.awz = add nsw i64 %i.awy, 1                  ; 2 uses
  %i.axa = mul nsw i64 %indvars.iv.next3590, %i.bc
  %i.axb = getelementptr [8 x i8], ptr %i.s, i64 %i.awz
  %i.axc = getelementptr [8 x i8], ptr %i.axb, i64 %i.axa
  %i.axd = load double, ptr %i.axc, align 8, !tbaa !9 ; 2 uses
  %i.axe = load double, ptr %i.ava, align 8, !tbaa !9
  %i.axf = fneg double %i.axd
  %i.axg = call double @llvm.fmuladd.f64(double %i.axf, double %i.axe, double %i.awx)
  %i.axh = load double, ptr %i.avd, align 8, !tbaa !9 ; 2 uses
  %i.axi = getelementptr [8 x i8], ptr %i.p, i64 %i.awz
  %i.axj = getelementptr [8 x i8], ptr %i.axi, i64 %i.aws
  %i.axk = load double, ptr %i.axj, align 8, !tbaa !9
  %i.axl = fneg double %i.axh
  %i.axm = call double @llvm.fmuladd.f64(double %i.axl, double %i.axk, double %i.axg)
  %i.axn = load double, ptr %i.aug, align 8, !tbaa !9
  %i.axo = fmul double %i.axd, %i.axn
  %i.axp = call double @llvm.fmuladd.f64(double %i.axo, double %i.axh, double %i.axm)
  store double %i.axp, ptr %i.aww, align 8, !tbaa !9
  %indvars.iv.next3590.1 = add nsw i64 %indvars.iv3589, 2 ; 2 uses
  %lftr.wideiv3594.1 = trunc i64 %indvars.iv.next3590.1 to i32
  %exitcond3595.not.1 = icmp eq i32 %indvars.iv3592, %lftr.wideiv3594.1
  br i1 %exitcond3595.not.1, label %._crit_edge3015, label %.lr.ph3014.new, !llvm.loop !75

._crit_edge3015:                                  ; preds = %.prol.loopexit4708, %.lr.ph3014.new, %bb.bp
  br i1 %.not26743017, label %._crit_edge3022, label %.lr.ph3021

.lr.ph3021:                                       ; preds = %._crit_edge3015
  %i.axq = mul nsw i64 %indvars.iv3599, %i.bc
  %i.axr = trunc nsw i64 %indvars.iv3599 to i32
  %i.axs = sub i32 %.02605.ph, %i.axr
  %i.axt = sext i32 %i.axs to i64
  %i.axu = getelementptr [8 x i8], ptr %i.s, i64 %i.axq
  %i.axv = getelementptr [8 x i8], ptr %i.axu, i64 %i.axt
  %i.axw = add i64 %indvars.iv3599, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph3021, %bb.bq
  %indvars.iv3596 = phi i64 [ %i.aum, %.lr.ph3021 ], [ %indvars.iv.next3597, %bb.bq ] ; 5 uses
  %i.axx = load double, ptr %i.axv, align 8, !tbaa !9
  %i.axy = mul nsw i64 %indvars.iv3596, %i.bb     ; 2 uses
  %i.axz = trunc nuw nsw i64 %indvars.iv3596 to i32
  %i.aya = sub i32 %.02605.ph, %i.axz
  %i.ayb = sext i32 %i.aya to i64
  %i.ayc = getelementptr [8 x i8], ptr %i.p, i64 %i.axy
  %i.ayd = getelementptr [8 x i8], ptr %i.ayc, i64 %i.ayb
  %i.aye = load double, ptr %i.ayd, align 8, !tbaa !9
  %i.ayf = sub i64 %i.axw, %indvars.iv3596
  %sext4083 = shl i64 %i.ayf, 32
  %i.ayg = ashr exact i64 %sext4083, 29
  %i.ayh = getelementptr i8, ptr %i.p, i64 %i.ayg
  %i.ayi = getelementptr [8 x i8], ptr %i.ayh, i64 %i.axy ; 2 uses
  %i.ayj = load double, ptr %i.ayi, align 8, !tbaa !9
  %i.ayk = fneg double %i.axx
  %i.ayl = call double @llvm.fmuladd.f64(double %i.ayk, double %i.aye, double %i.ayj)
  store double %i.ayl, ptr %i.ayi, align 8, !tbaa !9
  %indvars.iv.next3597 = add nuw nsw i64 %indvars.iv3596, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3596, %14
  br i1 %.not2674.not, label %bb.bq, label %._crit_edge3022, !llvm.loop !76

._crit_edge3022:                                  ; preds = %bb.bq, %._crit_edge3015
  %indvars.iv.next3600 = add nsw i64 %indvars.iv3599, 1 ; 2 uses
  %indvars.iv.next3593 = add i32 %indvars.iv3592, 1
  %lftr.wideiv3602 = trunc i64 %indvars.iv.next3600 to i32
  %exitcond3603.not = icmp eq i32 %i.bq, %lftr.wideiv3602
  %indvar.next4710 = add i32 %indvar4709, 1
  br i1 %exitcond3603.not, label %._crit_edge3027, label %bb.bp, !llvm.loop !77

._crit_edge3027:                                  ; preds = %._crit_edge3022
  store i32 1, ptr %i.b, align 4, !tbaa !8
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge3027, %._crit_edge3010
  br i1 %.not26533001, label %bb.bu, label %.lr.ph3038

.lr.ph3038:                                       ; preds = %bb.br
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !8
  store i32 %i.br, ptr %i.c, align 4, !tbaa !8
  %i.aym = mul nsw i32 %i.bq, %i.n
  %reass.sub3503 = sub i32 %i.aym, %.02605.ph
  %i.ayn = add i32 %reass.sub3503, 2
  %i.ayo = sext i32 %i.br to i64
  %i.ayp = zext i32 %i.bq to i64
  %i.ayq = add i32 %i.bu, 1
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph3038, %._crit_edge3034
  %indvars.iv3609 = phi i64 [ %i.ayp, %.lr.ph3038 ], [ %indvars.iv.next3610, %._crit_edge3034 ] ; 4 uses
  %indvars.iv3604 = phi i32 [ %i.asj, %.lr.ph3038 ], [ %indvars.iv.next3605, %._crit_edge3034 ] ; 2 uses
  %i.ayr = trunc i64 %indvars.iv3609 to i32
  %i.ays = sub i32 %i.ayr, %.pre3786              ; 2 uses
  %i.ayt = call i32 @llvm.smax.i32(i32 %i.ays, i32 %i.bv)
  %.not26713029 = icmp sgt i32 %i.ayt, %i.br
  br i1 %.not26713029, label %._crit_edge3034, label %.lr.ph3033

.lr.ph3033:                                       ; preds = %bb.bs
  %i.ayu = call i32 @llvm.smax.i32(i32 %indvars.iv3604, i32 %i.bv)
  %smax3606 = sext i32 %i.ayu to i64
  %i.ayv = trunc i64 %indvars.iv3609 to i32
  %i.ayw = add i32 %i.ayn, %i.ayv
  %i.ayx = sext i32 %i.ayw to i64
  %i.ayy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ayx
  %i.ayz = add i64 %indvars.iv3609, 1
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph3033, %bb.bt
  %indvars.iv3607 = phi i64 [ %smax3606, %.lr.ph3033 ], [ %indvars.iv.next3608, %bb.bt ] ; 6 uses
  %i.aza = mul nsw i64 %indvars.iv3607, %i.bc
  %i.azb = trunc nsw i64 %indvars.iv3607 to i32
  %i.azc = sub i32 %.02605.ph, %i.azb
  %i.azd = sext i32 %i.azc to i64
  %i.aze = getelementptr [8 x i8], ptr %i.s, i64 %i.aza
  %i.azf = getelementptr [8 x i8], ptr %i.aze, i64 %i.azd
  %i.azg = load double, ptr %i.azf, align 8, !tbaa !9
  %i.azh = load double, ptr %i.ayy, align 8, !tbaa !9
  %i.azi = mul nsw i64 %indvars.iv3607, %i.bb
  %i.azj = sub i64 %i.ayz, %indvars.iv3607
  %sext4084 = shl i64 %i.azj, 32
  %i.azk = ashr exact i64 %sext4084, 29
  %i.azl = getelementptr i8, ptr %i.p, i64 %i.azk
  %i.azm = getelementptr [8 x i8], ptr %i.azl, i64 %i.azi ; 2 uses
  %i.azn = load double, ptr %i.azm, align 8, !tbaa !9
  %i.azo = fneg double %i.azg
  %i.azp = call double @llvm.fmuladd.f64(double %i.azo, double %i.azh, double %i.azn)
  store double %i.azp, ptr %i.azm, align 8, !tbaa !9
  %indvars.iv.next3608 = add nsw i64 %indvars.iv3607, 1
  %.not2671.not = icmp slt i64 %indvars.iv3607, %i.ayo
  br i1 %.not2671.not, label %bb.bt, label %._crit_edge3034, !llvm.loop !78

._crit_edge3034:                                  ; preds = %bb.bt, %bb.bs
  %indvars.iv.next3610 = add i64 %indvars.iv3609, 1 ; 2 uses
  %indvars.iv.next3605 = add i32 %indvars.iv3604, 1
  %lftr.wideiv3612 = trunc i64 %indvars.iv.next3610 to i32
  %exitcond3613.not = icmp eq i32 %i.ayq, %lftr.wideiv3612
  br i1 %exitcond3613.not, label %._crit_edge3039, label %bb.bs, !llvm.loop !79

._crit_edge3039:                                  ; preds = %._crit_edge3034
  store i32 %i.ays, ptr %i.a, align 4, !tbaa !8
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge3039, %bb.br
  br i1 %.not, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.azq = sub nsw i32 %.pre3787, %i.ay
  store i32 %i.azq, ptr %i.d, align 4, !tbaa !8
  %i.azr = fdiv double 1.000000e+00, %i.apx
  store double %i.azr, ptr %i.e, align 8, !tbaa !9
  %i.azs = mul nsw i32 %i.bq, %i.t
  %i.azt = add nsw i32 %i.azs, %i.ba
  %i.azu = sext i32 %i.azt to i64
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azu ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.azv, ptr noundef nonnull @c__1) #4
  %i.azw = load i32, ptr %i.l, align 4, !tbaa !8  ; 3 uses
  %i.azx = icmp sgt i32 %i.azw, 0
  br i1 %i.azx, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.azy = load i32, ptr %2, align 4, !tbaa !8
  %i.azz = sub nsw i32 %i.azy, %i.ay
  store i32 %i.azz, ptr %i.d, align 4, !tbaa !8
  %i.baa = load i32, ptr %8, align 4, !tbaa !8
  %i.bab = add nsw i32 %i.baa, -1
  store i32 %i.bab, ptr %i.c, align 4, !tbaa !8
  %i.bac = add nuw nsw i32 %i.azw, 1
  %i.bad = sub nsw i32 %i.bq, %i.azw              ; 2 uses
  %i.bae = mul nsw i32 %i.bad, %i.q
  %i.baf = add nsw i32 %i.bac, %i.bae
  %i.bag = sext i32 %i.baf to i64
  %i.bah = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bag
  %i.bai = mul nsw i32 %i.bad, %i.t
  %i.baj = add nsw i32 %i.bai, %i.ba
  %i.bak = sext i32 %i.baj to i64
  %i.bal = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.bak
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.azv, ptr noundef nonnull @c__1, ptr noundef %i.bah, ptr noundef nonnull %i.c, ptr noundef %i.bal, ptr noundef nonnull %10) #4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %bb.bu
  %i.bam = mul nsw i32 %i.bq, %i.n
  %reass.sub3504 = sub i32 %i.bam, %.02605.ph
  %i.ban = add i32 %reass.sub3504, 2
  %i.bao = add i32 %i.ban, %i.bu
  %i.bap = sext i32 %i.bao to i64
  %i.baq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bap
  %i.bar = load double, ptr %i.baq, align 8, !tbaa !9
  store double %i.bar, ptr %i.k, align 8, !tbaa !9
  %.pre3870 = load i32, ptr %4, align 4, !tbaa !8
  br label %bb.by

bb.by:                                            ; preds = %bb.r, %bb.bx
  %i.bas = phi i32 [ %.pre3870, %bb.bx ], [ %i.bp, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bx ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bx ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.bq, %bb.bx ], [ %i.ca, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.br, %bb.bx ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bu, %bb.bx ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.bx, %bb.bx ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.bat = add nsw i32 %i.bas, -1
  store i32 %i.bat, ptr %i.d, align 4, !tbaa !8
  %.not26573147 = icmp slt i32 %i.bas, 2
  br i1 %.not26573147, label %._crit_edge3152, label %.lr.ph3151

.lr.ph3151:                                       ; preds = %bb.by
  %i.bau = mul nsw i32 %.1260627742809, %i.n
  %i.bav = add i32 %.1260627742809, 1
  %i.baw = sext i32 %.1260627742809 to i64
  %i.bax = sext i32 %.1254827772807 to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph3151, %.loopexit2881
  %indvars.iv3645 = phi i64 [ 1, %.lr.ph3151 ], [ %indvars.iv.next3646, %.loopexit2881 ] ; 7 uses
  %.82565.neg3149 = phi i32 [ -1, %.lr.ph3151 ], [ %i.bdk, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3871, label %bb.ca

._crit_edge3871:                                  ; preds = %bb.bz
  %.pre3872 = load i32, ptr %i.j, align 4, !tbaa !8
  %.pre3874 = load i32, ptr %2, align 4, !tbaa !8
  %.pre3875 = load i32, ptr %3, align 4, !tbaa !8
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.bay = sub nsw i64 %i.baw, %indvars.iv3645    ; 5 uses
  %i.baz = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.bba = trunc nsw i64 %i.bay to i32            ; 2 uses
  %i.bbb = add nsw i32 %i.baz, %i.bba             ; 2 uses
  %i.bbc = load i32, ptr %2, align 4, !tbaa !8    ; 3 uses
  %i.bbd = icmp slt i32 %i.bbb, %i.bbc
  %i.bbe = icmp sgt i64 %i.bay, 1
  %or.cond2759 = and i1 %i.bbe, %i.bbd
  %.pre3873 = load i32, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  br i1 %or.cond2759, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.bbf = add i32 %.82565.neg3149, %i.bau
  %i.bbg = add i32 %i.bbf, %.pre3873
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bbh
  %i.bbj = trunc nuw nsw i64 %indvars.iv3645 to i32
  %i.bbk = add i32 %i.ay, %i.bbj
  %i.bbl = sub i32 %.1260627742809, %i.bbk        ; 2 uses
  %i.bbm = add i32 %i.bbl, %i.baz
  %i.bbn = add i32 %i.bbm, %i.bbc
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbo
  %i.bbq = sub nsw i32 %i.bbb, %i.ay
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbr
  call void @dlartg_(ptr noundef %i.bbi, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bbp, ptr noundef nonnull %i.bbs, ptr noundef nonnull %i.g) #4
  %i.bbt = mul nsw i64 %i.bay, %i.bc
  %i.bbu = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3645
  %i.bbv = getelementptr i8, ptr %i.bbu, i64 8
  %i.bbw = getelementptr [8 x i8], ptr %i.bbv, i64 %i.bbt
  %i.bbx = load double, ptr %i.bbw, align 8, !tbaa !9
  %i.bby = fneg double %i.bbx
  %i.bbz = load double, ptr %i.k, align 8, !tbaa !9
  %i.bca = fmul double %i.bbz, %i.bby             ; 2 uses
  %i.bcb = load i32, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.bcc = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %i.eqa = add i32 %i.epx, %i.epz                 ; 2 uses
  store i32 %i.eqa, ptr %i.d, align 4, !tbaa !8
  %.not27373365 = icmp slt i32 %i.eqa, 2
  br i1 %.not27373365, label %.outer.backedge, label %.lr.ph3368

.lr.ph3368:                                       ; preds = %bb.ht
  %i.eqb = load i32, ptr %2, align 4, !tbaa !8
  %i.eqc = sext i32 %i.eqb to i64                 ; 9 uses
  %i.eqd = sext i32 %.pre3788.pre.pre to i64      ; 5 uses
  %i.eqe = sub i32 %i.epx, %i.epy
  %wide.trip.count3720 = zext i32 %i.eqe to i64   ; 4 uses
  %invariant.gep4140 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqd ; 6 uses
  %invariant.gep4142 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqd ; 6 uses
  %i.eqf = add nsw i64 %wide.trip.count3720, -2   ; 3 uses
  %min.iters.check4450 = icmp ult i64 %i.eqf, 16
  br i1 %min.iters.check4450, label %scalar.ph4449.preheader, label %vector.memcheck4441

vector.memcheck4441:                              ; preds = %.lr.ph3368
  %i.eqg = shl nsw i64 %i.eqc, 3
  %diff.check4442.a = icmp ugt i64 %i.eqg, -64
  %i.eqh = shl nsw i64 %i.eqd, 3
  %diff.check4443 = icmp ugt i64 %i.eqh, -64
  %conflict.rdx4444 = or i1 %diff.check4442.a, %diff.check4443
  %i.eqi = sub nsw i64 %i.eqd, %i.eqc
  %i.eqj = shl nsw i64 %i.eqi, 3
  %i.eqk = add nsw i64 %i.eqj, -1
  %diff.check4445 = icmp ult i64 %i.eqk, 63
  %conflict.rdx4446 = or i1 %conflict.rdx4444, %diff.check4445
  %i.eql = add nsw i64 %i.eqc, %i.eqd
  %i.eqm = shl nsw i64 %i.eql, 3
  %diff.check4447 = icmp ugt i64 %i.eqm, -64
  %conflict.rdx4448 = or i1 %conflict.rdx4446, %diff.check4447
  br i1 %conflict.rdx4448, label %scalar.ph4449.preheader, label %vector.ph4451

vector.ph4451:                                    ; preds = %vector.memcheck4441
  %n.vec4452 = and i64 %i.eqf, -8                 ; 3 uses
  %i.eqn = or disjoint i64 %n.vec4452, 2
  br label %vector.body4453

vector.body4453:                                  ; preds = %vector.body4453, %vector.ph4451
  %index4454 = phi i64 [ 0, %vector.ph4451 ], [ %index.next4459, %vector.body4453 ] ; 2 uses
  %i.eqo = or disjoint i64 %index4454, 2          ; 3 uses
  %i.eqp = add nsw i64 %i.eqo, %i.eqc             ; 2 uses
  %i.eqq = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.eqp ; 2 uses
  %i.eqr = getelementptr i8, ptr %i.eqq, i64 32
  %wide.load4455.a = load <4 x double>, ptr %i.eqq, align 8, !tbaa !9
  %wide.load4456.a = load <4 x double>, ptr %i.eqr, align 8, !tbaa !9
  %i.eqs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqp ; 2 uses
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.eqs, i64 32
  store <4 x double> %wide.load4455.a, ptr %i.eqs, align 8, !tbaa !9
  store <4 x double> %wide.load4456.a, ptr %i.eqt, align 8, !tbaa !9
  %i.equ = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %i.eqo ; 2 uses
  %i.eqv = getelementptr i8, ptr %i.equ, i64 32
  %wide.load4457.a = load <4 x double>, ptr %i.equ, align 8, !tbaa !9
  %wide.load4458 = load <4 x double>, ptr %i.eqv, align 8, !tbaa !9
  %i.eqw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eqo ; 2 uses
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.eqw, i64 32
  store <4 x double> %wide.load4457.a, ptr %i.eqw, align 8, !tbaa !9
  store <4 x double> %wide.load4458, ptr %i.eqx, align 8, !tbaa !9
  %index.next4459 = add nuw i64 %index4454, 8     ; 2 uses
  %i.eqy = icmp eq i64 %index.next4459, %n.vec4452
  br i1 %i.eqy, label %middle.block4460, label %vector.body4453, !llvm.loop !177

middle.block4460:                                 ; preds = %vector.body4453
  %cmp.n4461 = icmp eq i64 %i.eqf, %n.vec4452
  br i1 %cmp.n4461, label %.outer.backedge, label %scalar.ph4449.preheader

.outer.backedge:                                  ; preds = %scalar.ph4449.prol.loopexit, %scalar.ph4449, %middle.block4460, %._crit_edge3364.thread, %bb.ht, %._crit_edge3364
  %.pre3788.be = phi i32 [ %.pre3788.pre.pre4100, %._crit_edge3364.thread ], [ %.pre3788.pre.pre, %._crit_edge3364 ], [ %.pre3788.pre.pre, %bb.ht ], [ %.pre3788.pre.pre, %middle.block4460 ], [ %.pre3788.pre.pre, %scalar.ph4449 ], [ %.pre3788.pre.pre, %scalar.ph4449.prol.loopexit ]
  %.be4685 = phi i32 [ %.ph4099, %._crit_edge3364.thread ], [ %.pre3818, %._crit_edge3364 ], [ %.pre3818, %bb.ht ], [ %.pre3818, %middle.block4460 ], [ %.pre3818, %scalar.ph4449 ], [ %.pre3818, %scalar.ph4449.prol.loopexit ]
  br label %.outer

scalar.ph4449.preheader:                          ; preds = %vector.memcheck4441, %.lr.ph3368, %middle.block4460
  %indvars.iv3717.ph = phi i64 [ 2, %vector.memcheck4441 ], [ 2, %.lr.ph3368 ], [ %i.eqn, %middle.block4460 ] ; 4 uses
  %i.eqz = sub nsw i64 %wide.trip.count3720, %indvars.iv3717.ph
  %xtraiter4734 = and i64 %i.eqz, 3               ; 2 uses
  %lcmp.mod4735.not = icmp eq i64 %xtraiter4734, 0
  br i1 %lcmp.mod4735.not, label %scalar.ph4449.prol.loopexit, label %scalar.ph4449.prol

scalar.ph4449.prol:                               ; preds = %scalar.ph4449.preheader, %scalar.ph4449.prol
  %indvars.iv3717.prol = phi i64 [ %indvars.iv.next3718.prol, %scalar.ph4449.prol ], [ %indvars.iv3717.ph, %scalar.ph4449.preheader ] ; 4 uses
  %prol.iter4736 = phi i64 [ %prol.iter4736.next, %scalar.ph4449.prol ], [ 0, %scalar.ph4449.preheader ]
  %i.era = add nsw i64 %indvars.iv3717.prol, %i.eqc ; 2 uses
  %gep4141.prol = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.era
  %i.erb = load double, ptr %gep4141.prol, align 8, !tbaa !9
  %i.erc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.era
  store double %i.erb, ptr %i.erc, align 8, !tbaa !9
  %gep4143.prol = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717.prol
  %i.erd = load double, ptr %gep4143.prol, align 8, !tbaa !9
  %i.ere = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717.prol
  store double %i.erd, ptr %i.ere, align 8, !tbaa !9
  %indvars.iv.next3718.prol = add nuw nsw i64 %indvars.iv3717.prol, 1 ; 2 uses
  %prol.iter4736.next = add i64 %prol.iter4736, 1 ; 2 uses
  %prol.iter4736.cmp.not = icmp eq i64 %prol.iter4736.next, %xtraiter4734
  br i1 %prol.iter4736.cmp.not, label %scalar.ph4449.prol.loopexit, label %scalar.ph4449.prol, !llvm.loop !178

scalar.ph4449.prol.loopexit:                      ; preds = %scalar.ph4449.prol, %scalar.ph4449.preheader
  %indvars.iv3717.unr = phi i64 [ %indvars.iv3717.ph, %scalar.ph4449.preheader ], [ %indvars.iv.next3718.prol, %scalar.ph4449.prol ]
  %i.erf = sub nsw i64 %indvars.iv3717.ph, %wide.trip.count3720
  %i.erg = icmp ugt i64 %i.erf, -4
  br i1 %i.erg, label %.outer.backedge, label %scalar.ph4449

scalar.ph4449:                                    ; preds = %scalar.ph4449.prol.loopexit, %scalar.ph4449
  %indvars.iv3717 = phi i64 [ %indvars.iv.next3718.3, %scalar.ph4449 ], [ %indvars.iv3717.unr, %scalar.ph4449.prol.loopexit ] ; 8 uses
  %i.erh = add nsw i64 %indvars.iv3717, %i.eqc    ; 2 uses
  %gep4141 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erh
  %i.eri = load double, ptr %gep4141, align 8, !tbaa !9
  %i.erj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erh
  store double %i.eri, ptr %i.erj, align 8, !tbaa !9
  %gep4143 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv3717
  %i.erk = load double, ptr %gep4143, align 8, !tbaa !9
  %i.erl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3717
  store double %i.erk, ptr %i.erl, align 8, !tbaa !9
  %indvars.iv.next3718 = add nuw nsw i64 %indvars.iv3717, 1 ; 2 uses
  %i.erm = add nsw i64 %indvars.iv.next3718, %i.eqc ; 2 uses
  %gep4141.1 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erm
  %i.ern = load double, ptr %gep4141.1, align 8, !tbaa !9
  %i.ero = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erm
  store double %i.ern, ptr %i.ero, align 8, !tbaa !9
  %gep4143.1 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718
  %i.erp = load double, ptr %gep4143.1, align 8, !tbaa !9
  %i.erq = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3717
  store double %i.erp, ptr %i.erq, align 8, !tbaa !9
  %indvars.iv.next3718.1 = add nuw nsw i64 %indvars.iv3717, 2 ; 3 uses
  %i.err = add nsw i64 %indvars.iv.next3718.1, %i.eqc ; 2 uses
  %gep4141.2 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.err
  %i.ers = load double, ptr %gep4141.2, align 8, !tbaa !9
  %i.ert = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.err
  store double %i.ers, ptr %i.ert, align 8, !tbaa !9
  %gep4143.2 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.1
  %i.eru = load double, ptr %gep4143.2, align 8, !tbaa !9
  %i.erv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.1
  store double %i.eru, ptr %i.erv, align 8, !tbaa !9
  %indvars.iv.next3718.2 = add nuw nsw i64 %indvars.iv3717, 3 ; 3 uses
  %i.erw = add nsw i64 %indvars.iv.next3718.2, %i.eqc ; 2 uses
  %gep4141.3 = getelementptr [8 x i8], ptr %invariant.gep4140, i64 %i.erw
  %i.erx = load double, ptr %gep4141.3, align 8, !tbaa !9
  %i.ery = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.erw
  store double %i.erx, ptr %i.ery, align 8, !tbaa !9
  %gep4143.3 = getelementptr [8 x i8], ptr %invariant.gep4142, i64 %indvars.iv.next3718.2
  %i.erz = load double, ptr %gep4143.3, align 8, !tbaa !9
  %i.esa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3718.2
  store double %i.erz, ptr %i.esa, align 8, !tbaa !9
  %indvars.iv.next3718.3 = add nuw nsw i64 %indvars.iv3717, 4 ; 2 uses
  %exitcond3721.not.3 = icmp eq i64 %indvars.iv.next3718.3, %wide.trip.count3720
  br i1 %exitcond3721.not.3, label %.outer.backedge, label %scalar.ph4449, !llvm.loop !179

.loopexit2877:                                    ; preds = %bb.fq, %.lr.ph3212.split, %bb.dl, %.lr.ph3212.split.us3500, %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 12}
!19 = distinct !{!19, !14, !16, !17}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !14, !16}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!30}
!30 = distinct !{!30, !24}
!31 = !{!26, !32, !23, !33, !28}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = !{!32}
!35 = !{!33}
!36 = distinct !{!36, !14, !16, !17}
!37 = distinct !{!37, !14, !16}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !{!44}
!44 = distinct !{!44, !40}
!45 = !{!39, !42}
!46 = distinct !{!46, !14, !16, !17}
!47 = distinct !{!47, !14, !16, !17}
!48 = distinct !{!48, !14, !16}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14, !16, !17}
!68 = distinct !{!68, !14, !16}
!69 = distinct !{!69, !14, !16, !17}
!70 = distinct !{!70, !14, !16, !17}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !14, !16}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14, !16, !17}
!96 = distinct !{!96, !14, !16}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14, !16}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105}
!105 = distinct !{!105, !101}
!106 = !{!107}
!107 = distinct !{!107, !101}
!108 = !{!103, !109, !100, !110, !105}
!109 = distinct !{!109, !101}
!110 = distinct !{!110, !101}
!111 = !{!109}
!112 = !{!110}
!113 = distinct !{!113, !14, !16, !17}
!114 = distinct !{!114, !14, !16}
!115 = distinct !{!115, !14, !16}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14, !16}
!135 = distinct !{!135, !12}
!136 = distinct !{!136, !14, !16, !17}
!137 = distinct !{!137, !14, !16, !17}
!138 = distinct !{!138, !12}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!143}
!143 = distinct !{!143, !141}
!144 = !{!145}
!145 = distinct !{!145, !141}
!146 = !{!140, !143}
!147 = distinct !{!147, !14, !16, !17}
!148 = distinct !{!148, !14, !16, !17}
!149 = distinct !{!149, !14, !16, !17}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !14, !16, !17}
!152 = distinct !{!152, !14, !16, !17}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !14, !16}
!155 = distinct !{!155, !12}
!156 = distinct !{!156, !14}
!157 = distinct !{!157, !14}
!158 = distinct !{!158, !14}
!159 = distinct !{!159, !14}
!160 = distinct !{!160, !14}
!161 = distinct !{!161, !14}
!162 = distinct !{!162, !14}
!163 = distinct !{!163, !14}
!164 = distinct !{!164, !14}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = distinct !{!167, !14}
!168 = distinct !{!168, !14}
!169 = distinct !{!169, !14}
!170 = distinct !{!170, !14}
!171 = distinct !{!171, !14}
!172 = distinct !{!172, !14}
!173 = distinct !{!173, !14}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14}
!177 = distinct !{!177, !14, !16, !17}
!178 = distinct !{!178, !12}
!179 = distinct !{!179, !14, !16}
end_hunk_2
