Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_sel_b:bb.a
  %index492 = phi i64 [ %vec.epilog.resume.val483, %vec.epilog.ph489 ], [ %index.next494, %vec.epilog.vector.body491 ] ; 2 uses
  %i.in = add i64 %index492, %i.ic                ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.fs, i64 %i.in
  %wide.load493 = load <8 x i8>, ptr %i.io, align 1
  %i.ip = getelementptr inbounds i8, ptr %i.fq, i64 %i.in
  store <8 x i8> %wide.load493, ptr %i.ip, align 1
  %index.next494 = add nuw i64 %index492, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next494, %n.vec490
  br i1 %i.iq, label %vec.epilog.middle.block495, label %vec.epilog.vector.body491, !llvm.loop !973

vec.epilog.middle.block495:                       ; preds = %vec.epilog.vector.body491
  %cmp.n496 = icmp eq i64 %i.id, %n.vec490
  br i1 %cmp.n496, label %._crit_edge.us217, label %.lr.ph.us216.preheader

.lr.ph.us216.preheader:                           ; preds = %iter.check485, %vec.epilog.iter.check487, %vec.epilog.middle.block495
  %indvars.iv266.ph = phi i64 [ %i.ic, %iter.check485 ], [ %i.if, %vec.epilog.iter.check487 ], [ %i.im, %vec.epilog.middle.block495 ] ; 4 uses
  %i.ir = sub nsw i64 0, %indvars.iv266.ph
  %i.is = sub nsw i64 %i.fh, %indvars.iv266.ph
  %xtraiter668 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod669.not = icmp eq i64 %xtraiter668, 0
  br i1 %lcmp.mod669.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol

.lr.ph.us216.prol:                                ; preds = %.lr.ph.us216.preheader, %.lr.ph.us216.prol
  %indvars.iv266.prol = phi i64 [ %indvars.iv.next267.prol, %.lr.ph.us216.prol ], [ %indvars.iv266.ph, %.lr.ph.us216.preheader ] ; 3 uses
  %prol.iter670 = phi i64 [ %prol.iter670.next, %.lr.ph.us216.prol ], [ 0, %.lr.ph.us216.preheader ]
  %i.it = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv266.prol
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = getelementptr inbounds i8, ptr %i.fq, i64 %indvars.iv266.prol
  store i8 %i.iu, ptr %i.iv, align 1
  %indvars.iv.next267.prol = add nsw i64 %indvars.iv266.prol, 1 ; 2 uses
  %prol.iter670.next = add i64 %prol.iter670, 1   ; 2 uses
  %prol.iter670.cmp.not = icmp eq i64 %prol.iter670.next, %xtraiter668
  br i1 %prol.iter670.cmp.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol, !llvm.loop !974

.lr.ph.us216.prol.loopexit:                       ; preds = %.lr.ph.us216.prol, %.lr.ph.us216.preheader
  %indvars.iv266.unr = phi i64 [ %indvars.iv266.ph, %.lr.ph.us216.preheader ], [ %indvars.iv.next267.prol, %.lr.ph.us216.prol ]
  %i.iw = icmp ult i64 %i.is, 3
  br i1 %i.iw, label %._crit_edge.us217, label %.lr.ph.us216

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv266 = phi i64 [ %indvars.iv.next267.3, %.lr.ph.us216 ], [ %indvars.iv266.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.ix = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv266
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = getelementptr inbounds i8, ptr %i.fq, i64 %indvars.iv266
  store i8 %i.iy, ptr %i.iz, align 1
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.next267
  %i.jb = load i8, ptr %i.ja, align 1
  %i.jc = getelementptr inbounds i8, ptr %i.fq, i64 %indvars.iv.next267
  store i8 %i.jb, ptr %i.jc, align 1
  %indvars.iv.next267.1 = add nsw i64 %indvars.iv266, 2 ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.next267.1
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = getelementptr inbounds i8, ptr %i.fq, i64 %indvars.iv.next267.1
  store i8 %i.je, ptr %i.jf, align 1
  %indvars.iv.next267.2 = add nsw i64 %indvars.iv266, 3 ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.next267.2
  %i.jh = load i8, ptr %i.jg, align 1
  %i.ji = getelementptr inbounds i8, ptr %i.fq, i64 %indvars.iv.next267.2
  store i8 %i.jh, ptr %i.ji, align 1
  %indvars.iv.next267.3 = add nsw i64 %indvars.iv266, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next267.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !975

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block481, %vec.epilog.middle.block495, %.preheader206.us
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit197, label %.lr.ph215.split.us, !llvm.loop !976

.preheader204:                                    ; preds = %decode_counter.exit
  br i1 %i.aa, label %.lr.ph230, label %.loopexit197

.lr.ph230:                                        ; preds = %.preheader204
  %i.jj = icmp sgt i32 %.fr244, 1
  %wide.trip.count295 = zext nneg i32 %i.k to i64 ; 2 uses
  br i1 %i.jj, label %.lr.ph230.split.us.preheader, label %.lr.ph230.split.preheader

.lr.ph230.split.preheader:                        ; preds = %.lr.ph230
  %narrow = sub nuw nsw i32 -8, %.v.v.i
  %i.jk = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.jk, -32
  br label %.lr.ph230.split

.lr.ph230.split.us.preheader:                     ; preds = %.lr.ph230
  %wide.trip.count290 = zext nneg i32 %.fr244 to i64 ; 5 uses
  %i.jl = add nsw i64 %wide.trip.count290, -2     ; 2 uses
  %i.jm = sub i64 %i.c, %i.b                      ; 2 uses
  %i.jn = add nsw i64 %wide.trip.count290, -1     ; 5 uses
  %narrow642 = sub nuw nsw i32 -8, %.v.v.i
  %i.jo = add i64 %i.jm, -1
  %diff.check411 = icmp ult i64 %i.jo, 31
  %min.iters.check383 = icmp ult i32 %.fr244, 9
  %i.jp = trunc i64 %i.jl to i32
  %i.jq = icmp ugt i64 %i.jl, 4294967295
  %i.jr = add i64 %i.jm, -1
  %diff.check382 = icmp ult i64 %i.jr, 31
  %invariant.op684 = or i1 %i.jq, %diff.check382
  %min.iters.check385 = icmp ult i32 %.fr244, 33
  %i.js = and i64 %i.jn, 24
  %n.vec387 = and i64 %i.jn, -32                  ; 4 uses
  %i.jt = or disjoint i64 %n.vec387, 1
  %cmp.n394 = icmp eq i64 %i.jn, %n.vec387
  %min.epilog.iters.check400 = icmp eq i64 %i.js, 0
  %n.vec402 = and i64 %i.jn, -8                   ; 3 uses
  %i.ju = or disjoint i64 %n.vec402, 1
  %cmp.n408 = icmp eq i64 %i.jn, %n.vec402
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %._crit_edge228.split.us.us
  %indvars.iv292 = phi i64 [ 0, %.lr.ph230.split.us.preheader ], [ %indvars.iv.next293, %._crit_edge228.split.us.us ] ; 4 uses
  %i.jv = trunc i64 %indvars.iv292 to i32
  %i.jw = mul i32 %narrow642, %i.jv
  %i.jx = add i32 %i.jw, %i.y
  %smin412 = tail call i32 @llvm.smin.i32(i32 %i.jx, i32 %.v.i) ; 3 uses
  %i.jy = tail call i32 @llvm.umax.i32(i32 %smin412, i32 1)
  %umax413 = zext i32 %i.jy to i64                ; 5 uses
  %i.jz = shl nuw nsw i64 %indvars.iv292, 8       ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz ; 11 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 %i.jz
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 %i.jz ; 10 uses
  %i.kd = trunc i64 %indvars.iv292 to i32
  %i.ke = mul i32 %.v.i, %i.kd
  %i.kf = sub i32 %i.y, %i.ke                     ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %iter.check427, label %.lr.ph224.us.us.preheader

iter.check427:                                    ; preds = %.lr.ph230.split.us
  %i.kh = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 %.v.i)
  %i.ki = zext nneg i32 %i.kh to i64
  %min.iters.check414 = icmp ult i32 %smin412, 4
  %or.cond650 = or i1 %min.iters.check414, %diff.check411
  br i1 %or.cond650, label %.lr.ph220.us.preheader, label %vector.main.loop.iter.check415

vector.main.loop.iter.check415:                   ; preds = %iter.check427
  %min.iters.check416 = icmp ult i32 %smin412, 32
  br i1 %min.iters.check416, label %vec.epilog.ph431, label %vector.ph417

