Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/k_rem_pio2?download=true
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@__kernel_rem_pio2:bb.a
  %i.hw = fcmp ult double %i.hv, f0x4170000000000000
  br i1 %i.hw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge287
  %i.hx = fmul nnan double %i.hv, f0x3E70000000000000
  %i.hy = fptosi double %i.hx to i32              ; 2 uses
  %i.hz = sitofp i32 %i.hy to double
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hz, double f0xC170000000000000, double %i.hv)
  %i.ib = fptosi double %i.ia to i32
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 %i.ib, ptr %i.ic, align 4
  %i.id = add nsw i32 %.0258, 1                   ; 2 uses
  %i.ie = add i32 %.neg, %2
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.if
  store i32 %i.hy, ptr %i.ig, align 4
  br label %.loopexit

bb.y:                                             ; preds = %.critedge287
  %i.ih = fptosi double %i.hv to i32
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cd
  store i32 %i.ih, ptr %i.ii, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader300
  %i.ij = trunc nsw i64 %indvars.iv.next454 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.x, %bb.y
  %.2260 = phi i32 [ %.0258, %bb.y ], [ %i.id, %bb.x ], [ %i.ij, %.loopexit.loopexit ] ; 18 uses
  %.1238 = phi i32 [ %i.l, %bb.y ], [ %i.ie, %bb.x ], [ %.0237, %.loopexit.loopexit ]
  %i.ik = tail call double @SDL_uclibc_scalbn(double noundef 1.000000e+00, i32 noundef %.1238) #6 ; 3 uses
  %i.il = icmp sgt i32 %.2260, -1                 ; 3 uses
  br i1 %i.il, label %.lr.ph356.preheader, label %._crit_edge357

.lr.ph356.preheader:                              ; preds = %.loopexit
  %i.im = zext nneg i32 %.2260 to i64             ; 5 uses
  %i.in = and i64 %i.im, 1
  %lcmp.mod589.not.not = icmp eq i64 %i.in, 0
  br i1 %lcmp.mod589.not.not, label %.lr.ph356.prol, label %.lr.ph356.prol.loopexit

.lr.ph356.prol:                                   ; preds = %.lr.ph356.preheader
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.im
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = fmul double %i.ik, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.im
  store double %i.ir, ptr %i.is, align 8
  %i.it = fmul double %i.ik, f0x3E70000000000000
  %indvars.iv.next457.prol = add nsw i64 %i.im, -1
  br label %.lr.ph356.prol.loopexit

.lr.ph356.prol.loopexit:                          ; preds = %.lr.ph356.prol, %.lr.ph356.preheader
  %indvars.iv456.unr = phi i64 [ %i.im, %.lr.ph356.preheader ], [ %indvars.iv.next457.prol, %.lr.ph356.prol ]
  %.2354.unr = phi double [ %i.ik, %.lr.ph356.preheader ], [ %i.it, %.lr.ph356.prol ]
  %i.iu = icmp eq i32 %.2260, 0
  br i1 %i.iu, label %.preheader299.preheader, label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.prol.loopexit, %.lr.ph356
  %indvars.iv456 = phi i64 [ %indvars.iv.next457.1, %.lr.ph356 ], [ %indvars.iv456.unr, %.lr.ph356.prol.loopexit ] ; 4 uses
  %.2354 = phi double [ %i.jg, %.lr.ph356 ], [ %.2354.unr, %.lr.ph356.prol.loopexit ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv456
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = sitofp i32 %i.iw to double
  %i.iy = fmul double %.2354, %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv456
  store double %i.iy, ptr %i.iz, align 8
  %i.ja = fmul double %.2354, f0x3E70000000000000 ; 2 uses
  %indvars.iv.next457 = add nsw i64 %indvars.iv456, -1 ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next457
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = sitofp i32 %i.jc to double
  %i.je = fmul double %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next457
  store double %i.je, ptr %i.jf, align 8
  %i.jg = fmul double %i.ja, f0x3E70000000000000
  %indvars.iv.next457.1 = add nsw i64 %indvars.iv456, -2
  %.not.1 = icmp eq i64 %indvars.iv.next457, 0
  br i1 %.not.1, label %.preheader299.preheader, label %.lr.ph356, !llvm.loop !15

._crit_edge357:                                   ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  br label %._crit_edge365

.preheader299.preheader:                          ; preds = %.lr.ph356, %.lr.ph356.prol.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.c, i8 0, i64 160, i1 false)
  %i.jh = zext nneg i32 %.2260 to i64
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.preheader, %.critedge
  %indvars.iv464 = phi i64 [ %i.jh, %.preheader299.preheader ], [ %indvars.iv.next465, %.critedge ] ; 4 uses
  %i.ji = trunc i64 %indvars.iv464 to i32
  %i.jj = sub i32 %.2260, %i.ji
  %.fr = freeze i32 %i.jj                         ; 2 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %.fr) ; 3 uses
  %or.cond358 = icmp slt i32 %invariant.smin, 0
  br i1 %or.cond358, label %.critedge, label %.lr.ph361.preheader

