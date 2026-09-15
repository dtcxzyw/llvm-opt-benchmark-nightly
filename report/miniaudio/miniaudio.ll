Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_spatializer_process_pcm_frames:bb.a
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.04.0.copyload.i, i64 1
  %i.hy = fmul float %i.hh, %.sroa.01.4.vec.extract.i
  %i.hz = call float @llvm.fmuladd.f32(float %i.hg, float %.sroa.01.0.vec.extract.i, float %i.hy)
  %i.ia = call float @llvm.fmuladd.f32(float %i.hi, float %.sroa.3.0.copyload.i, float %i.hz)
  %i.ib = load atomic volatile i32, ptr %i.hk seq_cst, align 8
  %i.ic = bitcast i32 %i.ib to float
  %i.id = fadd float %i.ia, -1.000000e+00
  %i.ie = fmul float %i.id, %i.ic
  %i.if = fadd float %i.ie, 1.000000e+00
  %i.ig = fadd float %i.if, 1.000000e+00
  %i.ih = fmul float %i.ig, 5.000000e-01
  br label %ma_is_spatial_channel_position.exit.thread379

ma_is_spatial_channel_position.exit.thread379:    ; preds = %bb.ag, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_is_spatial_channel_position.exit, %ma_spatializer_get_directional_attenuation_factor.exit
  %.0242 = phi float [ %i.ih, %ma_spatializer_get_directional_attenuation_factor.exit ], [ 1.000000e+00, %ma_is_spatial_channel_position.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %ma_channel_map_get_channel.exit ], [ 1.000000e+00, %bb.ag ] ; 2 uses
  %i.ii = load float, ptr %i.hl, align 4, !tbaa !499 ; 2 uses
  %i.ij = fcmp ogt float %.0242, %i.ii
  %i.ik = select i1 %i.ij, float %.0242, float %i.ii
  %i.il = load ptr, ptr %i.hm, align 8, !tbaa !503
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv396 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !349
  %i.io = fmul float %i.in, %i.ik
  store float %i.io, ptr %i.im, align 4, !tbaa !349
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %.loopexit387, label %bb.ad, !llvm.loop !1929

.loopexit387:                                     ; preds = %ma_is_spatial_channel_position.exit.thread379, %bb.ac, %ma_silence_pcm_frames.exit318
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !503 ; 8 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %ma_gainer_set_gains.exit, label %.preheader.i324

.preheader.i324:                                  ; preds = %.loopexit387
  %i.it = load i32, ptr %i.ip, align 8, !tbaa !461 ; 3 uses
  %.not.i325 = icmp eq i32 %i.it, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !458 ; 2 uses
  br i1 %.not.i325, label %._crit_edge.i, label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.preheader.i324
  %i.iu = uitofp i32 %.pre.i to float
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !460
  %i.ix = uitofp i32 %i.iw to float
  %i.iy = fdiv float %i.iu, %i.ix                 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !455 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !456 ; 7 uses
  %wide.trip.count.i = zext i32 %i.it to i64      ; 6 uses
  %min.iters.check448 = icmp ult i32 %i.it, 12
  br i1 %min.iters.check448, label %scalar.ph447.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i326
  %i.jd = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ja, i64 %i.jd ; 2 uses
  %scevgep438 = getelementptr i8, ptr %i.jc, i64 %i.jd ; 2 uses
  %scevgep439 = getelementptr i8, ptr %i.ir, i64 %i.jd ; 2 uses
  %bound0 = icmp ult ptr %i.ja, %scevgep438
  %bound1 = icmp ult ptr %i.jc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0440 = icmp ult ptr %i.ja, %scevgep439
  %bound1441 = icmp ult ptr %i.ir, %scevgep
  %found.conflict442 = and i1 %bound0440, %bound1441
  %conflict.rdx = or i1 %found.conflict, %found.conflict442
  %bound0443 = icmp ult ptr %i.jc, %scevgep439
  %bound1444 = icmp ult ptr %i.ir, %scevgep438
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx, %found.conflict445
  br i1 %conflict.rdx446, label %scalar.ph447.preheader, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck
  %n.vec450 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert451 = insertelement <4 x float> poison, float %i.iy, i64 0
  %broadcast.splat452 = shufflevector <4 x float> %broadcast.splatinsert451, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph449
  %index454 = phi i64 [ 0, %vector.ph449 ], [ %index.next457, %vector.body453 ] ; 4 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %index454
  %wide.load = load <4 x float>, ptr %i.je, align 4, !tbaa !349, !alias.scope !1936
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index454 ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.jf, align 4, !tbaa !349, !alias.scope !1937, !noalias !1938 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index454 ; 2 uses
  %wide.load456 = load <4 x float>, ptr %i.jg, align 4, !tbaa !349, !alias.scope !1939, !noalias !1936
  %i.jh = fsub <4 x float> %wide.load456, %wide.load455
  %i.ji = fmul <4 x float> %broadcast.splat452, %i.jh
  %i.jj = fadd <4 x float> %wide.load455, %i.ji
  store <4 x float> %i.jj, ptr %i.jf, align 4, !tbaa !349, !alias.scope !1937, !noalias !1938
  store <4 x float> %wide.load, ptr %i.jg, align 4, !tbaa !349, !alias.scope !1939, !noalias !1936
  %index.next457 = add nuw i64 %index454, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.jk, label %middle.block458, label %vector.body453, !llvm.loop !1934

