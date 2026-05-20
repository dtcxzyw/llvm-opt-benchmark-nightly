inline.NumInlined: 10
begin_hunk_0_@attenuate_fluxes:bb.a
  br i1 %conflict.rdx597, label %scalar.ph598.preheader, label %vector.ph600

vector.ph600:                                     ; preds = %vector.memcheck574
  %n.vec602 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert603 = insertelement <4 x float> poison, float %5, i64 0
  %broadcast.splat604 = shufflevector <4 x float> %broadcast.splatinsert603, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body605

vector.body605:                                   ; preds = %vector.body605, %vector.ph600
  %index606 = phi i64 [ 0, %vector.ph600 ], [ %index.next609, %vector.body605 ] ; 5 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %index606
  %wide.load607 = load <4 x float>, ptr %i.iv, align 4, !tbaa !8, !alias.scope !46 ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index606
  store <4 x float> %wide.load607, ptr %i.iw, align 4, !tbaa !8, !alias.scope !49, !noalias !51
  %i.ix = fmul <4 x float> %broadcast.splat604, %wide.load607
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index606
  store <4 x float> %i.ix, ptr %i.iy, align 4, !tbaa !8, !alias.scope !54, !noalias !55
  %i.iz = fmul <4 x float> %wide.load607, %wide.load607
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index606
  store <4 x float> %i.iz, ptr %i.ja, align 4, !tbaa !8, !alias.scope !56, !noalias !46
  %index.next609 = add nuw i64 %index606, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.jb, label %middle.block610, label %vector.body605, !llvm.loop !57

middle.block610:                                  ; preds = %vector.body605
  %cmp.n611 = icmp eq i64 %n.vec602, %wide.trip.count377
  br i1 %cmp.n611, label %.lr.ph340.preheader, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck574, %.lr.ph338, %middle.block610
  %indvars.iv374.ph = phi i64 [ 0, %vector.memcheck574 ], [ 0, %.lr.ph338 ], [ %n.vec602, %middle.block610 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count377, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph598.prol.loopexit, label %scalar.ph598.prol

scalar.ph598.prol:                                ; preds = %scalar.ph598.preheader
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv374.ph
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !8 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374.ph ; 2 uses
  store float %i.jd, ptr %i.je, align 4, !tbaa !8
  %i.jf = fmul float %5, %i.jd
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374.ph
  store float %i.jf, ptr %i.jg, align 4, !tbaa !8
  %i.jh = load float, ptr %i.je, align 4, !tbaa !8 ; 2 uses
  %i.ji = fmul float %i.jh, %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374.ph
  store float %i.ji, ptr %i.jj, align 4, !tbaa !8
  %indvars.iv.next375.prol = or disjoint i64 %indvars.iv374.ph, 1
  br label %scalar.ph598.prol.loopexit

scalar.ph598.prol.loopexit:                       ; preds = %scalar.ph598.prol, %scalar.ph598.preheader
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %scalar.ph598.preheader ], [ %indvars.iv.next375.prol, %scalar.ph598.prol ]
  %i.jk = add nsw i64 %wide.trip.count377, -1
  %i.jl = icmp eq i64 %indvars.iv374.ph, %i.jk
  br i1 %i.jl, label %.lr.ph340.preheader, label %scalar.ph598

.lr.ph340.preheader:                              ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598, %middle.block610
  %wide.trip.count382 = zext nneg i32 %.sroa.7246.0.copyload to i64
  br label %.lr.ph340