.lr.ph361.preheader:                              ; preds = %.preheader299
  %i.jk = add nuw i32 %invariant.smin, 1
  %wide.trip.count462 = zext i32 %i.jk to i64     ; 2 uses
  %invariant.gep509 = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv464 ; 5 uses
  %xtraiter590 = and i64 %wide.trip.count462, 3   ; 3 uses
  %i.jl = icmp ult i32 %invariant.smin, 3
  br i1 %i.jl, label %.lr.ph361.epil.preheader, label %.lr.ph361.preheader.new

.lr.ph361.preheader.new:                          ; preds = %.lr.ph361.preheader
  %unroll_iter595 = and i64 %wide.trip.count462, 4294967292
  br label %.lr.ph361

.lr.ph361:                                        ; preds = %.lr.ph361, %.lr.ph361.preheader.new
  %indvars.iv459 = phi i64 [ 0, %.lr.ph361.preheader.new ], [ %indvars.iv.next460.3, %.lr.ph361 ] ; 6 uses
  %.3360 = phi double [ 0.000000e+00, %.lr.ph361.preheader.new ], [ %i.kb, %.lr.ph361 ]
  %niter596 = phi i64 [ 0, %.lr.ph361.preheader.new ], [ %niter596.next.3, %.lr.ph361 ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv459
  %i.jn = load double, ptr %i.jm, align 16
  %gep510 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %indvars.iv459
  %i.jo = load double, ptr %gep510, align 8
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jo, double %.3360)
  %indvars.iv.next460 = or disjoint i64 %indvars.iv459, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next460
  %i.jr = load double, ptr %i.jq, align 8
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %indvars.iv.next460
  %i.js = load double, ptr %gep510.1, align 8
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.jr, double %i.js, double %i.jp)
  %indvars.iv.next460.1 = or disjoint i64 %indvars.iv459, 2 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next460.1
  %i.jv = load double, ptr %i.ju, align 16
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %indvars.iv.next460.1
  %i.jw = load double, ptr %gep510.2, align 8
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.jt)
  %indvars.iv.next460.2 = or disjoint i64 %indvars.iv459, 3 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv.next460.2
  %i.jz = load double, ptr %i.jy, align 8
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %indvars.iv.next460.2
  %i.ka = load double, ptr %gep510.3, align 8
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.ka, double %i.jx) ; 3 uses
  %indvars.iv.next460.3 = add nuw nsw i64 %indvars.iv459, 4 ; 2 uses
  %niter596.next.3 = add i64 %niter596, 4         ; 2 uses
  %niter596.ncmp.3 = icmp eq i64 %niter596.next.3, %unroll_iter595
  br i1 %niter596.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph361, !llvm.loop !16

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph361
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  br i1 %lcmp.mod592.not, label %.critedge, label %.lr.ph361.epil.preheader

