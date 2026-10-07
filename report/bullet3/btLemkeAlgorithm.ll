Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btLemkeAlgorithm?download=true
inline.NumInlined: 176
inline.NumDeleted: 64
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN16btLemkeAlgorithm5solveEj:bb.a
  %i.hf = or i1 %i.he, %i.gq
  %i.hg = add i64 %i.hc, -1
  %diff.check330 = icmp ult i64 %i.hg, 31
  %or.cond416 = select i1 %i.hf, i1 true, i1 %diff.check330
  br i1 %or.cond416, label %scalar.ph331.preheader, label %vector.body335

vector.body335:                                   ; preds = %vector.scevcheck328, %vector.body335
  %index336 = phi i64 [ %index.next339, %vector.body335 ], [ 0, %vector.scevcheck328 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index336 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load337 = load <4 x float>, ptr %i.hh, align 4, !tbaa !16
  %wide.load338 = load <4 x float>, ptr %i.hi, align 4, !tbaa !16
  %i.hj = trunc nuw nsw i64 %index336 to i32
  %i.hk = add i32 %invariant.op.i, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <4 x float> %wide.load337, ptr %i.hm, align 4, !tbaa !16
  store <4 x float> %wide.load338, ptr %i.hn, align 4, !tbaa !16
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.ho, label %middle.block340, label %vector.body335, !llvm.loop !63

middle.block340:                                  ; preds = %vector.body335
  br i1 %cmp.n341, label %._crit_edge.i110, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %vector.scevcheck328, %.preheader.i104, %middle.block340
  %indvars.iv.i106.ph = phi i64 [ 0, %vector.scevcheck328 ], [ 0, %.preheader.i104 ], [ %n.vec334, %middle.block340 ] ; 3 uses
  br i1 %lcmp.mod432.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol

scalar.ph331.prol:                                ; preds = %scalar.ph331.preheader, %scalar.ph331.prol
  %indvars.iv.i106.prol = phi i64 [ %indvars.iv.next.i108.prol, %scalar.ph331.prol ], [ %indvars.iv.i106.ph, %scalar.ph331.preheader ] ; 3 uses
  %prol.iter433 = phi i64 [ %prol.iter433.next, %scalar.ph331.prol ], [ 0, %scalar.ph331.preheader ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106.prol
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !16
  %i.hr = trunc nuw nsw i64 %indvars.iv.i106.prol to i32
  %.reass.i107.prol = add i32 %invariant.op.i, %i.hr
  %i.hs = sext i32 %.reass.i107.prol to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.hs
  store float %i.hq, ptr %i.ht, align 4, !tbaa !16
  %indvars.iv.next.i108.prol = add nuw nsw i64 %indvars.iv.i106.prol, 1 ; 2 uses
  %prol.iter433.next = add i64 %prol.iter433, 1   ; 2 uses
  %prol.iter433.cmp.not = icmp eq i64 %prol.iter433.next, %xtraiter431
  br i1 %prol.iter433.cmp.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol, !llvm.loop !64

scalar.ph331.prol.loopexit:                       ; preds = %scalar.ph331.prol, %scalar.ph331.preheader
  %indvars.iv.i106.unr = phi i64 [ %indvars.iv.i106.ph, %scalar.ph331.preheader ], [ %indvars.iv.next.i108.prol, %scalar.ph331.prol ]
  %i.hu = sub nsw i64 %indvars.iv.i106.ph, %i.gl
  %i.hv = icmp ugt i64 %i.hu, -4
  br i1 %i.hv, label %._crit_edge.i110, label %scalar.ph331

._crit_edge16.i113:                               ; preds = %._crit_edge.i110
  %i.hw = mul i32 %i.gd, %i.ga
  %i.hx = add i32 %.promoted17.i101, %i.hw
  store i32 %i.hx, ptr %i.cy, align 8, !tbaa !40
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114

._crit_edge.i110:                                 ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331, %middle.block340
  %indvars.iv.next21.i111 = add nuw nsw i64 %indvars.iv20.i105, 1 ; 2 uses
  %exitcond24.not.i112 = icmp eq i64 %indvars.iv.next21.i111, %wide.trip.count23.i102
  br i1 %exitcond24.not.i112, label %._crit_edge16.i113, label %.preheader.i104, !llvm.loop !61

scalar.ph331:                                     ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i108.3, %scalar.ph331 ], [ %indvars.iv.i106.unr, %scalar.ph331.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i106
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !16
  %i.ia = trunc nuw nsw i64 %indvars.iv.i106 to i32
  %.reass.i107 = add i32 %invariant.op.i, %i.ia
  %i.ib = sext i32 %.reass.i107 to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ib
  store float %i.hz, ptr %i.ic, align 4, !tbaa !16
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108
  %i.ie = load float, ptr %i.id, align 4, !tbaa !16
  %i.if = trunc nuw nsw i64 %indvars.iv.next.i108 to i32
  %.reass.i107.1 = add i32 %invariant.op.i, %i.if
  %i.ig = sext i32 %.reass.i107.1 to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.ig
  store float %i.ie, ptr %i.ih, align 4, !tbaa !16
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i106, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.1
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !16
  %i.ik = trunc nuw nsw i64 %indvars.iv.next.i108.1 to i32
  %.reass.i107.2 = add i32 %invariant.op.i, %i.ik
  %i.il = sext i32 %.reass.i107.2 to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.il
  store float %i.ij, ptr %i.im, align 4, !tbaa !16
  %indvars.iv.next.i108.2 = add nuw nsw i64 %indvars.iv.i106, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i108.2
  %i.io = load float, ptr %i.in, align 4, !tbaa !16
  %i.ip = trunc nuw nsw i64 %indvars.iv.next.i108.2 to i32
  %.reass.i107.3 = add i32 %invariant.op.i, %i.ip
  %i.iq = sext i32 %.reass.i107.3 to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.iq
  store float %i.io, ptr %i.ir, align 4, !tbaa !16
  %indvars.iv.next.i108.3 = add nuw nsw i64 %indvars.iv.i106, 4 ; 2 uses
  %exitcond.not.i109.3 = icmp eq i64 %indvars.iv.next.i108.3, %i.gl
  br i1 %exitcond.not.i109.3, label %._crit_edge.i110, label %scalar.ph331, !llvm.loop !65

_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114: ; preds = %._crit_edge16.i113, %.preheader.lr.ph.i99, %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit
  br i1 %i.l, label %.preheader.lr.ph.i115, label %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit

.preheader.lr.ph.i115:                            ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114
  %i.is = load i32, ptr %i.cv, align 4            ; 6 uses
  %i.it = load ptr, ptr %i.da, align 8            ; 6 uses
  %.promoted20.i = load i32, ptr %i.cy, align 8, !tbaa !40
  %i.iu = zext i32 %i.dk to i64                   ; 2 uses
  %i.iv = zext nneg i32 %i.f to i64               ; 2 uses
  %min.iters.check345 = icmp ult i32 %i.f, 8
  br i1 %min.iters.check345, label %.preheader.i118.preheader, label %vector.scevcheck343

vector.scevcheck343:                              ; preds = %.preheader.lr.ph.i115
  %ident.check = icmp ne i32 %i.is, 1
  %i.iw = add i32 %i.g, %i.dk
  %i.ix = icmp slt i32 %i.iw, %i.g
  %i.iy = or i1 %ident.check, %i.ix
  br i1 %i.iy, label %.preheader.i118.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %vector.scevcheck343
  %n.vec347 = and i64 %i.iv, 2147483640           ; 3 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next350, %vector.body348 ] ; 2 uses
  %i.iz = trunc i64 %index349 to i32
  %i.ja = add i32 %i.g, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jb ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <4 x float> splat (float -1.000000e+00), ptr %i.jc, align 4, !tbaa !16
  store <4 x float> splat (float -1.000000e+00), ptr %i.jd, align 4, !tbaa !16
  %index.next350 = add nuw i64 %index349, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next350, %n.vec347
  br i1 %i.je, label %middle.block351, label %vector.body348, !llvm.loop !66

middle.block351:                                  ; preds = %vector.body348
  %cmp.n352 = icmp eq i64 %n.vec347, %i.iv
  br i1 %cmp.n352, label %._crit_edge19.i, label %.preheader.i118.preheader

.preheader.i118.preheader:                        ; preds = %vector.scevcheck343, %.preheader.lr.ph.i115, %middle.block351
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck343 ], [ 0, %.preheader.lr.ph.i115 ], [ %n.vec347, %middle.block351 ] ; 3 uses
  %i.jf = sub nsw i64 %i.iu, %indvars.iv.ph
  %i.jg = and i32 %i.f, 3                         ; 2 uses
  %xtraiter434 = zext nneg i32 %i.jg to i64
  %lcmp.mod435.not = icmp eq i32 %i.jg, 0
  br i1 %lcmp.mod435.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol

