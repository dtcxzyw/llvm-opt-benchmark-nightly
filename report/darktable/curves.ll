loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6LibRaw12cubic_splineEPKiS1_i:bb.a
  store float %i.jx, ptr %i.jv, align 4, !tbaa !22
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next240
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !22
  %i.ka = fmul reassoc nsz arcp contract afn float %i.hr, %i.jz
  %i.kb = fmul reassoc nsz arcp contract afn float %i.ka, %i.jo
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next240 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !22
  %i.ke = fsub reassoc nsz arcp contract afn float %i.kd, %i.kb
  store float %i.ke, ptr %i.kc, align 4, !tbaa !22
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next240.1
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !22
  %i.kh = fmul reassoc nsz arcp contract afn float %i.hr, %i.kg
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, %i.jp
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next240.1 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !22
  %i.kl = fsub reassoc nsz arcp contract afn float %i.kk, %i.ki
  store float %i.kl, ptr %i.kj, align 4, !tbaa !22
  %indvars.iv.next240.2 = add nuw nsw i64 %indvars.iv239, 3 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %indvars.iv.next240.2
  %i.kn = load float, ptr %i.km, align 4, !tbaa !22
  %i.ko = fmul reassoc nsz arcp contract afn float %i.hr, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.jq
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next240.2 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !22
  %i.ks = fsub reassoc nsz arcp contract afn float %i.kr, %i.kp
  store float %i.ks, ptr %i.kq, align 4, !tbaa !22
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %exitcond243.not.3 = icmp eq i64 %indvars.iv.next240.3, %wide.trip.count242
  br i1 %exitcond243.not.3, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph426, !llvm.loop !42

.preheader187:                                    ; preds = %.preheader187.lr.ph, %._crit_edge212
  %indvar = phi i32 [ 0, %.preheader187.lr.ph ], [ %indvar.next, %._crit_edge212 ] ; 3 uses
  %indvars.iv249 = phi i64 [ %i.hl, %.preheader187.lr.ph ], [ %indvars.iv.next250, %._crit_edge212 ] ; 11 uses
  %i.kt = sub i32 %i.fo, %indvar
  %smax443 = tail call i32 @llvm.smax.i32(i32 %i.kt, i32 %i.fo)
  %.reass = add i32 %indvar, %invariant.op
  %i.ku = add i32 %smax443, %.reass               ; 3 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = add nuw nsw i64 %i.kv, 1                ; 5 uses
  %.not185208 = icmp sgt i64 %indvars.iv249, %i.hm
  %.phi.trans.insert272 = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv249
  %.pre273 = load ptr, ptr %.phi.trans.insert272, align 8, !tbaa !11 ; 5 uses
  br i1 %.not185208, label %._crit_edge212, label %iter.check470

iter.check470:                                    ; preds = %.preheader187
  %min.iters.check445 = icmp ult i32 %i.ku, 7
  br i1 %min.iters.check445, label %.lr.ph211.preheader, label %vector.main.loop.iter.check446

vector.main.loop.iter.check446:                   ; preds = %iter.check470
  %min.iters.check447 = icmp ult i32 %i.ku, 31
  br i1 %min.iters.check447, label %vec.epilog.ph474, label %vector.ph448

vector.ph448:                                     ; preds = %vector.main.loop.iter.check446
  %i.kx = and i64 %i.kw, 24
  %n.vec449 = and i64 %i.kw, 8589934560           ; 4 uses
  %i.ky = add i64 %indvars.iv249, %n.vec449
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next463, %vector.body450 ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph448 ], [ %i.lm, %vector.body450 ]
  %vec.phi452 = phi <8 x float> [ zeroinitializer, %vector.ph448 ], [ %i.ln, %vector.body450 ]
  %vec.phi453 = phi <8 x float> [ zeroinitializer, %vector.ph448 ], [ %i.lo, %vector.body450 ]
  %vec.phi454 = phi <8 x float> [ zeroinitializer, %vector.ph448 ], [ %i.lp, %vector.body450 ]
  %i.kz = add nuw i64 %indvars.iv249, %index451   ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.pre273, i64 %i.kz ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 96
  %wide.load455 = load <8 x float>, ptr %i.la, align 4, !tbaa !22
  %wide.load456 = load <8 x float>, ptr %i.lb, align 4, !tbaa !22
  %wide.load457 = load <8 x float>, ptr %i.lc, align 4, !tbaa !22
  %wide.load458 = load <8 x float>, ptr %i.ld, align 4, !tbaa !22
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.kz ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 96
  %wide.load459 = load <8 x float>, ptr %i.le, align 4, !tbaa !22
  %wide.load460 = load <8 x float>, ptr %i.lf, align 4, !tbaa !22
  %wide.load461 = load <8 x float>, ptr %i.lg, align 4, !tbaa !22
  %wide.load462 = load <8 x float>, ptr %i.lh, align 4, !tbaa !22
  %i.li = fmul reassoc nsz arcp contract afn <8 x float> %wide.load459, %wide.load455
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load460, %wide.load456
  %i.lk = fmul reassoc nsz arcp contract afn <8 x float> %wide.load461, %wide.load457
  %i.ll = fmul reassoc nsz arcp contract afn <8 x float> %wide.load462, %wide.load458
  %i.lm = fadd reassoc nsz arcp contract afn <8 x float> %i.li, %vec.phi ; 2 uses
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %i.lj, %vec.phi452 ; 2 uses
  %i.lo = fadd reassoc nsz arcp contract afn <8 x float> %i.lk, %vec.phi453 ; 2 uses
  %i.lp = fadd reassoc nsz arcp contract afn <8 x float> %i.ll, %vec.phi454 ; 2 uses
  %index.next463 = add nuw i64 %index451, 32      ; 2 uses
  %i.lq = icmp eq i64 %index.next463, %n.vec449
  br i1 %i.lq, label %middle.block464, label %vector.body450, !llvm.loop !43