middle.block458:                                  ; preds = %vector.body453
  %cmp.n459 = icmp eq i64 %n.vec450, %wide.trip.count.i
  br i1 %cmp.n459, label %._crit_edge.i, label %scalar.ph447.preheader

scalar.ph447.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i326, %middle.block458
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i326 ], [ %n.vec450, %middle.block458 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph447.prol.loopexit, label %scalar.ph447.prol

scalar.ph447.prol:                                ; preds = %scalar.ph447.preheader
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i.ph
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !349
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.ph ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !349 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.ph ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !349
  %i.jr = fsub float %i.jq, %i.jo
  %i.js = fmul float %i.iy, %i.jr
  %i.jt = fadd float %i.jo, %i.js
  store float %i.jt, ptr %i.jn, align 4, !tbaa !349
  store float %i.jm, ptr %i.jp, align 4, !tbaa !349
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph447.prol.loopexit

scalar.ph447.prol.loopexit:                       ; preds = %scalar.ph447.prol, %scalar.ph447.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph447.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph447.prol ]
  %i.ju = add nsw i64 %wide.trip.count.i, -1
  %i.jv = icmp eq i64 %indvars.iv.i.ph, %i.ju
  br i1 %i.jv, label %._crit_edge.i, label %scalar.ph447

scalar.ph447:                                     ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph447 ], [ %indvars.iv.i.unr, %scalar.ph447.prol.loopexit ] ; 5 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.i
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !349
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !349 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !349
  %i.kc = fsub float %i.kb, %i.jz
  %i.kd = fmul float %i.iy, %i.kc
  %i.ke = fadd float %i.jz, %i.kd
  store float %i.ke, ptr %i.jy, align 4, !tbaa !349
  store float %i.jx, ptr %i.ka, align 4, !tbaa !349
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next.i
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !349
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !349 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !349
  %i.kl = fsub float %i.kk, %i.ki
  %i.km = fmul float %i.iy, %i.kl
  %i.kn = fadd float %i.ki, %i.km
  store float %i.kn, ptr %i.kh, align 4, !tbaa !349
  store float %i.kg, ptr %i.kj, align 4, !tbaa !349
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph447, !llvm.loop !1935

._crit_edge.i:                                    ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447, %middle.block458, %.preheader.i324
  %i.ko = icmp eq i32 %.pre.i, -1
  br i1 %i.ko, label %bb.ah, label %ma_gainer_reset_smoothing_time.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !460
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ah, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kq, %bb.ah ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !458
  br label %ma_gainer_set_gains.exit

ma_gainer_set_gains.exit:                         ; preds = %.loopexit387, %ma_gainer_reset_smoothing_time.exit.i
  %i.kr = call i32 @ma_gainer_process_pcm_frames(ptr noundef nonnull %i.ip, ptr noundef %2, ptr noundef %2, i64 noundef %4) ; 0 uses
  %i.ks = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.ks, label %bb.ai, label %ma_doppler_pitch.exit

bb.ai:                                            ; preds = %ma_gainer_set_gains.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 5 uses
  %i.kv = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %.loopexit386, label %.preheader.i.i.i327

.loopexit.i.i.i328:                               ; preds = %.lr.ph.i.i.i336, %.preheader.i.i.i327
  %i.kx = atomicrmw volatile xchg ptr %i.ku, i32 1 acquire, align 4
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.loopexit386, label %.preheader.i.i.i327

.preheader.i.i.i327:                              ; preds = %bb.ai, %.loopexit.i.i.i328
  %i.kz = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.la = icmp eq i32 %i.kz, 1
  br i1 %i.la, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328

.lr.ph.i.i.i336:                                  ; preds = %.preheader.i.i.i327, %.lr.ph.i.i.i336
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.lb = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328, !llvm.loop !1

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.ai
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kt, align 8
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.ku release, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.lf = atomicrmw volatile xchg ptr %i.le, i32 1 acquire, align 4
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %.loopexit, label %.preheader.i.i.i337

.loopexit.i.i.i338:                               ; preds = %.lr.ph.i.i.i346, %.preheader.i.i.i337
  %i.lh = atomicrmw volatile xchg ptr %i.le, i32 1 acquire, align 4
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %.loopexit, label %.preheader.i.i.i337

