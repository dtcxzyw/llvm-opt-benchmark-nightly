inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@process:bb.a
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec473 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec474 = load <16 x float>, ptr %i.fe, align 4, !tbaa !44, !alias.scope !51 ; 2 uses
  %strided.vec475 = shufflevector <16 x float> %wide.vec474, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec476 = shufflevector <16 x float> %wide.vec474, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec477 = load <16 x float>, ptr %i.ff, align 4, !tbaa !44, !alias.scope !51 ; 2 uses
  %strided.vec478 = shufflevector <16 x float> %wide.vec477, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec479 = shufflevector <16 x float> %wide.vec477, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec480 = load <16 x float>, ptr %i.fg, align 4, !tbaa !44, !alias.scope !51 ; 2 uses
  %strided.vec481 = shufflevector <16 x float> %wide.vec480, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec482 = shufflevector <16 x float> %wide.vec480, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ez
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fa
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fb
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc
  %wide.vec483 = load <16 x float>, ptr %i.fh, align 4, !tbaa !44, !alias.scope !54, !noalias !51 ; 2 uses
  %strided.vec484 = shufflevector <16 x float> %wide.vec483, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec485 = shufflevector <16 x float> %wide.vec483, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec486 = load <16 x float>, ptr %i.fi, align 4, !tbaa !44, !alias.scope !54, !noalias !51 ; 2 uses
  %strided.vec487 = shufflevector <16 x float> %wide.vec486, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec488 = shufflevector <16 x float> %wide.vec486, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec489 = load <16 x float>, ptr %i.fj, align 4, !tbaa !44, !alias.scope !54, !noalias !51 ; 2 uses
  %strided.vec490 = shufflevector <16 x float> %wide.vec489, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec491 = shufflevector <16 x float> %wide.vec489, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %wide.vec492 = load <16 x float>, ptr %i.fk, align 4, !tbaa !44, !alias.scope !54, !noalias !51 ; 2 uses
  %strided.vec493 = shufflevector <16 x float> %wide.vec492, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec494 = shufflevector <16 x float> %wide.vec492, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.fl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec, %strided.vec484 ; 2 uses
  %i.fm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec475, %strided.vec487 ; 2 uses
  %i.fn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec478, %strided.vec490 ; 2 uses
  %i.fo = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec481, %strided.vec493 ; 2 uses
  %i.fp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec473, %strided.vec485 ; 2 uses
  %i.fq = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec476, %strided.vec488 ; 2 uses
  %i.fr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec479, %strided.vec491 ; 2 uses
  %i.fs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec482, %strided.vec494 ; 2 uses
  %i.ft = fmul reassoc nsz arcp contract afn <4 x float> %i.fl, %i.fl
  %i.fu = fmul reassoc nsz arcp contract afn <4 x float> %i.fm, %i.fm
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fn, %i.fn
  %i.fw = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fo
  %i.fx = fmul reassoc nsz arcp contract afn <4 x float> %i.fp, %i.fp
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %i.fq, %i.fq
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fr, %i.fr
  %i.ga = fmul reassoc nsz arcp contract afn <4 x float> %i.fs, %i.fs
  %i.gb = fadd reassoc nsz arcp contract afn <4 x float> %i.fx, %i.ft ; 2 uses
  %i.gc = fadd reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fu ; 2 uses
  %i.gd = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, %i.fv ; 2 uses
  %i.ge = fadd reassoc nsz arcp contract afn <4 x float> %i.ga, %i.fw ; 2 uses
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %vec.ind472
  %wide.gep495 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %step.add
  %wide.gep496 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %step.add.2
  %wide.gep497 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %step.add.3
  %wide.gep498 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 12
  %wide.gep499 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep495, i64 12
  %wide.gep500 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep496, i64 12
  %wide.gep501 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep497, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.gb, <4 x ptr> align 4 %wide.gep498, <4 x i1> splat (i1 true)), !tbaa !44, !alias.scope !54, !noalias !51
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.gc, <4 x ptr> align 4 %wide.gep499, <4 x i1> splat (i1 true)), !tbaa !44, !alias.scope !54, !noalias !51
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.gd, <4 x ptr> align 4 %wide.gep500, <4 x i1> splat (i1 true)), !tbaa !44, !alias.scope !54, !noalias !51
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ge, <4 x ptr> align 4 %wide.gep501, <4 x i1> splat (i1 true)), !tbaa !44, !alias.scope !54, !noalias !51
  %i.gf = fmul reassoc nsz arcp contract afn <4 x float> %i.gb, %broadcast.splat466
  %i.gg = fmul reassoc nsz arcp contract afn <4 x float> %i.gc, %broadcast.splat466
  %i.gh = fmul reassoc nsz arcp contract afn <4 x float> %i.gd, %broadcast.splat466
  %i.gi = fmul reassoc nsz arcp contract afn <4 x float> %i.ge, %broadcast.splat466
  %i.gj = fadd reassoc nsz arcp contract afn <4 x float> %i.gf, %vec.phi ; 2 uses
  %i.gk = fadd reassoc nsz arcp contract afn <4 x float> %i.gg, %vec.phi469 ; 2 uses
  %i.gl = fadd reassoc nsz arcp contract afn <4 x float> %i.gh, %vec.phi470 ; 2 uses
  %i.gm = fadd reassoc nsz arcp contract afn <4 x float> %i.gi, %vec.phi471 ; 2 uses
  %index.next502 = add nuw i64 %index468, 16      ; 2 uses
  %vec.ind.next503 = add nuw <4 x i64> %vec.ind472, splat (i64 64)
  %i.gn = icmp eq i64 %index.next502, %n.vec464
  br i1 %i.gn, label %vec.epilog.iter.check, label %vector.body467, !llvm.loop !56