middle.block464:                                  ; preds = %vector.body450
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.ln, %i.lm
  %bin.rdx465 = fadd reassoc nsz arcp contract afn <8 x float> %i.lo, %bin.rdx
  %bin.rdx466 = fadd reassoc nsz arcp contract afn <8 x float> %i.lp, %bin.rdx465
  %i.lr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx466) ; 3 uses
  %cmp.n467 = icmp eq i64 %i.kw, %n.vec449
  br i1 %cmp.n467, label %._crit_edge212, label %vec.epilog.iter.check472

vec.epilog.iter.check472:                         ; preds = %middle.block464
  %min.epilog.iters.check473 = icmp eq i64 %i.kx, 0
  br i1 %min.epilog.iters.check473, label %.lr.ph211.preheader, label %vec.epilog.ph474, !prof !44

vec.epilog.ph474:                                 ; preds = %vector.main.loop.iter.check446, %vec.epilog.iter.check472
  %vec.epilog.resume.val468 = phi i64 [ %n.vec449, %vec.epilog.iter.check472 ], [ 0, %vector.main.loop.iter.check446 ]
  %bc.merge.rdx = phi float [ %i.lr, %vec.epilog.iter.check472 ], [ 0.000000e+00, %vector.main.loop.iter.check446 ]
  %n.vec475 = and i64 %i.kw, 8589934584           ; 3 uses
  %i.ls = add i64 %indvars.iv249, %n.vec475
  %i.lt = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body476

vec.epilog.vector.body476:                        ; preds = %vec.epilog.vector.body476, %vec.epilog.ph474
  %index477 = phi i64 [ %vec.epilog.resume.val468, %vec.epilog.ph474 ], [ %index.next481, %vec.epilog.vector.body476 ] ; 2 uses
  %vec.phi478 = phi <8 x float> [ %i.lt, %vec.epilog.ph474 ], [ %i.ly, %vec.epilog.vector.body476 ]
  %i.lu = add nuw i64 %indvars.iv249, %index477   ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.pre273, i64 %i.lu
  %wide.load479 = load <8 x float>, ptr %i.lv, align 4, !tbaa !22
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.lu
  %wide.load480 = load <8 x float>, ptr %i.lw, align 4, !tbaa !22
  %i.lx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load480, %wide.load479
  %i.ly = fadd reassoc nsz arcp contract afn <8 x float> %i.lx, %vec.phi478 ; 2 uses
  %index.next481 = add nuw i64 %index477, 8       ; 2 uses
  %i.lz = icmp eq i64 %index.next481, %n.vec475
  br i1 %i.lz, label %vec.epilog.middle.block482, label %vec.epilog.vector.body476, !llvm.loop !45

vec.epilog.middle.block482:                       ; preds = %vec.epilog.vector.body476
  %i.ma = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ly) ; 2 uses
  %cmp.n483 = icmp eq i64 %i.kw, %n.vec475
  br i1 %cmp.n483, label %._crit_edge212, label %.lr.ph211.preheader

.lr.ph211.preheader:                              ; preds = %iter.check470, %vec.epilog.iter.check472, %vec.epilog.middle.block482
  %indvars.iv251.ph = phi i64 [ %indvars.iv249, %iter.check470 ], [ %i.ky, %vec.epilog.iter.check472 ], [ %i.ls, %vec.epilog.middle.block482 ]
  %.0174209.ph = phi float [ 0.000000e+00, %iter.check470 ], [ %i.lr, %vec.epilog.iter.check472 ], [ %i.ma, %vec.epilog.middle.block482 ]
  br label %.lr.ph211

.preheader.split.preheader:                       ; preds = %bb.b, %._crit_edge195
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 5600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131072) %i.mb, i8 0, i64 131072, i1 false), !tbaa !46
  br label %.split.us

.lr.ph218.us.preheader.loopexit:                  ; preds = %._crit_edge212
  %i.mc = zext i32 %i.fn to i64
  br label %.lr.ph218.us.preheader

.lr.ph218.us.preheader:                           ; preds = %.lr.ph218.us.preheader.loopexit, %.preheader190
  %wide.trip.count261 = phi i64 [ 1, %.preheader190 ], [ %i.mc, %.lr.ph218.us.preheader.loopexit ] ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %min.iters.check487 = icmp samesign ult i64 %wide.trip.count261, 8
  %n.vec489 = and i64 %wide.trip.count261, 4294967288 ; 3 uses
  %cmp.n503 = icmp eq i64 %wide.trip.count261, %n.vec489
  br label %.lr.ph218.us