vector.ph417:                                     ; preds = %vector.main.loop.iter.check415
  %i.kj = and i64 %umax413, 28
  %n.vec418 = and i64 %umax413, 4294967264        ; 5 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.ph417, %vector.body419
  %index420 = phi i64 [ 0, %vector.ph417 ], [ %index.next423, %vector.body419 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 %index420 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %wide.load421 = load <16 x i8>, ptr %i.kk, align 1
  %wide.load422 = load <16 x i8>, ptr %i.kl, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %i.ka, i64 %index420 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <16 x i8> %wide.load421, ptr %i.km, align 1
  store <16 x i8> %wide.load422, ptr %i.kn, align 1
  %index.next423 = add nuw i64 %index420, 32      ; 2 uses
  %i.ko = icmp eq i64 %index.next423, %n.vec418
  br i1 %i.ko, label %middle.block424, label %vector.body419, !llvm.loop !977

middle.block424:                                  ; preds = %vector.body419
  %cmp.n425 = icmp eq i64 %n.vec418, %umax413
  br i1 %cmp.n425, label %.preheader203.us, label %vec.epilog.iter.check429

vec.epilog.iter.check429:                         ; preds = %middle.block424
  %min.epilog.iters.check430 = icmp eq i64 %i.kj, 0
  br i1 %min.epilog.iters.check430, label %.lr.ph220.us.preheader, label %vec.epilog.ph431, !prof !993

vec.epilog.ph431:                                 ; preds = %vector.main.loop.iter.check415, %vec.epilog.iter.check429
  %vec.epilog.resume.val426 = phi i64 [ %n.vec418, %vec.epilog.iter.check429 ], [ 0, %vector.main.loop.iter.check415 ]
  %n.vec432 = and i64 %umax413, 4294967292        ; 4 uses
  br label %vec.epilog.vector.body433

vec.epilog.vector.body433:                        ; preds = %vec.epilog.vector.body433, %vec.epilog.ph431
  %index434 = phi i64 [ %vec.epilog.resume.val426, %vec.epilog.ph431 ], [ %index.next436, %vec.epilog.vector.body433 ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kc, i64 %index434
  %wide.load435 = load <4 x i8>, ptr %i.kp, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 %index434
  store <4 x i8> %wide.load435, ptr %i.kq, align 1
  %index.next436 = add nuw i64 %index434, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next436, %n.vec432
  br i1 %i.kr, label %vec.epilog.middle.block437, label %vec.epilog.vector.body433, !llvm.loop !978

vec.epilog.middle.block437:                       ; preds = %vec.epilog.vector.body433
  %cmp.n438 = icmp eq i64 %n.vec432, %umax413
  br i1 %cmp.n438, label %.preheader203.us, label %.lr.ph220.us.preheader

.lr.ph220.us.preheader:                           ; preds = %iter.check427, %vec.epilog.iter.check429, %vec.epilog.middle.block437
  %indvars.iv284.ph = phi i64 [ 0, %iter.check427 ], [ %n.vec418, %vec.epilog.iter.check429 ], [ %n.vec432, %vec.epilog.middle.block437 ]
  br label %.lr.ph220.us

.lr.ph220.us:                                     ; preds = %.lr.ph220.us.preheader, %.lr.ph220.us
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph220.us ], [ %indvars.iv284.ph, %.lr.ph220.us.preheader ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv284
  %i.kt = load i8, ptr %i.ks, align 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ka, i64 %indvars.iv284
  store i8 %i.kt, ptr %i.ku, align 1
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 3 uses
  %i.kv = icmp samesign ult i64 %indvars.iv.next285, %i.ki
  br i1 %i.kv, label %.lr.ph220.us, label %.preheader203.us, !llvm.loop !979

.preheader203.us:                                 ; preds = %.lr.ph220.us, %vec.epilog.middle.block437, %middle.block424
  %indvars.iv.next285.lcssa = phi i64 [ %n.vec432, %vec.epilog.middle.block437 ], [ %n.vec418, %middle.block424 ], [ %indvars.iv.next285, %.lr.ph220.us ]
  %i.kw = trunc nuw nsw i64 %indvars.iv.next285.lcssa to i32 ; 2 uses
  %5 = icmp samesign ugt i32 %.v.i, %i.kw
  br i1 %5, label %.lr.ph224.us.us.preheader, label %._crit_edge228.split.us.us

.lr.ph224.us.us.preheader:                        ; preds = %.lr.ph230.split.us, %.preheader203.us
  %.0171.lcssa.us351 = phi i32 [ %i.kw, %.preheader203.us ], [ 0, %.lr.ph230.split.us ] ; 2 uses
  %i.kx = add i32 %.0171.lcssa.us351, 1
  br label %iter.check397

iter.check397:                                    ; preds = %.lr.ph224.us.us.preheader, %._crit_edge225.us.us
  %indvar = phi i32 [ 0, %.lr.ph224.us.us.preheader ], [ %indvar.next, %._crit_edge225.us.us ] ; 2 uses
  %.1172226.us.us = phi i32 [ %.0171.lcssa.us351, %.lr.ph224.us.us.preheader ], [ %i.na, %._crit_edge225.us.us ] ; 9 uses
  %i.ky = sext i32 %.1172226.us.us to i64         ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.kb, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = getelementptr inbounds i8, ptr %i.ka, i64 %i.ky
  store i8 %i.la, ptr %i.lb, align 1
  br i1 %min.iters.check383, label %vec.epilog.scalar.ph398.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check397
  %i.lc = mul i32 %.fr244, %indvar
  %i.ld = add i32 %i.kx, %i.lc                    ; 2 uses
  %i.le = add i32 %i.ld, %i.jp
  %i.lf = icmp slt i32 %i.le, %i.ld
  %or.cond651.reass = or i1 %i.lf, %invariant.op684
  br i1 %or.cond651.reass, label %vec.epilog.scalar.ph398.preheader, label %vector.main.loop.iter.check384

vector.main.loop.iter.check384:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check385, label %vec.epilog.ph401, label %vector.body388

vector.body388:                                   ; preds = %vector.main.loop.iter.check384, %vector.body388
  %index389 = phi i64 [ %index.next392, %vector.body388 ], [ 0, %vector.main.loop.iter.check384 ] ; 2 uses
  %i.lg = trunc i64 %index389 to i32
  %i.lh = or disjoint i32 %i.lg, 1
  %i.li = add i32 %.1172226.us.us, %i.lh
  %i.lj = sext i32 %i.li to i64                   ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %i.kc, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load390 = load <16 x i8>, ptr %i.lk, align 1
  %wide.load391 = load <16 x i8>, ptr %i.ll, align 1
  %i.lm = getelementptr inbounds i8, ptr %i.ka, i64 %i.lj ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store <16 x i8> %wide.load390, ptr %i.lm, align 1
  store <16 x i8> %wide.load391, ptr %i.ln, align 1
  %index.next392 = add nuw i64 %index389, 32      ; 2 uses
  %i.lo = icmp eq i64 %index.next392, %n.vec387
  br i1 %i.lo, label %middle.block393, label %vector.body388, !llvm.loop !980

middle.block393:                                  ; preds = %vector.body388
  br i1 %cmp.n394, label %._crit_edge225.us.us, label %vec.epilog.iter.check399

vec.epilog.iter.check399:                         ; preds = %middle.block393
  br i1 %min.epilog.iters.check400, label %vec.epilog.scalar.ph398.preheader, label %vec.epilog.ph401, !prof !994

vec.epilog.ph401:                                 ; preds = %vector.main.loop.iter.check384, %vec.epilog.iter.check399
  %vec.epilog.resume.val395 = phi i64 [ %n.vec387, %vec.epilog.iter.check399 ], [ 0, %vector.main.loop.iter.check384 ]
  br label %vec.epilog.vector.body403

vec.epilog.vector.body403:                        ; preds = %vec.epilog.vector.body403, %vec.epilog.ph401
  %index404 = phi i64 [ %vec.epilog.resume.val395, %vec.epilog.ph401 ], [ %index.next406, %vec.epilog.vector.body403 ] ; 2 uses
  %i.lp = trunc i64 %index404 to i32
  %i.lq = or disjoint i32 %i.lp, 1
  %i.lr = add i32 %.1172226.us.us, %i.lq
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.kc, i64 %i.ls
  %wide.load405 = load <8 x i8>, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds i8, ptr %i.ka, i64 %i.ls
  store <8 x i8> %wide.load405, ptr %i.lu, align 1
  %index.next406 = add nuw i64 %index404, 8       ; 2 uses
  %i.lv = icmp eq i64 %index.next406, %n.vec402
  br i1 %i.lv, label %vec.epilog.middle.block407, label %vec.epilog.vector.body403, !llvm.loop !981

vec.epilog.middle.block407:                       ; preds = %vec.epilog.vector.body403
  br i1 %cmp.n408, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph398.preheader

vec.epilog.scalar.ph398.preheader:                ; preds = %iter.check397, %vector.scevcheck, %vec.epilog.iter.check399, %vec.epilog.middle.block407
  %indvars.iv287.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check397 ], [ %i.jt, %vec.epilog.iter.check399 ], [ %i.ju, %vec.epilog.middle.block407 ] ; 4 uses
  %i.lw = sub nsw i64 %wide.trip.count290, %indvars.iv287.ph
  %xtraiter = and i64 %i.lw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph398.prol.loopexit, label %vec.epilog.scalar.ph398.prol

vec.epilog.scalar.ph398.prol:                     ; preds = %vec.epilog.scalar.ph398.preheader, %vec.epilog.scalar.ph398.prol
  %indvars.iv287.prol = phi i64 [ %indvars.iv.next288.prol, %vec.epilog.scalar.ph398.prol ], [ %indvars.iv287.ph, %vec.epilog.scalar.ph398.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph398.prol ], [ 0, %vec.epilog.scalar.ph398.preheader ]
  %i.lx = trunc nuw nsw i64 %indvars.iv287.prol to i32
  %i.ly = add i32 %.1172226.us.us, %i.lx
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds i8, ptr %i.kc, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1
  %i.mc = getelementptr inbounds i8, ptr %i.ka, i64 %i.lz
  store i8 %i.mb, ptr %i.mc, align 1
  %indvars.iv.next288.prol = add nuw nsw i64 %indvars.iv287.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph398.prol.loopexit, label %vec.epilog.scalar.ph398.prol, !llvm.loop !982

vec.epilog.scalar.ph398.prol.loopexit:            ; preds = %vec.epilog.scalar.ph398.prol, %vec.epilog.scalar.ph398.preheader
  %indvars.iv287.unr = phi i64 [ %indvars.iv287.ph, %vec.epilog.scalar.ph398.preheader ], [ %indvars.iv.next288.prol, %vec.epilog.scalar.ph398.prol ]
  %i.md = sub nsw i64 %indvars.iv287.ph, %wide.trip.count290
  %i.me = icmp ugt i64 %i.md, -4
  br i1 %i.me, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph398.preheader.new

vec.epilog.scalar.ph398.preheader.new:            ; preds = %vec.epilog.scalar.ph398.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op680 = add i32 2, %.1172226.us.us
  %invariant.op682 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph398

vec.epilog.scalar.ph398:                          ; preds = %vec.epilog.scalar.ph398, %vec.epilog.scalar.ph398.preheader.new
  %indvars.iv287 = phi i64 [ %indvars.iv287.unr, %vec.epilog.scalar.ph398.preheader.new ], [ %indvars.iv.next288.3, %vec.epilog.scalar.ph398 ] ; 5 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv287 to i32
  %i.mg = add i32 %.1172226.us.us, %i.mf
  %i.mh = sext i32 %i.mg to i64                   ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %i.kc, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1
  %i.mk = getelementptr inbounds i8, ptr %i.ka, i64 %i.mh
  store i8 %i.mj, ptr %i.mk, align 1
  %i.ml = trunc i64 %indvars.iv287 to i32
  %.reass = add i32 %i.ml, %invariant.op
  %i.mm = sext i32 %.reass to i64                 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.kc, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1
  %i.mp = getelementptr inbounds i8, ptr %i.ka, i64 %i.mm
  store i8 %i.mo, ptr %i.mp, align 1
  %i.mq = trunc i64 %indvars.iv287 to i32
  %.reass681 = add i32 %i.mq, %invariant.op680
  %i.mr = sext i32 %.reass681 to i64              ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %i.kc, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = getelementptr inbounds i8, ptr %i.ka, i64 %i.mr
  store i8 %i.mt, ptr %i.mu, align 1
  %i.mv = trunc i64 %indvars.iv287 to i32
  %.reass683 = add i32 %i.mv, %invariant.op682
  %i.mw = sext i32 %.reass683 to i64              ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.kc, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1
  %i.mz = getelementptr inbounds i8, ptr %i.ka, i64 %i.mw
  store i8 %i.my, ptr %i.mz, align 1
  %indvars.iv.next288.3 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %exitcond291.not.3 = icmp eq i64 %indvars.iv.next288.3, %wide.trip.count290
  br i1 %exitcond291.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph398, !llvm.loop !983

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph398.prol.loopexit, %vec.epilog.scalar.ph398, %vec.epilog.middle.block407, %middle.block393
  %i.na = add i32 %.1172226.us.us, %.fr244        ; 2 uses
  %i.nb = icmp slt i32 %i.na, %.v.i
  %indvar.next = add i32 %indvar, 1
  br i1 %i.nb, label %iter.check397, label %._crit_edge228.split.us.us, !llvm.loop !984

._crit_edge228.split.us.us:                       ; preds = %._crit_edge225.us.us, %.preheader203.us
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 2 uses
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %.loopexit197, label %.lr.ph230.split.us, !llvm.loop !985

.lr.ph230.split:                                  ; preds = %.lr.ph230.split.preheader, %._crit_edge228.split
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %._crit_edge228.split ], [ 0, %.lr.ph230.split.preheader ] ; 4 uses
  %i.nc = trunc i64 %indvars.iv279 to i32
  %i.nd = mul i32 %narrow, %i.nc
  %i.ne = add i32 %i.nd, %i.y
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ne, i32 %.v.i) ; 3 uses
  %i.nf = tail call i32 @llvm.umax.i32(i32 %smin, i32 1)
  %umax = zext i32 %i.nf to i64                   ; 5 uses
  %i.ng = shl nuw nsw i64 %indvars.iv279, 8       ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 %i.ng ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 %i.ng
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ng ; 3 uses
  %i.nk = trunc i64 %indvars.iv279 to i32
  %i.nl = mul i32 %.v.i, %i.nk
  %i.nm = sub i32 %i.y, %i.nl                     ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, 0
  br i1 %i.nn, label %iter.check, label %.lr.ph227.preheader