.preheader.i.i.i337:                              ; preds = %.loopexit386, %.loopexit.i.i.i338
  %i.lj = load atomic volatile i32, ptr %i.le monotonic, align 4
  %i.lk = icmp eq i32 %i.lj, 1
  br i1 %i.lk, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338

.lr.ph.i.i.i346:                                  ; preds = %.preheader.i.i.i337, %.lr.ph.i.i.i346
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.ll = load atomic volatile i32, ptr %i.le monotonic, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  br i1 %i.lm, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338, !llvm.loop !1

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.ld, align 8
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.le release, align 4
  %7 = shufflevector <2 x float> %.sroa.03.0.copyload.i.i330, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %8 = insertelement <3 x float> %7, float %.sroa.24.0.copyload.i.i332, i64 0
  %9 = shufflevector <2 x float> %.sroa.03.0.copyload.i.i340, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %10 = insertelement <3 x float> %9, float %.sroa.24.0.copyload.i.i342, i64 0
  %11 = fsub <3 x float> %8, %10                  ; 7 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.lp = atomicrmw volatile xchg ptr %i.lo, i32 1 acquire, align 4
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.loopexit.i.i.i355:                               ; preds = %.lr.ph.i.i.i363, %.preheader.i.i.i354
  %i.lr = atomicrmw volatile xchg ptr %i.lo, i32 1 acquire, align 4
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %ma_spatializer_get_velocity.exit, label %.preheader.i.i.i354

.preheader.i.i.i354:                              ; preds = %.loopexit, %.loopexit.i.i.i355
  %i.lt = load atomic volatile i32, ptr %i.lo monotonic, align 4
  %i.lu = icmp eq i32 %i.lt, 1
  br i1 %i.lu, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355

.lr.ph.i.i.i363:                                  ; preds = %.preheader.i.i.i354, %.lr.ph.i.i.i363
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !143
  %i.lv = load atomic volatile i32, ptr %i.lo monotonic, align 4
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355, !llvm.loop !1

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.ln, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8, !tbaa !349
  store atomic volatile i32 0, ptr %i.lo release, align 4
  %foldExtExtBinop462 = fmul <3 x float> %11, %11
  %12 = extractelement <3 x float> %foldExtExtBinop462, i64 2
  %13 = extractelement <3 x float> %11, i64 1     ; 2 uses
  %i.lx = call float @llvm.fmuladd.f32(float %13, float %13, float %12)
  %14 = extractelement <3 x float> %11, i64 0     ; 2 uses
  %i.ly = call float @llvm.fmuladd.f32(float %14, float %14, float %i.lx) ; 2 uses
  %i.lz = fcmp oeq float %i.ly, 0.000000e+00
  br i1 %i.lz, label %ma_doppler_pitch.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_spatializer_get_velocity.exit
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.ly)
  %i.ma = fdiv float %i.be, %i.as
  %i.mb = fneg float %i.as
  %i.mc = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 1, i32 3>
  %15 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.md = fmul <2 x float> %i.mc, %15
  %16 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.me = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 0, i32 2>
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.me, <2 x float> %i.md)
  %i.mg = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x float> poison, float %.sroa.24.0.copyload.i.i, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %.sroa.24.0.copyload.i.i359, i64 1
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.mi, <2 x float> %i.mf)
  %i.mk = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = fdiv <2 x float> %i.mj, %i.ml           ; 2 uses
  %i.mn = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mp = fcmp olt <2 x float> %i.mm, %i.mo
  %i.mq = select <2 x i1> %i.mp, <2 x float> %i.mm, <2 x float> %i.mo
  %i.mr = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mt = insertelement <2 x float> poison, float %i.be, i64 0
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ms, <2 x float> %i.mq, <2 x float> %i.mu) ; 2 uses
  %i.mw = extractelement <2 x float> %i.mv, i64 0
  %i.mx = extractelement <2 x float> %i.mv, i64 1
  %i.my = fdiv float %i.mw, %i.mx
  br label %ma_doppler_pitch.exit