.lr.ph218.us:                                     ; preds = %.lr.ph218.us.preheader, %bb.h
  %indvars.iv263 = phi i64 [ 0, %.lr.ph218.us.preheader ], [ %indvars.iv.next264, %bb.h ] ; 3 uses
  %i.me = trunc nuw nsw i64 %indvars.iv263 to i32
  %i.mf = uitofp nneg i32 %i.me to float
  %i.mg = fmul reassoc nnan nsz arcp contract afn float %i.mf, f0x37800080 ; 4 uses
  br i1 %min.iters.check487, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %.lr.ph218.us
  %broadcast.splatinsert490 = insertelement <8 x float> poison, float %i.mg, i64 0
  %broadcast.splat491 = shufflevector <8 x float> %broadcast.splatinsert490, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph488
  %index493 = phi i64 [ 0, %vector.ph488 ], [ %index.next501, %vector.body492 ] ; 6 uses
  %vec.phi494 = phi <8 x float> [ zeroinitializer, %vector.ph488 ], [ %i.no, %vector.body492 ]
  %i.mh = phi <8 x i1> [ zeroinitializer, %vector.ph488 ], [ %i.nn, %vector.body492 ]
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index493
  %wide.load495 = load <8 x float>, ptr %i.mi, align 4, !tbaa !22 ; 2 uses
  %i.mj = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load495, %broadcast.splat491 ; 2 uses
  %i.mk = or disjoint i64 %index493, 1            ; 3 uses
  %i.ml = getelementptr [4 x i8], ptr %i.al, i64 %i.mk
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ml, <8 x i1> %i.mj, <8 x float> poison), !tbaa !22
  %i.mm = fcmp reassoc nsz arcp contract afn ole <8 x float> %broadcast.splat491, %wide.masked.load
  %i.mn = select <8 x i1> %i.mj, <8 x i1> %i.mm, <8 x i1> zeroinitializer
  %i.mo = freeze <8 x i1> %i.mn                   ; 7 uses
  %i.mp = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat491, %wide.load495 ; 4 uses
  %i.mq = getelementptr [4 x i8], ptr %i.an, i64 %index493
  %wide.masked.load496 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mq, <8 x i1> %i.mo, <8 x float> poison), !tbaa !22 ; 2 uses
  %i.mr = getelementptr [4 x i8], ptr %i.an, i64 %i.mk
  %wide.masked.load497 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mr, <8 x i1> %i.mo, <8 x float> poison), !tbaa !22
  %i.ms = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load497, %wide.masked.load496
  %i.mt = getelementptr [4 x i8], ptr %i.ak, i64 %index493
  %wide.masked.load498 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mt, <8 x i1> %i.mo, <8 x float> poison), !tbaa !22 ; 3 uses
  %i.mu = fdiv reassoc nsz arcp contract afn <8 x float> %i.ms, %wide.masked.load498
  %i.mv = getelementptr [4 x i8], ptr %i.aj, i64 %index493
  %wide.masked.load499 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mv, <8 x i1> %i.mo, <8 x float> poison), !tbaa !22 ; 3 uses
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load499, splat (float 2.000000e+00)
  %i.mx = getelementptr [4 x i8], ptr %i.aj, i64 %i.mk
  %wide.masked.load500 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.mx, <8 x i1> %i.mo, <8 x float> poison), !tbaa !22 ; 2 uses
  %i.my = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load500, %i.mw
  %i.mz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load498, splat (float f0x3E2AAAAB)
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %i.mz, %i.my
  %i.nb = fsub reassoc nsz arcp contract afn <8 x float> %i.mu, %i.na
  %i.nc = fmul reassoc nsz arcp contract afn <8 x float> %i.nb, %i.mp
  %4 = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.load496, %i.nc
  %i.nd = fmul reassoc nsz arcp contract afn <8 x float> %i.mp, %i.mp ; 2 uses
  %i.ne = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, splat (float 5.000000e-01)
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %i.ne, %wide.masked.load499
  %5 = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, %4
  %i.ng = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.load500, %wide.masked.load499
  %i.nh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load498, splat (float 6.000000e+00)
  %i.ni = fmul reassoc nsz arcp contract afn <8 x float> %i.nd, %i.mp
  %i.nj = fmul reassoc nsz arcp contract afn <8 x float> %i.ni, %i.ng
  %i.nk = fdiv reassoc nsz arcp contract afn <8 x float> %i.nj, %i.nh
  %i.nl = fadd reassoc nsz arcp contract afn <8 x float> %5, %i.nk
  %i.nm = bitcast <8 x i1> %i.mo to i8
  %.not506 = icmp eq i8 %i.nm, 0                  ; 2 uses
  %i.nn = select i1 %.not506, <8 x i1> %i.mh, <8 x i1> %i.mo ; 2 uses
  %i.no = select i1 %.not506, <8 x float> %vec.phi494, <8 x float> %i.nl ; 2 uses
  %index.next501 = add nuw i64 %index493, 8       ; 2 uses
  %i.np = icmp eq i64 %index.next501, %n.vec489
  br i1 %i.np, label %middle.block502, label %vector.body492, !llvm.loop !48