iter.check:                                       ; preds = %.lr.ph230.split
  %i.no = tail call i32 @llvm.smin.i32(i32 %i.nm, i32 %.v.i)
  %i.np = zext nneg i32 %i.no to i64
  %min.iters.check = icmp ult i32 %smin, 4
  %or.cond652 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond652, label %.lr.ph220.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check374 = icmp ult i32 %smin, 32
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nq = and i64 %umax, 28
  %n.vec = and i64 %umax, 4294967264              ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nj, i64 %index ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load = load <16 x i8>, ptr %i.nr, align 1
  %wide.load375 = load <16 x i8>, ptr %i.ns, align 1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 %index ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store <16 x i8> %wide.load, ptr %i.nt, align 1
  store <16 x i8> %wide.load375, ptr %i.nu, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nv = icmp eq i64 %index.next, %n.vec
  br i1 %i.nv, label %middle.block, label %vector.body, !llvm.loop !986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %umax
  br i1 %cmp.n, label %.preheader203, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph220.preheader, label %vec.epilog.ph, !prof !993

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec376 = and i64 %umax, 4294967292           ; 4 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index377 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next379, %vec.epilog.vector.body ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 %index377
  %wide.load378 = load <4 x i8>, ptr %i.nw, align 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nh, i64 %index377
  store <4 x i8> %wide.load378, ptr %i.nx, align 1
  %index.next379 = add nuw i64 %index377, 4       ; 2 uses
  %i.ny = icmp eq i64 %index.next379, %n.vec376
  br i1 %i.ny, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !987

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n380 = icmp eq i64 %n.vec376, %umax
  br i1 %cmp.n380, label %.preheader203, label %.lr.ph220.preheader

.lr.ph220.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv276.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec376, %vec.epilog.middle.block ]
  br label %.lr.ph220

.preheader203:                                    ; preds = %.lr.ph220, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next277.lcssa = phi i64 [ %n.vec376, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %indvars.iv.next277, %.lr.ph220 ]
  %i.nz = trunc nuw nsw i64 %indvars.iv.next277.lcssa to i32 ; 2 uses
  %6 = icmp samesign ugt i32 %.v.i, %i.nz
  br i1 %6, label %.lr.ph227.preheader, label %._crit_edge228.split

.lr.ph227.preheader:                              ; preds = %.lr.ph230.split, %.preheader203
  %.1172226.ph = phi i32 [ 0, %.lr.ph230.split ], [ %i.nz, %.preheader203 ]
  br label %.lr.ph227

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %.lr.ph220
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %.lr.ph220 ], [ %indvars.iv276.ph, %.lr.ph220.preheader ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nj, i64 %indvars.iv276
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nh, i64 %indvars.iv276
  store i8 %i.ob, ptr %i.oc, align 1
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 3 uses
  %i.od = icmp samesign ult i64 %indvars.iv.next277, %i.np
  br i1 %i.od, label %.lr.ph220, label %.preheader203, !llvm.loop !988

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %.lr.ph227
  %.1172226 = phi i32 [ %i.oi, %.lr.ph227 ], [ %.1172226.ph, %.lr.ph227.preheader ] ; 2 uses
  %i.oe = sext i32 %.1172226 to i64               ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %i.ni, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = getelementptr inbounds i8, ptr %i.nh, i64 %i.oe
  store i8 %i.og, ptr %i.oh, align 1
  %i.oi = add i32 %.1172226, %.fr244              ; 2 uses
  %i.oj = icmp slt i32 %i.oi, %.v.i
  br i1 %i.oj, label %.lr.ph227, label %._crit_edge228.split, !llvm.loop !984

._crit_edge228.split:                             ; preds = %.lr.ph227, %.preheader203
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count295
  br i1 %exitcond283.not, label %.loopexit197, label %.lr.ph230.split, !llvm.loop !985

.lr.ph215.split:                                  ; preds = %.lr.ph215.split.preheader, %._crit_edge
  %indvars.iv255 = phi i64 [ 0, %.lr.ph215.split.preheader ], [ %indvars.iv.next256, %._crit_edge ] ; 3 uses
  %i.ok = shl nuw nsw i64 %indvars.iv255, 8       ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 %i.ok ; 8 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 %i.ok ; 7 uses
  %i.oo = trunc i64 %indvars.iv255 to i32
  %i.op = mul i32 %.v.i, %i.oo
  %i.oq = sub i32 %i.y, %i.op                     ; 2 uses
  %i.or = tail call i32 @llvm.smin.i32(i32 %i.oq, i32 %.v.i)
  %i.os = icmp sgt i32 %i.oq, 0
  br i1 %i.os, label %.lr.ph212, label %iter.check456

.preheader206:                                    ; preds = %.lr.ph212
  %i.ot = icmp slt i32 %i.pt, %.v.i
  br i1 %i.ot, label %iter.check456, label %._crit_edge

iter.check456:                                    ; preds = %.lr.ph215.split, %.preheader206
  %.0168.lcssa355 = phi i32 [ %i.pt, %.preheader206 ], [ 0, %.lr.ph215.split ]
  %i.ou = sext i32 %.0168.lcssa355 to i64         ; 6 uses
  %i.ov = sub nsw i64 %i.ey, %i.ou                ; 7 uses
  %min.iters.check442 = icmp ult i64 %i.ov, 8
  %or.cond653 = or i1 %min.iters.check442, %diff.check441
  br i1 %or.cond653, label %.lr.ph.preheader, label %vector.main.loop.iter.check443

vector.main.loop.iter.check443:                   ; preds = %iter.check456
  %min.iters.check444 = icmp ult i64 %i.ov, 32
  br i1 %min.iters.check444, label %vec.epilog.ph460, label %vector.ph445

vector.ph445:                                     ; preds = %vector.main.loop.iter.check443
  %i.ow = and i64 %i.ov, 24
  %n.vec446 = and i64 %i.ov, -32                  ; 4 uses
  %i.ox = add nsw i64 %n.vec446, %i.ou
  br label %vector.body447

vector.body447:                                   ; preds = %vector.ph445, %vector.body447
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next451, %vector.body447 ] ; 2 uses
  %i.oy = add i64 %index448, %i.ou                ; 2 uses
  %i.oz = getelementptr inbounds i8, ptr %i.on, i64 %i.oy ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load449 = load <16 x i8>, ptr %i.oz, align 1
  %wide.load450 = load <16 x i8>, ptr %i.pa, align 1
  %i.pb = getelementptr inbounds i8, ptr %i.ol, i64 %i.oy ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store <16 x i8> %wide.load449, ptr %i.pb, align 1
  store <16 x i8> %wide.load450, ptr %i.pc, align 1
  %index.next451 = add nuw i64 %index448, 32      ; 2 uses
  %i.pd = icmp eq i64 %index.next451, %n.vec446
  br i1 %i.pd, label %middle.block452, label %vector.body447, !llvm.loop !989

middle.block452:                                  ; preds = %vector.body447
  %cmp.n453 = icmp eq i64 %i.ov, %n.vec446
  br i1 %cmp.n453, label %._crit_edge, label %vec.epilog.iter.check458

vec.epilog.iter.check458:                         ; preds = %middle.block452
  %min.epilog.iters.check459 = icmp eq i64 %i.ow, 0
  br i1 %min.epilog.iters.check459, label %.lr.ph.preheader, label %vec.epilog.ph460, !prof !994

vec.epilog.ph460:                                 ; preds = %vector.main.loop.iter.check443, %vec.epilog.iter.check458
  %vec.epilog.resume.val454 = phi i64 [ %n.vec446, %vec.epilog.iter.check458 ], [ 0, %vector.main.loop.iter.check443 ]
  %n.vec461 = and i64 %i.ov, -8                   ; 3 uses
  %i.pe = add nsw i64 %n.vec461, %i.ou
  br label %vec.epilog.vector.body462

vec.epilog.vector.body462:                        ; preds = %vec.epilog.vector.body462, %vec.epilog.ph460
  %index463 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph460 ], [ %index.next465, %vec.epilog.vector.body462 ] ; 2 uses
  %i.pf = add i64 %index463, %i.ou                ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.on, i64 %i.pf
  %wide.load464 = load <8 x i8>, ptr %i.pg, align 1
  %i.ph = getelementptr inbounds i8, ptr %i.ol, i64 %i.pf
  store <8 x i8> %wide.load464, ptr %i.ph, align 1
  %index.next465 = add nuw i64 %index463, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next465, %n.vec461
  br i1 %i.pi, label %vec.epilog.middle.block466, label %vec.epilog.vector.body462, !llvm.loop !990

