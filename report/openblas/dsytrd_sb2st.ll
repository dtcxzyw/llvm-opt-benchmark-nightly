Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsytrd_sb2st?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dsytrd_sb2st_:bb.a
  br i1 %cmp.n523, label %.loopexit330, label %vec.epilog.iter.check527

vec.epilog.iter.check527:                         ; preds = %middle.block522
  %min.epilog.iters.check528 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check528, label %.lr.ph341.preheader, label %vec.epilog.ph529, !prof !45

vec.epilog.ph529:                                 ; preds = %vector.main.loop.iter.check511, %vec.epilog.iter.check527
  %vec.epilog.resume.val524 = phi i64 [ %n.vec514, %vec.epilog.iter.check527 ], [ 0, %vector.main.loop.iter.check511 ]
  %n.vec530 = and i64 %i.hu, -4                   ; 3 uses
  %i.il = or disjoint i64 %n.vec530, 1
  br label %vec.epilog.vector.body531

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531, %vec.epilog.ph529
  %index532 = phi i64 [ %vec.epilog.resume.val524, %vec.epilog.ph529 ], [ %index.next534, %vec.epilog.vector.body531 ] ; 3 uses
  %i.im = getelementptr [8 x i8], ptr %invariant.gep448, i64 %index532
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %wide.load533 = load <4 x double>, ptr %i.in, align 8, !tbaa !41
  %i.io = getelementptr [8 x i8], ptr %8, i64 %index532
  store <4 x double> %wide.load533, ptr %i.io, align 8, !tbaa !41
  %index.next534 = add nuw i64 %index532, 4       ; 2 uses
  %i.ip = icmp eq i64 %index.next534, %n.vec530
  br i1 %i.ip, label %vec.epilog.middle.block535, label %vec.epilog.vector.body531, !llvm.loop !21

vec.epilog.middle.block535:                       ; preds = %vec.epilog.vector.body531
  %cmp.n536 = icmp eq i64 %i.hu, %n.vec530
  br i1 %cmp.n536, label %.loopexit330, label %.lr.ph341.preheader

.lr.ph341.preheader:                              ; preds = %vector.memcheck508, %iter.check525, %vec.epilog.iter.check527, %vec.epilog.middle.block535
  %indvars.iv390.ph = phi i64 [ 1, %iter.check525 ], [ 1, %vector.memcheck508 ], [ %i.ia, %vec.epilog.iter.check527 ], [ %i.il, %vec.epilog.middle.block535 ] ; 4 uses
  %i.iq = sub nsw i64 %i.ds, %indvars.iv390.ph
  %xtraiter681 = and i64 %i.iq, 7                 ; 2 uses
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %.lr.ph341.prol.loopexit, label %.lr.ph341.prol

.lr.ph341.prol:                                   ; preds = %.lr.ph341.preheader, %.lr.ph341.prol
  %indvars.iv390.prol = phi i64 [ %indvars.iv.next391.prol, %.lr.ph341.prol ], [ %indvars.iv390.ph, %.lr.ph341.preheader ] ; 3 uses
  %prol.iter683 = phi i64 [ %prol.iter683.next, %.lr.ph341.prol ], [ 0, %.lr.ph341.preheader ]
  %i.ir = mul nsw i64 %indvars.iv390.prol, %i.ht
  %gep449.prol = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.ir
  %i.is = load double, ptr %gep449.prol, align 8, !tbaa !41
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv390.prol
  store double %i.is, ptr %i.it, align 8, !tbaa !41
  %indvars.iv.next391.prol = add nuw nsw i64 %indvars.iv390.prol, 1 ; 2 uses
  %prol.iter683.next = add i64 %prol.iter683, 1   ; 2 uses
  %prol.iter683.cmp.not = icmp eq i64 %prol.iter683.next, %xtraiter681
  br i1 %prol.iter683.cmp.not, label %.lr.ph341.prol.loopexit, label %.lr.ph341.prol, !llvm.loop !22

.lr.ph341.prol.loopexit:                          ; preds = %.lr.ph341.prol, %.lr.ph341.preheader
  %indvars.iv390.unr = phi i64 [ %indvars.iv390.ph, %.lr.ph341.preheader ], [ %indvars.iv.next391.prol, %.lr.ph341.prol ]
  %i.iu = sub nsw i64 %indvars.iv390.ph, %i.ds
  %i.iv = icmp ugt i64 %i.iu, -8
  br i1 %i.iv, label %.loopexit330, label %.lr.ph341