.preheader.i118.prol:                             ; preds = %.preheader.i118.preheader, %.preheader.i118.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.i118.prol ], [ %indvars.iv.ph, %.preheader.i118.preheader ] ; 2 uses
  %prol.iter436 = phi i64 [ %prol.iter436.next, %.preheader.i118.prol ], [ 0, %.preheader.i118.preheader ]
  %i.jh = trunc i64 %indvars.iv.prol to i32
  %i.ji = mul i32 %i.is, %i.jh
  %invariant.op.i119.prol = add i32 %i.ji, %i.g
  %i.jj = sext i32 %invariant.op.i119.prol to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jj
  store float -1.000000e+00, ptr %i.jk, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter436.next = add i64 %prol.iter436, 1   ; 2 uses
  %prol.iter436.cmp.not = icmp eq i64 %prol.iter436.next, %xtraiter434
  br i1 %prol.iter436.cmp.not, label %.preheader.i118.prol.loopexit, label %.preheader.i118.prol, !llvm.loop !67

.preheader.i118.prol.loopexit:                    ; preds = %.preheader.i118.prol, %.preheader.i118.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.i118.preheader ], [ %indvars.iv.next.prol, %.preheader.i118.prol ]
  %i.jl = icmp ult i64 %i.jf, 3
  br i1 %i.jl, label %._crit_edge19.i, label %.preheader.i118