vec.epilog.middle.block466:                       ; preds = %vec.epilog.vector.body462
  %cmp.n467 = icmp eq i64 %i.ov, %n.vec461
  br i1 %cmp.n467, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check456, %vec.epilog.iter.check458, %vec.epilog.middle.block466
  %indvars.iv.ph = phi i64 [ %i.ou, %iter.check456 ], [ %i.ox, %vec.epilog.iter.check458 ], [ %i.pe, %vec.epilog.middle.block466 ] ; 4 uses
  %i.pj = sub nsw i64 0, %indvars.iv.ph
  %i.pk = sub nsw i64 %i.fa, %indvars.iv.ph
  %xtraiter662 = and i64 %i.pj, 3                 ; 2 uses
  %lcmp.mod663.not = icmp eq i64 %xtraiter662, 0
  br i1 %lcmp.mod663.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter664 = phi i64 [ %prol.iter664.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.pl = getelementptr inbounds i8, ptr %i.on, i64 %indvars.iv.prol
  %i.pm = load i8, ptr %i.pl, align 1
  %i.pn = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv.prol
  store i8 %i.pm, ptr %i.pn, align 1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter664.next = add i64 %prol.iter664, 1   ; 2 uses
  %prol.iter664.cmp.not = icmp eq i64 %prol.iter664.next, %xtraiter662
  br i1 %prol.iter664.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !991

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.po = icmp ult i64 %i.pk, 3
  br i1 %i.po, label %._crit_edge, label %.lr.ph

.lr.ph212:                                        ; preds = %.lr.ph215.split, %.lr.ph212
  %.0168210 = phi i32 [ %i.pt, %.lr.ph212 ], [ 0, %.lr.ph215.split ] ; 2 uses
  %i.pp = sext i32 %.0168210 to i64               ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.om, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1
  %i.ps = getelementptr inbounds i8, ptr %i.ol, i64 %i.pp
  store i8 %i.pr, ptr %i.ps, align 1
  %i.pt = add i32 %.0168210, %.fr244              ; 4 uses
  %i.pu = icmp slt i32 %i.pt, %i.or
  br i1 %i.pu, label %.lr.ph212, label %.preheader206, !llvm.loop !971

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.pv = getelementptr inbounds i8, ptr %i.on, i64 %indvars.iv
  %i.pw = load i8, ptr %i.pv, align 1
  %i.px = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv
  store i8 %i.pw, ptr %i.px, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.py = getelementptr inbounds i8, ptr %i.on, i64 %indvars.iv.next
  %i.pz = load i8, ptr %i.py, align 1
  %i.qa = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv.next
  store i8 %i.pz, ptr %i.qa, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qb = getelementptr inbounds i8, ptr %i.on, i64 %indvars.iv.next.1
  %i.qc = load i8, ptr %i.qb, align 1
  %i.qd = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv.next.1
  store i8 %i.qc, ptr %i.qd, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.on, i64 %indvars.iv.next.2
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = getelementptr inbounds i8, ptr %i.ol, i64 %indvars.iv.next.2
  store i8 %i.qf, ptr %i.qg, align 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !992

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block452, %vec.epilog.middle.block466, %.preheader206
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count274
  br i1 %exitcond259.not, label %.loopexit197, label %.lr.ph215.split, !llvm.loop !976

.loopexit197:                                     ; preds = %._crit_edge228.split, %._crit_edge228.split.us.us, %._crit_edge, %._crit_edge.us217, %.loopexit, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = lshr exact i32 %.v.i, 1                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
end_hunk_0
begin_hunk_1_@helper_sme2_sel_h:bb.a

.lr.ph233.preheader:                              ; preds = %iter.check537, %vec.epilog.iter.check539, %vec.epilog.middle.block547
  %indvars.iv276.ph = phi i64 [ 0, %iter.check537 ], [ %n.vec528, %vec.epilog.iter.check539 ], [ %n.vec542, %vec.epilog.middle.block547 ] ; 3 uses
  %xtraiter570 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod571.not = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol

.lr.ph233.prol:                                   ; preds = %.lr.ph233.preheader, %.lr.ph233.prol
  %indvars.iv276.prol = phi i64 [ %indvars.iv.next277.prol, %.lr.ph233.prol ], [ %indvars.iv276.ph, %.lr.ph233.preheader ] ; 3 uses
  %prol.iter572 = phi i64 [ %prol.iter572.next, %.lr.ph233.prol ], [ 0, %.lr.ph233.preheader ]
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276.prol
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv276.prol
  store i16 %i.dy, ptr %i.dz, align 2
  %indvars.iv.next277.prol = add nuw nsw i64 %indvars.iv276.prol, 1 ; 2 uses
  %prol.iter572.next = add i64 %prol.iter572, 1   ; 2 uses
  %prol.iter572.cmp.not = icmp eq i64 %prol.iter572.next, %xtraiter570
  br i1 %prol.iter572.cmp.not, label %.lr.ph233.prol.loopexit, label %.lr.ph233.prol, !llvm.loop !1005

.lr.ph233.prol.loopexit:                          ; preds = %.lr.ph233.prol, %.lr.ph233.preheader
  %indvars.iv276.unr = phi i64 [ %indvars.iv276.ph, %.lr.ph233.preheader ], [ %indvars.iv.next277.prol, %.lr.ph233.prol ]
  %i.ea = sub nsw i64 %indvars.iv276.ph, %i.df
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %iter.check509, label %.lr.ph233

.lr.ph233:                                        ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233
  %indvars.iv276 = phi i64 [ %indvars.iv.next277.3, %.lr.ph233 ], [ %indvars.iv276.unr, %.lr.ph233.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv276
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv276
  store i16 %i.ed, ptr %i.ee, align 2
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277
  store i16 %i.eg, ptr %i.eh, align 2
  %indvars.iv.next277.1 = add nuw nsw i64 %indvars.iv276, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.1
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277.1
  store i16 %i.ej, ptr %i.ek, align 2
  %indvars.iv.next277.2 = add nuw nsw i64 %indvars.iv276, 3 ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next277.2
  %i.em = load i16, ptr %i.el, align 2
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv.next277.2
  store i16 %i.em, ptr %i.en, align 2
  %indvars.iv.next277.3 = add nuw nsw i64 %indvars.iv276, 4 ; 2 uses
  %exitcond282.not.3 = icmp eq i64 %indvars.iv.next277.3, %i.df
  br i1 %exitcond282.not.3, label %iter.check509, label %.lr.ph233, !llvm.loop !1006

iter.check509:                                    ; preds = %.lr.ph233.prol.loopexit, %.lr.ph233, %vec.epilog.middle.block547, %middle.block534
  %min.iters.check495 = icmp ult i32 %i.dc, 3
  %or.cond552 = or i1 %min.iters.check495, %diff.check494
  br i1 %or.cond552, label %.lr.ph235.preheader, label %vector.main.loop.iter.check496

vector.main.loop.iter.check496:                   ; preds = %iter.check509
  %min.iters.check497 = icmp ult i32 %i.dc, 15
  br i1 %min.iters.check497, label %vec.epilog.ph513, label %vector.ph498

vector.ph498:                                     ; preds = %vector.main.loop.iter.check496
  %i.eo = and i64 %i.de, 12
  %n.vec499 = and i64 %i.de, 8589934576           ; 4 uses
  %i.ep = add nuw nsw i64 %n.vec499, %i.df
  br label %vector.body500

vector.body500:                                   ; preds = %vector.ph498, %vector.body500
  %index501 = phi i64 [ 0, %vector.ph498 ], [ %index.next504, %vector.body500 ] ; 2 uses
  %i.eq = add nuw i64 %index501, %i.df            ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load502 = load <8 x i16>, ptr %i.er, align 2
  %wide.load503 = load <8 x i16>, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.eq ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <8 x i16> %wide.load502, ptr %i.et, align 2
  store <8 x i16> %wide.load503, ptr %i.eu, align 2
  %index.next504 = add nuw i64 %index501, 16      ; 2 uses
  %i.ev = icmp eq i64 %index.next504, %n.vec499
  br i1 %i.ev, label %middle.block505, label %vector.body500, !llvm.loop !1007

middle.block505:                                  ; preds = %vector.body500
  %cmp.n506 = icmp eq i64 %i.de, %n.vec499
  br i1 %cmp.n506, label %.loopexit199, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block505
  %min.epilog.iters.check512 = icmp eq i64 %i.eo, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph235.preheader, label %vec.epilog.ph513, !prof !56

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check496, %vec.epilog.iter.check511
  %vec.epilog.resume.val507 = phi i64 [ %n.vec499, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check496 ]
  %n.vec514 = and i64 %i.de, 8589934588           ; 3 uses
  %i.ew = add nuw nsw i64 %n.vec514, %i.df
  br label %vec.epilog.vector.body515

vec.epilog.vector.body515:                        ; preds = %vec.epilog.vector.body515, %vec.epilog.ph513
  %index516 = phi i64 [ %vec.epilog.resume.val507, %vec.epilog.ph513 ], [ %index.next518, %vec.epilog.vector.body515 ] ; 2 uses
  %i.ex = add nuw i64 %index516, %i.df            ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.ex
  %wide.load517 = load <4 x i16>, ptr %i.ey, align 2
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ex
  store <4 x i16> %wide.load517, ptr %i.ez, align 2
  %index.next518 = add nuw i64 %index516, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next518, %n.vec514
  br i1 %i.fa, label %vec.epilog.middle.block519, label %vec.epilog.vector.body515, !llvm.loop !1008

vec.epilog.middle.block519:                       ; preds = %vec.epilog.vector.body515
  %cmp.n520 = icmp eq i64 %i.de, %n.vec514
  br i1 %cmp.n520, label %.loopexit199, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %iter.check509, %vec.epilog.iter.check511, %vec.epilog.middle.block519
  %indvars.iv286.ph = phi i64 [ %i.df, %iter.check509 ], [ %i.ep, %vec.epilog.iter.check511 ], [ %i.ew, %vec.epilog.middle.block519 ]
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph235 ], [ %indvars.iv286.ph, %.lr.ph235.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %indvars.iv286
  %i.fc = load i16, ptr %i.fb, align 2
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %indvars.iv286
  store i16 %i.fc, ptr %i.fd, align 2
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.fe = trunc nuw i64 %indvars.iv.next287 to i32
  %i.ff = icmp sgt i32 %i.l, %i.fe
  br i1 %i.ff, label %.lr.ph235, label %.loopexit199, !llvm.loop !1009

.loopexit199.sink.split:                          ; preds = %bb.e, %.lr.ph237
  %.sink336 = phi ptr [ %i.dj, %.lr.ph237 ], [ %i.di, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dh, ptr noundef nonnull align 1 dereferenceable(1) %.sink336, i64 noundef %i.j, i1 noundef false) #15
  br label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph235, %middle.block505, %vec.epilog.middle.block519, %.loopexit199.sink.split
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %indvars.iv.next280 = sub i32 %indvars.iv279, %i.l
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %.loopexit197, label %.lr.ph237, !llvm.loop !1010

.preheader207:                                    ; preds = %decode_counter.exit
  br i1 %i.ah, label %.lr.ph215.split.us.preheader, label %.loopexit197

.lr.ph215.split.us.preheader:                     ; preds = %.preheader207
  %wide.trip.count260 = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 5 uses
  %wide.trip.count255 = zext nneg i32 %i.l to i64 ; 4 uses
  %i.fg = sub i64 %i.c, %i.a                      ; 2 uses
  %i.fh = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %i.fi = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check466 = icmp ult i32 %i.ae, 3
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = icmp ugt i64 %i.fh, 4294967295
  %i.fl = add i64 %i.fg, -1
  %diff.check465 = icmp ult i64 %i.fl, 31
  %invariant.op585 = or i1 %i.fk, %diff.check465
  %min.iters.check468 = icmp ult i32 %i.ae, 5
  %i.fm = and i64 %i.fi, 12
  %n.vec470 = and i64 %i.fi, -16                  ; 4 uses
  %i.fn = or disjoint i64 %n.vec470, 1
  %cmp.n477 = icmp eq i64 %i.fi, %n.vec470
  %min.epilog.iters.check483 = icmp eq i64 %i.fm, 0
  %n.vec485 = and i64 %i.fi, -4                   ; 3 uses
  %i.fo = or disjoint i64 %n.vec485, 1
  %cmp.n491 = icmp eq i64 %i.fi, %n.vec485
  %i.fp = add i64 %i.fg, -1
  %diff.check435 = icmp ult i64 %i.fp, 31
  br label %.lr.ph215.split.us

.lr.ph215.split.us:                               ; preds = %.lr.ph215.split.us.preheader, %._crit_edge.us217
  %indvars.iv257 = phi i64 [ 0, %.lr.ph215.split.us.preheader ], [ %indvars.iv.next258, %._crit_edge.us217 ] ; 3 uses
  %i.fq = shl nuw nsw i64 %indvars.iv257, 8       ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq ; 15 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fq ; 14 uses
  %i.fu = trunc i64 %indvars.iv257 to i32
  %i.fv = mul i32 %i.l, %i.fu
  %i.fw = sub i32 %i.af, %i.fv                    ; 2 uses
  %i.fx = tail call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.l)
  %i.fy = icmp sgt i32 %i.fw, 0
  br i1 %i.fy, label %iter.check480, label %iter.check450

iter.check480:                                    ; preds = %.lr.ph215.split.us, %._crit_edge.us.us
  %.0168210.us.us = phi i32 [ %i.ia, %._crit_edge.us.us ], [ 0, %.lr.ph215.split.us ] ; 10 uses
  %i.fz = zext nneg i32 %.0168210.us.us to i64    ; 2 uses
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fs, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fz
  store i16 %i.gb, ptr %i.gc, align 2
  br i1 %min.iters.check466, label %vec.epilog.scalar.ph481.preheader, label %vector.scevcheck463

vector.scevcheck463:                              ; preds = %iter.check480
  %i.gd = add nuw i32 %.0168210.us.us, 1          ; 2 uses
  %i.ge = add i32 %i.gd, %i.fj
  %i.gf = icmp slt i32 %i.ge, %i.gd
  %or.cond553.reass = or i1 %i.gf, %invariant.op585
  br i1 %or.cond553.reass, label %vec.epilog.scalar.ph481.preheader, label %vector.main.loop.iter.check467

vector.main.loop.iter.check467:                   ; preds = %vector.scevcheck463
  br i1 %min.iters.check468, label %vec.epilog.ph484, label %vector.body471

vector.body471:                                   ; preds = %vector.main.loop.iter.check467, %vector.body471
  %index472 = phi i64 [ %index.next475, %vector.body471 ], [ 0, %vector.main.loop.iter.check467 ] ; 2 uses
  %i.gg = trunc i64 %index472 to i32
  %i.gh = or disjoint i32 %i.gg, 1
  %i.gi = add nuw i32 %.0168210.us.us, %i.gh
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load473 = load <8 x i16>, ptr %i.gk, align 2
  %wide.load474 = load <8 x i16>, ptr %i.gl, align 2
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gj ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <8 x i16> %wide.load473, ptr %i.gm, align 2
  store <8 x i16> %wide.load474, ptr %i.gn, align 2
  %index.next475 = add nuw i64 %index472, 16      ; 2 uses
  %i.go = icmp eq i64 %index.next475, %n.vec470
  br i1 %i.go, label %middle.block476, label %vector.body471, !llvm.loop !1011

middle.block476:                                  ; preds = %vector.body471
  br i1 %cmp.n477, label %._crit_edge.us.us, label %vec.epilog.iter.check482

vec.epilog.iter.check482:                         ; preds = %middle.block476
  br i1 %min.epilog.iters.check483, label %vec.epilog.scalar.ph481.preheader, label %vec.epilog.ph484, !prof !56

vec.epilog.ph484:                                 ; preds = %vector.main.loop.iter.check467, %vec.epilog.iter.check482
  %vec.epilog.resume.val478 = phi i64 [ %n.vec470, %vec.epilog.iter.check482 ], [ 0, %vector.main.loop.iter.check467 ]
  br label %vec.epilog.vector.body486

vec.epilog.vector.body486:                        ; preds = %vec.epilog.vector.body486, %vec.epilog.ph484
  %index487 = phi i64 [ %vec.epilog.resume.val478, %vec.epilog.ph484 ], [ %index.next489, %vec.epilog.vector.body486 ] ; 2 uses
  %i.gp = trunc i64 %index487 to i32
  %i.gq = or disjoint i32 %i.gp, 1
  %i.gr = add nuw i32 %.0168210.us.us, %i.gq
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gs
  %wide.load488 = load <4 x i16>, ptr %i.gt, align 2
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gs
  store <4 x i16> %wide.load488, ptr %i.gu, align 2
  %index.next489 = add nuw i64 %index487, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next489, %n.vec485
  br i1 %i.gv, label %vec.epilog.middle.block490, label %vec.epilog.vector.body486, !llvm.loop !1012

vec.epilog.middle.block490:                       ; preds = %vec.epilog.vector.body486
  br i1 %cmp.n491, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481.preheader

vec.epilog.scalar.ph481.preheader:                ; preds = %iter.check480, %vector.scevcheck463, %vec.epilog.iter.check482, %vec.epilog.middle.block490
  %indvars.iv.ph = phi i64 [ 1, %vector.scevcheck463 ], [ 1, %iter.check480 ], [ %i.fn, %vec.epilog.iter.check482 ], [ %i.fo, %vec.epilog.middle.block490 ] ; 4 uses
  %i.gw = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter564 = and i64 %i.gw, 3                 ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %vec.epilog.scalar.ph481.prol.loopexit, label %vec.epilog.scalar.ph481.prol

vec.epilog.scalar.ph481.prol:                     ; preds = %vec.epilog.scalar.ph481.preheader, %vec.epilog.scalar.ph481.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph481.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph481.preheader ] ; 2 uses
  %prol.iter566 = phi i64 [ %prol.iter566.next, %vec.epilog.scalar.ph481.prol ], [ 0, %vec.epilog.scalar.ph481.preheader ]
  %i.gx = trunc nuw nsw i64 %indvars.iv.prol to i32
  %i.gy = add nuw i32 %.0168210.us.us, %i.gx
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.gz
  store i16 %i.hb, ptr %i.hc, align 2
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter566.next = add i64 %prol.iter566, 1   ; 2 uses
  %prol.iter566.cmp.not = icmp eq i64 %prol.iter566.next, %xtraiter564
  br i1 %prol.iter566.cmp.not, label %vec.epilog.scalar.ph481.prol.loopexit, label %vec.epilog.scalar.ph481.prol, !llvm.loop !1013