.lr.ph341:                                        ; preds = %.lr.ph341.prol.loopexit, %.lr.ph341
  %indvars.iv390 = phi i64 [ %indvars.iv.next391.7, %.lr.ph341 ], [ %indvars.iv390.unr, %.lr.ph341.prol.loopexit ] ; 11 uses
  %i.iw = mul nsw i64 %indvars.iv390, %i.ht
  %gep449 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.iw
  %i.ix = load double, ptr %gep449, align 8, !tbaa !41
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv390
  store double %i.ix, ptr %i.iy, align 8, !tbaa !41
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1
  %i.iz = mul nsw i64 %indvars.iv.next391, %i.ht
  %gep449.1 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.iz
  %i.ja = load double, ptr %gep449.1, align 8, !tbaa !41
  %i.jb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv390
  store double %i.ja, ptr %i.jb, align 8, !tbaa !41
  %indvars.iv.next391.1 = add nuw nsw i64 %indvars.iv390, 2 ; 2 uses
  %i.jc = mul nsw i64 %indvars.iv.next391.1, %i.ht
  %gep449.2 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jc
  %i.jd = load double, ptr %gep449.2, align 8, !tbaa !41
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.1
  store double %i.jd, ptr %i.je, align 8, !tbaa !41
  %indvars.iv.next391.2 = add nuw nsw i64 %indvars.iv390, 3 ; 2 uses
  %i.jf = mul nsw i64 %indvars.iv.next391.2, %i.ht
  %gep449.3 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jf
  %i.jg = load double, ptr %gep449.3, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.2
  store double %i.jg, ptr %i.jh, align 8, !tbaa !41
  %indvars.iv.next391.3 = add nuw nsw i64 %indvars.iv390, 4 ; 2 uses
  %i.ji = mul nsw i64 %indvars.iv.next391.3, %i.ht
  %gep449.4 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.ji
  %i.jj = load double, ptr %gep449.4, align 8, !tbaa !41
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.3
  store double %i.jj, ptr %i.jk, align 8, !tbaa !41
  %indvars.iv.next391.4 = add nuw nsw i64 %indvars.iv390, 5 ; 2 uses
  %i.jl = mul nsw i64 %indvars.iv.next391.4, %i.ht
  %gep449.5 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jl
  %i.jm = load double, ptr %gep449.5, align 8, !tbaa !41
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.4
  store double %i.jm, ptr %i.jn, align 8, !tbaa !41
  %indvars.iv.next391.5 = add nuw nsw i64 %indvars.iv390, 6 ; 2 uses
  %i.jo = mul nsw i64 %indvars.iv.next391.5, %i.ht
  %gep449.6 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jo
  %i.jp = load double, ptr %gep449.6, align 8, !tbaa !41
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.5
  store double %i.jp, ptr %i.jq, align 8, !tbaa !41
  %indvars.iv.next391.6 = add nuw nsw i64 %indvars.iv390, 7 ; 2 uses
  %i.jr = mul nsw i64 %indvars.iv.next391.6, %i.ht
  %gep449.7 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jr
  %i.js = load double, ptr %gep449.7, align 8, !tbaa !41
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next391.6
  store double %i.js, ptr %i.jt, align 8, !tbaa !41
  %indvars.iv.next391.7 = add nuw nsw i64 %indvars.iv390, 8 ; 2 uses
  %exitcond394.not.7 = icmp eq i64 %indvars.iv.next391.7, %wide.trip.count393
  br i1 %exitcond394.not.7, label %.loopexit330, label %.lr.ph341, !llvm.loop !23

.loopexit330:                                     ; preds = %.lr.ph337.prol.loopexit, %.lr.ph337, %.lr.ph341.prol.loopexit, %.lr.ph341, %middle.block490, %vec.epilog.middle.block503, %middle.block522, %vec.epilog.middle.block535, %bb.u, %bb.v
  store double 1.000000e+00, ptr %9, align 8, !tbaa !41
  store double 1.000000e+00, ptr %11, align 8, !tbaa !41
  br label %bb.am