.preheader.i118:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.i118 ], [ %indvars.iv.unr, %.preheader.i118.prol.loopexit ] ; 5 uses
  %i.jm = trunc i64 %indvars.iv to i32
  %i.jn = mul i32 %i.is, %i.jm
  %invariant.op.i119 = add i32 %i.jn, %i.g
  %i.jo = sext i32 %invariant.op.i119 to i64
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jo
  store float -1.000000e+00, ptr %i.jp, align 4, !tbaa !16
  %i.jq = trunc i64 %indvars.iv to i32
  %i.jr = add i32 %i.jq, 1
  %i.js = mul i32 %i.is, %i.jr
  %invariant.op.i119.1 = add i32 %i.js, %i.g
  %i.jt = sext i32 %invariant.op.i119.1 to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jt
  store float -1.000000e+00, ptr %i.ju, align 4, !tbaa !16
  %i.jv = trunc i64 %indvars.iv to i32
  %i.jw = add i32 %i.jv, 2
  %i.jx = mul i32 %i.is, %i.jw
  %invariant.op.i119.2 = add i32 %i.jx, %i.g
  %i.jy = sext i32 %invariant.op.i119.2 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.jy
  store float -1.000000e+00, ptr %i.jz, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ka = trunc i64 %indvars.iv.next.2 to i32
  %i.kb = mul i32 %i.is, %i.ka
  %invariant.op.i119.3 = add i32 %i.kb, %i.g
  %i.kc = sext i32 %invariant.op.i119.3 to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.kc
  store float -1.000000e+00, ptr %i.kd, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond24.not.i125.3 = icmp eq i64 %indvars.iv.next.2, %i.iu
  br i1 %exitcond24.not.i125.3, label %._crit_edge19.i, label %.preheader.i118, !llvm.loop !68

._crit_edge19.i:                                  ; preds = %.preheader.i118.prol.loopexit, %.preheader.i118, %middle.block351
  %i.ke = add i32 %i.f, %.promoted20.i
  store i32 %i.ke, ptr %i.cy, align 8, !tbaa !40
  br label %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit

_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit:        ; preds = %._crit_edge19.i, %_ZN9btMatrixXIfE12setSubMatrixEiiiiRKS0_.exit114
  %i.kf = or disjoint i32 %i.g, 1                 ; 3 uses
  %i.kg = load i32, ptr %i.e, align 4, !tbaa !27  ; 4 uses
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.preheader.lr.ph.i126, label %bb.j

.preheader.lr.ph.i126:                            ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !29 ; 7 uses
  %i.kk = load i32, ptr %i.cv, align 4, !tbaa !37 ; 2 uses
  %i.kl = load ptr, ptr %i.da, align 8, !tbaa !29 ; 2 uses
  %.promoted14.i = load i32, ptr %i.cy, align 8, !tbaa !40
  %i.km = sext i32 %i.kk to i64                   ; 5 uses
  %i.kn = sext i32 %i.kf to i64
  %wide.trip.count.i127 = zext nneg i32 %i.kg to i64 ; 5 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.kl, i64 %i.kn ; 6 uses
  %min.iters.check359 = icmp ugt i32 %i.kg, 19
  %ident.check355.not = icmp eq i32 %i.kk, 1
  %or.cond417 = select i1 %min.iters.check359, i1 %ident.check355.not, i1 false
  br i1 %or.cond417, label %vector.memcheck356, label %.preheader.i128.preheader