vec.epilog.iter.check:                            ; preds = %vector.body467
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x float> %i.gk, %i.gj
  %bin.rdx505 = fadd reassoc nsz arcp contract afn <4 x float> %i.gl, %bin.rdx
  %bin.rdx506 = fadd reassoc nsz arcp contract afn <4 x float> %i.gm, %bin.rdx505
  %i.go = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx506) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.ew, 5
  br i1 %min.epilog.iters.check, label %.lr.ph330.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec464, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.go, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %bc.resume.val507 = phi i64 [ %i.ex, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gp = and i64 %i.er, 3                        ; 2 uses
  %i.gq = icmp eq i64 %i.gp, 0
  %i.gr = select i1 %i.gq, i64 4, i64 %i.gp
  %n.vec508 = sub nsw i64 %i.er, %i.gr            ; 2 uses
  %i.gs = shl i64 %n.vec508, 2
  %i.gt = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %broadcast.splatinsert509 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat510 = shufflevector <4 x float> %broadcast.splatinsert509, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert511 = insertelement <4 x i64> poison, i64 %bc.resume.val507, i64 0
  %broadcast.splat512 = shufflevector <4 x i64> %broadcast.splatinsert511, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat512, <i64 0, i64 4, i64 8, i64 12>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index513 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi514 = phi <4 x float> [ %i.gt, %vec.epilog.ph ], [ %i.he, %vec.epilog.vector.body ]
  %vec.ind515 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next525, %vec.epilog.vector.body ] ; 2 uses
  %i.gu = shl nuw i64 %index513, 2
  %i.gv = or disjoint i64 %i.gu, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gv
  %wide.vec516 = load <16 x float>, ptr %i.gw, align 4, !tbaa !44, !alias.scope !51 ; 2 uses
  %strided.vec517 = shufflevector <16 x float> %wide.vec516, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec518 = shufflevector <16 x float> %wide.vec516, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gv
  %wide.vec519 = load <16 x float>, ptr %i.gx, align 4, !tbaa !44, !alias.scope !54, !noalias !51 ; 2 uses
  %strided.vec520 = shufflevector <16 x float> %wide.vec519, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec521 = shufflevector <16 x float> %wide.vec519, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %i.gy = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec517, %strided.vec520 ; 2 uses
  %i.gz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec518, %strided.vec521 ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %i.gy, %i.gy
  %i.hb = fmul reassoc nsz arcp contract afn <4 x float> %i.gz, %i.gz
  %i.hc = fadd reassoc nsz arcp contract afn <4 x float> %i.hb, %i.ha ; 2 uses
  %wide.gep522 = getelementptr inbounds nuw [4 x i8], ptr %3, <4 x i64> %vec.ind515
  %wide.gep523 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep522, i64 12
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.hc, <4 x ptr> align 4 %wide.gep523, <4 x i1> splat (i1 true)), !tbaa !44, !alias.scope !54, !noalias !51
  %i.hd = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %broadcast.splat510
  %i.he = fadd reassoc nsz arcp contract afn <4 x float> %i.hd, %vec.phi514 ; 2 uses
  %index.next524 = add nuw i64 %index513, 4       ; 2 uses
  %vec.ind.next525 = add nuw <4 x i64> %vec.ind515, splat (i64 16)
  %i.hf = icmp eq i64 %index.next524, %n.vec508
  br i1 %i.hf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.he)
  br label %.lr.ph330.preheader

.lr.ph330.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0267328.ph = phi float [ 0.000000e+00, %iter.check ], [ 0.000000e+00, %vector.memcheck ], [ %i.go, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ]
  %.0276327.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ex, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ]
  br label %.lr.ph330

scalar.ph436:                                     ; preds = %scalar.ph436.preheader, %scalar.ph436
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %scalar.ph436 ], [ %indvars.iv369.ph, %scalar.ph436.preheader ] ; 3 uses
  %i.hh = trunc nuw nsw i64 %indvars.iv369 to i32
  %.idx418 = shl nuw nsw i64 %indvars.iv369, 3
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx418
  %i.hj = uitofp nneg i32 %i.hh to float          ; 2 uses
  %i.hk = fmul reassoc nsz arcp contract afn float %i.aw, %i.hj
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %i.dm ; 2 uses
  %i.hm = fptosi float %i.hl to i32
  %i.hn = sitofp reassoc nsz arcp contract afn i32 %i.hm to float
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hl, %i.hn
  %i.hp = fmul reassoc nnan nsz arcp contract afn float %i.cn, %i.hj
  %i.hq = fmul reassoc nsz arcp contract afn float %i.ho, %i.cn
  %i.hr = fmul reassoc nsz arcp contract afn float %i.hp, %i.dn
  %i.hs = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.hq, i64 1
  %i.hu = fpext <2 x float> %i.ht to <2 x double>
  %i.hv = fsub reassoc nsz arcp contract afn <2 x double> %i.hu, %i.dp
  %i.hw = call reassoc nsz arcp contract afn <2 x double> @llvm.round.v2f64(<2 x double> %i.hv)
  %i.hx = fptosi <2 x double> %i.hw to <2 x i32>
  store <2 x i32> %i.hx, ptr %i.hi, align 4, !tbaa !43
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %._crit_edge, label %scalar.ph436, !llvm.loop !59