bb.w:                                             ; preds = %bb.t
  %i.ju = uitofp nneg i32 %i.ah to float
  %i.jv = add nsw i32 %i.ah, -1
  %i.jw = uitofp nneg i32 %i.jv to float
  %i.jx = fdiv float %i.jw, %i.ju
  %i.jy = fadd float %i.jx, 5.000000e-01          ; 3 uses
  %i.jz = fcmp ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ka = call float @llvm.floor.f32(float %i.jy)
  %i.kb = fpext float %i.ka to double
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.kc = fneg float %i.jy
  %i.kd = call float @llvm.floor.f32(float %i.kc)
  %i.ke = fpext float %i.kd to double
  %i.kf = fneg double %i.ke
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.kg = phi double [ %i.kb, %bb.x ], [ %i.kf, %bb.y ]
  %i.kh = fptosi double %i.kg to i32              ; 3 uses
  %i.ki = add nuw nsw i32 %i.aj, 1
  store i32 %i.ki, ptr %i.e, align 4, !tbaa !39
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0267
  call void @dlacpy_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.e, ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.k) #5
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0268
  call void @dlaset_(ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @c_b26, ptr noundef nonnull @c_b26, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.k) #5
  store i32 %i.kh, ptr %i.e, align 4, !tbaa !39
  %.not300364 = icmp slt i32 %i.kh, 1
  br i1 %.not300364, label %.._crit_edge368_crit_edge, label %.lr.ph367

.._crit_edge368_crit_edge:                        ; preds = %bb.z
  %.pre422 = load i32, ptr %3, align 4, !tbaa !39
  br label %._crit_edge368

.lr.ph367:                                        ; preds = %bb.z
  %i.kl = sext i32 %i.ay to i64
  %i.km = getelementptr [8 x i8], ptr %9, i64 %i.kl ; 3 uses
  %i.kn = sext i32 %i.bb to i64
  %i.ko = getelementptr [8 x i8], ptr %i.s, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 8      ; 3 uses
  %.pre423 = load i32, ptr %3, align 4, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph367, %._crit_edge362
  %i.kq = phi i32 [ %.pre423, %.lr.ph367 ], [ %i.oc, %._crit_edge362 ] ; 5 uses
  %i.kr = phi i32 [ %i.kh, %.lr.ph367 ], [ %i.od, %._crit_edge362 ]
  %.0266365 = phi i32 [ 1, %.lr.ph367 ], [ %i.oe, %._crit_edge362 ] ; 4 uses
  %i.ks = add nsw i32 %.0266365, -1
  %i.kt = mul nsw i32 %i.ks, %i.ah
  %i.ku = add nsw i32 %i.kt, 1                    ; 3 uses
  %i.kv = mul i32 %.0266365, %i.ah
  %i.kw = add nsw i32 %i.kq, -1
  %i.kx = call i32 @llvm.smin.i32(i32 %i.kv, i32 %i.kw)
  %.not305.not357 = icmp slt i32 %i.ku, %i.kq
  br i1 %.not305.not357, label %.lr.ph361, label %._crit_edge362

.lr.ph361:                                        ; preds = %bb.aa, %._crit_edge354.2
  %i.ky = phi i32 [ %i.nz, %._crit_edge354.2 ], [ %i.kq, %bb.aa ] ; 2 uses
  %.0359 = phi i32 [ %.2.lcssa.2, %._crit_edge354.2 ], [ %i.ku, %bb.aa ] ; 4 uses
  %.5358 = phi i32 [ %i.oa, %._crit_edge354.2 ], [ %i.ku, %bb.aa ] ; 6 uses
  %i.kz = call i32 @llvm.smin.i32(i32 %.5358, i32 %i.kx) ; 6 uses
  %i.la = icmp sgt i32 %.0359, %i.kz
  br i1 %i.la, label %._crit_edge362.loopexit, label %.preheader328

.preheader328:                                    ; preds = %.lr.ph361
  store i32 %.0359, ptr %i.m, align 4, !tbaa !39
  br label %.preheader

.preheader:                                       ; preds = %.preheader328, %.loopexit327
  %.pre = phi i32 [ %i.lv, %.loopexit327 ], [ %i.ky, %.preheader328 ] ; 4 uses
  %i.lb = phi i32 [ %i.lz, %.loopexit327 ], [ %.0359, %.preheader328 ] ; 4 uses
  %.2353 = phi i32 [ %spec.select458, %.loopexit327 ], [ %.0359, %.preheader328 ]
  %i.lc = sub nsw i32 %.5358, %i.lb
  %i.ld = mul nsw i32 %i.lc, 3                    ; 2 uses
  %i.le = add i32 %i.ld, 1                        ; 2 uses
  %i.lf = icmp eq i32 %.5358, %i.lb
  br i1 %i.lf, label %.thread323, label %bb.ab