vector.memcheck356:                               ; preds = %.preheader.lr.ph.i126
  %i.ko = ptrtoaddr ptr %i.kl to i64
  %i.kp = ptrtoaddr ptr %i.kj to i64
  %i.kq = sext i32 %i.g to i64
  %i.kr = shl nsw i64 %i.kq, 2
  %i.ks = add i64 %i.kr, %i.ko
  %i.kt = sub i64 %i.ks, %i.kp
  %i.ku = add i64 %i.kt, 3
  %diff.check357 = icmp ult i64 %i.ku, 31
  br i1 %diff.check357, label %.preheader.i128.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck356
  %n.vec361 = and i64 %wide.trip.count.i127, 2147483640 ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %index363 ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index363 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load364 = load <4 x float>, ptr %i.kv, align 4, !tbaa !16
  %wide.load365 = load <4 x float>, ptr %i.kx, align 4, !tbaa !16
  %i.ky = getelementptr i8, ptr %i.kw, i64 16
  store <4 x float> %wide.load364, ptr %i.kw, align 4, !tbaa !16
  store <4 x float> %wide.load365, ptr %i.ky, align 4, !tbaa !16
  %index.next366 = add nuw i64 %index363, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.kz, label %middle.block367, label %vector.body362, !llvm.loop !69

middle.block367:                                  ; preds = %vector.body362
  %cmp.n368 = icmp eq i64 %n.vec361, %wide.trip.count.i127
  br i1 %cmp.n368, label %._crit_edge.i132, label %.preheader.i128.preheader

.preheader.i128.preheader:                        ; preds = %vector.memcheck356, %.preheader.lr.ph.i126, %middle.block367
  %indvars.iv.i129.ph = phi i64 [ 0, %vector.memcheck356 ], [ 0, %.preheader.lr.ph.i126 ], [ %n.vec361, %middle.block367 ] ; 3 uses
  %xtraiter437 = and i64 %wide.trip.count.i127, 3 ; 2 uses
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %.preheader.i128.prol.loopexit, label %.preheader.i128.prol

.preheader.i128.prol:                             ; preds = %.preheader.i128.preheader, %.preheader.i128.prol
  %indvars.iv.i129.prol = phi i64 [ %indvars.iv.next.i130.prol, %.preheader.i128.prol ], [ %indvars.iv.i129.ph, %.preheader.i128.preheader ] ; 3 uses
  %prol.iter439 = phi i64 [ %prol.iter439.next, %.preheader.i128.prol ], [ 0, %.preheader.i128.preheader ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.i129.prol
  %i.lb = mul nsw i64 %indvars.iv.i129.prol, %i.km
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lb
  %i.lc = load float, ptr %i.la, align 4, !tbaa !16
  store float %i.lc, ptr %gep.i.prol, align 4, !tbaa !16
  %indvars.iv.next.i130.prol = add nuw nsw i64 %indvars.iv.i129.prol, 1 ; 2 uses
  %prol.iter439.next = add i64 %prol.iter439, 1   ; 2 uses
  %prol.iter439.cmp.not = icmp eq i64 %prol.iter439.next, %xtraiter437
  br i1 %prol.iter439.cmp.not, label %.preheader.i128.prol.loopexit, label %.preheader.i128.prol, !llvm.loop !70

.preheader.i128.prol.loopexit:                    ; preds = %.preheader.i128.prol, %.preheader.i128.preheader
  %indvars.iv.i129.unr = phi i64 [ %indvars.iv.i129.ph, %.preheader.i128.preheader ], [ %indvars.iv.next.i130.prol, %.preheader.i128.prol ]
  %i.ld = sub nsw i64 %indvars.iv.i129.ph, %wide.trip.count.i127
  %i.le = icmp ugt i64 %i.ld, -4
  br i1 %i.le, label %._crit_edge.i132, label %.preheader.i128

.preheader.i128:                                  ; preds = %.preheader.i128.prol.loopexit, %.preheader.i128
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i130.3, %.preheader.i128 ], [ %indvars.iv.i129.unr, %.preheader.i128.prol.loopexit ] ; 6 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.i129
  %i.lg = mul nsw i64 %indvars.iv.i129, %i.km
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lg
  %i.lh = load float, ptr %i.lf, align 4, !tbaa !16
  store float %i.lh, ptr %gep.i, align 4, !tbaa !16
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130
  %i.lj = mul nsw i64 %indvars.iv.next.i130, %i.km
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lj
  %i.lk = load float, ptr %i.li, align 4, !tbaa !16
  store float %i.lk, ptr %gep.i.1, align 4, !tbaa !16
  %indvars.iv.next.i130.1 = add nuw nsw i64 %indvars.iv.i129, 2 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130.1
  %i.lm = mul nsw i64 %indvars.iv.next.i130.1, %i.km
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lm
  %i.ln = load float, ptr %i.ll, align 4, !tbaa !16
  store float %i.ln, ptr %gep.i.2, align 4, !tbaa !16
  %indvars.iv.next.i130.2 = add nuw nsw i64 %indvars.iv.i129, 3 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv.next.i130.2
  %i.lp = mul nsw i64 %indvars.iv.next.i130.2, %i.km
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.lp
  %i.lq = load float, ptr %i.lo, align 4, !tbaa !16
  store float %i.lq, ptr %gep.i.3, align 4, !tbaa !16
  %indvars.iv.next.i130.3 = add nuw nsw i64 %indvars.iv.i129, 4 ; 2 uses
  %exitcond.not.i131.3 = icmp eq i64 %indvars.iv.next.i130.3, %wide.trip.count.i127
  br i1 %exitcond.not.i131.3, label %._crit_edge.i132, label %.preheader.i128, !llvm.loop !71