scalar.ph598:                                     ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.1, %scalar.ph598 ], [ %indvars.iv374.unr, %scalar.ph598.prol.loopexit ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv374
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !8 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv374 ; 2 uses
  store float %i.jn, ptr %i.jo, align 4, !tbaa !8
  %i.jp = fmul float %5, %i.jn
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv374
  store float %i.jp, ptr %i.jq, align 4, !tbaa !8
  %i.jr = load float, ptr %i.jo, align 4, !tbaa !8 ; 2 uses
  %i.js = fmul float %i.jr, %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv374
  store float %i.js, ptr %i.jt, align 4, !tbaa !8
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 4 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.next375
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !8 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next375 ; 2 uses
  store float %i.jv, ptr %i.jw, align 4, !tbaa !8
  %i.jx = fmul float %5, %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next375
  store float %i.jx, ptr %i.jy, align 4, !tbaa !8
  %i.jz = load float, ptr %i.jw, align 4, !tbaa !8 ; 2 uses
  %i.ka = fmul float %i.jz, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next375
  store float %i.ka, ptr %i.kb, align 4, !tbaa !8
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %exitcond378.not.1 = icmp eq i64 %indvars.iv.next375.1, %wide.trip.count377
  br i1 %exitcond378.not.1, label %.lr.ph340.preheader, label %scalar.ph598, !llvm.loop !58

.lr.ph342.preheader:                              ; preds = %interpolateTable.exit
  %wide.trip.count387 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check622 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check622, label %.lr.ph342.preheader837, label %vector.memcheck613

vector.memcheck613:                               ; preds = %.lr.ph342.preheader
  %i.kc = sub i64 %i.w, %i.n
  %diff.check614 = icmp ult i64 %i.kc, 16
  %i.kd = sub i64 %i.w, %i.t
  %diff.check615 = icmp ult i64 %i.kd, 16
  %conflict.rdx616 = or i1 %diff.check614, %diff.check615
  %i.ke = sub i64 %i.w, %i.k
  %diff.check617 = icmp ult i64 %i.ke, 16
  %conflict.rdx618 = or i1 %conflict.rdx616, %diff.check617
  %i.kf = sub i64 %i.w, %i.q
  %diff.check619 = icmp ult i64 %i.kf, 16
  %conflict.rdx620 = or i1 %conflict.rdx618, %diff.check619
  br i1 %conflict.rdx620, label %.lr.ph342.preheader837, label %vector.ph623

vector.ph623:                                     ; preds = %vector.memcheck613
  %n.vec625 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph623
  %index627 = phi i64 [ 0, %vector.ph623 ], [ %index.next632, %vector.body626 ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index627
  %wide.load628 = load <4 x float>, ptr %i.kg, align 4, !tbaa !8 ; 2 uses
  %i.kh = fadd <4 x float> %wide.load628, splat (float -2.000000e+00)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index627
  %wide.load629 = load <4 x float>, ptr %i.ki, align 4, !tbaa !8
  %i.kj = fmul <4 x float> %wide.load629, splat (float 2.000000e+00)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index627
  %wide.load630 = load <4 x float>, ptr %i.kk, align 4, !tbaa !8
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index627
  %wide.load631 = load <4 x float>, ptr %i.kl, align 4, !tbaa !8
  %i.km = fmul <4 x float> %wide.load630, %wide.load631
  %i.kn = fdiv <4 x float> %i.kj, %i.km
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load628, <4 x float> %i.kh, <4 x float> %i.kn)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index627
  store <4 x float> %i.ko, ptr %i.kp, align 4, !tbaa !8
  %index.next632 = add nuw i64 %index627, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next632, %n.vec625
  br i1 %i.kq, label %middle.block633, label %vector.body626, !llvm.loop !59

middle.block633:                                  ; preds = %vector.body626
  %cmp.n634 = icmp eq i64 %n.vec625, %wide.trip.count377
  br i1 %cmp.n634, label %.lr.ph345.preheader, label %.lr.ph342.preheader837

.lr.ph342.preheader837:                           ; preds = %vector.memcheck613, %.lr.ph342.preheader, %middle.block633
  %indvars.iv384.ph = phi i64 [ 0, %vector.memcheck613 ], [ 0, %.lr.ph342.preheader ], [ %n.vec625, %middle.block633 ] ; 8 uses
  %xtraiter840 = and i64 %wide.trip.count377, 1
  %lcmp.mod841.not = icmp eq i64 %xtraiter840, 0
  br i1 %lcmp.mod841.not, label %.lr.ph342.prol.loopexit, label %.lr.ph342.prol

.lr.ph342.prol:                                   ; preds = %.lr.ph342.preheader837
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384.ph
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !8 ; 2 uses
  %i.kt = fadd float %i.ks, -2.000000e+00
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384.ph
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !8
  %i.kw = fmul float %i.kv, 2.000000e+00
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384.ph
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !8
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384.ph
  %i.la = load float, ptr %i.kz, align 4, !tbaa !8
  %i.lb = fmul float %i.ky, %i.la
  %i.lc = fdiv float %i.kw, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.ks, float %i.kt, float %i.lc)
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384.ph
  store float %i.ld, ptr %i.le, align 4, !tbaa !8
  %indvars.iv.next385.prol = or disjoint i64 %indvars.iv384.ph, 1
  br label %.lr.ph342.prol.loopexit

.lr.ph342.prol.loopexit:                          ; preds = %.lr.ph342.prol, %.lr.ph342.preheader837
  %indvars.iv384.unr = phi i64 [ %indvars.iv384.ph, %.lr.ph342.preheader837 ], [ %indvars.iv.next385.prol, %.lr.ph342.prol ]
  %i.lf = add nsw i64 %wide.trip.count377, -1
  %i.lg = icmp eq i64 %indvars.iv384.ph, %i.lf
  br i1 %i.lg, label %.lr.ph345.preheader, label %.lr.ph342

.lr.ph340:                                        ; preds = %.lr.ph340.preheader, %interpolateTable.exit
  %indvars.iv379 = phi i64 [ 0, %.lr.ph340.preheader ], [ %indvars.iv.next380, %interpolateTable.exit ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv379
  %i.li = load float, ptr %i.lh, align 4, !tbaa !8 ; 3 uses
  %i.lj = fcmp ogt float %i.li, %.sroa.5.0.copyload
  br i1 %i.lj, label %interpolateTable.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph340
  %i.lk = fdiv float %i.li, %.sroa.4.0.copyload320
  %i.ll = tail call float @llvm.fmuladd.f32(float %.sroa.4.0.copyload320, float 5.000000e-01, float %i.lk)
  %i.lm = fptosi float %i.ll to i32
  %i.ln = shl nsw i32 %i.lm, 1
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %.sroa.3.0.copyload318, i64 %i.lo ; 2 uses
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !8
  %i.lr = getelementptr i8, ptr %i.lp, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !8
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.li, float %i.ls)
  br label %interpolateTable.exit