._crit_edge331:                                   ; preds = %.lr.ph330, %._crit_edge
  %.0267.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %i.iq, %.lr.ph330 ]
  br i1 %i.ej, label %bb.k, label %bb.l

.lr.ph330:                                        ; preds = %.lr.ph330.preheader, %.lr.ph330
  %.0267328 = phi float [ %i.iq, %.lr.ph330 ], [ %.0267328.ph, %.lr.ph330.preheader ]
  %.0276327 = phi i64 [ %i.ir, %.lr.ph330 ], [ %.0276327.ph, %.lr.ph330.preheader ] ; 4 uses
  %i.hy = or disjoint i64 %.0276327, 1            ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !44
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hy
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !44
  %i.id = fsub reassoc nsz arcp contract afn float %i.ia, %i.ic ; 2 uses
  %i.ie = or disjoint i64 %.0276327, 2            ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !44
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ie
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !44
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ig, %i.ii ; 2 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.id, %i.id
  %i.il = fmul reassoc nsz arcp contract afn float %i.ij, %i.ij
  %i.im = fadd reassoc nsz arcp contract afn float %i.il, %i.ik ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0276327
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store float %i.im, ptr %i.io, align 4, !tbaa !44
  %i.ip = fmul reassoc nsz arcp contract afn float %i.im, %i.ek
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %.0267328 ; 2 uses
  %i.ir = add nuw i64 %.0276327, 4                ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.eo
  br i1 %i.is, label %.lr.ph330, label %._crit_edge331, !llvm.loop !60

bb.k:                                             ; preds = %._crit_edge331
  %i.it = mul nsw i32 %i.ah, %i.ag
  %i.iu = sitofp reassoc nsz arcp contract afn i32 %i.it to float
  %i.iv = fdiv reassoc nsz arcp contract afn float %.0267.lcssa, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, f0x35A00000 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !61
  %i.iz = fpext reassoc nsz arcp contract afn float %i.iy to double
  %i.ja = fpext reassoc nsz arcp contract afn float %i.iw to double
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, f0x3FBF07C1F07C1F08
  %i.jc = fmul reassoc nsz arcp contract afn double %i.jb, %i.iz
  %i.jd = call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.jc, double f0x3FB99999A0000000)
  %i.je = fptrunc reassoc nsz arcp contract afn double %i.jd to float
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge331
  %i.jf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !61
  %i.jh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jg, float 1.000000e-01)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0277 = phi nsz float [ %i.je, %bb.k ], [ %i.jh, %bb.l ] ; 2 uses
  %.1268 = phi nsz float [ %i.iw, %bb.k ], [ 3.300000e+01, %bb.l ]
  %factor.op.mul358 = shl nsw i64 %i.em, 4        ; 2 uses
  %i.ji = icmp sgt i32 %i.ah, 0
  br i1 %i.ji, label %.lr.ph362, label %.loopexit315

.lr.ph362:                                        ; preds = %bb.m
  %i.jj = icmp sgt i32 %i.ag, 0
  %i.jk = icmp eq i32 %i.ei, 1
  %i.jl = add nsw <2 x i32> %i.af, splat (i32 -1) ; 12 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br i1 %i.jj, label %.lr.ph356.preheader, label %.loopexit315

.lr.ph356.preheader:                              ; preds = %.lr.ph362
  %i.jn = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %wide.trip.count399 = zext nneg i32 %i.ah to i64
  %wide.trip.count394 = zext nneg i32 %i.ag to i64
  %wide.trip.count377 = zext i32 %i.ax to i64     ; 6 uses
  %wide.trip.count389 = zext i32 %i.av to i64     ; 6 uses
  %i.jo = extractelement <2 x i32> %i.jl, i64 1
  %i.jp = extractelement <2 x i32> %i.jl, i64 0
  %min.iters.check635 = icmp ult i32 %i.ax, 4
  %min.iters.check637 = icmp ult i32 %i.ax, 32
  %i.jq = and i64 %wide.trip.count377, 28
  %n.vec639 = and i64 %wide.trip.count377, 2147483616 ; 4 uses
  %broadcast.splat643 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat645 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat649 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat651 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splatinsert652 = insertelement <8 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat653 = shufflevector <8 x i64> %broadcast.splatinsert652, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n689 = icmp eq i64 %n.vec639, %wide.trip.count377
  %min.epilog.iters.check695 = icmp eq i64 %i.jq, 0
  %n.vec697 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splat701 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat703 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat707 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat709 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert710 = insertelement <4 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat711 = shufflevector <4 x i64> %broadcast.splatinsert710, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n723 = icmp eq i64 %n.vec697, %wide.trip.count377
  %i.jr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.jn
  %min.iters.check529 = icmp ult i32 %i.av, 4
  %min.iters.check531 = icmp ult i32 %i.av, 16
  %i.js = and i64 %wide.trip.count389, 12
  %n.vec533 = and i64 %wide.trip.count389, 2147483632 ; 4 uses
  %broadcast.splat537 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat539 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat543 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat545 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert546 = insertelement <8 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat547 = shufflevector <8 x i64> %broadcast.splatinsert546, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n584 = icmp eq i64 %n.vec533, %wide.trip.count389
  %min.epilog.iters.check592 = icmp eq i64 %i.js, 0
  %n.vec594 = and i64 %wide.trip.count389, 2147483644 ; 3 uses
  %broadcast.splat598 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat600 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat604 = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat606 = shufflevector <2 x i32> %i.jl, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert607 = insertelement <4 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat608 = shufflevector <4 x i64> %broadcast.splatinsert607, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n629 = icmp eq i64 %n.vec594, %wide.trip.count389
  br label %.lr.ph356