ma_doppler_pitch.exit:                            ; preds = %ma_gainer_set_gains.exit, %bb.aj, %ma_spatializer_get_velocity.exit
  %.sink = phi float [ 1.000000e+00, %ma_spatializer_get_velocity.exit ], [ %i.my, %bb.aj ], [ 1.000000e+00, %ma_gainer_set_gains.exit ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %.sink, ptr %i.mz, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.ak

bb.ak:                                            ; preds = %ma_copy_pcm_frames.exit, %ma_doppler_pitch.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %ma_doppler_pitch.exit ], [ 0, %ma_copy_pcm_frames.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @ma_channel_map_apply_f32(ptr nofree noundef writeonly %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4, i32 noundef %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7, i32 noundef %8) unnamed_addr #39 {
bb.a:
  %i.a = alloca [254 x i8], align 16              ; 6 uses
  %i.b = alloca [254 x i8], align 16              ; 7 uses
  %i.c = alloca [32 x [32 x float]], align 16     ; 26 uses
  %i.d = tail call fastcc i32 @ma_channel_map_get_conversion_path(ptr noundef %4, i32 noundef %5, ptr noundef %1, i32 noundef %2, i32 noundef %7)
  switch i32 %i.d, label %bb.al [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %.critedge334, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i32 %2, 2
  %i.g = zext i32 %i.f to i64
  %i.h = mul i64 %6, %i.g                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.h, 0
  br i1 %.not.i7.i, label %.critedge334, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.j, %.lr.ph.i ], [ %0, %bb.c ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.i, %.lr.ph.i ], [ %i.h, %bb.c ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.k, %.lr.ph.i ], [ %3, %bb.c ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.i = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.critedge334, label %.lr.ph.i, !llvm.loop !12

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %0, null
  %i.m = icmp eq ptr %3, null
  %or.cond.i = or i1 %i.l, %i.m
  %i.n = icmp eq i32 %5, 0
  %or.cond3.i = or i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %.critedge334, label %.preheader66.i

.preheader66.i:                                   ; preds = %bb.d
  %i.o = icmp eq ptr %4, null                     ; 2 uses
  br i1 %i.o, label %ma_channel_map_get_channel.exit.us.i, label %ma_channel_map_get_channel.exit.preheader.i

ma_channel_map_get_channel.exit.preheader.i:      ; preds = %.preheader66.i
  %wide.trip.count.i = zext i32 %5 to i64         ; 3 uses
  %min.iters.check844 = icmp ult i32 %5, 8
  br i1 %min.iters.check844, label %ma_channel_map_get_channel.exit.i.preheader, label %vector.ph845

vector.ph845:                                     ; preds = %ma_channel_map_get_channel.exit.preheader.i
  %n.vec846 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next853, %vector.body847 ] ; 2 uses
  %vec.phi849 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.v, %vector.body847 ]
  %vec.phi850 = phi <4 x i32> [ zeroinitializer, %vector.ph845 ], [ %i.w, %vector.body847 ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 %index848 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load851 = load <4 x i8>, ptr %i.p, align 1, !tbaa !119
  %wide.load852 = load <4 x i8>, ptr %i.q, align 1, !tbaa !119
  %i.r = icmp ne <4 x i8> %wide.load851, zeroinitializer
  %i.s = icmp ne <4 x i8> %wide.load852, zeroinitializer
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %vec.phi849, %i.t          ; 2 uses
  %i.w = add <4 x i32> %vec.phi850, %i.u          ; 2 uses
  %index.next853 = add nuw i64 %index848, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next853, %n.vec846
  br i1 %i.x, label %middle.block854, label %vector.body847, !llvm.loop !1940

middle.block854:                                  ; preds = %vector.body847
  %bin.rdx855 = add <4 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx855) ; 2 uses
  %cmp.n856 = icmp eq i64 %n.vec846, %wide.trip.count.i
  br i1 %cmp.n856, label %.split.us.i, label %ma_channel_map_get_channel.exit.i.preheader

ma_channel_map_get_channel.exit.i.preheader:      ; preds = %ma_channel_map_get_channel.exit.preheader.i, %middle.block854
  %indvars.iv.i.ph = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %n.vec846, %middle.block854 ]
  %.03568.i.ph = phi i32 [ 0, %ma_channel_map_get_channel.exit.preheader.i ], [ %i.y, %middle.block854 ]
  br label %ma_channel_map_get_channel.exit.i

ma_channel_map_get_channel.exit.us.i:             ; preds = %.preheader66.i, %ma_channel_map_get_channel.exit.us.i
  %.03568.us.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ]
  %.03767.us.i = phi i32 [ %i.ab, %ma_channel_map_get_channel.exit.us.i ], [ 0, %.preheader66.i ] ; 2 uses
  %i.z = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %5, i32 noundef %.03767.us.i)
  %.not47.us.i = icmp ne i8 %i.z, 0
  %i.aa = zext i1 %.not47.us.i to i32
  %spec.select.us.i = add i32 %.03568.us.i, %i.aa ; 2 uses
  %i.ab = add nuw i32 %.03767.us.i, 1             ; 2 uses
  %exitcond148.not.i = icmp eq i32 %i.ab, %5
  br i1 %exitcond148.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.us.i, !llvm.loop !1941