interpolateTable.exit:                            ; preds = %.lr.ph340, %bb.e
  %.0.i = phi float [ %i.lt, %bb.e ], [ 1.000000e+00, %.lr.ph340 ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv379
  store float %.0.i, ptr %i.lu, align 4, !tbaa !8
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %.lr.ph342.preheader, label %.lr.ph340

.lr.ph345.preheader:                              ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342, %middle.block633
  %.0309.in.v = select i1 %1, i64 24, i64 32
  %.0309.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0309.in.v
  %.0309 = load ptr, ptr %.0309.in, align 8, !tbaa !10 ; 11 uses
  %.0309642 = ptrtoaddr ptr %.0309 to i64         ; 6 uses
  %wide.trip.count392 = zext i32 %.sroa.7246.0.copyload to i64 ; 15 uses
  %min.iters.check656 = icmp ult i32 %.sroa.7246.0.copyload, 4
  br i1 %min.iters.check656, label %.lr.ph345.preheader836, label %vector.memcheck636

vector.memcheck636:                               ; preds = %.lr.ph345.preheader
  %i.lv = sub i64 %i.z, %i.b
  %diff.check637 = icmp ult i64 %i.lv, 16
  %i.lw = sub i64 %i.z, %i.n
  %diff.check638 = icmp ult i64 %i.lw, 16
  %conflict.rdx639 = or i1 %diff.check637, %diff.check638
  %i.lx = sub i64 %i.z, %i.k
  %diff.check640 = icmp ult i64 %i.lx, 16
  %conflict.rdx641 = or i1 %conflict.rdx639, %diff.check640
  %i.ly = sub i64 %i.z, %.0309642
  %diff.check643 = icmp ult i64 %i.ly, 16
  %conflict.rdx644 = or i1 %conflict.rdx641, %diff.check643
  %i.lz = sub i64 %i.z, %i.t
  %diff.check645 = icmp ult i64 %i.lz, 16
  %conflict.rdx646 = or i1 %conflict.rdx644, %diff.check645
  %i.ma = sub i64 %i.z, %i.q
  %diff.check647 = icmp ult i64 %i.ma, 16
  %conflict.rdx648 = or i1 %conflict.rdx646, %diff.check647
  %i.mb = sub i64 %i.z, %i.e
  %diff.check649 = icmp ult i64 %i.mb, 16
  %conflict.rdx650 = or i1 %conflict.rdx648, %diff.check649
  %i.mc = sub i64 %i.z, %i.w
  %diff.check651 = icmp ult i64 %i.mc, 16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.md = sub i64 %i.z, %i.h
  %diff.check653 = icmp ult i64 %i.md, 16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %.lr.ph345.preheader836, label %vector.ph657

vector.ph657:                                     ; preds = %vector.memcheck636
  %n.vec659 = and i64 %wide.trip.count377, 2147483644 ; 3 uses
  %broadcast.splatinsert660 = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat661 = shufflevector <4 x float> %broadcast.splatinsert660, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert662 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat663 = shufflevector <4 x float> %broadcast.splatinsert662, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph657
  %index665 = phi i64 [ 0, %vector.ph657 ], [ %index.next675, %vector.body664 ] ; 11 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index665
  %wide.load666 = load <4 x float>, ptr %i.me, align 4, !tbaa !8 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index665
  %wide.load667 = load <4 x float>, ptr %i.mf, align 4, !tbaa !8 ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index665
  %wide.load668 = load <4 x float>, ptr %i.mg, align 4, !tbaa !8
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index665
  %wide.load669 = load <4 x float>, ptr %i.mh, align 4, !tbaa !8
  %i.mi = fneg <4 x float> %wide.load666
  %i.mj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load668, <4 x float> %wide.load669, <4 x float> %i.mi)
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index665
  %wide.load670 = load <4 x float>, ptr %i.mk, align 4, !tbaa !8 ; 2 uses
  %i.ml = fmul <4 x float> %i.mj, %wide.load670
  %i.mm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load666, <4 x float> %wide.load667, <4 x float> %i.ml)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index665
  %wide.load671 = load <4 x float>, ptr %i.mn, align 4, !tbaa !8 ; 3 uses
  %i.mo = fdiv <4 x float> %i.mm, %wide.load671
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index665
  %wide.load672 = load <4 x float>, ptr %i.mp, align 4, !tbaa !8
  %i.mq = fmul <4 x float> %broadcast.splat661, %wide.load672
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index665
  %wide.load673 = load <4 x float>, ptr %i.mr, align 4, !tbaa !8
  %i.ms = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %wide.load673, <4 x float> %i.mo)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index665
  %wide.load674 = load <4 x float>, ptr %i.mt, align 4, !tbaa !8
  %i.mu = fmul <4 x float> %broadcast.splat663, %wide.load674
  %i.mv = fadd <4 x float> %wide.load667, splat (float -3.000000e+00)
  %i.mw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.mv, <4 x float> splat (float 6.000000e+00))
  %i.mx = fmul <4 x float> %wide.load670, splat (float -6.000000e+00)
  %i.my = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load667, <4 x float> %i.mw, <4 x float> %i.mx)
  %i.mz = fmul <4 x float> %i.my, %i.mu
  %i.na = fmul <4 x float> %wide.load671, splat (float 3.000000e+00)
  %i.nb = fmul <4 x float> %wide.load671, %i.na
  %i.nc = fdiv <4 x float> %i.mz, %i.nb
  %i.nd = fadd <4 x float> %i.ms, %i.nc
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index665
  store <4 x float> %i.nd, ptr %i.ne, align 4, !tbaa !8
  %index.next675 = add nuw i64 %index665, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next675, %n.vec659
  br i1 %i.nf, label %middle.block676, label %vector.body664, !llvm.loop !60