.lr.ph361.epil.preheader:                         ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph361.preheader
  %indvars.iv459.epil.init = phi i64 [ 0, %.lr.ph361.preheader ], [ %indvars.iv.next460.3, %.critedge.loopexit.unr-lcssa ]
  %.3360.epil.init = phi double [ 0.000000e+00, %.lr.ph361.preheader ], [ %i.kb, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod594 = icmp ne i64 %xtraiter590, 0
  tail call void @llvm.assume(i1 %lcmp.mod594)
  br label %.lr.ph361.epil

.lr.ph361.epil:                                   ; preds = %.lr.ph361.epil, %.lr.ph361.epil.preheader
  %indvars.iv459.epil = phi i64 [ %indvars.iv459.epil.init, %.lr.ph361.epil.preheader ], [ %indvars.iv.next460.epil, %.lr.ph361.epil ] ; 3 uses
  %.3360.epil = phi double [ %.3360.epil.init, %.lr.ph361.epil.preheader ], [ %i.kf, %.lr.ph361.epil ]
  %epil.iter591 = phi i64 [ 0, %.lr.ph361.epil.preheader ], [ %epil.iter591.next, %.lr.ph361.epil ]
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr @PIo2, i64 %indvars.iv459.epil
  %i.kd = load double, ptr %i.kc, align 8
  %gep510.epil = getelementptr [8 x i8], ptr %invariant.gep509, i64 %indvars.iv459.epil
  %i.ke = load double, ptr %gep510.epil, align 8
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.kd, double %i.ke, double %.3360.epil) ; 2 uses
  %indvars.iv.next460.epil = add nuw nsw i64 %indvars.iv459.epil, 1
  %epil.iter591.next = add i64 %epil.iter591, 1   ; 2 uses
  %epil.iter591.cmp.not = icmp eq i64 %epil.iter591.next, %xtraiter590
  br i1 %epil.iter591.cmp.not, label %.critedge, label %.lr.ph361.epil, !llvm.loop !17

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph361.epil, %.preheader299
  %.3.lcssa = phi double [ 0.000000e+00, %.preheader299 ], [ %i.kb, %.critedge.loopexit.unr-lcssa ], [ %i.kf, %.lr.ph361.epil ]
  %i.kg = sext i32 %.fr to i64
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.kg
  store double %.3.lcssa, ptr %i.kh, align 8
  %indvars.iv.next465 = add nsw i64 %indvars.iv464, -1
  %i.ki = icmp sgt i64 %indvars.iv464, 0
  br i1 %i.ki, label %.preheader299, label %._crit_edge365, !llvm.loop !18

._crit_edge365:                                   ; preds = %.critedge, %._crit_edge357
  switch i32 %4, label %bb.ac [
    i32 0, label %.preheader
    i32 1, label %bb.z
    i32 2, label %bb.z
    i32 3, label %.preheader298
  ]

.preheader298:                                    ; preds = %._crit_edge365
  %i.kj = icmp sgt i32 %.2260, 0
  br i1 %i.kj, label %.lr.ph367.preheader, label %._crit_edge373

.lr.ph367.preheader:                              ; preds = %.preheader298
  %i.kk = zext nneg i32 %.2260 to i64             ; 5 uses
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %scevgep540 = getelementptr i8, ptr %i.c, i64 %i.kl
  %load_initial541 = load double, ptr %scevgep540, align 8 ; 3 uses
  %xtraiter597 = and i64 %i.kk, 1
  %lcmp.mod598.not = icmp eq i64 %xtraiter597, 0
  br i1 %lcmp.mod598.not, label %.lr.ph367.prol.loopexit, label %.lr.ph367.prol

.lr.ph367.prol:                                   ; preds = %.lr.ph367.preheader
  %i.km = getelementptr [8 x i8], ptr %i.c, i64 %i.kk ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 -8     ; 2 uses
  %i.ko = load double, ptr %i.kn, align 16        ; 2 uses
  %i.kp = fadd double %i.ko, %load_initial541     ; 3 uses
  %i.kq = fsub double %i.ko, %i.kp
  %i.kr = fadd double %load_initial541, %i.kq
  store double %i.kr, ptr %i.km, align 8
  store double %i.kp, ptr %i.kn, align 16
  %indvars.iv.next468.prol = add nsw i64 %i.kk, -1
  br label %.lr.ph367.prol.loopexit