ma_channel_map_get_channel.exit.i:                ; preds = %ma_channel_map_get_channel.exit.i.preheader, %ma_channel_map_get_channel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ma_channel_map_get_channel.exit.i ], [ %indvars.iv.i.ph, %ma_channel_map_get_channel.exit.i.preheader ] ; 2 uses
  %.03568.i = phi i32 [ %spec.select.i, %ma_channel_map_get_channel.exit.i ], [ %.03568.i.ph, %ma_channel_map_get_channel.exit.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !119
  %.not47.i = icmp ne i8 %i.ad, 0
  %i.ae = zext i1 %.not47.i to i32
  %spec.select.i = add i32 %.03568.i, %i.ae       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.i, !llvm.loop !1942

.split.us.i:                                      ; preds = %ma_channel_map_get_channel.exit.i, %ma_channel_map_get_channel.exit.us.i, %middle.block854
  %.us-phi.i = phi i32 [ %spec.select.us.i, %ma_channel_map_get_channel.exit.us.i ], [ %i.y, %middle.block854 ], [ %spec.select.i, %ma_channel_map_get_channel.exit.i ] ; 2 uses
  %.not.i = icmp eq i32 %.us-phi.i, 0
  br i1 %.not.i, label %bb.e, label %.preheader64.i

.preheader64.i:                                   ; preds = %.split.us.i
  %.not131.i = icmp eq i64 %6, 0
  br i1 %.not131.i, label %.critedge334, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader64.i
  %i.af = uitofp i32 %.us-phi.i to float          ; 2 uses
  %i.ag = zext i32 %5 to i64                      ; 9 uses
  br i1 %i.o, label %.preheader.us.us.i.preheader, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.us.i
  %xtraiter1066 = and i64 %i.ag, 1
  %i.ah = icmp eq i32 %5, 1
  %unroll_iter1071 = and i64 %i.ag, 4294967294
  %lcmp.mod1068.not = icmp eq i64 %xtraiter1066, 0
  %lcmp.mod1070 = trunc i32 %5 to i1
  br label %.preheader.us.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.ai = add nsw i64 %i.ag, -1                   ; 2 uses
  %xtraiter1073 = and i64 %i.ag, 7                ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 7
  %unroll_iter1078 = and i64 %i.ag, 4294967288
  %lcmp.mod1075.not = icmp eq i64 %xtraiter1073, 0
  %lcmp.mod1077 = icmp ne i64 %xtraiter1073, 0
  %xtraiter1080 = and i64 %i.ag, 3                ; 3 uses
  %i.ak = icmp ult i64 %i.ai, 3
  %unroll_iter1085 = and i64 %i.ag, 4294967292
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1080, 0
  %lcmp.mod1084 = icmp ne i64 %xtraiter1080, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split.us.us.us.i
  %.03977.us.us.i = phi i64 [ %i.ew, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ]
  %.04176.us.us.i = phi ptr [ %i.eu, %._crit_edge.split.us.us.us.i ], [ %0, %.preheader.us.us.i.preheader ] ; 2 uses
  %.04274.us.us.i = phi ptr [ %i.ev, %._crit_edge.split.us.us.us.i ], [ %3, %.preheader.us.us.i.preheader ] ; 35 uses
  switch i32 %5, label %.lr.ph.split.us.us.us.split.i.preheader [
    i32 7, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us.i.preheader
    i32 1, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 2, label %._crit_edge.split.us.us.us.loopexit136.i
    i32 3, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader
    i32 4, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us108.i.preheader
    i32 5, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us116.i.preheader
    i32 6, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader
  ]

ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.preheader: ; preds = %.preheader.us.us.i, %.preheader.us.us.i
  br i1 %i.aj, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i.epil.preheader, label %ma_channel_map_get_channel.exit50.thread.us.us.us.us92.i

.lr.ph.split.us.us.us.split.i.preheader:          ; preds = %.preheader.us.us.i
  br i1 %i.ak, label %.lr.ph.split.us.us.us.split.i.epil.preheader, label %.lr.ph.split.us.us.us.split.i

ma_channel_map_get_channel.exit50.thread.us.us.us.us124.i.preheader: ; preds = %.preheader.us.us.i
  %i.al = load float, ptr %.04274.us.us.i, align 4, !tbaa !349
end_hunk_0
begin_hunk_1_@ma_channel_map_apply_f32:bb.a
  %i.va = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.uw, float %i.uz)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.vc = load float, ptr %i.vb, align 8, !tbaa !349
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vc, float %i.va)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !349
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vf, float %i.vd)
  %i.vh = fadd float %i.vg, 0.000000e+00
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 20
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !349
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.vj, float %i.vh)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv587
  store float %i.vk, ptr %i.vl, align 4, !tbaa !349
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357.us, !llvm.loop !1978

ma_channel_map_get_channel.exit357:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %ma_channel_map_get_channel.exit357 ], [ 0, %.lr.ph ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv582
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !119
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vo ; 5 uses
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !349
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !349
  %i.vt = fmul float %i.uk, %i.vs
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.vq, float %i.vt)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !349
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vw, float %i.vu)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !349
  %i.wa = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vz, float %i.vx)
  %i.wb = fadd float %i.wa, 0.000000e+00
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !349
  %i.we = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.wd, float %i.wb)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv582
  store float %i.we, ptr %i.wf, align 4, !tbaa !349
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357, !llvm.loop !1978

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit357, %ma_channel_map_get_channel.exit357.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %exitcond596.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count595
  br i1 %exitcond596.not, label %._crit_edge432, label %bb.aw, !llvm.loop !1979