middle.block676:                                  ; preds = %vector.body664
  %cmp.n677 = icmp eq i64 %n.vec659, %wide.trip.count377
  br i1 %cmp.n677, label %.lr.ph347.preheader, label %.lr.ph345.preheader836

.lr.ph345.preheader836:                           ; preds = %vector.memcheck636, %.lr.ph345.preheader, %middle.block676
  %indvars.iv389.ph = phi i64 [ 0, %vector.memcheck636 ], [ 0, %.lr.ph345.preheader ], [ %n.vec659, %middle.block676 ]
  br label %.lr.ph345

.lr.ph342:                                        ; preds = %.lr.ph342.prol.loopexit, %.lr.ph342
  %indvars.iv384 = phi i64 [ %indvars.iv.next385.1, %.lr.ph342 ], [ %indvars.iv384.unr, %.lr.ph342.prol.loopexit ] ; 7 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv384
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !8 ; 2 uses
  %i.ni = fadd float %i.nh, -2.000000e+00
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv384
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !8
  %i.nl = fmul float %i.nk, 2.000000e+00
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv384
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !8
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv384
  %i.np = load float, ptr %i.no, align 4, !tbaa !8
  %i.nq = fmul float %i.nn, %i.np
  %i.nr = fdiv float %i.nl, %i.nq
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.ni, float %i.nr)
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv384
  store float %i.ns, ptr %i.nt, align 4, !tbaa !8
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 5 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next385
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !8 ; 2 uses
  %i.nw = fadd float %i.nv, -2.000000e+00
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next385
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !8
  %i.nz = fmul float %i.ny, 2.000000e+00
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next385
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !8
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next385
  %i.od = load float, ptr %i.oc, align 4, !tbaa !8
  %i.oe = fmul float %i.ob, %i.od
  %i.of = fdiv float %i.nz, %i.oe
  %i.og = tail call float @llvm.fmuladd.f32(float %i.nv, float %i.nw, float %i.of)
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next385
  store float %i.og, ptr %i.oh, align 4, !tbaa !8
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2 ; 2 uses
  %exitcond388.not.1 = icmp eq i64 %indvars.iv.next385.1, %wide.trip.count387
  br i1 %exitcond388.not.1, label %.lr.ph345.preheader, label %.lr.ph342, !llvm.loop !61

.lr.ph347.preheader:                              ; preds = %.lr.ph345, %middle.block676
  %wide.trip.count397 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check682 = icmp ult i32 %.sroa.7246.0.copyload, 8
  %i.oi = sub i64 %i.ac, %i.z
  %diff.check680 = icmp ult i64 %i.oi, 32
  %or.cond = select i1 %min.iters.check682, i1 true, i1 %diff.check680
  br i1 %or.cond, label %.lr.ph347.preheader835, label %vector.ph683

vector.ph683:                                     ; preds = %.lr.ph347.preheader
  %n.vec685 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert686 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat687 = shufflevector <4 x float> %broadcast.splatinsert686, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph683
  %index689 = phi i64 [ 0, %vector.ph683 ], [ %index.next692, %vector.body688 ] ; 3 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index689 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load690 = load <4 x float>, ptr %i.oj, align 4, !tbaa !8
  %wide.load691 = load <4 x float>, ptr %i.ok, align 4, !tbaa !8
  %i.ol = fmul <4 x float> %broadcast.splat687, %wide.load690
  %i.om = fmul <4 x float> %broadcast.splat687, %wide.load691
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index689 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store <4 x float> %i.ol, ptr %i.on, align 4, !tbaa !8
  store <4 x float> %i.om, ptr %i.oo, align 4, !tbaa !8
  %index.next692 = add nuw i64 %index689, 8       ; 2 uses
  %i.op = icmp eq i64 %index.next692, %n.vec685
  br i1 %i.op, label %middle.block693, label %vector.body688, !llvm.loop !62

middle.block693:                                  ; preds = %vector.body688
  %cmp.n694 = icmp eq i64 %n.vec685, %wide.trip.count377
  br i1 %cmp.n694, label %.lr.ph349.preheader, label %.lr.ph347.preheader835

.lr.ph347.preheader835:                           ; preds = %.lr.ph347.preheader, %middle.block693
  %indvars.iv394.ph = phi i64 [ 0, %.lr.ph347.preheader ], [ %n.vec685, %middle.block693 ] ; 3 uses
  %xtraiter842 = and i64 %wide.trip.count392, 3   ; 2 uses
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol

.lr.ph347.prol:                                   ; preds = %.lr.ph347.preheader835, %.lr.ph347.prol
  %indvars.iv394.prol = phi i64 [ %indvars.iv.next395.prol, %.lr.ph347.prol ], [ %indvars.iv394.ph, %.lr.ph347.preheader835 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph347.prol ], [ 0, %.lr.ph347.preheader835 ]
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv394.prol
  %i.or = load float, ptr %i.oq, align 4, !tbaa !8
  %i.os = fmul float %i.bd, %i.or
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv394.prol
  store float %i.os, ptr %i.ot, align 4, !tbaa !8
  %indvars.iv.next395.prol = add nuw nsw i64 %indvars.iv394.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter842
  br i1 %prol.iter.cmp.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol, !llvm.loop !63

.lr.ph347.prol.loopexit:                          ; preds = %.lr.ph347.prol, %.lr.ph347.preheader835
  %indvars.iv394.unr = phi i64 [ %indvars.iv394.ph, %.lr.ph347.preheader835 ], [ %indvars.iv.next395.prol, %.lr.ph347.prol ]
  %i.ou = sub nsw i64 %indvars.iv394.ph, %wide.trip.count392
  %i.ov = icmp ugt i64 %i.ou, -4
  br i1 %i.ov, label %.lr.ph349.preheader, label %.lr.ph347

.lr.ph345:                                        ; preds = %.lr.ph345.preheader836, %.lr.ph345
  %indvars.iv389 = phi i64 [ %indvars.iv.next390, %.lr.ph345 ], [ %indvars.iv389.ph, %.lr.ph345.preheader836 ] ; 11 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv389
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !8 ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv389
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !8 ; 4 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv389
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !8
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv389
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !8
  %i.pe = fneg float %i.ox
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pd, float %i.pe)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv389
end_hunk_0
begin_hunk_1_@attenuate_fluxes:bb.a
  store float %i.ut, ptr %i.uu, align 4, !tbaa !8
  %indvars.iv.next405.1 = add nuw nsw i64 %indvars.iv404, 2 ; 2 uses
  %exitcond408.not.1 = icmp eq i64 %indvars.iv.next405.1, %wide.trip.count407
  br i1 %exitcond408.not.1, label %.lr.ph353.preheader, label %.lr.ph351, !llvm.loop !77

.lr.ph355.preheader:                              ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353, %middle.block759
  %wide.trip.count417 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check767 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check767, label %.lr.ph355.preheader831, label %vector.memcheck762

vector.memcheck762:                               ; preds = %.lr.ph355.preheader
  %i.uv = sub i64 %i.al, %i.h
  %diff.check763 = icmp ult i64 %i.uv, 32
  %i.uw = sub i64 %i.al, %i.w
  %diff.check764 = icmp ult i64 %i.uw, 32
  %conflict.rdx765 = or i1 %diff.check763, %diff.check764
  br i1 %conflict.rdx765, label %.lr.ph355.preheader831, label %vector.ph768

vector.ph768:                                     ; preds = %vector.memcheck762
  %n.vec770 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  %broadcast.splatinsert771 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat772 = shufflevector <4 x float> %broadcast.splatinsert771, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph768
  %index774 = phi i64 [ 0, %vector.ph768 ], [ %index.next779, %vector.body773 ] ; 4 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index774 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load775 = load <4 x float>, ptr %i.ux, align 4, !tbaa !8
  %wide.load776 = load <4 x float>, ptr %i.uy, align 4, !tbaa !8
  %i.uz = fmul <4 x float> %broadcast.splat772, %wide.load775
  %i.va = fmul <4 x float> %broadcast.splat772, %wide.load776
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index774 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %wide.load777 = load <4 x float>, ptr %i.vb, align 4, !tbaa !8
  %wide.load778 = load <4 x float>, ptr %i.vc, align 4, !tbaa !8
  %i.vd = fmul <4 x float> %i.uz, %wide.load777
  %i.ve = fmul <4 x float> %i.va, %wide.load778
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index774 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  store <4 x float> %i.vd, ptr %i.vf, align 4, !tbaa !8
  store <4 x float> %i.ve, ptr %i.vg, align 4, !tbaa !8
  %index.next779 = add nuw i64 %index774, 8       ; 2 uses
  %i.vh = icmp eq i64 %index.next779, %n.vec770
  br i1 %i.vh, label %middle.block780, label %vector.body773, !llvm.loop !78

middle.block780:                                  ; preds = %vector.body773
  %cmp.n781 = icmp eq i64 %n.vec770, %wide.trip.count377
  br i1 %cmp.n781, label %.lr.ph357.preheader, label %.lr.ph355.preheader831

.lr.ph355.preheader831:                           ; preds = %vector.memcheck762, %.lr.ph355.preheader, %middle.block780
  %indvars.iv414.ph = phi i64 [ 0, %vector.memcheck762 ], [ 0, %.lr.ph355.preheader ], [ %n.vec770, %middle.block780 ] ; 6 uses
  %xtraiter853 = and i64 %wide.trip.count392, 1
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %.lr.ph355.prol.loopexit, label %.lr.ph355.prol