middle.block502:                                  ; preds = %vector.body492
  %i.nq = tail call float @llvm.experimental.vector.extract.last.active.v8f32(<8 x float> %i.no, <8 x i1> %i.nn, float 0.000000e+00) ; 2 uses
  br i1 %cmp.n503, label %._crit_edge219.us, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %.lr.ph218.us, %middle.block502
  %indvars.iv258.ph = phi i64 [ 0, %.lr.ph218.us ], [ %n.vec489, %middle.block502 ]
  %.0169216.us.ph = phi float [ 0.000000e+00, %.lr.ph218.us ], [ %i.nq, %middle.block502 ]
  br label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.preheader, %._crit_edge274
  %indvars.iv258 = phi i64 [ %.pre275, %._crit_edge274 ], [ %indvars.iv258.ph, %scalar.ph486.preheader ] ; 5 uses
  %.0169216.us = phi float [ %.1170.us, %._crit_edge274 ], [ %.0169216.us.ph, %scalar.ph486.preheader ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv258
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !22 ; 2 uses
  %i.nt = fcmp reassoc nsz arcp contract afn ugt float %i.ns, %i.mg
  %.pre275 = add nuw nsw i64 %indvars.iv258, 1    ; 5 uses
  br i1 %i.nt, label %._crit_edge274, label %bb.d

bb.d:                                             ; preds = %scalar.ph486
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.pre275
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !22
  %i.nw = fcmp reassoc nsz arcp contract afn ugt float %i.mg, %i.nv
  br i1 %i.nw, label %._crit_edge274, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.nx = fsub reassoc nsz arcp contract afn float %i.mg, %i.ns ; 4 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv258
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !22 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.pre275
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !22
  %i.oc = fsub reassoc nsz arcp contract afn float %i.ob, %i.nz
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv258
  %i.oe = load float, ptr %i.od, align 4, !tbaa !22 ; 3 uses
  %i.of = fdiv reassoc nsz arcp contract afn float %i.oc, %i.oe
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv258
  %i.oh = load float, ptr %i.og, align 4, !tbaa !22 ; 3 uses
  %i.oi = fmul reassoc nsz arcp contract afn float %i.oh, 2.000000e+00
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre275
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !22 ; 2 uses
  %reass.add.us = fadd reassoc nsz arcp contract afn float %i.ok, %i.oi
  %reass.mul.us = fmul reassoc nsz arcp contract afn float %i.oe, f0x3E2AAAAB
  %i.ol = fmul reassoc nsz arcp contract afn float %reass.mul.us, %reass.add.us
  %i.om = fsub reassoc nsz arcp contract afn float %i.of, %i.ol
  %i.on = fmul reassoc nsz arcp contract afn float %i.om, %i.nx
  %6 = fadd reassoc nsz arcp contract afn float %i.nz, %i.on
  %i.oo = fmul reassoc nsz arcp contract afn float %i.nx, %i.nx ; 2 uses
  %i.op = fmul reassoc nsz arcp contract afn float %i.oo, 5.000000e-01
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %i.oh
  %7 = fadd reassoc nsz arcp contract afn float %i.oq, %6
  %i.or = fsub reassoc nsz arcp contract afn float %i.ok, %i.oh
  %i.os = fmul reassoc nsz arcp contract afn float %i.oe, 6.000000e+00
  %i.ot = fmul reassoc nsz arcp contract afn float %i.oo, %i.nx
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.or
  %i.ov = fdiv reassoc nsz arcp contract afn float %i.ou, %i.os
  %i.ow = fadd reassoc nsz arcp contract afn float %7, %i.ov
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %scalar.ph486, %bb.e, %bb.d
  %.1170.us = phi nsz float [ %.0169216.us, %bb.d ], [ %i.ow, %bb.e ], [ %.0169216.us, %scalar.ph486 ] ; 2 uses
  %exitcond262.not = icmp eq i64 %.pre275, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge219.us, label %scalar.ph486, !llvm.loop !49

bb.f:                                             ; preds = %._crit_edge219.us
  %i.ox = fcmp reassoc nsz arcp contract afn ult float %.1170.us.lcssa, 1.000000e+00
  br i1 %i.ox, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.oy = fmul reassoc nsz arcp contract afn float %.1170.us.lcssa, 6.553500e+04
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, 5.000000e-01
  %i.pa = fptoui float %i.oz to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge219.us
  %i.pb = phi i16 [ 0, %._crit_edge219.us ], [ %i.pa, %bb.g ], [ -1, %bb.f ]
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.md, i64 %indvars.iv263
  store i16 %i.pb, ptr %i.pc, align 2, !tbaa !46
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next264, 65536
  br i1 %exitcond266.not, label %.split.us, label %.lr.ph218.us, !llvm.loop !50

._crit_edge219.us:                                ; preds = %._crit_edge274, %middle.block502
  %.1170.us.lcssa = phi float [ %i.nq, %middle.block502 ], [ %.1170.us, %._crit_edge274 ] ; 3 uses
  %i.pd = fcmp reassoc nsz arcp contract afn olt float %.1170.us.lcssa, 0.000000e+00
  br i1 %i.pd, label %bb.h, label %bb.f

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %.lr.ph211
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph211 ], [ %indvars.iv251.ph, %.lr.ph211.preheader ] ; 4 uses
  %.0174209 = phi float [ %i.pj, %.lr.ph211 ], [ %.0174209.ph, %.lr.ph211.preheader ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.pre273, i64 %indvars.iv251
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !22
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv251
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !22
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ph, %i.pf
  %i.pj = fadd reassoc nsz arcp contract afn float %i.pi, %.0174209 ; 2 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1
  %i.pk = trunc nuw i64 %indvars.iv251 to i32
  %.not185.not = icmp sgt i32 %i.fo, %i.pk
  br i1 %.not185.not, label %.lr.ph211, label %._crit_edge212, !llvm.loop !51

._crit_edge212:                                   ; preds = %.lr.ph211, %middle.block464, %vec.epilog.middle.block482, %.preheader187
  %.0174.lcssa = phi float [ 0.000000e+00, %.preheader187 ], [ %i.ma, %vec.epilog.middle.block482 ], [ %i.lr, %middle.block464 ], [ %i.pj, %.lr.ph211 ]
  %i.pl = getelementptr inbounds [4 x i8], ptr %.pre273, i64 %i.hk
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !22
  %i.pn = fsub reassoc nsz arcp contract afn float %i.pm, %.0174.lcssa
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %.pre273, i64 %indvars.iv249
  %i.pp = load float, ptr %i.po, align 4, !tbaa !22
  %i.pq = fdiv reassoc nsz arcp contract afn float %i.pn, %i.pp
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv249
  store float %i.pq, ptr %i.pr, align 4, !tbaa !22
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, -1
  %i.ps = icmp sgt i64 %indvars.iv249, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ps, label %.preheader187, label %.lr.ph218.us.preheader.loopexit, !llvm.loop !52

.split.us:                                        ; preds = %bb.h, %.preheader.split.preheader
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.split.us
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @_ZN6LibRaw11gamma_curveEddii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(768512) %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
.cont18:
  %i.a = fcmp reassoc nsz arcp contract afn une double %2, 0.000000e+00
  br i1 %i.a, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.cont18
  %i.b = fadd reassoc nsz arcp contract afn double %2, -1.000000e+00
  %i.c = fadd reassoc nsz arcp contract afn double %1, -1.000000e+00
  %i.d = fmul reassoc nsz arcp contract afn double %i.b, %i.c
  %i.e = fcmp reassoc nsz arcp contract afn ugt double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.preheader91

.preheader91:                                     ; preds = %bb.a
  %i.f = fcmp reassoc nsz arcp contract afn ult double %2, 1.000000e+00 ; 2 uses
  %. = select nsz i1 %i.f, double 1.000000e+00, double 0.000000e+00 ; 2 uses
  %.86 = select nsz i1 %i.f, double 0.000000e+00, double 1.000000e+00 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn une double %1, 0.000000e+00
  %i.h = fneg reassoc nsz arcp contract afn double %1 ; 4 uses
  br i1 %i.g, label %.cont15.us.preheader, label %.cont

.cont15.us.preheader:                             ; preds = %.preheader91
  %i.i = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %2
  %i.j = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %1
  %i.k = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %2
  %i.l = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %1
  %i.m = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %2
  %i.n = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %1
  %i.o = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %2
  %i.p = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %1
  br label %.cont15.us

.cont15.us:                                       ; preds = %.cont15.us, %.cont15.us.preheader
  %.sroa.7.094.us = phi double [ %.86, %.cont15.us.preheader ], [ %..sroa.7.0.us.3, %.cont15.us ] ; 2 uses
  %.sroa.0.093.us = phi double [ %., %.cont15.us.preheader ], [ %.sroa.0.0..us.3, %.cont15.us ] ; 2 uses
  %.092.us = phi i32 [ 0, %.cont15.us.preheader ], [ %i.ba, %.cont15.us ]
  %i.q = fadd reassoc nsz arcp contract afn double %.sroa.7.094.us, %.sroa.0.093.us ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, 5.000000e-01 ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn double %i.r, %i.i
  %i.t = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.s, double %i.h)
  %i.u = fadd reassoc nsz arcp contract afn double %i.t, -1.000000e+00
  %i.v = fmul reassoc nsz arcp contract afn double %i.u, %i.j
  %i.w = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.q
  %i.x = fsub reassoc nsz arcp contract afn double %i.v, %i.w
  %i.y = fcmp reassoc nsz arcp contract afn ogt double %i.x, -1.000000e+00 ; 2 uses
  %.sroa.0.0..us = select nsz i1 %i.y, double %.sroa.0.093.us, double %i.r ; 2 uses
  %..sroa.7.0.us = select nsz i1 %i.y, double %i.r, double %.sroa.7.094.us ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %..sroa.7.0.us, %.sroa.0.0..us ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn double %i.z, 5.000000e-01 ; 3 uses
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, %i.k
  %i.ac = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.ab, double %i.h)
  %i.ad = fadd reassoc nsz arcp contract afn double %i.ac, -1.000000e+00
  %i.ae = fmul reassoc nsz arcp contract afn double %i.ad, %i.l
  %i.af = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.z
  %i.ag = fsub reassoc nsz arcp contract afn double %i.ae, %i.af
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.ag, -1.000000e+00 ; 2 uses
  %.sroa.0.0..us.1 = select nsz i1 %i.ah, double %.sroa.0.0..us, double %i.aa ; 2 uses
  %..sroa.7.0.us.1 = select nsz i1 %i.ah, double %i.aa, double %..sroa.7.0.us ; 2 uses
  %i.ai = fadd reassoc nsz arcp contract afn double %..sroa.7.0.us.1, %.sroa.0.0..us.1 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, 5.000000e-01 ; 3 uses
  %i.ak = fmul reassoc nsz arcp contract afn double %i.aj, %i.m
  %i.al = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.ak, double %i.h)
  %i.am = fadd reassoc nsz arcp contract afn double %i.al, -1.000000e+00
  %i.an = fmul reassoc nsz arcp contract afn double %i.am, %i.n
  %i.ao = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.ai
  %i.ap = fsub reassoc nsz arcp contract afn double %i.an, %i.ao
  %i.aq = fcmp reassoc nsz arcp contract afn ogt double %i.ap, -1.000000e+00 ; 2 uses
  %.sroa.0.0..us.2 = select nsz i1 %i.aq, double %.sroa.0.0..us.1, double %i.aj ; 2 uses
  %..sroa.7.0.us.2 = select nsz i1 %i.aq, double %i.aj, double %..sroa.7.0.us.1 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn double %..sroa.7.0.us.2, %.sroa.0.0..us.2 ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn double %i.ar, 5.000000e-01 ; 5 uses
  %i.at = fmul reassoc nsz arcp contract afn double %i.as, %i.o ; 2 uses
  %i.au = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.at, double %i.h)
  %i.av = fadd reassoc nsz arcp contract afn double %i.au, -1.000000e+00
  %i.aw = fmul reassoc nsz arcp contract afn double %i.av, %i.p
  %i.ax = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.ar
  %i.ay = fsub reassoc nsz arcp contract afn double %i.aw, %i.ax
  %i.az = fcmp reassoc nsz arcp contract afn ogt double %i.ay, -1.000000e+00 ; 2 uses
  %.sroa.0.0..us.3 = select nsz i1 %i.az, double %.sroa.0.0..us.2, double %i.as
  %..sroa.7.0.us.3 = select nsz i1 %i.az, double %i.as, double %..sroa.7.0.us.2
  %i.ba = add nuw nsw i32 %.092.us, 4             ; 2 uses
  %exitcond102.not.3 = icmp eq i32 %i.ba, 48
  br i1 %exitcond102.not.3, label %bb.b, label %.cont15.us, !llvm.loop !53