._crit_edge432:                                   ; preds = %._crit_edge
  switch i32 %2, label %.loopexit373 [
    i32 8, label %bb.az
    i32 6, label %.preheader378
  ]

.preheader378:                                    ; preds = %._crit_edge432
  %.not486 = icmp eq i64 %6, 0
  br i1 %.not486, label %.loopexit373, label %.preheader377.lr.ph

.preheader377.lr.ph:                              ; preds = %.preheader378
  %.not487 = icmp eq i32 %5, 0
  %i.wg = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wh = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wi = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wj = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %wide.trip.count600 = zext nneg i32 %5 to i64
  br label %.preheader377

bb.az:                                            ; preds = %._crit_edge432
  %i.wl = icmp eq i32 %5, 2
  %.not490 = icmp eq i64 %6, 0                    ; 2 uses
  br i1 %i.wl, label %.preheader372, label %.preheader375

.preheader375:                                    ; preds = %bb.az
  br i1 %.not490, label %.loopexit373, label %.preheader374.lr.ph

.preheader374.lr.ph:                              ; preds = %.preheader375
  %.not489 = icmp eq i32 %5, 0
  %i.wm = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wn = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wo = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.wp = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wq = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.wr = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %wide.trip.count605 = zext nneg i32 %5 to i64
  br label %.preheader374

.preheader372:                                    ; preds = %bb.az
  br i1 %.not490, label %.loopexit373, label %.lr.ph471