vec.epilog.scalar.ph481.prol.loopexit:            ; preds = %vec.epilog.scalar.ph481.prol, %vec.epilog.scalar.ph481.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph481.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph481.prol ]
  %i.hd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481.preheader.new

vec.epilog.scalar.ph481.preheader.new:            ; preds = %vec.epilog.scalar.ph481.prol.loopexit
  %invariant.op579 = add i32 1, %.0168210.us.us
  %invariant.op581 = add i32 2, %.0168210.us.us
  %invariant.op583 = add i32 3, %.0168210.us.us
  br label %vec.epilog.scalar.ph481

vec.epilog.scalar.ph481:                          ; preds = %vec.epilog.scalar.ph481, %vec.epilog.scalar.ph481.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph481.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph481 ] ; 5 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv to i32
  %i.hg = add nuw i32 %.0168210.us.us, %i.hf
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hh
  store i16 %i.hj, ptr %i.hk, align 2
  %i.hl = trunc i64 %indvars.iv to i32
  %.reass580 = add i32 %i.hl, %invariant.op579
  %i.hm = sext i32 %.reass580 to i64              ; 2 uses
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hm
  store i16 %i.ho, ptr %i.hp, align 2
  %i.hq = trunc i64 %indvars.iv to i32
  %.reass582 = add i32 %i.hq, %invariant.op581
  %i.hr = sext i32 %.reass582 to i64              ; 2 uses
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hr
  store i16 %i.ht, ptr %i.hu, align 2
  %i.hv = trunc i64 %indvars.iv to i32
  %.reass584 = add i32 %i.hv, %invariant.op583
  %i.hw = sext i32 %.reass584 to i64              ; 2 uses
  %i.hx = getelementptr inbounds [2 x i8], ptr %i.ft, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.fr, i64 %i.hw
  store i16 %i.hy, ptr %i.hz, align 2
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.us.us, label %vec.epilog.scalar.ph481, !llvm.loop !1014

._crit_edge.us.us:                                ; preds = %vec.epilog.scalar.ph481.prol.loopexit, %vec.epilog.scalar.ph481, %vec.epilog.middle.block490, %middle.block476
  %i.ia = add nuw nsw i32 %.0168210.us.us, %i.ag  ; 4 uses
  %i.ib = icmp slt i32 %i.ia, %i.fx
  br i1 %i.ib, label %iter.check480, label %.preheader206.us, !llvm.loop !1015

.preheader206.us:                                 ; preds = %._crit_edge.us.us
  %i.ic = icmp samesign ult i32 %i.ia, %i.l
  br i1 %i.ic, label %iter.check450, label %._crit_edge.us217

iter.check450:                                    ; preds = %.lr.ph215.split.us, %.preheader206.us
  %.0168.lcssa.us329 = phi i32 [ %i.ia, %.preheader206.us ], [ 0, %.lr.ph215.split.us ]
  %i.id = zext i32 %.0168.lcssa.us329 to i64      ; 6 uses
  %i.ie = sub nsw i64 %wide.trip.count255, %i.id  ; 7 uses
  %min.iters.check436 = icmp ult i64 %i.ie, 4
  %or.cond554 = or i1 %min.iters.check436, %diff.check435
  br i1 %or.cond554, label %.lr.ph.us216.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check450
  %min.iters.check438 = icmp ult i64 %i.ie, 16
  br i1 %min.iters.check438, label %vec.epilog.ph454, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.if = and i64 %i.ie, 12
  %n.vec440 = and i64 %i.ie, -16                  ; 4 uses
  %i.ig = add nsw i64 %n.vec440, %i.id
  br label %vector.body441

vector.body441:                                   ; preds = %vector.ph439, %vector.body441
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next445, %vector.body441 ] ; 2 uses
  %i.ih = add nuw i64 %index442, %i.id            ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load443 = load <8 x i16>, ptr %i.ii, align 2
  %wide.load444 = load <8 x i16>, ptr %i.ij, align 2
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.ih ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <8 x i16> %wide.load443, ptr %i.ik, align 2
  store <8 x i16> %wide.load444, ptr %i.il, align 2
  %index.next445 = add nuw i64 %index442, 16      ; 2 uses
  %i.im = icmp eq i64 %index.next445, %n.vec440
  br i1 %i.im, label %middle.block446, label %vector.body441, !llvm.loop !1016

middle.block446:                                  ; preds = %vector.body441
  %cmp.n447 = icmp eq i64 %i.ie, %n.vec440
  br i1 %cmp.n447, label %._crit_edge.us217, label %vec.epilog.iter.check452

vec.epilog.iter.check452:                         ; preds = %middle.block446
  %min.epilog.iters.check453 = icmp eq i64 %i.if, 0
  br i1 %min.epilog.iters.check453, label %.lr.ph.us216.preheader, label %vec.epilog.ph454, !prof !56

vec.epilog.ph454:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check452
  %vec.epilog.resume.val448 = phi i64 [ %n.vec440, %vec.epilog.iter.check452 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec455 = and i64 %i.ie, -4                   ; 3 uses
  %i.in = add nsw i64 %n.vec455, %i.id
  br label %vec.epilog.vector.body456

vec.epilog.vector.body456:                        ; preds = %vec.epilog.vector.body456, %vec.epilog.ph454
  %index457 = phi i64 [ %vec.epilog.resume.val448, %vec.epilog.ph454 ], [ %index.next459, %vec.epilog.vector.body456 ] ; 2 uses
  %i.io = add nuw i64 %index457, %i.id            ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %i.io
  %wide.load458 = load <4 x i16>, ptr %i.ip, align 2
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.io
  store <4 x i16> %wide.load458, ptr %i.iq, align 2
  %index.next459 = add nuw i64 %index457, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next459, %n.vec455
  br i1 %i.ir, label %vec.epilog.middle.block460, label %vec.epilog.vector.body456, !llvm.loop !1017

vec.epilog.middle.block460:                       ; preds = %vec.epilog.vector.body456
  %cmp.n461 = icmp eq i64 %i.ie, %n.vec455
  br i1 %cmp.n461, label %._crit_edge.us217, label %.lr.ph.us216.preheader

.lr.ph.us216.preheader:                           ; preds = %iter.check450, %vec.epilog.iter.check452, %vec.epilog.middle.block460
  %indvars.iv252.ph = phi i64 [ %i.id, %iter.check450 ], [ %i.ig, %vec.epilog.iter.check452 ], [ %i.in, %vec.epilog.middle.block460 ] ; 4 uses
  %i.is = sub nsw i64 %wide.trip.count255, %indvars.iv252.ph
  %xtraiter567 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod568.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod568.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol

.lr.ph.us216.prol:                                ; preds = %.lr.ph.us216.preheader, %.lr.ph.us216.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ], [ %indvars.iv252.ph, %.lr.ph.us216.preheader ] ; 3 uses
  %prol.iter569 = phi i64 [ %prol.iter569.next, %.lr.ph.us216.prol ], [ 0, %.lr.ph.us216.preheader ]
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv252.prol
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252.prol
  store i16 %i.iu, ptr %i.iv, align 2
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter569.next = add i64 %prol.iter569, 1   ; 2 uses
  %prol.iter569.cmp.not = icmp eq i64 %prol.iter569.next, %xtraiter567
  br i1 %prol.iter569.cmp.not, label %.lr.ph.us216.prol.loopexit, label %.lr.ph.us216.prol, !llvm.loop !1018

.lr.ph.us216.prol.loopexit:                       ; preds = %.lr.ph.us216.prol, %.lr.ph.us216.preheader
  %indvars.iv252.unr = phi i64 [ %indvars.iv252.ph, %.lr.ph.us216.preheader ], [ %indvars.iv.next253.prol, %.lr.ph.us216.prol ]
  %i.iw = sub nsw i64 %indvars.iv252.ph, %wide.trip.count255
  %i.ix = icmp ugt i64 %i.iw, -4
  br i1 %i.ix, label %._crit_edge.us217, label %.lr.ph.us216