.lr.ph367.prol.loopexit:                          ; preds = %.lr.ph367.prol, %.lr.ph367.preheader
  %store_forwarded542.unr = phi double [ %load_initial541, %.lr.ph367.preheader ], [ %i.kp, %.lr.ph367.prol ]
  %indvars.iv467.unr = phi i64 [ %i.kk, %.lr.ph367.preheader ], [ %indvars.iv.next468.prol, %.lr.ph367.prol ]
  %cond = icmp eq i32 %.2260, 1
  br i1 %cond, label %._crit_edge373, label %.lr.ph367

.preheader:                                       ; preds = %._crit_edge365
  br i1 %i.il, label %.lr.ph390.preheader, label %._crit_edge391

.lr.ph390.preheader:                              ; preds = %.preheader
  %i.ks = zext nneg i32 %.2260 to i64             ; 3 uses
  %i.kt = add nuw nsw i64 %i.ks, 1
  %xtraiter608 = and i64 %i.kt, 7                 ; 2 uses
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  br i1 %lcmp.mod609.not, label %.lr.ph390.prol.loopexit, label %.lr.ph390.prol

.lr.ph390.prol:                                   ; preds = %.lr.ph390.preheader, %.lr.ph390.prol
  %indvars.iv484.prol = phi i64 [ %indvars.iv.next485.prol, %.lr.ph390.prol ], [ %i.ks, %.lr.ph390.preheader ] ; 2 uses
  %.4389.prol = phi double [ %i.kw, %.lr.ph390.prol ], [ 0.000000e+00, %.lr.ph390.preheader ]
  %prol.iter610 = phi i64 [ %prol.iter610.next, %.lr.ph390.prol ], [ 0, %.lr.ph390.preheader ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv484.prol
  %i.kv = load double, ptr %i.ku, align 8
  %i.kw = fadd double %.4389.prol, %i.kv          ; 3 uses
  %indvars.iv.next485.prol = add nsw i64 %indvars.iv484.prol, -1 ; 2 uses
  %prol.iter610.next = add i64 %prol.iter610, 1   ; 2 uses
  %prol.iter610.cmp.not = icmp eq i64 %prol.iter610.next, %xtraiter608
  br i1 %prol.iter610.cmp.not, label %.lr.ph390.prol.loopexit, label %.lr.ph390.prol, !llvm.loop !19

.lr.ph390.prol.loopexit:                          ; preds = %.lr.ph390.prol, %.lr.ph390.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph390.preheader ], [ %i.kw, %.lr.ph390.prol ]
  %indvars.iv484.unr = phi i64 [ %i.ks, %.lr.ph390.preheader ], [ %indvars.iv.next485.prol, %.lr.ph390.prol ]
  %.4389.unr = phi double [ 0.000000e+00, %.lr.ph390.preheader ], [ %i.kw, %.lr.ph390.prol ]
  %i.kx = icmp ult i32 %.2260, 7
  br i1 %i.kx, label %._crit_edge391, label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.prol.loopexit, %.lr.ph390
  %indvars.iv484 = phi i64 [ %indvars.iv.next485.7, %.lr.ph390 ], [ %indvars.iv484.unr, %.lr.ph390.prol.loopexit ] ; 9 uses
  %.4389 = phi double [ %i.mb, %.lr.ph390 ], [ %.4389.unr, %.lr.ph390.prol.loopexit ]
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.kz = load double, ptr %i.ky, align 8
  %i.la = fadd double %.4389, %i.kz
  %i.lb = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.lc = getelementptr i8, ptr %i.lb, i64 -8
  %i.ld = load double, ptr %i.lc, align 8
  %i.le = fadd double %i.la, %i.ld
  %i.lf = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.lg = getelementptr i8, ptr %i.lf, i64 -16
  %i.lh = load double, ptr %i.lg, align 8
  %i.li = fadd double %i.le, %i.lh
  %i.lj = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.lk = getelementptr i8, ptr %i.lj, i64 -24
  %i.ll = load double, ptr %i.lk, align 8
  %i.lm = fadd double %i.li, %i.ll
  %i.ln = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.lo = getelementptr i8, ptr %i.ln, i64 -32
  %i.lp = load double, ptr %i.lo, align 8
  %i.lq = fadd double %i.lm, %i.lp
  %i.lr = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.ls = getelementptr i8, ptr %i.lr, i64 -40
  %i.lt = load double, ptr %i.ls, align 8
  %i.lu = fadd double %i.lq, %i.lt
  %i.lv = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv484
  %i.lw = getelementptr i8, ptr %i.lv, i64 -48
  %i.lx = load double, ptr %i.lw, align 8
  %i.ly = fadd double %i.lu, %i.lx
  %indvars.iv.next485.6 = add nsw i64 %indvars.iv484, -7 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next485.6
  %i.ma = load double, ptr %i.lz, align 8
  %i.mb = fadd double %i.ly, %i.ma                ; 2 uses
  %indvars.iv.next485.7 = add nsw i64 %indvars.iv484, -8
  %.not519.7 = icmp eq i64 %indvars.iv.next485.6, 0
  br i1 %.not519.7, label %._crit_edge391, label %.lr.ph390, !llvm.loop !20