.lr.ph471:                                        ; preds = %.preheader372
  %i.wt = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.wu = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.wv = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.ww = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.wx = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  %i.wy = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.wz = getelementptr inbounds nuw i8, ptr %i.c, i64 896
  %i.xa = load <2 x float>, ptr %i.c, align 16, !tbaa !349 ; 4 uses
  %i.xb = load <2 x float>, ptr %i.wt, align 16, !tbaa !349 ; 4 uses
  %i.xc = load <2 x float>, ptr %i.wu, align 16, !tbaa !349 ; 3 uses
  %i.xd = load <2 x float>, ptr %i.wv, align 16, !tbaa !349 ; 3 uses
  %i.xe = load <2 x float>, ptr %i.ww, align 16, !tbaa !349 ; 4 uses
  %i.xf = load <2 x float>, ptr %i.wx, align 16, !tbaa !349 ; 4 uses
  %i.xg = load <2 x float>, ptr %i.wy, align 16, !tbaa !349 ; 3 uses
  %i.xh = load <2 x float>, ptr %i.wz, align 16, !tbaa !349 ; 3 uses
  %i.xi = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check884 = icmp ult i32 %i.xi, 4
  %i.xj = add i64 %6, -536870913
  %i.xk = icmp ult i64 %i.xj, -536870912
  %or.cond942 = or i1 %min.iters.check884, %i.xk
  br i1 %or.cond942, label %scalar.ph883.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph471
  %i.xl = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.xl
  %i.xm = shl nuw nsw i64 %6, 3
  %scevgep882 = getelementptr i8, ptr %3, i64 %i.xm
  %bound0 = icmp ult ptr %0, %scevgep882
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck
  %n.vec886 = and i32 %i.xi, 1073741820           ; 4 uses
  %i.xn = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xo = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xp = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xq = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xr = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xs = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xt = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xu = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xv = shufflevector <8 x float> %i.xn, <8 x float> %i.xp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xw = shufflevector <8 x float> %i.xo, <8 x float> %i.xq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xx = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xy = shufflevector <8 x float> %i.xs, <8 x float> %i.xu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph885
  %index920 = phi i32 [ 0, %vector.ph885 ], [ %index.next922, %vector.body919 ] ; 3 uses
  %i.xz = shl i32 %index920, 1
  %i.ya = zext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ya
  %wide.vec = load <8 x float>, ptr %i.yb, align 4, !tbaa !349, !alias.scope !2009 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec921 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.yc = shl i32 %index920, 3
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yd
  %i.yf = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yg = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yh = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yi = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yj = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yk = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yl = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ym = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yn = shufflevector <8 x float> %i.yf, <8 x float> %i.yh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yo = shufflevector <8 x float> %i.yg, <8 x float> %i.yi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yp = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yo, <16 x float> %i.xw, <16 x float> zeroinitializer)
  %i.yq = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yn, <16 x float> %i.xv, <16 x float> %i.yp)
  %i.yr = shufflevector <8 x float> %i.yj, <8 x float> %i.yl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ys = shufflevector <8 x float> %i.yk, <8 x float> %i.ym, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yt = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.ys, <16 x float> %i.xy, <16 x float> zeroinitializer)
  %i.yu = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yr, <16 x float> %i.xx, <16 x float> %i.yt)
  %interleaved.vec = shufflevector <16 x float> %i.yq, <16 x float> %i.yu, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ye, align 4, !tbaa !349, !alias.scope !2010, !noalias !2009
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yv = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yv, label %middle.block923, label %vector.body919, !llvm.loop !1983

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.yw = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.yx = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yy = shufflevector <4 x float> %i.yw, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.yz = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.za = shufflevector <4 x float> %i.yy, <4 x float> %i.yz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zb = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> %i.yx, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zd = shufflevector <4 x float> %i.zc, <4 x float> %i.yz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ze = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.zf = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zg = shufflevector <4 x float> %i.ze, <4 x float> %i.zf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zh = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zi = shufflevector <4 x float> %i.zg, <4 x float> %i.zh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zj = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> %i.zf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zl = shufflevector <4 x float> %i.zk, <4 x float> %i.zh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.zu, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.zm = shl i32 %.0314470, 1
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zn
  %i.zp = shl i32 %.0314470, 3                    ; 2 uses
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zq
  %9 = load <2 x float>, ptr %i.zo, align 4, !tbaa !349 ; 2 uses
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.za, <4 x float> zeroinitializer)
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.zs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %i.zd, <4 x float> %11)
  store <4 x float> %i.zs, ptr %i.zr, align 4, !tbaa !349
  %13 = or disjoint i32 %i.zp, 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %i.zt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.zi, <4 x float> zeroinitializer)
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %12, <4 x float> %i.zl, <4 x float> %i.zt)
  store <4 x float> %16, ptr %15, align 4, !tbaa !349
  %i.zu = add i32 %.0314470, 1                    ; 3 uses
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp ugt i64 %6, %i.zv
  br i1 %i.zw, label %scalar.ph883, label %.loopexit373, !llvm.loop !1984

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.abp, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.zx = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.zy = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.aat, %bb.ba ]
  %i.zz = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abg, %bb.ba ]
  %i.aaa = trunc nuw nsw i64 %indvars.iv602 to i32
  %i.aab = add i32 %i.zx, %i.aaa
  %i.aac = zext i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !349
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !349
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !349
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !349
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !349
  %i.aan = insertelement <4 x float> poison, float %i.aae, i64 0
  %i.aao = shufflevector <4 x float> %i.aan, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aap = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aaq = insertelement <4 x float> %i.aap, float %i.aai, i64 1
  %i.aar = insertelement <4 x float> %i.aaq, float %i.aak, i64 2
  %i.aas = insertelement <4 x float> %i.aar, float %i.aam, i64 3
  %i.aat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aao, <4 x float> %i.aas, <4 x float> %i.zy) ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !349
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !349
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !349
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !349
  %i.abc = insertelement <4 x float> poison, float %i.aav, i64 0
  %i.abd = insertelement <4 x float> %i.abc, float %i.aax, i64 1
  %i.abe = insertelement <4 x float> %i.abd, float %i.aaz, i64 2
  %i.abf = insertelement <4 x float> %i.abe, float %i.abb, i64 3
  %i.abg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aao, <4 x float> %i.abf, <4 x float> %i.zz) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1985

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.abh = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.aat, %bb.ba ]
  %i.abi = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abg, %bb.ba ]
  %i.abj = shl i32 %.1315468, 3                   ; 2 uses
  %i.abk = zext i32 %i.abj to i64
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abk
  store <4 x float> %i.abh, ptr %i.abl, align 4, !tbaa !349
  %i.abm = or disjoint i32 %i.abj, 4
  %i.abn = zext i32 %i.abm to i64
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abn
  store <4 x float> %i.abi, ptr %i.abo, align 4, !tbaa !349
  %i.abp = add i32 %.1315468, 1                   ; 3 uses
  %i.abq = zext i32 %i.abp to i64
  %i.abr = icmp ugt i64 %6, %i.abq
  br i1 %i.abr, label %.preheader374, label %.loopexit373, !llvm.loop !1986

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.adk, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.abs = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.abt = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acx, %bb.bb ]
  %i.abu = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acq, %bb.bb ]
  %i.abv = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acj, %bb.bb ]
  %i.abw = trunc nuw nsw i64 %indvars.iv597 to i32
  %i.abx = add i32 %i.abs, %i.abw
  %i.aby = zext i32 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aby
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !349
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !349
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !349
  %i.acf = insertelement <2 x float> poison, float %i.aca, i64 0
  %i.acg = shufflevector <2 x float> %i.acf, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ach = insertelement <2 x float> poison, float %i.acc, i64 0
  %i.aci = insertelement <2 x float> %i.ach, float %i.ace, i64 1
  %i.acj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acg, <2 x float> %i.aci, <2 x float> %i.abv) ; 2 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !349
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !349
  %i.aco = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acp = insertelement <2 x float> %i.aco, float %i.acn, i64 1
  %i.acq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acg, <2 x float> %i.acp, <2 x float> %i.abu) ; 2 uses
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !349
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.acu = load float, ptr %i.act, align 4, !tbaa !349
  %i.acv = insertelement <2 x float> poison, float %i.acs, i64 0
  %i.acw = insertelement <2 x float> %i.acv, float %i.acu, i64 1
  %i.acx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acg, <2 x float> %i.acw, <2 x float> %i.abt) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1987

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.acy = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acx, %bb.bb ]
  %i.acz = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acq, %bb.bb ]
  %i.ada = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acj, %bb.bb ]
  %i.adb = mul i32 %.2447, 6                      ; 3 uses
  %i.adc = zext i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adc
  store <2 x float> %i.ada, ptr %i.add, align 4, !tbaa !349
  %i.ade = add i32 %i.adb, 2
  %i.adf = zext i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adf
  store <2 x float> %i.acz, ptr %i.adg, align 4, !tbaa !349
  %i.adh = add i32 %i.adb, 4
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adi
  store <2 x float> %i.acy, ptr %i.adj, align 4, !tbaa !349
  %i.adk = add i32 %.2447, 1                      ; 3 uses
  %i.adl = zext i32 %i.adk to i64
  %i.adm = icmp ugt i64 %6, %i.adl
  br i1 %i.adm, label %.preheader377, label %.loopexit373, !llvm.loop !1988

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.zu, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.abp, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.adk, %._crit_edge441 ] ; 2 uses
  %i.adn = zext i32 %.3 to i64
  %i.ado = icmp ugt i64 %6, %i.adn
  br i1 %i.ado, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
  %wide.trip.count615 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count610 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count620 = zext nneg i32 %2 to i64
  %i.adp = add nsw i64 %wide.trip.count615, -1    ; 2 uses
  %xtraiter1171 = and i64 %wide.trip.count610, 3  ; 3 uses
  %i.adq = add nsw i32 %5, -1
  %i.adr = icmp ult i32 %i.adq, 3
  %unroll_iter1176 = and i64 %wide.trip.count610, 60
  %lcmp.mod1173.not = icmp eq i64 %xtraiter1171, 0
  %lcmp.mod1175 = icmp ne i64 %xtraiter1171, 0
  %min.iters.check928 = icmp ult i32 %2, 8
  %i.ads = trunc nsw i64 %i.adp to i32
  %i.adt = icmp ugt i64 %i.adp, 4294967295
  %n.vec930 = and i64 %wide.trip.count615, 56     ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count615
  %xtraiter1178 = and i64 %wide.trip.count615, 3  ; 2 uses
  %lcmp.mod1179.not = icmp eq i64 %xtraiter1178, 0
  br label %.preheader371