..loopexit314_crit_edge:                          ; preds = %.loopexit
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %.loopexit315, label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %..loopexit314_crit_edge
  %indvars.iv396 = phi i64 [ 0, %.lr.ph356.preheader ], [ %indvars.iv.next397, %..loopexit314_crit_edge ] ; 3 uses
  %.2360 = phi float [ %.1268, %.lr.ph356.preheader ], [ %.4, %..loopexit314_crit_edge ]
  %i.jt = trunc nsw i64 %indvars.iv396 to i32     ; 7 uses
  %i.ju = call i32 @llvm.smax.i32(i32 %i.jt, i32 1)
  %i.jv = add nsw i32 %i.ju, -1
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = mul nuw nsw i64 %indvars.iv396, %i.em   ; 2 uses
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 3 uses
  %i.jy = trunc nuw nsw i64 %indvars.iv.next397 to i32
  %i.jz = call i32 @llvm.smin.i32(i32 %i.jo, i32 %i.jy)
  %i.ka = sext i32 %i.jz to i64
  %factor.op.mul.reass = mul i64 %factor.op.mul358, %i.jw
  %factor.op.mul350.reass = mul i64 %factor.op.mul358, %i.ka
  %i.kb = getelementptr i8, ptr %3, i64 %factor.op.mul.reass ; 3 uses
  %.idx311 = shl i64 %i.jx, 4
  %i.kc = getelementptr i8, ptr %3, i64 %.idx311  ; 2 uses
  %i.kd = getelementptr i8, ptr %3, i64 %factor.op.mul350.reass ; 3 uses
  %broadcast.splatinsert646 = insertelement <8 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat647 = shufflevector <8 x i32> %broadcast.splatinsert646, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert704 = insertelement <4 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat705 = shufflevector <4 x i32> %broadcast.splatinsert704, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ke = insertelement <2 x i32> poison, i32 %i.jt, i64 1
  %broadcast.splatinsert540 = insertelement <8 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat541 = shufflevector <8 x i32> %broadcast.splatinsert540, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert601 = insertelement <4 x i32> poison, i32 %i.jt, i64 0
  %broadcast.splat602 = shufflevector <4 x i32> %broadcast.splatinsert601, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kf = insertelement <2 x i32> poison, i32 %i.jt, i64 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph356, %.loopexit
  %indvars.iv391 = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next392.pre-phi, %.loopexit ] ; 7 uses
  %.3354 = phi float [ %.2360, %.lr.ph356 ], [ %.4, %.loopexit ]
  %i.kg = add nuw nsw i64 %i.jx, %indvars.iv391
  %i.kh = shl i64 %i.kg, 2                        ; 6 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !44 ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kk, %.0277
  %or.cond425 = select i1 %i.jk, i1 %i.kl, i1 false
  br i1 %or.cond425, label %.preheader313, label %._crit_edge401

.preheader313:                                    ; preds = %bb.n
  br i1 %i.bg, label %iter.check692, label %._crit_edge336

iter.check692:                                    ; preds = %.preheader313
  %i.km = trunc nsw i64 %indvars.iv391 to i32     ; 3 uses
  br i1 %min.iters.check635, label %.lr.ph335.preheader, label %vector.main.loop.iter.check636

vector.main.loop.iter.check636:                   ; preds = %iter.check692
  br i1 %min.iters.check637, label %vec.epilog.ph696, label %vector.ph638