.lr.ph355.prol:                                   ; preds = %.lr.ph355.preheader831
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414.ph
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !8
  %i.vk = fmul float %i.be, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414.ph
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !8
  %i.vn = fmul float %i.vk, %i.vm
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414.ph
  store float %i.vn, ptr %i.vo, align 4, !tbaa !8
  %indvars.iv.next415.prol = or disjoint i64 %indvars.iv414.ph, 1
  br label %.lr.ph355.prol.loopexit

.lr.ph355.prol.loopexit:                          ; preds = %.lr.ph355.prol, %.lr.ph355.preheader831
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %.lr.ph355.preheader831 ], [ %indvars.iv.next415.prol, %.lr.ph355.prol ]
  %i.vp = add nsw i64 %wide.trip.count392, -1
  %i.vq = icmp eq i64 %indvars.iv414.ph, %i.vp
  br i1 %i.vq, label %.lr.ph357.preheader, label %.lr.ph355

.lr.ph353:                                        ; preds = %.lr.ph353.prol.loopexit, %.lr.ph353
  %indvars.iv409 = phi i64 [ %indvars.iv.next410.1, %.lr.ph353 ], [ %indvars.iv409.unr, %.lr.ph353.prol.loopexit ] ; 7 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv409
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !8
  %i.vt = fmul float %6, %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv409
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !8
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv409
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !8
  %i.vy = fsub float %i.vv, %i.vx
  %i.vz = fmul float %i.vt, %i.vy
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv409
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !8
  %i.wc = fdiv float %i.vz, %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv409
  store float %i.wc, ptr %i.wd, align 4, !tbaa !8
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 5 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next410
  %i.wf = load float, ptr %i.we, align 4, !tbaa !8
  %i.wg = fmul float %6, %i.wf
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next410
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !8
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next410
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !8
  %i.wl = fsub float %i.wi, %i.wk
  %i.wm = fmul float %i.wg, %i.wl
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next410
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !8
  %i.wp = fdiv float %i.wm, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next410
  store float %i.wp, ptr %i.wq, align 4, !tbaa !8
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %exitcond413.not.1 = icmp eq i64 %indvars.iv.next410.1, %wide.trip.count412
  br i1 %exitcond413.not.1, label %.lr.ph355.preheader, label %.lr.ph353, !llvm.loop !79

.lr.ph357.preheader:                              ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355, %middle.block780
  %wide.trip.count422 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check788 = icmp ult i32 %.sroa.7246.0.copyload, 8
  br i1 %min.iters.check788, label %.lr.ph357.preheader830, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph357.preheader
  %i.wr = sub i64 %i.ao, %.0309642
  %diff.check784 = icmp ult i64 %i.wr, 32
  %i.ws = sub i64 %i.ao, %i.t
  %diff.check785 = icmp ult i64 %i.ws, 32
  %conflict.rdx786 = or i1 %diff.check784, %diff.check785
  br i1 %conflict.rdx786, label %.lr.ph357.preheader830, label %vector.ph789

vector.ph789:                                     ; preds = %vector.memcheck783
  %n.vec791 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph789
  %index793 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body792 ] ; 4 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index793 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %wide.load794 = load <4 x float>, ptr %i.wt, align 4, !tbaa !8
  %wide.load795 = load <4 x float>, ptr %i.wu, align 4, !tbaa !8
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index793 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  %wide.load796 = load <4 x float>, ptr %i.wv, align 4, !tbaa !8
  %wide.load797 = load <4 x float>, ptr %i.ww, align 4, !tbaa !8
  %i.wx = fsub <4 x float> splat (float 1.000000e+00), %wide.load796
  %i.wy = fsub <4 x float> splat (float 1.000000e+00), %wide.load797
  %i.wz = fmul <4 x float> %wide.load794, %i.wx
  %i.xa = fmul <4 x float> %wide.load795, %i.wy
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index793 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  store <4 x float> %i.wz, ptr %i.xb, align 4, !tbaa !8
  store <4 x float> %i.xa, ptr %i.xc, align 4, !tbaa !8
  %index.next798 = add nuw i64 %index793, 8       ; 2 uses
  %i.xd = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.xd, label %middle.block799, label %vector.body792, !llvm.loop !80

middle.block799:                                  ; preds = %vector.body792
  %cmp.n800 = icmp eq i64 %n.vec791, %wide.trip.count377
  br i1 %cmp.n800, label %.lr.ph359.preheader, label %.lr.ph357.preheader830

.lr.ph357.preheader830:                           ; preds = %vector.memcheck783, %.lr.ph357.preheader, %middle.block799
  %indvars.iv419.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph357.preheader ], [ %n.vec791, %middle.block799 ] ; 6 uses
  %xtraiter856 = and i64 %wide.trip.count392, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  br i1 %lcmp.mod857.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader830
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419.ph
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !8
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419.ph
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !8
  %i.xi = fsub float 1.000000e+00, %i.xh
  %i.xj = fmul float %i.xf, %i.xi
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419.ph
  store float %i.xj, ptr %i.xk, align 4, !tbaa !8
  %indvars.iv.next420.prol = or disjoint i64 %indvars.iv419.ph, 1
  br label %.lr.ph357.prol.loopexit

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader830
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph357.preheader830 ], [ %indvars.iv.next420.prol, %.lr.ph357.prol ]
  %i.xl = add nsw i64 %wide.trip.count392, -1
  %i.xm = icmp eq i64 %indvars.iv419.ph, %i.xl
  br i1 %i.xm, label %.lr.ph359.preheader, label %.lr.ph357