.lr.ph.us216:                                     ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph.us216 ], [ %indvars.iv252.unr, %.lr.ph.us216.prol.loopexit ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv252
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv252
  store i16 %i.iz, ptr %i.ja, align 2
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253
  %i.jc = load i16, ptr %i.jb, align 2
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253
  store i16 %i.jc, ptr %i.jd, align 2
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253.1
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.1
  store i16 %i.jf, ptr %i.jg, align 2
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %indvars.iv.next253.2
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %indvars.iv.next253.2
  store i16 %i.ji, ptr %i.jj, align 2
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %exitcond256.not.3 = icmp eq i64 %indvars.iv.next253.3, %wide.trip.count255
  br i1 %exitcond256.not.3, label %._crit_edge.us217, label %.lr.ph.us216, !llvm.loop !1019

._crit_edge.us217:                                ; preds = %.lr.ph.us216.prol.loopexit, %.lr.ph.us216, %middle.block446, %vec.epilog.middle.block460, %.preheader206.us
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit197, label %.lr.ph215.split.us, !llvm.loop !1020

.preheader204:                                    ; preds = %decode_counter.exit
  br i1 %i.ah, label %.lr.ph230.split.us.preheader, label %.loopexit197

.lr.ph230.split.us.preheader:                     ; preds = %.preheader204
  %wide.trip.count274 = zext nneg i32 %i.k to i64
  %wide.trip.count269 = zext nneg i32 %i.ag to i64 ; 5 uses
  %i.jk = add nsw i64 %wide.trip.count269, -2     ; 2 uses
  %i.jl = sub i64 %i.c, %i.a                      ; 2 uses
  %i.jm = add nsw i64 %wide.trip.count269, -1     ; 5 uses
  %i.jn = add i64 %i.jl, -1
  %diff.check407 = icmp ult i64 %i.jn, 31
  %min.iters.check379 = icmp ult i32 %i.ae, 3
  %i.jo = trunc i64 %i.jk to i32
  %i.jp = icmp ugt i64 %i.jk, 4294967295
  %i.jq = add i64 %i.jl, -1
  %diff.check378 = icmp ult i64 %i.jq, 31
  %invariant.op578 = or i1 %i.jp, %diff.check378
  %min.iters.check381 = icmp ult i32 %i.ae, 5
  %i.jr = and i64 %i.jm, 12
  %n.vec383 = and i64 %i.jm, -16                  ; 4 uses
  %i.js = or disjoint i64 %n.vec383, 1
  %cmp.n390 = icmp eq i64 %i.jm, %n.vec383
  %min.epilog.iters.check396 = icmp eq i64 %i.jr, 0
  %n.vec398 = and i64 %i.jm, -4                   ; 3 uses
  %i.jt = or disjoint i64 %n.vec398, 1
  %cmp.n404 = icmp eq i64 %i.jm, %n.vec398
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %._crit_edge228.split.us.us
  %indvars.iv271 = phi i64 [ 0, %.lr.ph230.split.us.preheader ], [ %indvars.iv.next272, %._crit_edge228.split.us.us ] ; 4 uses
  %i.ju = trunc i64 %indvars.iv271 to i32
  %i.jv = mul i32 %i.l, %i.ju
  %i.jw = sub i32 %i.af, %i.jv
  %smin = tail call i32 @llvm.smin.i32(i32 %i.jw, i32 %i.l) ; 3 uses
  %i.jx = tail call i32 @llvm.umax.i32(i32 %smin, i32 1)
  %umax = zext i32 %i.jx to i64                   ; 5 uses
  %i.jy = shl nuw nsw i64 %indvars.iv271, 8       ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 %i.jy ; 11 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 %i.jy ; 10 uses
  %i.kc = trunc i64 %indvars.iv271 to i32
  %i.kd = mul i32 %i.l, %i.kc
  %i.ke = sub i32 %i.af, %i.kd                    ; 2 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %iter.check421, label %.lr.ph224.us.us.preheader

iter.check421:                                    ; preds = %.lr.ph230.split.us
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.l)
  %i.kh = zext nneg i32 %i.kg to i64
  %min.iters.check408 = icmp ult i32 %smin, 4
  %or.cond555 = or i1 %min.iters.check408, %diff.check407
  br i1 %or.cond555, label %.lr.ph220.us.preheader, label %vector.main.loop.iter.check409

vector.main.loop.iter.check409:                   ; preds = %iter.check421
  %min.iters.check410 = icmp ult i32 %smin, 16
  br i1 %min.iters.check410, label %vec.epilog.ph425, label %vector.ph411

vector.ph411:                                     ; preds = %vector.main.loop.iter.check409
  %i.ki = and i64 %umax, 12
  %n.vec412 = and i64 %umax, 4294967280           ; 5 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.ph411, %vector.body413
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next417, %vector.body413 ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %index414 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load415 = load <8 x i16>, ptr %i.kj, align 2
  %wide.load416 = load <8 x i16>, ptr %i.kk, align 2
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %index414 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store <8 x i16> %wide.load415, ptr %i.kl, align 2
  store <8 x i16> %wide.load416, ptr %i.km, align 2
  %index.next417 = add nuw i64 %index414, 16      ; 2 uses
  %i.kn = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.kn, label %middle.block418, label %vector.body413, !llvm.loop !1021

middle.block418:                                  ; preds = %vector.body413
  %cmp.n419 = icmp eq i64 %n.vec412, %umax
  br i1 %cmp.n419, label %.preheader203.us, label %vec.epilog.iter.check423

vec.epilog.iter.check423:                         ; preds = %middle.block418
  %min.epilog.iters.check424 = icmp eq i64 %i.ki, 0
  br i1 %min.epilog.iters.check424, label %.lr.ph220.us.preheader, label %vec.epilog.ph425, !prof !56

vec.epilog.ph425:                                 ; preds = %vector.main.loop.iter.check409, %vec.epilog.iter.check423
  %vec.epilog.resume.val420 = phi i64 [ %n.vec412, %vec.epilog.iter.check423 ], [ 0, %vector.main.loop.iter.check409 ]
  %n.vec426 = and i64 %umax, 4294967292           ; 4 uses
  br label %vec.epilog.vector.body427

vec.epilog.vector.body427:                        ; preds = %vec.epilog.vector.body427, %vec.epilog.ph425
  %index428 = phi i64 [ %vec.epilog.resume.val420, %vec.epilog.ph425 ], [ %index.next430, %vec.epilog.vector.body427 ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %index428
  %wide.load429 = load <4 x i16>, ptr %i.ko, align 2
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %index428
  store <4 x i16> %wide.load429, ptr %i.kp, align 2
  %index.next430 = add nuw i64 %index428, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.kq, label %vec.epilog.middle.block431, label %vec.epilog.vector.body427, !llvm.loop !1022

vec.epilog.middle.block431:                       ; preds = %vec.epilog.vector.body427
  %cmp.n432 = icmp eq i64 %n.vec426, %umax
  br i1 %cmp.n432, label %.preheader203.us, label %.lr.ph220.us.preheader

.lr.ph220.us.preheader:                           ; preds = %iter.check421, %vec.epilog.iter.check423, %vec.epilog.middle.block431
  %indvars.iv262.ph = phi i64 [ 0, %iter.check421 ], [ %n.vec412, %vec.epilog.iter.check423 ], [ %n.vec426, %vec.epilog.middle.block431 ]
  br label %.lr.ph220.us

.lr.ph220.us:                                     ; preds = %.lr.ph220.us.preheader, %.lr.ph220.us
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.lr.ph220.us ], [ %indvars.iv262.ph, %.lr.ph220.us.preheader ] ; 3 uses
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %indvars.iv262
  %i.ks = load i16, ptr %i.kr, align 2
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %indvars.iv262
  store i16 %i.ks, ptr %i.kt, align 2
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 3 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next263, %i.kh
  br i1 %i.ku, label %.lr.ph220.us, label %.preheader203.us, !llvm.loop !1023

.preheader203.us:                                 ; preds = %.lr.ph220.us, %vec.epilog.middle.block431, %middle.block418
  %indvars.iv.next263.lcssa = phi i64 [ %n.vec426, %vec.epilog.middle.block431 ], [ %n.vec412, %middle.block418 ], [ %indvars.iv.next263, %.lr.ph220.us ]
  %i.kv = trunc nuw nsw i64 %indvars.iv.next263.lcssa to i32 ; 2 uses
  %5 = icmp samesign ugt i32 %i.l, %i.kv
  br i1 %5, label %.lr.ph224.us.us.preheader, label %._crit_edge228.split.us.us

.lr.ph224.us.us.preheader:                        ; preds = %.lr.ph230.split.us, %.preheader203.us
  %.0171.lcssa.us331 = phi i32 [ %i.kv, %.preheader203.us ], [ 0, %.lr.ph230.split.us ] ; 2 uses
  %i.kw = add i32 %.0171.lcssa.us331, 1
  br label %iter.check393

iter.check393:                                    ; preds = %.lr.ph224.us.us.preheader, %._crit_edge225.us.us
  %indvar = phi i32 [ 0, %.lr.ph224.us.us.preheader ], [ %indvar.next, %._crit_edge225.us.us ] ; 2 uses
  %.1172226.us.us = phi i32 [ %.0171.lcssa.us331, %.lr.ph224.us.us.preheader ], [ %i.mz, %._crit_edge225.us.us ] ; 9 uses
  %i.kx = sext i32 %.1172226.us.us to i64         ; 2 uses
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2
  %i.la = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.kx
  store i16 %i.kz, ptr %i.la, align 2
  br i1 %min.iters.check379, label %vec.epilog.scalar.ph394.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check393
  %i.lb = shl i32 %indvar, %i.ae
  %i.lc = add i32 %i.kw, %i.lb                    ; 2 uses
  %i.ld = add i32 %i.lc, %i.jo
  %i.le = icmp slt i32 %i.ld, %i.lc
  %or.cond556.reass = or i1 %i.le, %invariant.op578
  br i1 %or.cond556.reass, label %vec.epilog.scalar.ph394.preheader, label %vector.main.loop.iter.check380

vector.main.loop.iter.check380:                   ; preds = %vector.scevcheck
  br i1 %min.iters.check381, label %vec.epilog.ph397, label %vector.body384

vector.body384:                                   ; preds = %vector.main.loop.iter.check380, %vector.body384
  %index385 = phi i64 [ %index.next388, %vector.body384 ], [ 0, %vector.main.loop.iter.check380 ] ; 2 uses
  %i.lf = trunc i64 %index385 to i32
  %i.lg = or disjoint i32 %i.lf, 1
  %i.lh = add i32 %.1172226.us.us, %i.lg
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load386 = load <8 x i16>, ptr %i.lj, align 2
  %wide.load387 = load <8 x i16>, ptr %i.lk, align 2
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.li ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <8 x i16> %wide.load386, ptr %i.ll, align 2
  store <8 x i16> %wide.load387, ptr %i.lm, align 2
  %index.next388 = add nuw i64 %index385, 16      ; 2 uses
  %i.ln = icmp eq i64 %index.next388, %n.vec383
  br i1 %i.ln, label %middle.block389, label %vector.body384, !llvm.loop !1024

middle.block389:                                  ; preds = %vector.body384
  br i1 %cmp.n390, label %._crit_edge225.us.us, label %vec.epilog.iter.check395

vec.epilog.iter.check395:                         ; preds = %middle.block389
  br i1 %min.epilog.iters.check396, label %vec.epilog.scalar.ph394.preheader, label %vec.epilog.ph397, !prof !56

vec.epilog.ph397:                                 ; preds = %vector.main.loop.iter.check380, %vec.epilog.iter.check395
  %vec.epilog.resume.val391 = phi i64 [ %n.vec383, %vec.epilog.iter.check395 ], [ 0, %vector.main.loop.iter.check380 ]
  br label %vec.epilog.vector.body399

vec.epilog.vector.body399:                        ; preds = %vec.epilog.vector.body399, %vec.epilog.ph397
  %index400 = phi i64 [ %vec.epilog.resume.val391, %vec.epilog.ph397 ], [ %index.next402, %vec.epilog.vector.body399 ] ; 2 uses
  %i.lo = trunc i64 %index400 to i32
  %i.lp = or disjoint i32 %i.lo, 1
  %i.lq = add i32 %.1172226.us.us, %i.lp
  %i.lr = sext i32 %i.lq to i64                   ; 2 uses
  %i.ls = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.lr
  %wide.load401 = load <4 x i16>, ptr %i.ls, align 2
  %i.lt = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.lr
  store <4 x i16> %wide.load401, ptr %i.lt, align 2
  %index.next402 = add nuw i64 %index400, 4       ; 2 uses
  %i.lu = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.lu, label %vec.epilog.middle.block403, label %vec.epilog.vector.body399, !llvm.loop !1025

vec.epilog.middle.block403:                       ; preds = %vec.epilog.vector.body399
  br i1 %cmp.n404, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader

vec.epilog.scalar.ph394.preheader:                ; preds = %iter.check393, %vector.scevcheck, %vec.epilog.iter.check395, %vec.epilog.middle.block403
  %indvars.iv265.ph = phi i64 [ 1, %vector.scevcheck ], [ 1, %iter.check393 ], [ %i.js, %vec.epilog.iter.check395 ], [ %i.jt, %vec.epilog.middle.block403 ] ; 4 uses
  %i.lv = sub nsw i64 %wide.trip.count269, %indvars.iv265.ph
  %xtraiter561 = and i64 %i.lv, 3                 ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol

vec.epilog.scalar.ph394.prol:                     ; preds = %vec.epilog.scalar.ph394.preheader, %vec.epilog.scalar.ph394.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ], [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ] ; 2 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %vec.epilog.scalar.ph394.prol ], [ 0, %vec.epilog.scalar.ph394.preheader ]
  %i.lw = trunc nuw nsw i64 %indvars.iv265.prol to i32
  %i.lx = add i32 %.1172226.us.us, %i.lw
  %i.ly = sext i32 %i.lx to i64                   ; 2 uses
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2
  %i.mb = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.ly
  store i16 %i.ma, ptr %i.mb, align 2
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %vec.epilog.scalar.ph394.prol.loopexit, label %vec.epilog.scalar.ph394.prol, !llvm.loop !1026

vec.epilog.scalar.ph394.prol.loopexit:            ; preds = %vec.epilog.scalar.ph394.prol, %vec.epilog.scalar.ph394.preheader
  %indvars.iv265.unr = phi i64 [ %indvars.iv265.ph, %vec.epilog.scalar.ph394.preheader ], [ %indvars.iv.next266.prol, %vec.epilog.scalar.ph394.prol ]
  %i.mc = sub nsw i64 %indvars.iv265.ph, %wide.trip.count269
  %i.md = icmp ugt i64 %i.mc, -4
  br i1 %i.md, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394.preheader.new

vec.epilog.scalar.ph394.preheader.new:            ; preds = %vec.epilog.scalar.ph394.prol.loopexit
  %invariant.op = add i32 1, %.1172226.us.us
  %invariant.op574 = add i32 2, %.1172226.us.us
  %invariant.op576 = add i32 3, %.1172226.us.us
  br label %vec.epilog.scalar.ph394

vec.epilog.scalar.ph394:                          ; preds = %vec.epilog.scalar.ph394, %vec.epilog.scalar.ph394.preheader.new
  %indvars.iv265 = phi i64 [ %indvars.iv265.unr, %vec.epilog.scalar.ph394.preheader.new ], [ %indvars.iv.next266.3, %vec.epilog.scalar.ph394 ] ; 5 uses
  %i.me = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.mf = add i32 %.1172226.us.us, %i.me
  %i.mg = sext i32 %i.mf to i64                   ; 2 uses
  %i.mh = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2
  %i.mj = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mg
  store i16 %i.mi, ptr %i.mj, align 2
  %i.mk = trunc i64 %indvars.iv265 to i32
  %.reass = add i32 %i.mk, %invariant.op
  %i.ml = sext i32 %.reass to i64                 ; 2 uses
  %i.mm = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.ml
  %i.mn = load i16, ptr %i.mm, align 2
  %i.mo = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.ml
  store i16 %i.mn, ptr %i.mo, align 2
  %i.mp = trunc i64 %indvars.iv265 to i32
  %.reass575 = add i32 %i.mp, %invariant.op574
  %i.mq = sext i32 %.reass575 to i64              ; 2 uses
  %i.mr = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mq
  %i.ms = load i16, ptr %i.mr, align 2
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mq
  store i16 %i.ms, ptr %i.mt, align 2
  %i.mu = trunc i64 %indvars.iv265 to i32
  %.reass577 = add i32 %i.mu, %invariant.op576
  %i.mv = sext i32 %.reass577 to i64              ; 2 uses
  %i.mw = getelementptr inbounds [2 x i8], ptr %i.kb, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2
  %i.my = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.mv
  store i16 %i.mx, ptr %i.my, align 2
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 2 uses
  %exitcond270.not.3 = icmp eq i64 %indvars.iv.next266.3, %wide.trip.count269
  br i1 %exitcond270.not.3, label %._crit_edge225.us.us, label %vec.epilog.scalar.ph394, !llvm.loop !1027

._crit_edge225.us.us:                             ; preds = %vec.epilog.scalar.ph394.prol.loopexit, %vec.epilog.scalar.ph394, %vec.epilog.middle.block403, %middle.block389
  %i.mz = add nsw i32 %.1172226.us.us, %i.ag      ; 2 uses
  %i.na = icmp slt i32 %i.mz, %i.l
  %indvar.next = add i32 %indvar, 1
  br i1 %i.na, label %iter.check393, label %._crit_edge228.split.us.us, !llvm.loop !1028

._crit_edge228.split.us.us:                       ; preds = %._crit_edge225.us.us, %.preheader203.us
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %.loopexit197, label %.lr.ph230.split.us, !llvm.loop !1029

.loopexit197:                                     ; preds = %.loopexit, %._crit_edge228.split.us.us, %._crit_edge.us217, %.loopexit199, %.preheader207, %.preheader204, %.preheader201, %.preheader196
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sel_s(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 4 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.d = lshr i32 %4, 8
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = shl i32 %4, 3
  %i.h = and i32 %i.g, 2040
  %i.i = icmp eq i32 %i.e, 2
  %.v.v.i = select i1 %i.i, i32 %i.h, i32 %i.f
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.j = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.k = ashr i32 %4, 10                          ; 7 uses
  %i.l = lshr exact i32 %.v.i, 2                  ; 20 uses
  %i.m = and i32 %3, 15
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %.preheader181, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.o = add nsw i64 %i.j, -1
  %i.p = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.o, i1 true)
  %i.q = add nsw i64 %i.p, -1
  %i.r = lshr exact i64 -9223372036854775808, %i.q
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = add nsw i32 %i.t, -1
  %i.v = and i32 %i.u, %3                         ; 2 uses
  %i.w = add nuw nsw i32 %i.n, 1
  %i.x = lshr i32 %i.v, %i.w                      ; 3 uses
  %i.y = and i32 %3, 32768
  %.not298 = icmp eq i32 %i.y, 0                  ; 3 uses
  %.not29.i = icmp eq i32 %i.n, 2
  br i1 %.not29.i, label %decode_counter.exit.thread281, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.z = icmp samesign ult i32 %i.n, 2
  br i1 %i.z, label %bb.d, label %decode_counter.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nuw nsw i32 2, %i.n
end_hunk_1
begin_hunk_2_@helper_sme2_sel_s:bb.a
  %i.fj = icmp eq i64 %index.next324, %n.vec320
  br i1 %i.fj, label %middle.block325, label %vector.body321, !llvm.loop !1043

middle.block325:                                  ; preds = %vector.body321
  %cmp.n = icmp eq i64 %n.vec320, %i.fe
  br i1 %cmp.n, label %.preheader183, label %.lr.ph196.preheader447

.lr.ph196.preheader447:                           ; preds = %.lr.ph196.preheader, %middle.block325
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph196.preheader ], [ %n.vec320, %middle.block325 ]
  br label %.lr.ph196

.preheader183:                                    ; preds = %.lr.ph196, %middle.block325
  %indvars.iv.next230.lcssa = phi i64 [ %n.vec320, %middle.block325 ], [ %indvars.iv.next230, %.lr.ph196 ] ; 2 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv.next230.lcssa to i32
  %i.fl = icmp samesign ugt i32 %i.l, %i.fk
  br i1 %i.fl, label %.lr.ph199.preheader, label %._crit_edge200

.lr.ph199.preheader:                              ; preds = %.lr.ph202, %.preheader183
  %.0154.lcssa289 = phi i64 [ %indvars.iv.next230.lcssa, %.preheader183 ], [ 0, %.lr.ph202 ] ; 9 uses
  %i.fm = add nuw nsw i64 %.0154.lcssa289, 2
  %i.fn = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.fm)
  %i.fo = xor i64 %.0154.lcssa289, -1
  %i.fp = add i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = add nuw i64 %i.fq, 1
  %min.iters.check = icmp ult i64 %i.fp, 20
  br i1 %min.iters.check, label %.lr.ph199.preheader446, label %vector.memcheck

.lr.ph199.preheader446:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph199.preheader
  %indvars.iv232.ph = phi i64 [ %.0154.lcssa289, %vector.memcheck ], [ %.0154.lcssa289, %.lr.ph199.preheader ], [ %i.gb, %vector.body ]
  br label %.lr.ph199

vector.memcheck:                                  ; preds = %.lr.ph199.preheader
  %i.fs = shl nuw nsw i64 %.0154.lcssa289, 2      ; 4 uses
  %scevgep = getelementptr nuw i8, ptr %i.ew, i64 %i.fs ; 2 uses
  %i.ft = add nuw nsw i64 %.0154.lcssa289, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.ft)
  %i.fu = xor i64 %.0154.lcssa289, -1
  %i.fv = add i64 %umax, %i.fu
  %i.fw = shl i64 %i.fv, 2
  %i.fx = and i64 %i.fw, -8
  %i.fy = add i64 %i.fx, %i.fs                    ; 3 uses
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.fy ; 2 uses
  %scevgep304 = getelementptr nuw i8, ptr %i.ex, i64 %i.fs
  %scevgep306 = getelementptr i8, ptr %scevgep305, i64 %i.fy
  %scevgep308 = getelementptr i8, ptr %scevgep307, i64 %i.fs
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.fy
  %bound0 = icmp ult ptr %scevgep, %scevgep306
  %bound1 = icmp ult ptr %scevgep304, %scevgep303
  %found.conflict = and i1 %bound0, %bound1
  %bound0311 = icmp ult ptr %scevgep, %scevgep310
  %bound1312 = icmp ult ptr %scevgep308, %scevgep303
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx = or i1 %found.conflict, %found.conflict313
  br i1 %conflict.rdx, label %.lr.ph199.preheader446, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fz = and i64 %i.fp, 2
  %.not432 = icmp eq i64 %i.fz, 0
  %.neg = select i1 %.not432, i64 -1, i64 -2
  %n.vec = add i64 %.neg, %i.fr                   ; 2 uses
  %i.ga = shl i64 %n.vec, 1
  %i.gb = add i64 %.0154.lcssa289, %i.ga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gc = shl nuw i64 %index, 1
  %i.gd = add nuw i64 %.0154.lcssa289, %i.gc      ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gd
  %wide.vec = load <4 x i32>, ptr %i.ge, align 4, !alias.scope !1062
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gd
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %wide.vec314 = load <4 x i32>, ptr %i.gh, align 4, !alias.scope !1063
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> %wide.vec314, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec, ptr %i.gf, align 4, !alias.scope !1064, !noalias !1065
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %.lr.ph199.preheader446, label %vector.body, !llvm.loop !1048