.cont:                                            ; preds = %.preheader91, %.cont
  %.sroa.7.094 = phi double [ %..sroa.7.088.3, %.cont ], [ %.86, %.preheader91 ] ; 2 uses
  %.sroa.0.093 = phi double [ %.sroa.0.0.87.3, %.cont ], [ %., %.preheader91 ] ; 2 uses
  %.092 = phi i32 [ %i.cd, %.cont ], [ 0, %.preheader91 ]
  %i.bb = fadd reassoc nsz arcp contract afn double %.sroa.7.094, %.sroa.0.093 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn double %i.bb, 5.000000e-01 ; 3 uses
  %i.bd = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.bb
  %i.be = fadd reassoc nsz arcp contract afn double %i.bd, -1.000000e+00
  %i.bf = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.be)
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, %i.bc
  %i.bh = fcmp reassoc nsz arcp contract afn olt double %i.bg, %2 ; 2 uses
  %.sroa.0.0.87 = select nsz i1 %i.bh, double %.sroa.0.093, double %i.bc ; 2 uses
  %..sroa.7.088 = select nsz i1 %i.bh, double %i.bc, double %.sroa.7.094 ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn double %..sroa.7.088, %.sroa.0.0.87 ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, 5.000000e-01 ; 3 uses
  %i.bk = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.bi
  %i.bl = fadd reassoc nsz arcp contract afn double %i.bk, -1.000000e+00
  %i.bm = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.bl)
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bm, %i.bj
  %i.bo = fcmp reassoc nsz arcp contract afn olt double %i.bn, %2 ; 2 uses
  %.sroa.0.0.87.1 = select nsz i1 %i.bo, double %.sroa.0.0.87, double %i.bj ; 2 uses
  %..sroa.7.088.1 = select nsz i1 %i.bo, double %i.bj, double %..sroa.7.088 ; 2 uses
  %i.bp = fadd reassoc nsz arcp contract afn double %..sroa.7.088.1, %.sroa.0.0.87.1 ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn double %i.bp, 5.000000e-01 ; 3 uses
  %i.br = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.bp
  %i.bs = fadd reassoc nsz arcp contract afn double %i.br, -1.000000e+00
  %i.bt = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.bs)
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bt, %i.bq
  %i.bv = fcmp reassoc nsz arcp contract afn olt double %i.bu, %2 ; 2 uses
  %.sroa.0.0.87.2 = select nsz i1 %i.bv, double %.sroa.0.0.87.1, double %i.bq ; 2 uses
  %..sroa.7.088.2 = select nsz i1 %i.bv, double %i.bq, double %..sroa.7.088.1 ; 2 uses
  %i.bw = fadd reassoc nsz arcp contract afn double %..sroa.7.088.2, %.sroa.0.0.87.2 ; 2 uses
  %i.bx = fmul reassoc nsz arcp contract afn double %i.bw, 5.000000e-01 ; 5 uses
  %i.by = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.bw
  %i.bz = fadd reassoc nsz arcp contract afn double %i.by, -1.000000e+00
  %i.ca = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.bz)
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, %i.bx
  %i.cc = fcmp reassoc nsz arcp contract afn olt double %i.cb, %2 ; 2 uses
  %.sroa.0.0.87.3 = select nsz i1 %i.cc, double %.sroa.0.0.87.2, double %i.bx
  %..sroa.7.088.3 = select nsz i1 %i.cc, double %i.bx, double %..sroa.7.088.2
  %i.cd = add nuw nsw i32 %.092, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cd, 48
  br i1 %exitcond.not.3, label %.split.us, label %.cont, !llvm.loop !53