.lr.ph355:                                        ; preds = %.lr.ph355.prol.loopexit, %.lr.ph355
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.1, %.lr.ph355 ], [ %indvars.iv414.unr, %.lr.ph355.prol.loopexit ] ; 5 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv414
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !8
  %i.xp = fmul float %i.be, %i.xo
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv414
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !8
  %i.xs = fmul float %i.xp, %i.xr
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv414
  store float %i.xs, ptr %i.xt, align 4, !tbaa !8
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 3 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next415
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !8
  %i.xw = fmul float %i.be, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next415
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !8
  %i.xz = fmul float %i.xw, %i.xy
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next415
  store float %i.xz, ptr %i.ya, align 4, !tbaa !8
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %exitcond418.not.1 = icmp eq i64 %indvars.iv.next415.1, %wide.trip.count417
  br i1 %exitcond418.not.1, label %.lr.ph357.preheader, label %.lr.ph355, !llvm.loop !81

.lr.ph359.preheader:                              ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %middle.block799
  %wide.trip.count427 = zext nneg i32 %.sroa.7246.0.copyload to i64
  %min.iters.check811 = icmp ult i32 %.sroa.7246.0.copyload, 12
  br i1 %min.iters.check811, label %.lr.ph359.preheader829, label %vector.memcheck802

vector.memcheck802:                               ; preds = %.lr.ph359.preheader
  %i.yb = sub i64 %.0309642, %i.af
  %diff.check803 = icmp ult i64 %i.yb, 32
  %i.yc = sub i64 %.0309642, %i.ai
  %diff.check804 = icmp ult i64 %i.yc, 32
  %conflict.rdx805 = or i1 %diff.check803, %diff.check804
  %i.yd = sub i64 %.0309642, %i.al
  %diff.check806 = icmp ult i64 %i.yd, 32
  %conflict.rdx807 = or i1 %conflict.rdx805, %diff.check806
  %i.ye = sub i64 %.0309642, %i.ao
  %diff.check808 = icmp ult i64 %i.ye, 32
  %conflict.rdx809 = or i1 %conflict.rdx807, %diff.check808
  br i1 %conflict.rdx809, label %.lr.ph359.preheader829, label %vector.ph812

vector.ph812:                                     ; preds = %vector.memcheck802
  %n.vec814 = and i64 %wide.trip.count377, 2147483640 ; 3 uses
  br label %vector.body815

vector.body815:                                   ; preds = %vector.body815, %vector.ph812
  %index816 = phi i64 [ 0, %vector.ph812 ], [ %index.next825, %vector.body815 ] ; 6 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index816 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %wide.load817 = load <4 x float>, ptr %i.yf, align 4, !tbaa !8
  %wide.load818 = load <4 x float>, ptr %i.yg, align 4, !tbaa !8
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index816 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %wide.load819 = load <4 x float>, ptr %i.yh, align 4, !tbaa !8
  %wide.load820 = load <4 x float>, ptr %i.yi, align 4, !tbaa !8
  %i.yj = fadd <4 x float> %wide.load817, %wide.load819
  %i.yk = fadd <4 x float> %wide.load818, %wide.load820
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index816 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %wide.load821 = load <4 x float>, ptr %i.yl, align 4, !tbaa !8
  %wide.load822 = load <4 x float>, ptr %i.ym, align 4, !tbaa !8
  %i.yn = fadd <4 x float> %i.yj, %wide.load821
  %i.yo = fadd <4 x float> %i.yk, %wide.load822
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index816 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %wide.load823 = load <4 x float>, ptr %i.yp, align 4, !tbaa !8
  %wide.load824 = load <4 x float>, ptr %i.yq, align 4, !tbaa !8
  %i.yr = fadd <4 x float> %i.yn, %wide.load823
  %i.ys = fadd <4 x float> %i.yo, %wide.load824
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %index816 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  store <4 x float> %i.yr, ptr %i.yt, align 4, !tbaa !8
  store <4 x float> %i.ys, ptr %i.yu, align 4, !tbaa !8
  %index.next825 = add nuw i64 %index816, 8       ; 2 uses
  %i.yv = icmp eq i64 %index.next825, %n.vec814
  br i1 %i.yv, label %middle.block826, label %vector.body815, !llvm.loop !82

middle.block826:                                  ; preds = %vector.body815
  %cmp.n827 = icmp eq i64 %n.vec814, %wide.trip.count377
  br i1 %cmp.n827, label %._crit_edge360, label %.lr.ph359.preheader829

.lr.ph359.preheader829:                           ; preds = %vector.memcheck802, %.lr.ph359.preheader, %middle.block826
  %indvars.iv424.ph = phi i64 [ 0, %vector.memcheck802 ], [ 0, %.lr.ph359.preheader ], [ %n.vec814, %middle.block826 ] ; 8 uses
  %xtraiter859 = and i64 %wide.trip.count392, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph359.prol.loopexit, label %.lr.ph359.prol