._crit_edge.i132:                                 ; preds = %.preheader.i128.prol.loopexit, %.preheader.i128, %middle.block367
  %i.lr = add i32 %.promoted14.i, %i.kg
  store i32 %i.lr, ptr %i.cy, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %_ZN9btMatrixXIfE12setSubMatrixEiiiif.exit, %._crit_edge.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ls = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 1, ptr %i.ls, align 8, !tbaa !48
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.lt, align 8, !tbaa !49
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store i32 0, ptr %i.lu, align 4, !tbaa !50
  %i.lv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.lv, align 8, !tbaa !51
  br i1 %i.l, label %.lr.ph, label %_ZN16btLemkeAlgorithm10validBasisERK20btAlignedObjectArrayIiE.exit.thread.critedge

.lr.ph250:                                        ; preds = %bb.p
  %i.lw = load i32, ptr %i.cv, align 4, !tbaa !37
  %i.lx = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.ly = sext i32 %i.lw to i64                   ; 3 uses
  %i.lz = zext nneg i32 %i.kf to i64
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.lx, i64 %i.lz ; 3 uses
  %xtraiter444 = and i64 %wide.trip.count, 1
  %i.ma = icmp eq i32 %i.f, 1
  br i1 %i.ma, label %.epil.preheader443, label %.lr.ph250.new

.lr.ph250.new:                                    ; preds = %.lr.ph250
  %unroll_iter450 = and i64 %wide.trip.count, 2147483646
  br label %bb.r

bb.k:                                             ; preds = %_ZN9btMatrixXIfEC2Eii.exit
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.l:                                             ; preds = %_ZN9btMatrixXIfE11setIdentityEv.exit
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.lr.ph:                                           ; preds = %bb.j, %bb.p
  %i.md = phi ptr [ %i.nl, %bb.p ], [ null, %bb.j ] ; 11 uses
  %i.me = phi i32 [ %i.nm, %bb.p ], [ 0, %bb.j ]  ; 9 uses
  %.pre2.pre.i = phi i32 [ %i.nq, %bb.p ], [ 0, %bb.j ] ; 2 uses
  %storemerge245 = phi i32 [ %i.nr, %bb.p ], [ 0, %bb.j ] ; 2 uses
  %i.mf = ptrtoaddr ptr %i.md to i64
  %i.mg = icmp eq i32 %.pre2.pre.i, %i.me
  br i1 %i.mg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph
  %.not.i.i133 = icmp eq i32 %i.me, 0
  %i.mh = shl nsw i32 %i.me, 1
  %i.mi = select i1 %.not.i.i133, i32 1, i32 %i.mh ; 5 uses
  %i.mj = icmp slt i32 %i.me, %i.mi
  br i1 %i.mj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %i.mi, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.mk = sext i32 %i.mi to i64
  %i.ml = shl nsw i64 %i.mk, 2
  %i.mm = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ml, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i unwind label %bb.q

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ null, %bb.n ], [ %i.mm, %bb.o ] ; 9 uses
  %i.mn = icmp sgt i32 %i.me, 0
  br i1 %i.mn, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.0.i.i.i371 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.me to i64 ; 5 uses
  %min.iters.check374 = icmp ult i32 %i.me, 8
  %i.mo = sub i64 %i.mf, %.0.i.i.i371
  %diff.check372 = icmp ugt i64 %i.mo, -32
  %or.cond419 = or i1 %min.iters.check374, %diff.check372
  br i1 %or.cond419, label %scalar.ph373.preheader, label %vector.ph375