.split.us:                                        ; preds = %.cont
  %.pre = fdiv reassoc nsz arcp contract afn double %i.bx, %2
  br label %bb.c

bb.b:                                             ; preds = %.cont15.us
  %i.ce = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %1
  %i.cf = fadd reassoc nsz arcp contract afn double %i.ce, -1.000000e+00
  %i.cg = fmul reassoc nsz arcp contract afn double %i.as, %i.cf
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %bb.b, %bb.a, %.cont18
  %.sroa.55.0 = phi nsz double [ %i.cg, %bb.b ], [ 0.000000e+00, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 8 uses
  %.sroa.43.0 = phi nsz double [ %i.at, %bb.b ], [ %.pre, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 13 uses
  %.sroa.28.1 = phi nsz double [ %i.as, %bb.b ], [ %i.bx, %.split.us ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.cont18 ] ; 11 uses
  %i.ch = fcmp reassoc nsz arcp contract afn une double %1, 0.000000e+00 ; 3 uses
  %i.ci = fmul reassoc nsz arcp contract afn double %2, 5.000000e-01 ; 2 uses
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cj = fmul reassoc nsz arcp contract afn double %.sroa.43.0, %.sroa.43.0
  %i.ck = fmul reassoc nsz arcp contract afn double %i.cj, %i.ci
  %i.cl = fsub reassoc nsz arcp contract afn double 1.000000e+00, %.sroa.43.0
  %i.cm = fmul reassoc nsz arcp contract afn double %.sroa.55.0, %i.cl
  %i.cn = fsub reassoc nsz arcp contract afn double %i.ck, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn double %1, 1.000000e+00 ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %.sroa.43.0, double %i.co)
  %i.cq = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.cp
  %i.cr = fadd reassoc nsz arcp contract afn double %.sroa.55.0, 1.000000e+00
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cq, %i.cr
  %i.ct = fdiv reassoc nsz arcp contract afn double %i.cs, %i.co
  %i.cu = fadd reassoc nsz arcp contract afn double %i.cn, %i.ct
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cv = fmul reassoc nsz arcp contract afn double %i.ci, %.sroa.43.0
  %i.cw = tail call reassoc nsz arcp contract afn double @llvm.log.f64(double %.sroa.43.0)
  %i.cx = fadd reassoc nsz arcp contract afn double %i.cw, -1.000000e+00
  %.neg89 = fmul reassoc nsz arcp contract afn double %i.cx, %.sroa.28.1
  %5 = fadd reassoc nsz arcp contract afn double %.sroa.43.0, %.sroa.28.1
  %.neg90 = fsub reassoc nsz arcp contract afn double 1.000000e+00, %5
  %6 = fsub reassoc nsz arcp contract afn double %i.cv, %.neg89
  %reass.mul = fmul reassoc nsz arcp contract afn double %6, %.sroa.43.0
  %i.cy = fadd reassoc nsz arcp contract afn double %reass.mul, %.neg90
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi double [ %i.cu, %bb.d ], [ %i.cy, %bb.e ]
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.ah, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 8 uses
  %i.da = sitofp reassoc nsz arcp contract afn i32 %4 to double
  %i.db = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %1, i64 1
  %i.dd = fdiv reassoc nsz arcp contract afn <2 x double> splat (double 1.000000e+00), %i.dc ; 3 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 8 uses
  %i.df = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %2 ; 4 uses
  %.not85 = icmp eq i32 %3, 1
  %i.dg = fadd reassoc nsz arcp contract afn double %.sroa.55.0, 1.000000e+00 ; 4 uses
  br i1 %.not85, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.ch, label %.preheader.split.us.split.us.preheader, label %.preheader.split.us.split.preheader

.preheader.split.us.split.preheader:              ; preds = %.preheader.split.us
  %i.dh = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.sroa.28.1
  %i.di = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %.sroa.28.1
  br label %.preheader.split.us.split

.preheader.split.us.split.us.preheader:           ; preds = %.preheader.split.us
  %i.dj = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dg
  %i.dk = extractelement <2 x double> %i.dd, i64 1
  %i.dl = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.dg
  %i.dm = extractelement <2 x double> %i.dd, i64 1
  br label %.preheader.split.us.split.us

.preheader.split.us.split.us:                     ; preds = %bb.o, %.preheader.split.us.split.us.preheader
  %indvars.iv113 = phi i64 [ 0, %.preheader.split.us.split.us.preheader ], [ %indvars.iv.next114.1, %bb.o ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv113 ; 2 uses
  store i16 -1, ptr %i.dn, align 4, !tbaa !46
  %i.do = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.dp = uitofp nneg i32 %i.do to double
  %i.dq = fmul reassoc nsz arcp contract afn double %i.de, %i.dp ; 4 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt double %i.dq, 1.000000e+00
  br i1 %i.dr, label %bb.g, label %.preheader.split.us.split.us.1

bb.g:                                             ; preds = %.preheader.split.us.split.us
  %i.ds = fcmp reassoc nsz arcp contract afn olt double %i.dq, %.sroa.28.1
  br i1 %i.ds, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dt = fadd reassoc nsz arcp contract afn double %i.dq, %.sroa.55.0
  %i.du = fmul reassoc nsz arcp contract afn double %i.dt, %i.dj
  %i.dv = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.du, double %i.dk)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dw = fmul reassoc nsz arcp contract afn double %i.dq, %i.df
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dx = phi reassoc nsz arcp contract afn double [ %i.dv, %bb.h ], [ %i.dw, %bb.i ]
  %i.dy = fmul reassoc nsz arcp contract afn double %i.dx, 6.553600e+04
  %i.dz = fptoui double %i.dy to i16
  store i16 %i.dz, ptr %i.dn, align 4, !tbaa !46
  br label %.preheader.split.us.split.us.1

.preheader.split.us.split.us.1:                   ; preds = %bb.j, %.preheader.split.us.split.us
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next114 ; 2 uses
  store i16 -1, ptr %i.ea, align 2, !tbaa !46
  %i.eb = trunc nuw nsw i64 %indvars.iv.next114 to i32
  %i.ec = uitofp nneg i32 %i.eb to double
  %i.ed = fmul reassoc nsz arcp contract afn double %i.de, %i.ec ; 4 uses
  %i.ee = fcmp reassoc nsz arcp contract afn olt double %i.ed, 1.000000e+00
  br i1 %i.ee, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.preheader.split.us.split.us.1
  %i.ef = fcmp reassoc nsz arcp contract afn olt double %i.ed, %.sroa.28.1
  br i1 %i.ef, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = fadd reassoc nsz arcp contract afn double %i.ed, %.sroa.55.0
  %i.eh = fmul reassoc nsz arcp contract afn double %i.eg, %i.dl
  %i.ei = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.eh, double %i.dm)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ej = fmul reassoc nsz arcp contract afn double %i.ed, %i.df
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ek = phi reassoc nsz arcp contract afn double [ %i.ei, %bb.l ], [ %i.ej, %bb.m ]
  %i.el = fmul reassoc nsz arcp contract afn double %i.ek, 6.553600e+04
  %i.em = fptoui double %i.el to i16
  store i16 %i.em, ptr %i.ea, align 2, !tbaa !46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader.split.us.split.us.1
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond116.not.1 = icmp eq i64 %indvars.iv.next114.1, 65536
  br i1 %exitcond116.not.1, label %.loopexit, label %.preheader.split.us.split.us, !llvm.loop !54