.thread323:                                       ; preds = %.preheader
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader
  %i.lg = srem i32 %i.le, 2                       ; 2 uses
  %14 = sdiv i32 %i.le, 2
  %i.lh = add nsw i32 %i.lg, 2
  store i32 %i.lh, ptr %i.i, align 4, !tbaa !39
  %i.li = icmp eq i32 %i.lg, 0
  %.pre426 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.li, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lj = mul nsw i32 %.pre426, %14
  %i.lk = add nsw i32 %i.lj, %i.lb                ; 3 uses
  %reass.sub = sub i32 %i.lk, %.pre426
  %i.ll = add i32 %reass.sub, 1
  store i32 %i.ll, ptr %i.g, align 4, !tbaa !39
  %. = call i32 @llvm.smin.i32(i32 %i.lk, i32 %.pre)
  store i32 %., ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327

bb.ad:                                            ; preds = %.thread323, %bb.ab
  %i.lm = phi i32 [ %.pre425, %.thread323 ], [ %.pre426, %bb.ab ] ; 2 uses
  %i.ln = add i32 %i.ld, 2
  %i.lo = sdiv i32 %i.ln, 2
  %i.lp = mul nsw i32 %i.lm, %i.lo
  %i.lq = add nsw i32 %i.lp, %i.lb                ; 3 uses
  %i.lr = sub nsw i32 %i.lq, %i.lm
  %i.ls = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.ls, ptr %i.g, align 4, !tbaa !39
  %.318 = call i32 @llvm.smin.i32(i32 %i.lq, i32 %.pre) ; 2 uses
  store i32 %.318, ptr %i.f, align 4, !tbaa !39
  %i.lt = add nsw i32 %.318, -1
  %.not310 = icmp sge i32 %i.ls, %i.lt
  %i.lu = icmp sle i32 %.pre, %i.lq
  %or.cond325 = and i1 %i.lu, %.not310
  %spec.select = select i1 %or.cond325, i32 %.pre, i32 0
  br label %.loopexit327