vector.ph638:                                     ; preds = %vector.main.loop.iter.check636
  %broadcast.splatinsert640 = insertelement <8 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat641 = shufflevector <8 x i32> %broadcast.splatinsert640, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph638
  %index655 = phi i64 [ 0, %vector.ph638 ], [ %index.next684, %vector.body654 ] ; 5 uses
  %vec.phi656 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.my, %vector.body654 ]
  %vec.phi657 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.mz, %vector.body654 ]
  %vec.phi658 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.na, %vector.body654 ]
  %vec.phi659 = phi <8 x float> [ zeroinitializer, %vector.ph638 ], [ %i.nb, %vector.body654 ]
  %i.kn = shl nuw nsw i64 %index655, 3
  %i.ko = shl i64 %index655, 3
  %i.kp = shl i64 %index655, 3
  %i.kq = shl i64 %index655, 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kn
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ko
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kp
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.kq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 192
  %wide.vec660 = load <16 x i32>, ptr %i.kr, align 4, !tbaa !43 ; 2 uses
  %strided.vec661 = shufflevector <16 x i32> %wide.vec660, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec662 = shufflevector <16 x i32> %wide.vec660, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec663 = load <16 x i32>, ptr %i.kt, align 4, !tbaa !43 ; 2 uses
  %strided.vec664 = shufflevector <16 x i32> %wide.vec663, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec665 = shufflevector <16 x i32> %wide.vec663, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec666 = load <16 x i32>, ptr %i.kv, align 4, !tbaa !43 ; 2 uses
  %strided.vec667 = shufflevector <16 x i32> %wide.vec666, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec668 = shufflevector <16 x i32> %wide.vec666, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec669 = load <16 x i32>, ptr %i.kx, align 4, !tbaa !43 ; 2 uses
  %strided.vec670 = shufflevector <16 x i32> %wide.vec669, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec671 = shufflevector <16 x i32> %wide.vec669, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ky = add nsw <8 x i32> %strided.vec661, %broadcast.splat641 ; 2 uses
  %i.kz = add nsw <8 x i32> %strided.vec664, %broadcast.splat641 ; 2 uses
  %i.la = add nsw <8 x i32> %strided.vec667, %broadcast.splat641 ; 2 uses
  %i.lb = add nsw <8 x i32> %strided.vec670, %broadcast.splat641 ; 2 uses
  %i.lc = icmp slt <8 x i32> %i.ky, %broadcast.splat643
  %i.ld = icmp slt <8 x i32> %i.kz, %broadcast.splat643
  %i.le = icmp slt <8 x i32> %i.la, %broadcast.splat643
  %i.lf = icmp slt <8 x i32> %i.lb, %broadcast.splat643
  %i.lg = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ky, <8 x i32> zeroinitializer)
  %i.lh = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.kz, <8 x i32> zeroinitializer)
  %i.li = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.la, <8 x i32> zeroinitializer)
  %i.lj = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lb, <8 x i32> zeroinitializer)
  %i.lk = select <8 x i1> %i.lc, <8 x i32> %i.lg, <8 x i32> %broadcast.splat645
  %i.ll = select <8 x i1> %i.ld, <8 x i32> %i.lh, <8 x i32> %broadcast.splat645
  %i.lm = select <8 x i1> %i.le, <8 x i32> %i.li, <8 x i32> %broadcast.splat645
  %i.ln = select <8 x i1> %i.lf, <8 x i32> %i.lj, <8 x i32> %broadcast.splat645
  %i.lo = add nsw <8 x i32> %strided.vec662, %broadcast.splat647 ; 2 uses
  %i.lp = add nsw <8 x i32> %strided.vec665, %broadcast.splat647 ; 2 uses
  %i.lq = add nsw <8 x i32> %strided.vec668, %broadcast.splat647 ; 2 uses
  %i.lr = add nsw <8 x i32> %strided.vec671, %broadcast.splat647 ; 2 uses
  %i.ls = icmp slt <8 x i32> %i.lo, %broadcast.splat649
  %i.lt = icmp slt <8 x i32> %i.lp, %broadcast.splat649
  %i.lu = icmp slt <8 x i32> %i.lq, %broadcast.splat649
  %i.lv = icmp slt <8 x i32> %i.lr, %broadcast.splat649
  %i.lw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lo, <8 x i32> zeroinitializer)
  %i.lx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lp, <8 x i32> zeroinitializer)
  %i.ly = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lq, <8 x i32> zeroinitializer)
  %i.lz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lr, <8 x i32> zeroinitializer)
  %i.ma = select <8 x i1> %i.ls, <8 x i32> %i.lw, <8 x i32> %broadcast.splat651
  %i.mb = select <8 x i1> %i.lt, <8 x i32> %i.lx, <8 x i32> %broadcast.splat651
  %i.mc = select <8 x i1> %i.lu, <8 x i32> %i.ly, <8 x i32> %broadcast.splat651
  %i.md = select <8 x i1> %i.lv, <8 x i32> %i.lz, <8 x i32> %broadcast.splat651
  %i.me = zext nneg <8 x i32> %i.ma to <8 x i64>
  %i.mf = zext nneg <8 x i32> %i.mb to <8 x i64>
  %i.mg = zext nneg <8 x i32> %i.mc to <8 x i64>
  %i.mh = zext nneg <8 x i32> %i.md to <8 x i64>
  %i.mi = mul nuw nsw <8 x i64> %broadcast.splat653, %i.me
  %i.mj = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mf
  %i.mk = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mg
  %i.ml = mul nuw nsw <8 x i64> %broadcast.splat653, %i.mh
  %i.mm = sext <8 x i32> %i.lk to <8 x i64>
  %i.mn = sext <8 x i32> %i.ll to <8 x i64>
  %i.mo = sext <8 x i32> %i.lm to <8 x i64>
  %i.mp = sext <8 x i32> %i.ln to <8 x i64>
  %i.mq = add nsw <8 x i64> %i.mi, %i.mm
  %i.mr = add nsw <8 x i64> %i.mj, %i.mn
  %i.ms = add nsw <8 x i64> %i.mk, %i.mo
  %i.mt = add nsw <8 x i64> %i.ml, %i.mp
  %i.mu = shl <8 x i64> %i.mq, splat (i64 4)
  %i.mv = shl <8 x i64> %i.mr, splat (i64 4)
  %i.mw = shl <8 x i64> %i.ms, splat (i64 4)
  %i.mx = shl <8 x i64> %i.mt, splat (i64 4)
  %wide.gep672 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.mu
  %wide.gep673 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.mv
  %wide.gep674 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.mw
  %wide.gep675 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.mx
  %wide.gep676 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep672, i64 12
  %wide.gep677 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep673, i64 12
  %wide.gep678 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep674, i64 12
  %wide.gep679 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep675, i64 12
  %wide.masked.gather680 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep676, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %wide.masked.gather681 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep677, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %wide.masked.gather682 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep678, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %wide.masked.gather683 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep679, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %i.my = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather680, %vec.phi656 ; 2 uses
  %i.mz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather681, %vec.phi657 ; 2 uses
  %i.na = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather682, %vec.phi658 ; 2 uses
  %i.nb = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather683, %vec.phi659 ; 2 uses
  %index.next684 = add nuw i64 %index655, 32      ; 2 uses
  %i.nc = icmp eq i64 %index.next684, %n.vec639
  br i1 %i.nc, label %middle.block685, label %vector.body654, !llvm.loop !62