.preheader.split.us.split:                        ; preds = %bb.x, %.preheader.split.us.split.preheader
  %indvars.iv109 = phi i64 [ 0, %.preheader.split.us.split.preheader ], [ %indvars.iv.next110.1, %bb.x ] ; 4 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv109 ; 2 uses
  store i16 -1, ptr %i.en, align 4, !tbaa !46
  %i.eo = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.ep = uitofp nneg i32 %i.eo to double
  %i.eq = fmul reassoc nsz arcp contract afn double %i.de, %i.ep ; 4 uses
  %i.er = fcmp reassoc nsz arcp contract afn olt double %i.eq, 1.000000e+00
  br i1 %i.er, label %bb.p, label %.preheader.split.us.split.1

bb.p:                                             ; preds = %.preheader.split.us.split
  %i.es = fcmp reassoc nsz arcp contract afn olt double %i.eq, %.sroa.28.1
  br i1 %i.es, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = fadd reassoc nnan nsz arcp contract afn double %i.eq, -1.000000e+00
  %i.eu = fmul reassoc nsz arcp contract afn double %i.et, %i.dh
  %i.ev = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.eu)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ew = fmul reassoc nsz arcp contract afn double %i.eq, %i.df
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ex = phi reassoc nsz arcp contract afn double [ %i.ev, %bb.q ], [ %i.ew, %bb.r ]
  %i.ey = fmul reassoc nsz arcp contract afn double %i.ex, 6.553600e+04
  %i.ez = fptoui double %i.ey to i16
  store i16 %i.ez, ptr %i.en, align 4, !tbaa !46
  br label %.preheader.split.us.split.1