vector.ph375:                                     ; preds = %.lr.ph.i.i.i
  %n.vec376 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next381, %vector.body377 ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index378 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16btLemkeAlgorithm5solveEj:bb.a
  %i.wg = extractvalue { ptr, i32 } %i.wf, 0
  call void @__clang_call_terminate(ptr %i.wg) #16
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i203:   ; preds = %bb.bh, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i201
  %i.wh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i1.i204 = icmp ne ptr %i.wi, null
  %i.wj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.wk = load i8, ptr %i.wj, align 8, !range !34
  %i.wl = trunc nuw i8 %i.wk to i1
  %or.cond.i.i.i205 = select i1 %.not.i.i.i1.i204, i1 %i.wl, i1 false
  br i1 %or.cond.i.i.i205, label %bb.bj, label %_ZN9btMatrixXIfED2Ev.exit213

bb.bj:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i203
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.wi)
          to label %_ZN9btMatrixXIfED2Ev.exit213 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wm = landingpad { ptr, i32 }
          catch ptr null
  %i.wn = extractvalue { ptr, i32 } %i.wm, 0
  call void @__clang_call_terminate(ptr %i.wn) #16
  unreachable

_ZN9btMatrixXIfED2Ev.exit213:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i203, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.wo = load i32, ptr %i.bg, align 4, !tbaa !43 ; 2 uses
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %.lr.ph.i.i.i.i219, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i214

.lr.ph.i.i.i.i219:                                ; preds = %_ZN9btMatrixXIfED2Ev.exit213
  %zext.i.i.i220 = zext nneg i32 %i.wo to i64
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224, %.lr.ph.i.i.i.i219
  %indvars.iv.i.i.i.i221 = phi i64 [ 0, %.lr.ph.i.i.i.i219 ], [ %indvars.iv.next.i.i.i.i225, %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224 ] ; 2 uses
  %i.wq = load ptr, ptr %i.bf, align 8, !tbaa !42
  %i.wr = getelementptr inbounds nuw [32 x i8], ptr %i.wq, i64 %indvars.iv.i.i.i.i221 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i.i.i222 = icmp ne ptr %i.wt, null
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 24
  %i.wv = load i8, ptr %i.wu, align 8, !range !34
  %i.ww = trunc nuw i8 %i.wv to i1
  %or.cond.i.i.i.i.i.i223 = select i1 %.not.i.i.i.i.i.i.i222, i1 %i.ww, i1 false
  br i1 %or.cond.i.i.i.i.i.i223, label %bb.bm, label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.wt)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.wx = landingpad { ptr, i32 }
          catch ptr null
  %i.wy = extractvalue { ptr, i32 } %i.wx, 0
  call void @__clang_call_terminate(ptr %i.wy) #16
  unreachable

_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224: ; preds = %bb.bm, %bb.bl
  %indvars.iv.next.i.i.i.i225 = add nuw nsw i64 %indvars.iv.i.i.i.i221, 1 ; 2 uses
  %i.wz = icmp eq i64 %indvars.iv.next.i.i.i.i225, %zext.i.i.i220
  br i1 %i.wz, label %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i214, label %bb.bl, !llvm.loop !5

_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i214: ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit.i.i.i.i224, %_ZN9btMatrixXIfED2Ev.exit213
  %i.xa = load ptr, ptr %i.bf, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i215 = icmp ne ptr %i.xa, null
  %i.xb = load i8, ptr %i.be, align 8, !range !34
  %i.xc = trunc nuw i8 %i.xb to i1
  %or.cond241 = select i1 %.not.i.i.i.i215, i1 %i.xc, i1 false
  br i1 %or.cond241, label %bb.bo, label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i216

bb.bo:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i214
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.xa)
          to label %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i216 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.xd = landingpad { ptr, i32 }
          catch ptr null
  %i.xe = extractvalue { ptr, i32 } %i.xd, 0
  call void @__clang_call_terminate(ptr %i.xe) #16
  unreachable