.preheader371:                                    ; preds = %.preheader371.lr.ph, %._crit_edge479
  %.4480 = phi i32 [ %.3, %.preheader371.lr.ph ], [ %i.agr, %._crit_edge479 ] ; 3 uses
  br i1 %.not484, label %._crit_edge479, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader371
  %i.adu = mul i32 %.4480, %5                     ; 5 uses
  %i.adv = mul i32 %.4480, %2                     ; 8 uses
  br i1 %.not492, label %.preheader.preheader, label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  br i1 %min.iters.check928, label %.preheader.preheader962, label %vector.scevcheck926

vector.scevcheck926:                              ; preds = %.preheader.preheader
  %i.adw = xor i32 %i.adv, -1
  %i.adx = icmp ult i32 %i.adw, %i.ads
  %i.ady = or i1 %i.adx, %i.adt
  br i1 %i.ady, label %.preheader.preheader962, label %vector.body931

vector.body931:                                   ; preds = %vector.scevcheck926, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %vector.scevcheck926 ] ; 2 uses
  %i.adz = trunc nuw nsw i64 %index932 to i32
  %i.aea = add i32 %i.adv, %i.adz
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aeb ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  store <4 x float> zeroinitializer, ptr %i.aec, align 4, !tbaa !349
  store <4 x float> zeroinitializer, ptr %i.aed, align 4, !tbaa !349
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.aee = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.aee, label %middle.block934, label %vector.body931, !llvm.loop !1989

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %._crit_edge479, label %.preheader.preheader962

.preheader.preheader962:                          ; preds = %vector.scevcheck926, %.preheader.preheader, %middle.block934
  %indvars.iv617.ph = phi i64 [ 0, %vector.scevcheck926 ], [ 0, %.preheader.preheader ], [ %n.vec930, %middle.block934 ] ; 3 uses
  br i1 %lcmp.mod1179.not, label %.preheader.prol.loopexit, label %.preheader.prol
end_hunk_1