.preheader.split.us.split.1:                      ; preds = %bb.s, %.preheader.split.us.split
  %indvars.iv.next110 = or disjoint i64 %indvars.iv109, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv.next110 ; 2 uses
  store i16 -1, ptr %i.fa, align 2, !tbaa !46
  %i.fb = trunc nuw nsw i64 %indvars.iv.next110 to i32
  %i.fc = uitofp nneg i32 %i.fb to double
  %i.fd = fmul reassoc nsz arcp contract afn double %i.de, %i.fc ; 4 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt double %i.fd, 1.000000e+00
  br i1 %i.fe, label %bb.t, label %bb.x

bb.t:                                             ; preds = %.preheader.split.us.split.1
  %i.ff = fcmp reassoc nsz arcp contract afn olt double %i.fd, %.sroa.28.1
  br i1 %i.ff, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fg = fadd reassoc nnan nsz arcp contract afn double %i.fd, -1.000000e+00
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fg, %i.di
  %i.fi = tail call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.fh)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fj = fmul reassoc nsz arcp contract afn double %i.fd, %i.df
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fk = phi reassoc nsz arcp contract afn double [ %i.fi, %bb.u ], [ %i.fj, %bb.v ]
  %i.fl = fmul reassoc nsz arcp contract afn double %i.fk, 6.553600e+04
  %i.fm = fptoui double %i.fl to i16
  store i16 %i.fm, ptr %i.fa, align 2, !tbaa !46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader.split.us.split.1
  %indvars.iv.next110.1 = add nuw nsw i64 %indvars.iv109, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next110.1, 65536
  br i1 %exitcond112.not.1, label %.loopexit, label %.preheader.split.us.split, !llvm.loop !54

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.ch, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %bb.ag
  %indvars.iv105 = phi i64 [ %indvars.iv.next106.1, %bb.ag ], [ 0, %.preheader.split ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv105 ; 2 uses
  store i16 -1, ptr %i.fn, align 4, !tbaa !46
  %i.fo = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.fp = uitofp nneg i32 %i.fo to double
  %i.fq = fmul reassoc nsz arcp contract afn double %i.de, %i.fp ; 4 uses
  %i.fr = fcmp reassoc nsz arcp contract afn olt double %i.fq, 1.000000e+00
  br i1 %i.fr, label %bb.y, label %.preheader.split.split.us.1

bb.y:                                             ; preds = %.preheader.split.split.us
  %i.fs = fcmp reassoc nsz arcp contract afn olt double %i.fq, %.sroa.43.0
  br i1 %i.fs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.fq, double %1)
  %i.fu = fmul reassoc nsz arcp contract afn double %i.ft, %i.dg
  %i.fv = fsub reassoc nsz arcp contract afn double %i.fu, %.sroa.55.0
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fq, %2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fx = phi reassoc nsz arcp contract afn double [ %i.fv, %bb.z ], [ %i.fw, %bb.aa ]
  %i.fy = fmul reassoc nsz arcp contract afn double %i.fx, 6.553600e+04
  %i.fz = fptoui double %i.fy to i16
  store i16 %i.fz, ptr %i.fn, align 4, !tbaa !46
end_hunk_0