_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i216:   ; preds = %bb.bo, %_ZN20btAlignedObjectArrayIS_IiEE7destroyEii.exit.i.i.i214
  %i.xf = load ptr, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i1.i217 = icmp ne ptr %i.xf, null
  %i.xg = load i8, ptr %i.ba, align 8, !range !34
  %i.xh = trunc nuw i8 %i.xg to i1
  %or.cond.i.i.i218 = select i1 %.not.i.i.i1.i217, i1 %i.xh, i1 false
  br i1 %or.cond.i.i.i218, label %bb.bq, label %_ZN9btMatrixXIfED2Ev.exit226

bb.bq:                                            ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i216
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.xf)
          to label %_ZN9btMatrixXIfED2Ev.exit226 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.xi = landingpad { ptr, i32 }
          catch ptr null
  %i.xj = extractvalue { ptr, i32 } %i.xi, 0
  call void @__clang_call_terminate(ptr %i.xj) #16
  unreachable

_ZN9btMatrixXIfED2Ev.exit226:                     ; preds = %_ZN20btAlignedObjectArrayIS_IiEED2Ev.exit.i216, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.bs:                                            ; preds = %bb.ae, %bb.q
  %.pn82 = phi { ptr, i32 } [ %i.ns, %bb.q ], [ %i.qp, %bb.ae ]
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %6) #15
  br label %.body91

.body91:                                          ; preds = %bb.i, %bb.bs
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82, %bb.bs ], [ %i.dh, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %5) #15
  br label %bb.bt

bb.bt:                                            ; preds = %.body91, %bb.l
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %.body91 ], [ %i.mc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.k
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn, %bb.bt ], [ %i.mb, %bb.k ]
  call void @_ZN9btMatrixXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #15
  br label %.body

.body:                                            ; preds = %bb.e, %bb.bu
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn, %bb.bu ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN9btVectorXIfED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btMatrixXIfE8negativeEv(ptr dead_on_unwind noalias writable sret(%struct.btMatrixX) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !37   ; 2 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.n, align 4, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !44
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %i.a, i32 noundef %i.c)
          to label %_ZN9btMatrixXIfEC2Eii.exit.preheader unwind label %bb.b

_ZN9btMatrixXIfEC2Eii.exit.preheader:             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

.preheader.lr.ph:                                 ; preds = %_ZN9btMatrixXIfEC2Eii.exit.preheader
  %i.r = load i32, ptr %i.b, align 4, !tbaa !37   ; 5 uses
  %i.s = icmp sgt i32 %i.r, 0
  %i.t = load ptr, ptr %i.i, align 8              ; 3 uses
  br i1 %i.s, label %.preheader.lr.ph.split, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.u = load i32, ptr %i.d, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29   ; 3 uses
  %.promoted15 = load i32, ptr %i.g, align 8, !tbaa !40
  %i.x = sext i32 %i.u to i64                     ; 2 uses
  %i.y = zext nneg i32 %i.r to i64
  %wide.trip.count21 = zext nneg i32 %i.p to i64  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 7 uses
  %i.z = add nuw nsw i64 %wide.trip.count21, 4611686018427387903
  %i.aa = mul i64 %i.z, %i.x
  %i.ab = add i64 %i.aa, %wide.trip.count
  %i.ac = shl i64 %i.ab, 2
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ad = mul nuw nsw i64 %wide.trip.count21, %wide.trip.count
  %i.ae = shl nuw i64 %i.ad, 2
  %scevgep24 = getelementptr i8, ptr %i.w, i64 %i.ae
  %min.iters.check = icmp ult i32 %i.r, 8
  %bound0 = icmp ult ptr %i.t, %scevgep24
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.u, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN20btAlignedObjectArrayIS_IiEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ah) #15
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ai) #15
  resume { ptr, i32 } %i.ag

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.aj = mul nuw nsw i64 %indvars.iv18, %i.y
  %i.ak = mul nsw i64 %indvars.iv18, %i.x
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aj ; 6 uses
  %i.am = getelementptr [4 x i8], ptr %i.t, i64 %i.ak ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <4 x float>, ptr %i.an, align 4, !tbaa !16, !alias.scope !95
  %wide.load25 = load <4 x float>, ptr %i.ao, align 4, !tbaa !16, !alias.scope !95
  %i.ap = fneg <4 x float> %wide.load
  %i.aq = fneg <4 x float> %wide.load25
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store <4 x float> %i.ap, ptr %i.ar, align 4, !tbaa !16, !alias.scope !96, !noalias !95
  store <4 x float> %i.aq, ptr %i.as, align 4, !tbaa !16, !alias.scope !96, !noalias !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.prol
  %i.av = load float, ptr %i.au, align 4, !tbaa !16
  %i.aw = fneg float %i.av
  %i.ax = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.prol
  store float %i.aw, ptr %i.ax, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ay = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge, label %.preheader, !llvm.loop !93

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !16
  %i.bc = fneg float %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv
  store float %i.bc, ptr %i.bd, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16
  %i.bg = fneg float %i.bf
  %i.bh = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next
  store float %i.bg, ptr %i.bh, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.1
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !16
  %i.bk = fneg float %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next.1
  store float %i.bk, ptr %i.bl, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16
  %i.bo = fneg float %i.bn
  %i.bp = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv.next.2
  store float %i.bo, ptr %i.bp, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !94