middle.block685:                                  ; preds = %vector.body654
  %bin.rdx686 = fadd reassoc nsz arcp contract afn <8 x float> %i.mz, %i.my
  %bin.rdx687 = fadd reassoc nsz arcp contract afn <8 x float> %i.na, %bin.rdx686
  %bin.rdx688 = fadd reassoc nsz arcp contract afn <8 x float> %i.nb, %bin.rdx687
  %i.nd = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx688) ; 3 uses
  br i1 %cmp.n689, label %._crit_edge336, label %vec.epilog.iter.check694

vec.epilog.iter.check694:                         ; preds = %middle.block685
  br i1 %min.epilog.iters.check695, label %.lr.ph335.preheader, label %vec.epilog.ph696, !prof !63

vec.epilog.ph696:                                 ; preds = %vector.main.loop.iter.check636, %vec.epilog.iter.check694
  %vec.epilog.resume.val690 = phi i64 [ %n.vec639, %vec.epilog.iter.check694 ], [ 0, %vector.main.loop.iter.check636 ]
  %bc.merge.rdx691 = phi float [ %i.nd, %vec.epilog.iter.check694 ], [ 0.000000e+00, %vector.main.loop.iter.check636 ]
  %i.ne = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx691, i64 0
  %broadcast.splatinsert698 = insertelement <4 x i32> poison, i32 %i.km, i64 0
  %broadcast.splat699 = shufflevector <4 x i32> %broadcast.splatinsert698, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %vec.epilog.vector.body712, %vec.epilog.ph696
  %index713 = phi i64 [ %vec.epilog.resume.val690, %vec.epilog.ph696 ], [ %index.next721, %vec.epilog.vector.body712 ] ; 2 uses
  %vec.phi714 = phi <4 x float> [ %i.ne, %vec.epilog.ph696 ], [ %i.nu, %vec.epilog.vector.body712 ]
  %i.nf = shl nuw nsw i64 %index713, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.nf
  %wide.vec715 = load <8 x i32>, ptr %i.ng, align 4, !tbaa !43 ; 2 uses
  %strided.vec716 = shufflevector <8 x i32> %wide.vec715, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec717 = shufflevector <8 x i32> %wide.vec715, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.nh = add nsw <4 x i32> %strided.vec716, %broadcast.splat699 ; 2 uses
  %i.ni = icmp slt <4 x i32> %i.nh, %broadcast.splat701
  %i.nj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nh, <4 x i32> zeroinitializer)
  %i.nk = select <4 x i1> %i.ni, <4 x i32> %i.nj, <4 x i32> %broadcast.splat703
  %i.nl = add nsw <4 x i32> %strided.vec717, %broadcast.splat705 ; 2 uses
  %i.nm = icmp slt <4 x i32> %i.nl, %broadcast.splat707
  %i.nn = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nl, <4 x i32> zeroinitializer)
  %i.no = select <4 x i1> %i.nm, <4 x i32> %i.nn, <4 x i32> %broadcast.splat709
  %i.np = zext nneg <4 x i32> %i.no to <4 x i64>
  %i.nq = mul nuw nsw <4 x i64> %broadcast.splat711, %i.np
  %i.nr = sext <4 x i32> %i.nk to <4 x i64>
  %i.ns = add nsw <4 x i64> %i.nq, %i.nr
  %i.nt = shl <4 x i64> %i.ns, splat (i64 4)
  %wide.gep718 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.nt
  %wide.gep719 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep718, i64 12
  %wide.masked.gather720 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep719, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !44
  %i.nu = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather720, %vec.phi714 ; 2 uses
  %index.next721 = add nuw i64 %index713, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next721, %n.vec697
  br i1 %i.nv, label %vec.epilog.middle.block722, label %vec.epilog.vector.body712, !llvm.loop !64

vec.epilog.middle.block722:                       ; preds = %vec.epilog.vector.body712
  %i.nw = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.nu) ; 2 uses
  br i1 %cmp.n723, label %._crit_edge336, label %.lr.ph335.preheader

.lr.ph335.preheader:                              ; preds = %iter.check692, %vec.epilog.iter.check694, %vec.epilog.middle.block722
  %indvars.iv374.ph = phi i64 [ 0, %iter.check692 ], [ %n.vec639, %vec.epilog.iter.check694 ], [ %n.vec697, %vec.epilog.middle.block722 ]
  %.0281333.ph = phi float [ 0.000000e+00, %iter.check692 ], [ %i.nd, %vec.epilog.iter.check694 ], [ %i.nw, %vec.epilog.middle.block722 ]
  %i.nx = insertelement <2 x i32> %i.ke, i32 %i.km, i64 0
  br label %.lr.ph335

._crit_edge336:                                   ; preds = %.lr.ph335, %middle.block685, %vec.epilog.middle.block722, %.preheader313
  %.0281.lcssa = phi float [ 0.000000e+00, %.preheader313 ], [ %i.nw, %vec.epilog.middle.block722 ], [ %i.nd, %middle.block685 ], [ %i.ow, %.lr.ph335 ]
  %i.ny = fmul reassoc nsz arcp contract afn float %.0281.lcssa, %i.jr
  %i.nz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ny, float f0x3C23D70A) ; 2 uses
  %i.oa = load float, ptr %i.jm, align 4, !tbaa !61
  %i.ob = fpext reassoc nsz arcp contract afn float %i.oa to double
  %i.oc = fpext reassoc nnan nsz arcp contract afn float %i.nz to double
  %i.od = fmul reassoc nnan nsz arcp contract afn double %i.oc, f0x3FBF07C1F07C1F08
  %i.oe = fmul reassoc nsz arcp contract afn double %i.od, %i.ob
  %i.of = call reassoc nsz arcp contract afn double @llvm.maxnum.f64(double %i.oe, double f0x3FB99999A0000000)
  %i.og = fptrunc reassoc nsz arcp contract afn double %i.of to float
  br label %._crit_edge401