.loopexit327:                                     ; preds = %bb.ad, %bb.ac
  %.0264 = phi i32 [ %i.lk, %bb.ac ], [ %spec.select, %bb.ad ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.lv = load i32, ptr %3, align 4, !tbaa !39    ; 4 uses
  %i.lw = add nsw i32 %i.lv, -1
  %.not312 = icmp sge i32 %.0264, %i.lw
  %i.lx = zext i1 %.not312 to i32
  %spec.select458 = add nsw i32 %.2353, %i.lx     ; 6 uses
  %i.ly = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.lz = add nsw i32 %i.ly, 1                    ; 2 uses
  store i32 %i.lz, ptr %i.m, align 4, !tbaa !39
  %.not307.not = icmp slt i32 %i.ly, %i.kz
  br i1 %.not307.not, label %.preheader, label %._crit_edge354, !llvm.loop !24

._crit_edge354:                                   ; preds = %.loopexit327
  store i32 %spec.select458, ptr %i.m, align 4, !tbaa !39
  %.not307352.1 = icmp sgt i32 %spec.select458, %i.kz
  br i1 %.not307352.1, label %._crit_edge354.1, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge354, %.loopexit327.1
  %.pre.1 = phi i32 [ %i.mu, %.loopexit327.1 ], [ %i.lv, %._crit_edge354 ] ; 4 uses
  %i.ma = phi i32 [ %i.my, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ] ; 3 uses
  %.2353.1 = phi i32 [ %spec.select458.1, %.loopexit327.1 ], [ %spec.select458, %._crit_edge354 ]
  %i.mb = sub nsw i32 %.5358, %i.ma
  %i.mc = mul nsw i32 %i.mb, 3                    ; 2 uses
  %i.md = add i32 %i.mc, 2                        ; 3 uses
  %i.me = icmp eq i32 %i.md, 1
  br i1 %i.me, label %.thread323.1, label %bb.ae

bb.ae:                                            ; preds = %.preheader.1
  %i.mf = srem i32 %i.md, 2                       ; 2 uses
  %15 = sdiv i32 %i.md, 2
  %i.mg = add nsw i32 %i.mf, 2
  store i32 %i.mg, ptr %i.i, align 4, !tbaa !39
  %i.mh = icmp eq i32 %i.mf, 0
  %.pre426.1 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.mh, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mi = mul nsw i32 %.pre426.1, %15
  %i.mj = add nsw i32 %i.mi, %i.ma                ; 3 uses
  %reass.sub.1 = sub i32 %i.mj, %.pre426.1
  %i.mk = add i32 %reass.sub.1, 1
  store i32 %i.mk, ptr %i.g, align 4, !tbaa !39
  %..1 = call i32 @llvm.smin.i32(i32 %i.mj, i32 %.pre.1)
  store i32 %..1, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.1

.thread323.1:                                     ; preds = %.preheader.1
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.1 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.ag

bb.ag:                                            ; preds = %.thread323.1, %bb.ae
  %i.ml = phi i32 [ %.pre425.1, %.thread323.1 ], [ %.pre426.1, %bb.ae ] ; 2 uses
  %i.mm = add i32 %i.mc, 3
  %i.mn = sdiv i32 %i.mm, 2
  %i.mo = mul nsw i32 %i.ml, %i.mn
  %i.mp = add nsw i32 %i.mo, %i.ma                ; 3 uses
  %i.mq = sub nsw i32 %i.mp, %i.ml
  %i.mr = add nsw i32 %i.mq, 1                    ; 2 uses
  store i32 %i.mr, ptr %i.g, align 4, !tbaa !39
  %.318.1 = call i32 @llvm.smin.i32(i32 %i.mp, i32 %.pre.1) ; 2 uses
  store i32 %.318.1, ptr %i.f, align 4, !tbaa !39
  %i.ms = add nsw i32 %.318.1, -1
  %.not310.1 = icmp sge i32 %i.mr, %i.ms
  %i.mt = icmp sle i32 %.pre.1, %i.mp
  %or.cond325.1 = and i1 %i.mt, %.not310.1
  %spec.select.1 = select i1 %or.cond325.1, i32 %.pre.1, i32 0
  br label %.loopexit327.1

.loopexit327.1:                                   ; preds = %bb.ag, %bb.af
  %.0264.1 = phi i32 [ %i.mj, %bb.af ], [ %spec.select.1, %bb.ag ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.mu = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.mv = add nsw i32 %i.mu, -1
  %.not312.1 = icmp sge i32 %.0264.1, %i.mv
  %i.mw = zext i1 %.not312.1 to i32
  %spec.select458.1 = add nsw i32 %.2353.1, %i.mw ; 2 uses
  %i.mx = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.my = add nsw i32 %i.mx, 1                    ; 2 uses
  store i32 %i.my, ptr %i.m, align 4, !tbaa !39
  %.not307.not.1 = icmp slt i32 %i.mx, %i.kz
  br i1 %.not307.not.1, label %.preheader.1, label %._crit_edge354.1, !llvm.loop !24

._crit_edge354.1:                                 ; preds = %.loopexit327.1, %._crit_edge354
  %i.mz = phi i32 [ %i.lv, %._crit_edge354 ], [ %i.mu, %.loopexit327.1 ] ; 2 uses
  %.2.lcssa.1 = phi i32 [ %spec.select458, %._crit_edge354 ], [ %spec.select458.1, %.loopexit327.1 ] ; 5 uses
  store i32 %.2.lcssa.1, ptr %i.m, align 4, !tbaa !39
  %.not307352.2 = icmp sgt i32 %.2.lcssa.1, %i.kz
  br i1 %.not307352.2, label %._crit_edge354.2, label %.preheader.2

.preheader.2:                                     ; preds = %._crit_edge354.1, %.loopexit327.2
  %.pre.2 = phi i32 [ %i.nu, %.loopexit327.2 ], [ %i.mz, %._crit_edge354.1 ] ; 4 uses
  %i.na = phi i32 [ %i.ny, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ] ; 3 uses
  %.2353.2 = phi i32 [ %spec.select458.2, %.loopexit327.2 ], [ %.2.lcssa.1, %._crit_edge354.1 ]
  %i.nb = sub nsw i32 %.5358, %i.na
  %i.nc = mul nsw i32 %i.nb, 3                    ; 2 uses
  %i.nd = add i32 %i.nc, 3                        ; 3 uses
  %i.ne = icmp eq i32 %i.nd, 1
  br i1 %i.ne, label %.thread323.2, label %bb.ah

bb.ah:                                            ; preds = %.preheader.2
  %i.nf = srem i32 %i.nd, 2                       ; 2 uses
  %16 = sdiv i32 %i.nd, 2
  %i.ng = add nsw i32 %i.nf, 2
  store i32 %i.ng, ptr %i.i, align 4, !tbaa !39
  %i.nh = icmp eq i32 %i.nf, 0
  %.pre426.2 = load i32, ptr %4, align 4, !tbaa !39 ; 3 uses
  br i1 %i.nh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ni = mul nsw i32 %.pre426.2, %16
  %i.nj = add nsw i32 %i.ni, %i.na                ; 3 uses
  %reass.sub.2 = sub i32 %i.nj, %.pre426.2
  %i.nk = add i32 %reass.sub.2, 1
  store i32 %i.nk, ptr %i.g, align 4, !tbaa !39
  %..2 = call i32 @llvm.smin.i32(i32 %i.nj, i32 %.pre.2)
  store i32 %..2, ptr %i.f, align 4, !tbaa !39
  br label %.loopexit327.2

.thread323.2:                                     ; preds = %.preheader.2
  store i32 1, ptr %i.i, align 4, !tbaa !39
  %.pre425.2 = load i32, ptr %4, align 4, !tbaa !39
  br label %bb.aj

bb.aj:                                            ; preds = %.thread323.2, %bb.ah
  %i.nl = phi i32 [ %.pre425.2, %.thread323.2 ], [ %.pre426.2, %bb.ah ] ; 2 uses
  %i.nm = add i32 %i.nc, 4
  %i.nn = sdiv i32 %i.nm, 2
  %i.no = mul nsw i32 %i.nl, %i.nn
  %i.np = add nsw i32 %i.no, %i.na                ; 3 uses
  %i.nq = sub nsw i32 %i.np, %i.nl
  %i.nr = add nsw i32 %i.nq, 1                    ; 2 uses
  store i32 %i.nr, ptr %i.g, align 4, !tbaa !39
  %.318.2 = call i32 @llvm.smin.i32(i32 %i.np, i32 %.pre.2) ; 2 uses
  store i32 %.318.2, ptr %i.f, align 4, !tbaa !39
  %i.ns = add nsw i32 %.318.2, -1
  %.not310.2 = icmp sge i32 %i.nr, %i.ns
  %i.nt = icmp sle i32 %.pre.2, %i.np
  %or.cond325.2 = and i1 %i.nt, %.not310.2
  %spec.select.2 = select i1 %or.cond325.2, i32 %.pre.2, i32 0
  br label %.loopexit327.2

.loopexit327.2:                                   ; preds = %bb.aj, %bb.ai
  %.0264.2 = phi i32 [ %i.nj, %bb.ai ], [ %spec.select.2, %bb.aj ]
  call void @dsb2st_kernels_(ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.j, ptr noundef nonnull %11, ptr noundef nonnull %i.k, ptr noundef %i.km, ptr noundef nonnull %9, ptr noundef nonnull %i.l, ptr noundef %i.kp) #5
  %i.nu = load i32, ptr %3, align 4, !tbaa !39    ; 3 uses
  %i.nv = add nsw i32 %i.nu, -1
  %.not312.2 = icmp sge i32 %.0264.2, %i.nv
  %i.nw = zext i1 %.not312.2 to i32
  %spec.select458.2 = add nsw i32 %.2353.2, %i.nw ; 2 uses
  %i.nx = load i32, ptr %i.m, align 4, !tbaa !39  ; 2 uses
  %i.ny = add nsw i32 %i.nx, 1                    ; 2 uses
  store i32 %i.ny, ptr %i.m, align 4, !tbaa !39
  %.not307.not.2 = icmp slt i32 %i.nx, %i.kz
  br i1 %.not307.not.2, label %.preheader.2, label %._crit_edge354.2, !llvm.loop !24

._crit_edge354.2:                                 ; preds = %.loopexit327.2, %._crit_edge354.1
  %i.nz = phi i32 [ %i.mz, %._crit_edge354.1 ], [ %i.nu, %.loopexit327.2 ] ; 2 uses
  %.2.lcssa.2 = phi i32 [ %.2.lcssa.1, %._crit_edge354.1 ], [ %spec.select458.2, %.loopexit327.2 ]
  %i.oa = add i32 %.5358, 1                       ; 2 uses
  %exitcond404.not = icmp eq i32 %i.oa, %i.kq
  br i1 %exitcond404.not, label %._crit_edge362.loopexit, label %.lr.ph361, !llvm.loop !25

._crit_edge362.loopexit:                          ; preds = %._crit_edge354.2, %.lr.ph361
  %i.ob = phi i32 [ %i.nz, %._crit_edge354.2 ], [ %i.ky, %.lr.ph361 ]
  %.pre421 = load i32, ptr %i.e, align 4, !tbaa !39
  br label %._crit_edge362

._crit_edge362:                                   ; preds = %._crit_edge362.loopexit, %bb.aa
  %i.oc = phi i32 [ %i.ob, %._crit_edge362.loopexit ], [ %i.kq, %bb.aa ] ; 2 uses
  %i.od = phi i32 [ %.pre421, %._crit_edge362.loopexit ], [ %i.kr, %bb.aa ] ; 2 uses
  %i.oe = add nuw nsw i32 %.0266365, 1
  %.not300.not = icmp slt i32 %.0266365, %i.od
  br i1 %.not300.not, label %bb.aa, label %._crit_edge368, !llvm.loop !26

._crit_edge368:                                   ; preds = %._crit_edge362, %.._crit_edge368_crit_edge
  %i.of = phi i32 [ %.pre422, %.._crit_edge368_crit_edge ], [ %i.oc, %._crit_edge362 ] ; 13 uses
  %.not301369 = icmp slt i32 %i.of, 1
  br i1 %.not301369, label %._crit_edge373, label %iter.check589

iter.check589:                                    ; preds = %._crit_edge368
  %i.og = load i32, ptr %i.k, align 4, !tbaa !39  ; 2 uses
  %i.oh = sext i32 %i.og to i64                   ; 9 uses
  %i.oi = add nuw i32 %i.of, 1
  %wide.trip.count408 = zext i32 %i.oi to i64     ; 2 uses
  %invariant.gep452 = getelementptr [8 x i8], ptr %i.s, i64 %.0276 ; 11 uses
  %i.oj = zext nneg i32 %i.of to i64              ; 5 uses
  %min.iters.check574 = icmp ugt i32 %i.of, 3
  %ident.check571.not = icmp eq i32 %i.og, 1
  %or.cond670 = select i1 %min.iters.check574, i1 %ident.check571.not, i1 false
  br i1 %or.cond670, label %vector.memcheck572, label %vec.epilog.scalar.ph590.preheader

vector.memcheck572:                               ; preds = %iter.check589
  %i.ok = shl nuw nsw i64 %.0276, 3
  %i.ol = add i64 %i.ok, %i.a
  %i.om = sub i64 %i.d, %i.ol
  %i.on = add i64 %i.om, 7
  %diff.check573 = icmp ult i64 %i.on, 127
  br i1 %diff.check573, label %vec.epilog.scalar.ph590.preheader, label %vector.main.loop.iter.check575

vector.main.loop.iter.check575:                   ; preds = %vector.memcheck572
  %min.iters.check576 = icmp ult i32 %i.of, 16
  br i1 %min.iters.check576, label %vec.epilog.ph593, label %vector.ph577

vector.ph577:                                     ; preds = %vector.main.loop.iter.check575
  %i.oo = and i64 %i.oj, 12
  %n.vec578 = and i64 %i.oj, 2147483632           ; 4 uses
  %i.op = or disjoint i64 %n.vec578, 1
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 3 uses
  %i.oq = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index580 ; 4 uses
  %i.or = getelementptr i8, ptr %i.oq, i64 32
  %i.os = getelementptr i8, ptr %i.oq, i64 64
  %i.ot = getelementptr i8, ptr %i.oq, i64 96
  %wide.load581 = load <4 x double>, ptr %i.oq, align 8, !tbaa !41
  %wide.load582 = load <4 x double>, ptr %i.or, align 8, !tbaa !41
  %wide.load583 = load <4 x double>, ptr %i.os, align 8, !tbaa !41
  %wide.load584 = load <4 x double>, ptr %i.ot, align 8, !tbaa !41
  %i.ou = getelementptr [8 x i8], ptr %7, i64 %index580 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 32
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 96
  store <4 x double> %wide.load581, ptr %i.ou, align 8, !tbaa !41
  store <4 x double> %wide.load582, ptr %i.ov, align 8, !tbaa !41
  store <4 x double> %wide.load583, ptr %i.ow, align 8, !tbaa !41
  store <4 x double> %wide.load584, ptr %i.ox, align 8, !tbaa !41
  %index.next585 = add nuw i64 %index580, 16      ; 2 uses
  %i.oy = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.oy, label %middle.block586, label %vector.body579, !llvm.loop !27

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %n.vec578, %i.oj
  br i1 %cmp.n587, label %._crit_edge373, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block586
  %min.epilog.iters.check592 = icmp eq i64 %i.oo, 0
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph590.preheader, label %vec.epilog.ph593, !prof !45

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check575, %vec.epilog.iter.check591
  %vec.epilog.resume.val588 = phi i64 [ %n.vec578, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check575 ]
  %n.vec594 = and i64 %i.oj, 2147483644           ; 3 uses
  %i.oz = or disjoint i64 %n.vec594, 1
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph593
  %index596 = phi i64 [ %vec.epilog.resume.val588, %vec.epilog.ph593 ], [ %index.next598, %vec.epilog.vector.body595 ] ; 3 uses
  %i.pa = getelementptr [8 x i8], ptr %invariant.gep452, i64 %index596
  %wide.load597 = load <4 x double>, ptr %i.pa, align 8, !tbaa !41
  %i.pb = getelementptr [8 x i8], ptr %7, i64 %index596
  store <4 x double> %wide.load597, ptr %i.pb, align 8, !tbaa !41
  %index.next598 = add nuw i64 %index596, 4       ; 2 uses
  %i.pc = icmp eq i64 %index.next598, %n.vec594
  br i1 %i.pc, label %vec.epilog.middle.block599, label %vec.epilog.vector.body595, !llvm.loop !28

vec.epilog.middle.block599:                       ; preds = %vec.epilog.vector.body595
  %cmp.n600 = icmp eq i64 %n.vec594, %i.oj
  br i1 %cmp.n600, label %._crit_edge373, label %vec.epilog.scalar.ph590.preheader

vec.epilog.scalar.ph590.preheader:                ; preds = %vector.memcheck572, %iter.check589, %vec.epilog.iter.check591, %vec.epilog.middle.block599
  %indvars.iv405.ph = phi i64 [ 1, %iter.check589 ], [ 1, %vector.memcheck572 ], [ %i.op, %vec.epilog.iter.check591 ], [ %i.oz, %vec.epilog.middle.block599 ] ; 4 uses
  %i.pd = sub nsw i64 %wide.trip.count408, %indvars.iv405.ph
  %i.pe = zext nneg i32 %i.of to i64
  %i.pf = sub nsw i64 %i.pe, %indvars.iv405.ph
  %xtraiter687 = and i64 %i.pd, 7                 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol

vec.epilog.scalar.ph590.prol:                     ; preds = %vec.epilog.scalar.ph590.preheader, %vec.epilog.scalar.ph590.prol
  %indvars.iv405.prol = phi i64 [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ], [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %vec.epilog.scalar.ph590.prol ], [ 0, %vec.epilog.scalar.ph590.preheader ]
  %i.pg = add nsw i64 %indvars.iv405.prol, -1
  %i.ph = mul nsw i64 %i.pg, %i.oh
  %gep453.prol = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.ph
  %i.pi = load double, ptr %gep453.prol, align 8, !tbaa !41
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405.prol
  store double %i.pi, ptr %i.pj, align 8, !tbaa !41
  %indvars.iv.next406.prol = add nuw nsw i64 %indvars.iv405.prol, 1 ; 2 uses
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol, !llvm.loop !29

vec.epilog.scalar.ph590.prol.loopexit:            ; preds = %vec.epilog.scalar.ph590.prol, %vec.epilog.scalar.ph590.preheader
  %indvars.iv405.unr = phi i64 [ %indvars.iv405.ph, %vec.epilog.scalar.ph590.preheader ], [ %indvars.iv.next406.prol, %vec.epilog.scalar.ph590.prol ]
  %i.pk = icmp ult i64 %i.pf, 7
  br i1 %i.pk, label %._crit_edge373, label %vec.epilog.scalar.ph590

vec.epilog.scalar.ph590:                          ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590
  %indvars.iv405 = phi i64 [ %indvars.iv.next406.7, %vec.epilog.scalar.ph590 ], [ %indvars.iv405.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 17 uses
  %i.pl = add nsw i64 %indvars.iv405, -1
  %i.pm = mul nsw i64 %i.pl, %i.oh
  %gep453 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pm
  %i.pn = load double, ptr %gep453, align 8, !tbaa !41
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  store double %i.pn, ptr %i.po, align 8, !tbaa !41
  %i.pp = mul nsw i64 %indvars.iv405, %i.oh
  %gep453.1 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pp
  %i.pq = load double, ptr %gep453.1, align 8, !tbaa !41
  %i.pr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv405
  store double %i.pq, ptr %i.pr, align 8, !tbaa !41
  %i.ps = add nsw i64 %indvars.iv405, 1
  %i.pt = mul nsw i64 %i.ps, %i.oh
  %gep453.2 = getelementptr [8 x i8], ptr %invariant.gep452, i64 %i.pt
  %i.pu = load double, ptr %gep453.2, align 8, !tbaa !41
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv405
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store double %i.pu, ptr %i.pw, align 8, !tbaa !41
  %i.px = add nsw i64 %indvars.iv405, 2
  %i.py = mul nsw i64 %i.px, %i.oh
end_hunk_0