_ZN9btMatrixXIfEC2Eii.exit._crit_edge:            ; preds = %._crit_edge
  %i.bq = mul i32 %i.r, %i.p
  %i.br = add i32 %.promoted15, %i.bq
  store i32 %i.br, ptr %i.g, align 8, !tbaa !40
  br label %_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split

_ZN9btMatrixXIfEC2Eii.exit._crit_edge.split:      ; preds = %_ZN9btMatrixXIfEC2Eii.exit._crit_edge, %.preheader.lr.ph, %_ZN9btMatrixXIfEC2Eii.exit.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16btLemkeAlgorithm26GaussJordanEliminationStepER9btMatrixXIfEiiRK20btAlignedObjectArrayIiE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(140) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %.fr59 = freeze i32 %i.b                        ; 9 uses
  %i.c = mul nsw i32 %.fr59, %2                   ; 3 uses
  %i.d = add nsw i32 %i.c, %3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 6 uses
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  %i.j = fdiv float -1.000000e+00, %i.i           ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !36     ; 5 uses
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.l, label %.lr.ph54, label %.preheader49

.lr.ph54:                                         ; preds = %bb.a
  %i.m = icmp sgt i32 %.fr59, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.m, label %.lr.ph54.split.us.preheader, label %.lr.ph58

.lr.ph54.split.us.preheader:                      ; preds = %.lr.ph54
  %i.o = zext i32 %3 to i64
  %i.p = sext i32 %i.c to i64
  %i.q = zext i32 %2 to i64
  %i.r = zext nneg i32 %.fr59 to i64
  %i.s = sext i32 %3 to i64
  %wide.trip.count65 = zext nneg i32 %i.k to i64
  %invariant.gep79 = getelementptr [4 x i8], ptr %i.f, i64 %i.s
  %wide.trip.count = zext nneg i32 %.fr59 to i64
  %invariant.gep77 = getelementptr [4 x i8], ptr %i.f, i64 %i.p
  br label %.lr.ph54.split.us

.lr.ph54.split.us:                                ; preds = %.lr.ph54.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv62 = phi i64 [ 0, %.lr.ph54.split.us.preheader ], [ %indvars.iv.next63, %..loopexit_crit_edge.us ] ; 3 uses
  %.not47.us = icmp eq i64 %indvars.iv62, %i.q
  br i1 %.not47.us, label %..loopexit_crit_edge.us, label %.preheader50.us

bb.b:                                             ; preds = %.preheader50.us, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader50.us ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.not48.us = icmp eq i64 %indvars.iv, %i.o
  br i1 %.not48.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.t = load float, ptr %gep, align 4, !tbaa !16
  %gep78 = getelementptr [4 x i8], ptr %invariant.gep77, i64 %indvars.iv
  %i.u = load float, ptr %gep78, align 4, !tbaa !16
  %i.v = load float, ptr %gep80, align 4, !tbaa !16
  %i.w = fmul float %i.u, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float %i.j, float %i.t)
  %i.y = load i32, ptr %i.n, align 8, !tbaa !40
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !40
  store float %i.x, ptr %gep, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.b, !llvm.loop !1

..loopexit_crit_edge.us:                          ; preds = %bb.d, %.lr.ph54.split.us
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.preheader49, label %.lr.ph54.split.us, !llvm.loop !2

.preheader50.us:                                  ; preds = %.lr.ph54.split.us
  %i.aa = mul nuw nsw i64 %indvars.iv62, %i.r     ; 2 uses
  %gep80 = getelementptr [4 x i8], ptr %invariant.gep79, i64 %i.aa
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aa
  br label %bb.b

.preheader49:                                     ; preds = %..loopexit_crit_edge.us, %bb.a
  %i.ab = icmp sgt i32 %.fr59, 0
  br i1 %i.ab, label %.lr.ph, label %.preheader

end_hunk_1