.lr.ph335:                                        ; preds = %.lr.ph335.preheader, %.lr.ph335
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.lr.ph335 ], [ %indvars.iv374.ph, %.lr.ph335.preheader ] ; 2 uses
  %.0281333 = phi float [ %i.ow, %.lr.ph335 ], [ %.0281333.ph, %.lr.ph335.preheader ]
  %.idx419 = shl nuw nsw i64 %indvars.iv374, 3
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx419
  %i.oi = load <2 x i32>, ptr %i.oh, align 4, !tbaa !43
  %i.oj = add nsw <2 x i32> %i.oi, %i.nx          ; 2 uses
  %i.ok = icmp slt <2 x i32> %i.oj, %i.af
  %i.ol = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.oj, <2 x i32> zeroinitializer)
  %i.om = select <2 x i1> %i.ok, <2 x i32> %i.ol, <2 x i32> %i.jl ; 2 uses
  %i.on = extractelement <2 x i32> %i.om, i64 1
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = mul nuw nsw i64 %i.oo, %i.em
  %i.oq = extractelement <2 x i32> %i.om, i64 0
  %i.or = sext i32 %i.oq to i64
  %i.os = add nsw i64 %i.op, %i.or
  %.idx = shl i64 %i.os, 4
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !44
  %i.ow = fadd reassoc nsz arcp contract afn float %i.ov, %.0281333 ; 2 uses
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next375, %wide.trip.count377
  br i1 %exitcond378.not, label %._crit_edge336, label %.lr.ph335, !llvm.loop !65