.lr.ph359.prol:                                   ; preds = %.lr.ph359.preheader829
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424.ph
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !8
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424.ph
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !8
  %i.za = fadd float %i.yx, %i.yz
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424.ph
  %i.zc = load float, ptr %i.zb, align 4, !tbaa !8
  %i.zd = fadd float %i.za, %i.zc
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424.ph
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !8
  %i.zg = fadd float %i.zd, %i.zf
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424.ph
  store float %i.zg, ptr %i.zh, align 4, !tbaa !8
  %indvars.iv.next425.prol = or disjoint i64 %indvars.iv424.ph, 1
  br label %.lr.ph359.prol.loopexit

.lr.ph359.prol.loopexit:                          ; preds = %.lr.ph359.prol, %.lr.ph359.preheader829
  %indvars.iv424.unr = phi i64 [ %indvars.iv424.ph, %.lr.ph359.preheader829 ], [ %indvars.iv.next425.prol, %.lr.ph359.prol ]
  %i.zi = add nsw i64 %wide.trip.count392, -1
  %i.zj = icmp eq i64 %indvars.iv424.ph, %i.zi
  br i1 %i.zj, label %._crit_edge360, label %.lr.ph359

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.1, %.lr.ph357 ], [ %indvars.iv419.unr, %.lr.ph357.prol.loopexit ] ; 5 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv419
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !8
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv419
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !8
  %i.zo = fsub float 1.000000e+00, %i.zn
  %i.zp = fmul float %i.zl, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv419
  store float %i.zp, ptr %i.zq, align 4, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 3 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next420
  %i.zs = load float, ptr %i.zr, align 4, !tbaa !8
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next420
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !8
  %i.zv = fsub float 1.000000e+00, %i.zu
  %i.zw = fmul float %i.zs, %i.zv
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next420
  store float %i.zw, ptr %i.zx, align 4, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %exitcond423.not.1 = icmp eq i64 %indvars.iv.next420.1, %wide.trip.count422
  br i1 %exitcond423.not.1, label %.lr.ph359.preheader, label %.lr.ph357, !llvm.loop !83

._crit_edge360:                                   ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359, %middle.block826, %bb.b, %.preheader330, %bb.d
  ret void

.lr.ph359:                                        ; preds = %.lr.ph359.prol.loopexit, %.lr.ph359
  %indvars.iv424 = phi i64 [ %indvars.iv.next425.1, %.lr.ph359 ], [ %indvars.iv424.unr, %.lr.ph359.prol.loopexit ] ; 7 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv424
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !8
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv424
  %i.aab = load float, ptr %i.aaa, align 4, !tbaa !8
  %i.aac = fadd float %i.zz, %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv424
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !8
  %i.aaf = fadd float %i.aac, %i.aae
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv424
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !8
  %i.aai = fadd float %i.aaf, %i.aah
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv424
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !8
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 5 uses
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next425
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !8
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next425
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !8
  %i.aao = fadd float %i.aal, %i.aan
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next425
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !8
  %i.aar = fadd float %i.aao, %i.aaq
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next425
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !8
  %i.aau = fadd float %i.aar, %i.aat
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.0309, i64 %indvars.iv.next425
  store float %i.aau, ptr %i.aav, align 4, !tbaa !8
  %indvars.iv.next425.1 = add nuw nsw i64 %indvars.iv424, 2 ; 2 uses
  %exitcond428.not.1 = icmp eq i64 %indvars.iv.next425.1, %wide.trip.count427
  br i1 %exitcond428.not.1, label %._crit_edge360, label %.lr.ph359, !llvm.loop !84
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local float @interpolateTable(ptr noundef readonly byval(%struct.Table) align 8 captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !85
  %i.c = fcmp ogt float %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !87 ; 2 uses
  %i.f = fdiv float %1, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float 5.000000e-01, float %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = load ptr, ptr %0, align 8, !tbaa !88
  %i.j = shl nsw i32 %i.h, 1
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !8
  %i.n = getelementptr i8, ptr %i.l, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %1, float %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.p, %bb.b ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @transport_sweep(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.AttenuateVars, align 8      ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %i.h = sitofp i32 %i.g to float
  %i.i = fdiv float %i.e, %i.h                    ; 2 uses
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !96
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = sitofp i32 %i.o to double
  %i.q = fdiv double %i.j, %i.p                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  %i.t = mul nsw i32 %i.s, 14
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 7 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.y = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 17 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %i.z ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !17
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.z ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr [4 x i8], ptr %i.ag, i64 %i.z ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.z ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !20
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %i.z ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.am, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr [4 x i8], ptr %i.am, i64 %i.z ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !22
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.z ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !23
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.z ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.as, ptr %i.at, align 8, !tbaa !24
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.z ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.au, ptr %i.av, align 8, !tbaa !25
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.z ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.z
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !98 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %._crit_edge223

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = fptrunc double %i.q to float            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bd, align 8, !tbaa !99 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.preheader.preheader, label %._crit_edge223
end_hunk_1