.lr.ph196:                                        ; preds = %.lr.ph196.preheader447, %.lr.ph196
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %.lr.ph196 ], [ %indvars.iv229.ph, %.lr.ph196.preheader447 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv229
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv229
  store i32 %i.gk, ptr %i.gl, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 3 uses
  %i.gm = icmp samesign ult i64 %indvars.iv.next230, %i.fe
  br i1 %i.gm, label %.lr.ph196, label %.preheader183, !llvm.loop !1049

.lr.ph199:                                        ; preds = %.lr.ph199.preheader446, %.lr.ph199
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %.lr.ph199 ], [ %indvars.iv232.ph, %.lr.ph199.preheader446 ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv232
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv232
  store i32 %i.go, ptr %i.gp, align 4
  %i.gq = add nuw nsw i64 %indvars.iv232, 1       ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.gq
  store i32 %i.gs, ptr %i.gt, align 4
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %i.gu = icmp samesign ult i64 %indvars.iv.next233, %i.eq
  br i1 %i.gu, label %.lr.ph199, label %._crit_edge200, !llvm.loop !1050

._crit_edge200:                                   ; preds = %.lr.ph199, %.preheader183
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %.loopexit177, label %.lr.ph202, !llvm.loop !1051

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %indvars.iv224 = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next225, %._crit_edge ] ; 5 uses
  %i.gv = shl nuw nsw i64 %indvars.iv224, 8       ; 2 uses
  %i.gw = or disjoint i64 %i.gv, 8                ; 2 uses
  %scevgep342 = getelementptr i8, ptr %0, i64 %i.gw
  %i.gx = trunc i64 %indvars.iv224 to i32
  %i.gy = mul i32 %i.l, %i.gx
  %i.gz = sub i32 %i.ah, %i.gy
  %smin = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.l)
  %i.ha = tail call i32 @llvm.umax.i32(i32 %smin, i32 2)
  %umax343 = zext i32 %i.ha to i64
  %i.hb = shl nuw nsw i64 %umax343, 2
  %i.hc = add nsw i64 %i.hb, -4
  %i.hd = and i64 %i.hc, -8                       ; 3 uses
  %scevgep344 = getelementptr i8, ptr %scevgep342, i64 %i.hd ; 2 uses
  %i.he = or disjoint i64 %i.gv, 4                ; 2 uses
  %scevgep345 = getelementptr i8, ptr %1, i64 %i.he
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.hd
  %scevgep347 = getelementptr i8, ptr %2, i64 %i.he
  %scevgep348 = getelementptr i8, ptr %2, i64 %i.gw
  %scevgep349 = getelementptr i8, ptr %scevgep348, i64 %i.hd
  %i.hf = shl nuw nsw i64 %indvars.iv224, 8       ; 3 uses
  %i.hg = getelementptr i8, ptr %0, i64 %i.hf     ; 12 uses
  %i.hh = getelementptr i8, ptr %1, i64 %i.hf     ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %i.hf ; 9 uses
  %i.hj = trunc i64 %indvars.iv224 to i32
  %i.hk = mul i32 %i.l, %i.hj
  %i.hl = sub i32 %i.ah, %i.hk                    ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph.preheader, label %.lr.ph191.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph193
  %i.hn = tail call i32 @llvm.smin.i32(i32 %i.hl, i32 %i.l) ; 2 uses
  %i.ho = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.hp = tail call i64 @llvm.umax.i64(i64 %i.ho, i64 2)
  %i.hq = add nsw i64 %i.hp, -1
  %i.hr = lshr i64 %i.hq, 1
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check358 = icmp ult i32 %i.hn, 13
  br i1 %min.iters.check358, label %.lr.ph.preheader444, label %vector.memcheck341

.lr.ph.preheader444:                              ; preds = %vector.body361, %vector.memcheck341, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck341 ], [ 0, %.lr.ph.preheader ], [ %i.hw, %vector.body361 ]
  br label %.lr.ph

vector.memcheck341:                               ; preds = %.lr.ph.preheader
  %bound0350 = icmp ult ptr %i.hg, %scevgep346
  %bound1351 = icmp ult ptr %i.hh, %scevgep344
  %found.conflict352 = and i1 %bound0350, %bound1351
  %bound0353 = icmp ult ptr %i.hg, %scevgep349
  %bound1354 = icmp ult ptr %scevgep347, %scevgep344
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %found.conflict352, %found.conflict355
  br i1 %conflict.rdx356, label %.lr.ph.preheader444, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck341
  %i.ht = and i64 %i.hs, 3                        ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = select i1 %i.hu, i64 4, i64 %i.ht
  %n.vec360 = sub nsw i64 %i.hs, %i.hv            ; 2 uses
  %i.hw = shl i64 %n.vec360, 1
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next373, %vector.body361 ] ; 2 uses
  %i.hx = shl nuw i64 %index362, 1                ; 5 uses
  %i.hy = or disjoint i64 %i.hx, 4                ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hx
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hy
  %wide.vec363 = load <4 x i32>, ptr %i.hz, align 4, !alias.scope !1066
  %wide.vec365 = load <4 x i32>, ptr %i.ia, align 4, !alias.scope !1066
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hx
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hy
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hx
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hx
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %wide.vec367 = load <4 x i32>, ptr %i.ie, align 4, !alias.scope !1067
  %wide.vec369 = load <4 x i32>, ptr %i.ig, align 4, !alias.scope !1067
  %interleaved.vec371 = shufflevector <4 x i32> %wide.vec363, <4 x i32> %wide.vec367, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec371, ptr %i.ib, align 4, !alias.scope !1068, !noalias !1069
  %interleaved.vec372 = shufflevector <4 x i32> %wide.vec365, <4 x i32> %wide.vec369, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  store <4 x i32> %interleaved.vec372, ptr %i.ic, align 4, !alias.scope !1068, !noalias !1069
  %index.next373 = add nuw i64 %index362, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next373, %n.vec360
  br i1 %i.ih, label %.lr.ph.preheader444, label %vector.body361, !llvm.loop !1056

.preheader186:                                    ; preds = %.lr.ph
  %i.ii = trunc nuw nsw i64 %indvars.iv.next to i32
  %5 = icmp samesign ugt i32 %i.l, %i.ii
  br i1 %5, label %.lr.ph191.preheader, label %._crit_edge

.lr.ph191.preheader:                              ; preds = %.lr.ph193, %.preheader186
  %.0.lcssa291 = phi i64 [ %indvars.iv.next, %.preheader186 ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.ij = sub i64 %i.eo, %.0.lcssa291             ; 3 uses
  %min.iters.check330 = icmp ult i64 %i.ij, 8
  %or.cond437 = or i1 %min.iters.check330, %diff.check328
  br i1 %or.cond437, label %.lr.ph191.preheader443, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph191.preheader
  %n.vec332 = and i64 %i.ij, -8                   ; 3 uses
  %i.ik = add i64 %.0.lcssa291, %n.vec332
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 2 uses
  %i.il = add nuw i64 %.0.lcssa291, %index334     ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load335 = load <4 x i32>, ptr %i.im, align 4
  %wide.load336 = load <4 x i32>, ptr %i.in, align 4
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.il ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <4 x i32> %wide.load335, ptr %i.io, align 4
  store <4 x i32> %wide.load336, ptr %i.ip, align 4
  %index.next337 = add nuw i64 %index334, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.iq, label %middle.block338, label %vector.body333, !llvm.loop !1057

middle.block338:                                  ; preds = %vector.body333
  %cmp.n339 = icmp eq i64 %i.ij, %n.vec332
  br i1 %cmp.n339, label %._crit_edge, label %.lr.ph191.preheader443

.lr.ph191.preheader443:                           ; preds = %.lr.ph191.preheader, %middle.block338
  %indvars.iv221.ph = phi i64 [ %.0.lcssa291, %.lr.ph191.preheader ], [ %i.ik, %middle.block338 ] ; 4 uses
  %i.ir = sub i64 %i.eo, %indvars.iv221.ph
  %xtraiter = and i64 %i.ir, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol

.lr.ph191.prol:                                   ; preds = %.lr.ph191.preheader443, %.lr.ph191.prol
  %indvars.iv221.prol = phi i64 [ %indvars.iv.next222.prol, %.lr.ph191.prol ], [ %indvars.iv221.ph, %.lr.ph191.preheader443 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph191.prol ], [ 0, %.lr.ph191.preheader443 ]
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv221.prol
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv221.prol
  store i32 %i.it, ptr %i.iu, align 4
  %indvars.iv.next222.prol = add nuw nsw i64 %indvars.iv221.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph191.prol.loopexit, label %.lr.ph191.prol, !llvm.loop !1058

.lr.ph191.prol.loopexit:                          ; preds = %.lr.ph191.prol, %.lr.ph191.preheader443
  %indvars.iv221.unr = phi i64 [ %indvars.iv221.ph, %.lr.ph191.preheader443 ], [ %indvars.iv.next222.prol, %.lr.ph191.prol ]
  %i.iv = sub i64 %indvars.iv221.ph, %i.eo
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %._crit_edge, label %.lr.ph191

.lr.ph:                                           ; preds = %.lr.ph.preheader444, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader444 ] ; 4 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv
  store i32 %i.iy, ptr %i.iz, align 4
  %i.ja = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ja
  store i32 %i.jc, ptr %i.jd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %i.je = icmp samesign ult i64 %indvars.iv.next, %i.ho
  br i1 %i.je, label %.lr.ph, label %.preheader186, !llvm.loop !1059

.lr.ph191:                                        ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.3, %.lr.ph191 ], [ %indvars.iv221.unr, %.lr.ph191.prol.loopexit ] ; 6 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv221
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv221
  store i32 %i.jg, ptr %i.jh, align 4
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next222
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next222
  store i32 %i.jj, ptr %i.jk, align 4
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next222.1
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next222.1
  store i32 %i.jm, ptr %i.jn, align 4
  %indvars.iv.next222.2 = add nuw nsw i64 %indvars.iv221, 3 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.next222.2
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next222.2
  store i32 %i.jp, ptr %i.jq, align 4
  %indvars.iv.next222.3 = add nuw nsw i64 %indvars.iv221, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next222.3, %i.eo
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph191, !llvm.loop !1060

._crit_edge:                                      ; preds = %.lr.ph191.prol.loopexit, %.lr.ph191, %middle.block338, %.preheader186
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %.loopexit177, label %.lr.ph193, !llvm.loop !1061

.loopexit177:                                     ; preds = %._crit_edge200, %._crit_edge, %.loopexit, %.loopexit179, %.preheader187, %.preheader184, %.preheader181, %.preheader176
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sel_d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = ashr i32 %4, 10                          ; 4 uses
  %i.i = lshr exact i32 %.v.i, 3                  ; 6 uses
  %i.j = and i32 %3, 15
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %.preheader70, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 false) ; 5 uses
  %i.l = add nsw i64 %i.g, -1
  %i.m = tail call range(i64 53, 65) i64 @llvm.ctlz.i64(i64 range(i64 7, 2048) %i.l, i1 true)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr exact i64 -9223372036854775808, %i.n
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 3
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %3                         ; 2 uses
  %i.t = add nuw nsw i32 %i.k, 1
  %i.u = lshr i32 %i.s, %i.t                      ; 4 uses
  %i.v = and i32 %3, 32768
  %.not93 = icmp eq i32 %i.v, 0                   ; 3 uses
  %.not29.i = icmp eq i32 %i.k, 3
  br i1 %.not29.i, label %decode_counter.exit, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %i.k, 3
  br i1 %i.w, label %.split91, label %.split

.split91:                                         ; preds = %bb.c
  %i.x = sub nuw nsw i32 3, %i.k
  %i.y = lshr i32 %i.s, 4                         ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, %i.x
  %i.aa = icmp ne i32 %i.u, %i.z
  %i.ab = zext i1 %i.aa to i32
  %i.ac = add nuw nsw i32 %i.y, %i.ab             ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

.split:                                           ; preds = %bb.c
  %i.ad = add nsw i32 %i.k, -3
  %i.ae = shl i32 %i.u, %i.ad                     ; 2 uses
  br i1 %.not93, label %.preheader70, label %.preheader

decode_counter.exit:                              ; preds = %bb.b
  br i1 %.not93, label %.preheader70, label %.preheader

.preheader70:                                     ; preds = %bb.a, %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i89 = phi i32 [ %i.ac, %.split91 ], [ %i.u, %decode_counter.exit ], [ %i.ae, %.split ], [ 0, %bb.a ]
  %i.af = icmp sgt i32 %i.h, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader70
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.split91, %.split, %decode_counter.exit
  %.sroa.020.sroa.0.0.insert.insert.i90 = phi i32 [ %i.ae, %.split ], [ %i.u, %decode_counter.exit ], [ %i.ac, %.split91 ]
  %i.ag = icmp sgt i32 %i.h, 0
  br i1 %i.ag, label %.lr.ph74.preheader, label %.loopexit

.lr.ph74.preheader:                               ; preds = %.preheader
  %wide.trip.count80 = zext nneg i32 %i.h to i64
  br label %.lr.ph74

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph74.preheader ], [ %indvars.iv.next78, %bb.h ] ; 3 uses
  %i.ah = shl nuw nsw i64 %indvars.iv77, 8        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.ah ; 2 uses
  %i.al = trunc i64 %indvars.iv77 to i32
  %i.am = mul i32 %i.i, %i.al
  %i.an = sub i32 %.sroa.020.sroa.0.0.insert.insert.i90, %i.am ; 4 uses
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %i.aj, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph74
  %.not69 = icmp slt i32 %i.an, %i.i
  br i1 %.not69, label %bb.g, label %bb.f
end_hunk_2