._crit_edge391:                                   ; preds = %.lr.ph390.prol.loopexit, %.lr.ph390, %.preheader
  %.4.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.lcssa.unr, %.lr.ph390.prol.loopexit ], [ %i.mb, %.lr.ph390 ] ; 2 uses
  %i.mc = icmp eq i32 %.0236291, 0
  %i.md = fneg double %.4.lcssa
  %i.me = select i1 %i.mc, double %.4.lcssa, double %i.md
  store double %i.me, ptr %1, align 8
  br label %bb.ac

bb.z:                                             ; preds = %._crit_edge365, %._crit_edge365
  br i1 %i.il, label %.lr.ph378.preheader, label %._crit_edge379

.lr.ph378.preheader:                              ; preds = %bb.z
  %i.mf = zext nneg i32 %.2260 to i64             ; 3 uses
  %i.mg = add nuw nsw i64 %i.mf, 1
  %xtraiter599 = and i64 %i.mg, 7                 ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br i1 %lcmp.mod600.not, label %.lr.ph378.prol.loopexit, label %.lr.ph378.prol

.lr.ph378.prol:                                   ; preds = %.lr.ph378.preheader, %.lr.ph378.prol
  %indvars.iv476.prol = phi i64 [ %indvars.iv.next477.prol, %.lr.ph378.prol ], [ %i.mf, %.lr.ph378.preheader ] ; 2 uses
  %.5376.prol = phi double [ %i.mj, %.lr.ph378.prol ], [ 0.000000e+00, %.lr.ph378.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph378.prol ], [ 0, %.lr.ph378.preheader ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv476.prol
  %i.mi = load double, ptr %i.mh, align 8
  %i.mj = fadd double %.5376.prol, %i.mi          ; 3 uses
  %indvars.iv.next477.prol = add nsw i64 %indvars.iv476.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %.lr.ph378.prol.loopexit, label %.lr.ph378.prol, !llvm.loop !21

.lr.ph378.prol.loopexit:                          ; preds = %.lr.ph378.prol, %.lr.ph378.preheader
  %.lcssa544.unr = phi double [ poison, %.lr.ph378.preheader ], [ %i.mj, %.lr.ph378.prol ]
  %indvars.iv476.unr = phi i64 [ %i.mf, %.lr.ph378.preheader ], [ %indvars.iv.next477.prol, %.lr.ph378.prol ]
  %.5376.unr = phi double [ 0.000000e+00, %.lr.ph378.preheader ], [ %i.mj, %.lr.ph378.prol ]
  %i.mk = icmp ult i32 %.2260, 7
  br i1 %i.mk, label %._crit_edge379, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.prol.loopexit, %.lr.ph378
  %indvars.iv476 = phi i64 [ %indvars.iv.next477.7, %.lr.ph378 ], [ %indvars.iv476.unr, %.lr.ph378.prol.loopexit ] ; 9 uses
  %.5376 = phi double [ %i.no, %.lr.ph378 ], [ %.5376.unr, %.lr.ph378.prol.loopexit ]
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.mm = load double, ptr %i.ml, align 8
  %i.mn = fadd double %.5376, %i.mm
  %i.mo = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.mp = getelementptr i8, ptr %i.mo, i64 -8
  %i.mq = load double, ptr %i.mp, align 8
  %i.mr = fadd double %i.mn, %i.mq
  %i.ms = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.mt = getelementptr i8, ptr %i.ms, i64 -16
  %i.mu = load double, ptr %i.mt, align 8
  %i.mv = fadd double %i.mr, %i.mu
  %i.mw = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.mx = getelementptr i8, ptr %i.mw, i64 -24
  %i.my = load double, ptr %i.mx, align 8
  %i.mz = fadd double %i.mv, %i.my
  %i.na = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.nb = getelementptr i8, ptr %i.na, i64 -32
  %i.nc = load double, ptr %i.nb, align 8
  %i.nd = fadd double %i.mz, %i.nc
  %i.ne = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.nf = getelementptr i8, ptr %i.ne, i64 -40
  %i.ng = load double, ptr %i.nf, align 8
  %i.nh = fadd double %i.nd, %i.ng
  %i.ni = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv476
  %i.nj = getelementptr i8, ptr %i.ni, i64 -48
  %i.nk = load double, ptr %i.nj, align 8
  %i.nl = fadd double %i.nh, %i.nk
  %indvars.iv.next477.6 = add nsw i64 %indvars.iv476, -7 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next477.6
  %i.nn = load double, ptr %i.nm, align 8
  %i.no = fadd double %i.nl, %i.nn                ; 2 uses
  %indvars.iv.next477.7 = add nsw i64 %indvars.iv476, -8
  %.not518.7 = icmp eq i64 %indvars.iv.next477.6, 0
  br i1 %.not518.7, label %._crit_edge379, label %.lr.ph378, !llvm.loop !22

._crit_edge379:                                   ; preds = %.lr.ph378.prol.loopexit, %.lr.ph378, %bb.z
  %.5.lcssa = phi double [ 0.000000e+00, %bb.z ], [ %.lcssa544.unr, %.lr.ph378.prol.loopexit ], [ %i.no, %.lr.ph378 ] ; 3 uses
  %i.np = icmp eq i32 %.0236291, 0                ; 2 uses
  %i.nq = fneg double %.5.lcssa
  %i.nr = select i1 %i.np, double %.5.lcssa, double %i.nq
  store double %i.nr, ptr %1, align 8
  %i.ns = load double, ptr %i.c, align 16
  %i.nt = fsub double %i.ns, %.5.lcssa            ; 3 uses
  %.not279381 = icmp slt i32 %.2260, 1
  br i1 %.not279381, label %._crit_edge386, label %.lr.ph385.preheader

.lr.ph385.preheader:                              ; preds = %._crit_edge379
  %i.nu = zext nneg i32 %.2260 to i64             ; 2 uses
  %xtraiter601 = and i64 %i.nu, 7                 ; 3 uses
  %i.nv = icmp ult i32 %.2260, 8
  br i1 %i.nv, label %.lr.ph385.epil.preheader, label %.lr.ph385.preheader.new

.lr.ph385.preheader.new:                          ; preds = %.lr.ph385.preheader
  %unroll_iter606 = and i64 %i.nu, 2147483640
  br label %.lr.ph385

.lr.ph385:                                        ; preds = %.lr.ph385, %.lr.ph385.preheader.new
  %indvars.iv479 = phi i64 [ 1, %.lr.ph385.preheader.new ], [ %indvars.iv.next480.7, %.lr.ph385 ] ; 9 uses
  %.6383 = phi double [ %i.nt, %.lr.ph385.preheader.new ], [ %i.pa, %.lr.ph385 ]
  %niter607 = phi i64 [ 0, %.lr.ph385.preheader.new ], [ %niter607.next.7, %.lr.ph385 ]
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.nx = load double, ptr %i.nw, align 8
  %i.ny = fadd double %.6383, %i.nx
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load double, ptr %i.oa, align 8
  %i.oc = fadd double %i.ny, %i.ob
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load double, ptr %i.oe, align 8
  %i.og = fadd double %i.oc, %i.of
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load double, ptr %i.oi, align 8
  %i.ok = fadd double %i.og, %i.oj
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32
  %i.on = load double, ptr %i.om, align 8
  %i.oo = fadd double %i.ok, %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  %i.or = load double, ptr %i.oq, align 8
  %i.os = fadd double %i.oo, %i.or
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv479
end_hunk_0