._crit_edge401:                                   ; preds = %bb.n, %._crit_edge336
  %.0282 = phi nsz float [ %i.og, %._crit_edge336 ], [ %.0277, %bb.n ] ; 9 uses
  %.4 = phi nsz float [ %i.nz, %._crit_edge336 ], [ %.3354, %bb.n ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kh ; 4 uses
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.kk, %.0282
  br i1 %i.oy, label %bb.w, label %bb.o

bb.o:                                             ; preds = %._crit_edge401
  %i.oz = trunc nuw nsw i64 %indvars.iv391 to i32
  %i.pa = call i32 @llvm.smax.i32(i32 %i.oz, i32 1)
  %i.pb = shl i32 %i.pa, 2
  %i.pc = add i32 %i.pb, -4
  %i.pd = sext i32 %i.pc to i64                   ; 3 uses
  %i.pe = getelementptr [4 x i8], ptr %i.kb, i64 %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !44
  %i.ph = fcmp reassoc nsz arcp contract afn ogt float %i.pg, %.0282
  br i1 %i.ph, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.pi = shl nuw nsw i64 %indvars.iv391, 2       ; 2 uses
  %i.pj = getelementptr [4 x i8], ptr %i.kb, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !44
  %i.pm = fcmp reassoc nsz arcp contract afn ogt float %i.pl, %.0282
  br i1 %i.pm, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pn = add nuw nsw i64 %indvars.iv391, 1       ; 2 uses
  %i.po = trunc nuw nsw i64 %i.pn to i32
  %i.pp = call i32 @llvm.smin.i32(i32 %i.jp, i32 %i.po)
  %i.pq = shl nsw i32 %i.pp, 2
  %i.pr = sext i32 %i.pq to i64                   ; 3 uses
  %i.ps = getelementptr [4 x i8], ptr %i.kb, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !44
  %i.pv = fcmp reassoc nsz arcp contract afn ogt float %i.pu, %.0282
  br i1 %i.pv, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.pw = getelementptr [4 x i8], ptr %i.kc, i64 %i.pd
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  %i.py = load float, ptr %i.px, align 4, !tbaa !44
  %i.pz = fcmp reassoc nsz arcp contract afn ogt float %i.py, %.0282
  br i1 %i.pz, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qa = getelementptr [4 x i8], ptr %i.kc, i64 %i.pr
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !44
  %i.qd = fcmp reassoc nsz arcp contract afn ogt float %i.qc, %.0282
  br i1 %i.qd, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.qe = getelementptr [4 x i8], ptr %i.kd, i64 %i.pd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !44
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, %.0282
  br i1 %i.qh, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.qi = getelementptr [4 x i8], ptr %i.kd, i64 %i.pi
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !44
  %i.ql = fcmp reassoc nsz arcp contract afn ogt float %i.qk, %.0282
  br i1 %i.ql, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.qm = getelementptr [4 x i8], ptr %i.kd, i64 %i.pr
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !44
  %i.qp = fcmp reassoc nsz arcp contract afn ogt float %i.qo, %.0282
  br i1 %i.qp, label %bb.w, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.v
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kh
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !44
  store float %i.qr, ptr %i.ox, align 4, !tbaa !44
  %i.qs = or disjoint i64 %i.kh, 1                ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !44
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qs
  store float %i.qu, ptr %i.qv, align 4, !tbaa !44
  %i.qw = or disjoint i64 %i.kh, 2                ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !44
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.qw
  store float %i.qy, ptr %i.qz, align 4, !tbaa !44
  br label %.loopexit

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %._crit_edge401
  br i1 %i.cm, label %iter.check589, label %._crit_edge345

iter.check589:                                    ; preds = %bb.w
  %i.ra = trunc nsw i64 %indvars.iv391 to i32     ; 3 uses
  br i1 %min.iters.check529, label %.lr.ph344.preheader, label %vector.main.loop.iter.check530

vector.main.loop.iter.check530:                   ; preds = %iter.check589
  br i1 %min.iters.check531, label %vec.epilog.ph593, label %vector.ph532

vector.ph532:                                     ; preds = %vector.main.loop.iter.check530
  %broadcast.splatinsert534 = insertelement <8 x i32> poison, i32 %i.ra, i64 0
  %broadcast.splat535 = shufflevector <8 x i32> %broadcast.splatinsert534, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert548 = insertelement <8 x float> poison, float %.4, i64 0
  %broadcast.splat549 = shufflevector <8 x float> %broadcast.splatinsert548, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph532
  %index551 = phi i64 [ 0, %vector.ph532 ], [ %index.next579, %vector.body550 ] ; 3 uses
  %vec.phi552 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.ss, %vector.body550 ]
  %vec.phi553 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.st, %vector.body550 ]
  %vec.phi554 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sq, %vector.body550 ]
  %vec.phi555 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sr, %vector.body550 ]
  %vec.phi556 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sm, %vector.body550 ]
  %vec.phi557 = phi <8 x float> [ zeroinitializer, %vector.ph532 ], [ %i.sn, %vector.body550 ]
  %i.rb = shl nuw nsw i64 %index551, 3
  %i.rc = shl i64 %index551, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.rb
  %i.re = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.rc
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 64
  %wide.vec558 = load <16 x i32>, ptr %i.rd, align 4, !tbaa !43 ; 2 uses
  %strided.vec559 = shufflevector <16 x i32> %wide.vec558, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec560 = shufflevector <16 x i32> %wide.vec558, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec561 = load <16 x i32>, ptr %i.rf, align 4, !tbaa !43 ; 2 uses
  %strided.vec562 = shufflevector <16 x i32> %wide.vec561, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec563 = shufflevector <16 x i32> %wide.vec561, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.rg = add nsw <8 x i32> %strided.vec559, %broadcast.splat535 ; 2 uses
  %i.rh = add nsw <8 x i32> %strided.vec562, %broadcast.splat535 ; 2 uses
  %i.ri = icmp slt <8 x i32> %i.rg, %broadcast.splat537
  %i.rj = icmp slt <8 x i32> %i.rh, %broadcast.splat537
  %i.rk = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rg, <8 x i32> zeroinitializer)
  %i.rl = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rh, <8 x i32> zeroinitializer)
  %i.rm = select <8 x i1> %i.ri, <8 x i32> %i.rk, <8 x i32> %broadcast.splat539
  %i.rn = select <8 x i1> %i.rj, <8 x i32> %i.rl, <8 x i32> %broadcast.splat539
  %i.ro = add nsw <8 x i32> %strided.vec560, %broadcast.splat541 ; 2 uses
  %i.rp = add nsw <8 x i32> %strided.vec563, %broadcast.splat541 ; 2 uses
  %i.rq = icmp slt <8 x i32> %i.ro, %broadcast.splat543
  %i.rr = icmp slt <8 x i32> %i.rp, %broadcast.splat543
  %i.rs = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ro, <8 x i32> zeroinitializer)
  %i.rt = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.rp, <8 x i32> zeroinitializer)
  %i.ru = select <8 x i1> %i.rq, <8 x i32> %i.rs, <8 x i32> %broadcast.splat545
  %i.rv = select <8 x i1> %i.rr, <8 x i32> %i.rt, <8 x i32> %broadcast.splat545
  %i.rw = zext nneg <8 x i32> %i.ru to <8 x i64>
  %i.rx = zext nneg <8 x i32> %i.rv to <8 x i64>
  %i.ry = mul nuw nsw <8 x i64> %broadcast.splat547, %i.rw
  %i.rz = mul nuw nsw <8 x i64> %broadcast.splat547, %i.rx
  %i.sa = sext <8 x i32> %i.rm to <8 x i64>
  %i.sb = sext <8 x i32> %i.rn to <8 x i64>
  %i.sc = add nsw <8 x i64> %i.ry, %i.sa
  %i.sd = add nsw <8 x i64> %i.rz, %i.sb
  %i.se = shl <8 x i64> %i.sc, splat (i64 2)      ; 2 uses
  %i.sf = shl <8 x i64> %i.sd, splat (i64 2)      ; 2 uses
  %wide.gep564 = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %i.se
  %wide.gep565 = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %i.sf
  %wide.gep566 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep564, i64 12
  %wide.gep567 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep565, i64 12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep566, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %wide.masked.gather568 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep567, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %i.sg = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %broadcast.splat549
  %i.sh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather568, %broadcast.splat549
  %i.si = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.sg ; 3 uses
  %i.sj = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.sh ; 3 uses
  %wide.gep569 = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %i.se ; 2 uses
  %wide.gep570 = getelementptr inbounds nuw [4 x i8], ptr %2, <8 x i64> %i.sf ; 2 uses
  %wide.gep571 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep569, i64 4
  %wide.gep572 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep570, i64 4
  %wide.masked.gather573 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep571, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %wide.masked.gather574 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep572, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !44
  %i.sk = fmul reassoc nsz arcp contract afn <8 x float> %i.si, %wide.masked.gather573
  %i.sl = fmul reassoc nsz arcp contract afn <8 x float> %i.sj, %wide.masked.gather574
  %i.sm = fadd reassoc nsz arcp contract afn <8 x float> %i.sk, %vec.phi556 ; 2 uses
  %i.sn = fadd reassoc nsz arcp contract afn <8 x float> %i.sl, %vec.phi557 ; 2 uses
  %wide.gep575 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep569, i64 8
end_hunk_0
