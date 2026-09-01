Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
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
  %i.ii = load float, ptr %i.hl, align 4, !tbaa !1143 ; 2 uses
  %i.ij = fcmp ogt float %.0242, %i.ii
  %i.ik = select i1 %i.ij, float %.0242, float %i.ii
  %i.il = load ptr, ptr %i.hm, align 8, !tbaa !1148
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv396 ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !336
  %i.io = fmul float %i.in, %i.ik
  store float %i.io, ptr %i.im, align 4, !tbaa !336
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %.loopexit387, label %bb.ad, !llvm.loop !1156

.loopexit387:                                     ; preds = %ma_is_spatial_channel_position.exit.thread379, %bb.ac, %ma_silence_pcm_frames.exit318
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !1148 ; 8 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %ma_gainer_set_gains.exit, label %.preheader.i324

.preheader.i324:                                  ; preds = %.loopexit387
  %i.it = load i32, ptr %i.ip, align 8, !tbaa !1017 ; 3 uses
  %.not.i325 = icmp eq i32 %i.it, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !1002 ; 2 uses
  br i1 %.not.i325, label %._crit_edge.i, label %.lr.ph.i326

.lr.ph.i326:                                      ; preds = %.preheader.i324
  %i.iu = uitofp i32 %.pre.i to float
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !1016
  %i.ix = uitofp i32 %i.iw to float
  %i.iy = fdiv float %i.iu, %i.ix                 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !999 ; 7 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !1000 ; 7 uses
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
  %wide.load = load <4 x float>, ptr %i.je, align 4, !tbaa !336, !alias.scope !1157
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index454 ; 2 uses
  %wide.load455 = load <4 x float>, ptr %i.jf, align 4, !tbaa !336, !alias.scope !1160, !noalias !1162 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index454 ; 2 uses
  %wide.load456 = load <4 x float>, ptr %i.jg, align 4, !tbaa !336, !alias.scope !1164, !noalias !1157
  %i.jh = fsub <4 x float> %wide.load456, %wide.load455
  %i.ji = fmul <4 x float> %broadcast.splat452, %i.jh
  %i.jj = fadd <4 x float> %wide.load455, %i.ji
  store <4 x float> %i.jj, ptr %i.jf, align 4, !tbaa !336, !alias.scope !1160, !noalias !1162
  store <4 x float> %wide.load, ptr %i.jg, align 4, !tbaa !336, !alias.scope !1164, !noalias !1157
  %index.next457 = add nuw i64 %index454, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next457, %n.vec450
  br i1 %i.jk, label %middle.block458, label %vector.body453, !llvm.loop !1165

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
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !336
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.ph ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !336 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i.ph ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !336
  %i.jr = fsub float %i.jq, %i.jo
  %i.js = fmul float %i.iy, %i.jr
  %i.jt = fadd float %i.jo, %i.js
  store float %i.jt, ptr %i.jn, align 4, !tbaa !336
  store float %i.jm, ptr %i.jp, align 4, !tbaa !336
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
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !336
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !336 ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.i ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !336
  %i.kc = fsub float %i.kb, %i.jz
  %i.kd = fmul float %i.iy, %i.kc
  %i.ke = fadd float %i.jz, %i.kd
  store float %i.ke, ptr %i.jy, align 4, !tbaa !336
  store float %i.jx, ptr %i.ka, align 4, !tbaa !336
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next.i
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !336
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !336 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !336
  %i.kl = fsub float %i.kk, %i.ki
  %i.km = fmul float %i.iy, %i.kl
  %i.kn = fadd float %i.ki, %i.km
  store float %i.kn, ptr %i.kh, align 4, !tbaa !336
  store float %i.kg, ptr %i.kj, align 4, !tbaa !336
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph447, !llvm.loop !1166

._crit_edge.i:                                    ; preds = %scalar.ph447.prol.loopexit, %scalar.ph447, %middle.block458, %.preheader.i324
  %i.ko = icmp eq i32 %.pre.i, -1
  br i1 %i.ko, label %bb.ah, label %ma_gainer_reset_smoothing_time.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !1016
  br label %ma_gainer_reset_smoothing_time.exit.i

ma_gainer_reset_smoothing_time.exit.i:            ; preds = %bb.ah, %._crit_edge.i
  %storemerge.i.i = phi i32 [ %i.kq, %bb.ah ], [ 0, %._crit_edge.i ]
  store i32 %storemerge.i.i, ptr %.phi.trans.insert.i, align 8, !tbaa !1002
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
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.lb = load atomic volatile i32, ptr %i.ku monotonic, align 4
  %i.lc = icmp eq i32 %i.lb, 1
  br i1 %i.lc, label %.lr.ph.i.i.i336, label %.loopexit.i.i.i328, !llvm.loop !47

.loopexit386:                                     ; preds = %.loopexit.i.i.i328, %bb.ai
  %.sroa.03.0.copyload.i.i330 = load <2 x float>, ptr %i.kt, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i331 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.24.0.copyload.i.i332 = load float, ptr %.sroa.24.0..sroa_idx.i.i331, align 8, !tbaa !336
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
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.ll = load atomic volatile i32, ptr %i.le monotonic, align 4
  %i.lm = icmp eq i32 %i.ll, 1
  br i1 %i.lm, label %.lr.ph.i.i.i346, label %.loopexit.i.i.i338, !llvm.loop !47

.loopexit:                                        ; preds = %.loopexit.i.i.i338, %.loopexit386
  %.sroa.03.0.copyload.i.i340 = load <2 x float>, ptr %i.ld, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i342 = load float, ptr %.sroa.24.0..sroa_idx.i.i341, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.le release, align 4
  %foldExtExtBinop462 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %7 = extractelement <2 x float> %foldExtExtBinop462, i64 0 ; 2 uses
  %foldExtExtBinop464 = fsub <2 x float> %.sroa.03.0.copyload.i.i330, %.sroa.03.0.copyload.i.i340 ; 2 uses
  %8 = extractelement <2 x float> %foldExtExtBinop464, i64 1 ; 2 uses
  %9 = fsub float %.sroa.24.0.copyload.i.i332, %.sroa.24.0.copyload.i.i342 ; 3 uses
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
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #55, !srcloc !46
  %i.lv = load atomic volatile i32, ptr %i.lo monotonic, align 4
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %.lr.ph.i.i.i363, label %.loopexit.i.i.i355, !llvm.loop !47

ma_spatializer_get_velocity.exit:                 ; preds = %.loopexit.i.i.i355, %.loopexit
  %.sroa.03.0.copyload.i.i357 = load <2 x float>, ptr %i.ln, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i358 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.24.0.copyload.i.i359 = load float, ptr %.sroa.24.0..sroa_idx.i.i358, align 8, !tbaa !336
  store atomic volatile i32 0, ptr %i.lo release, align 4
  %10 = fmul float %8, %8
  %i.lx = call float @llvm.fmuladd.f32(float %7, float %7, float %10)
  %i.ly = call float @llvm.fmuladd.f32(float %9, float %9, float %i.lx) ; 2 uses
  %i.lz = fcmp oeq float %i.ly, 0.000000e+00
  br i1 %i.lz, label %ma_doppler_pitch.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_spatializer_get_velocity.exit
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.ly)
  %i.ma = fdiv float %i.be, %i.as
  %i.mb = fneg float %i.as
  %i.mc = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 1, i32 3>
  %11 = shufflevector <2 x float> %foldExtExtBinop464, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.md = fmul <2 x float> %i.mc, %11
  %12 = shufflevector <2 x float> %foldExtExtBinop462, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = shufflevector <2 x float> %.sroa.03.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i357, <2 x i32> <i32 0, i32 2>
  %i.mf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.me, <2 x float> %i.md)
  %13 = insertelement <2 x float> poison, float %9, i64 0
  %i.mg = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
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
  store float %.sink, ptr %i.mz, align 8, !tbaa !1145
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
  br i1 %.not.i.i, label %.critedge334, label %.lr.ph.i, !llvm.loop !368

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
  %wide.load851 = load <4 x i8>, ptr %i.p, align 1, !tbaa !9
  %wide.load852 = load <4 x i8>, ptr %i.q, align 1, !tbaa !9
  %i.r = icmp ne <4 x i8> %wide.load851, zeroinitializer
  %i.s = icmp ne <4 x i8> %wide.load852, zeroinitializer
  %i.t = zext <4 x i1> %i.r to <4 x i32>
  %i.u = zext <4 x i1> %i.s to <4 x i32>
  %i.v = add <4 x i32> %vec.phi849, %i.t          ; 2 uses
  %i.w = add <4 x i32> %vec.phi850, %i.u          ; 2 uses
  %index.next853 = add nuw i64 %index848, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next853, %n.vec846
  br i1 %i.x, label %middle.block854, label %vector.body847, !llvm.loop !1167

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
  br i1 %exitcond148.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.us.i, !llvm.loop !1168

ma_channel_map_get_channel.exit.i:                ; preds = %ma_channel_map_get_channel.exit.i.preheader, %ma_channel_map_get_channel.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ma_channel_map_get_channel.exit.i ], [ %indvars.iv.i.ph, %ma_channel_map_get_channel.exit.i.preheader ] ; 2 uses
  %.03568.i = phi i32 [ %spec.select.i, %ma_channel_map_get_channel.exit.i ], [ %.03568.i.ph, %ma_channel_map_get_channel.exit.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !9
  %.not47.i = icmp ne i8 %i.ad, 0
  %i.ae = zext i1 %.not47.i to i32
  %spec.select.i = add i32 %.03568.i, %i.ae       ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.split.us.i, label %ma_channel_map_get_channel.exit.i, !llvm.loop !1169

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
  %xtraiter1064 = and i64 %i.ag, 1
  %i.ah = icmp eq i32 %5, 1
  %unroll_iter1069 = and i64 %i.ag, 4294967294
  %lcmp.mod1066.not = icmp eq i64 %xtraiter1064, 0
  %lcmp.mod1068 = trunc i32 %5 to i1
  br label %.preheader.us.i

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.us.i
  %i.ai = add nsw i64 %i.ag, -1                   ; 2 uses
  %xtraiter1071 = and i64 %i.ag, 7                ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 7
  %unroll_iter1076 = and i64 %i.ag, 4294967288
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1071, 0
  %lcmp.mod1075 = icmp ne i64 %xtraiter1071, 0
  %xtraiter1078 = and i64 %i.ag, 3                ; 3 uses
  %i.ak = icmp ult i64 %i.ai, 3
  %unroll_iter1083 = and i64 %i.ag, 4294967292
  %lcmp.mod1080.not = icmp eq i64 %xtraiter1078, 0
  %lcmp.mod1082 = icmp ne i64 %xtraiter1078, 0
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
  %i.al = load float, ptr %.04274.us.us.i, align 4, !tbaa !336
end_hunk_0
begin_hunk_1_@ma_channel_map_apply_f32:bb.a
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !336
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vf, float %i.vd)
  %i.vh = fadd float %i.vg, 0.000000e+00
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 20
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !336
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.vj, float %i.vh)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv587
  store float %i.vk, ptr %i.vl, align 4, !tbaa !336
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357.us, !llvm.loop !1211

ma_channel_map_get_channel.exit357:               ; preds = %.lr.ph, %ma_channel_map_get_channel.exit357
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %ma_channel_map_get_channel.exit357 ], [ 0, %.lr.ph ] ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv582
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !9
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [24 x i8], ptr @g_maChannelPlaneRatios, i64 %i.vo ; 5 uses
  %i.vq = load float, ptr %i.vp, align 8, !tbaa !336
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !336
  %i.vt = fmul float %i.uk, %i.vs
  %i.vu = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.vq, float %i.vt)
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vw = load float, ptr %i.vv, align 8, !tbaa !336
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.um, float %i.vw, float %i.vu)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !336
  %i.wa = tail call float @llvm.fmuladd.f32(float %i.uo, float %i.vz, float %i.vx)
  %i.wb = fadd float %i.wa, 0.000000e+00
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !336
  %i.we = tail call float @llvm.fmuladd.f32(float %i.uq, float %i.wd, float %i.wb)
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv582
  store float %i.we, ptr %i.wf, align 4, !tbaa !336
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge, label %ma_channel_map_get_channel.exit357, !llvm.loop !1211

._crit_edge:                                      ; preds = %ma_channel_map_get_channel.exit357, %ma_channel_map_get_channel.exit357.us, %ma_channel_map_get_channel.exit
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %exitcond596.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count595
  br i1 %exitcond596.not, label %._crit_edge432, label %bb.aw, !llvm.loop !1212

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
  %i.xa = load <2 x float>, ptr %i.c, align 16, !tbaa !336 ; 4 uses
  %i.xb = load <2 x float>, ptr %i.wt, align 16, !tbaa !336 ; 4 uses
  %i.xc = load <2 x float>, ptr %i.wu, align 16, !tbaa !336 ; 3 uses
  %i.xd = load <2 x float>, ptr %i.wv, align 16, !tbaa !336 ; 3 uses
  %i.xe = load <2 x float>, ptr %i.ww, align 16, !tbaa !336 ; 4 uses
  %i.xf = load <2 x float>, ptr %i.wx, align 16, !tbaa !336 ; 4 uses
  %i.xg = load <2 x float>, ptr %i.wy, align 16, !tbaa !336 ; 3 uses
  %i.xh = load <2 x float>, ptr %i.wz, align 16, !tbaa !336 ; 3 uses
  %i.xi = trunc i64 %6 to i32                     ; 3 uses
  %min.iters.check884 = icmp ult i32 %i.xi, 4
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.scevcheck880

vector.scevcheck880:                              ; preds = %.lr.ph471
  %i.xj = add i64 %6, -1                          ; 2 uses
  %i.xk = and i64 %i.xj, 4294967295
  %i.xl = icmp eq i64 %i.xk, 4294967295
  %i.xm = icmp ugt i64 %i.xj, 536870911
  %i.xn = or i1 %i.xl, %i.xm
  br i1 %i.xn, label %scalar.ph883.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck880
  %i.xo = shl nuw nsw i64 %6, 5
  %scevgep = getelementptr i8, ptr %0, i64 %i.xo
  %i.xp = shl nuw nsw i64 %6, 3
  %scevgep882 = getelementptr i8, ptr %3, i64 %i.xp
  %bound0 = icmp ult ptr %0, %scevgep882
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph883.preheader, label %vector.ph885

vector.ph885:                                     ; preds = %vector.memcheck
  %n.vec886 = and i32 %i.xi, 1073741820           ; 4 uses
  %i.xq = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xr = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xs = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xt = shufflevector <2 x float> %i.xc, <2 x float> %i.xd, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xu = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xv = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xw = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3>
  %i.xx = shufflevector <2 x float> %i.xg, <2 x float> %i.xh, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2>
  %i.xy = shufflevector <8 x float> %i.xq, <8 x float> %i.xs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.xz = shufflevector <8 x float> %i.xr, <8 x float> %i.xt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ya = shufflevector <8 x float> %i.xu, <8 x float> %i.xw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yb = shufflevector <8 x float> %i.xv, <8 x float> %i.xx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph885
  %index920 = phi i32 [ 0, %vector.ph885 ], [ %index.next922, %vector.body919 ] ; 3 uses
  %i.yc = shl i32 %index920, 1
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.yd
  %wide.vec = load <8 x float>, ptr %i.ye, align 4, !tbaa !336, !alias.scope !1213 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec921 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.yf = shl i32 %index920, 3
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.yg
  %i.yi = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yj = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yk = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yl = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ym = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yn = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yo = shufflevector <4 x float> %strided.vec921, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yp = shufflevector <4 x float> %strided.vec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yq = shufflevector <8 x float> %i.yi, <8 x float> %i.yk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yr = shufflevector <8 x float> %i.yj, <8 x float> %i.yl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ys = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yr, <16 x float> %i.xz, <16 x float> zeroinitializer)
  %i.yt = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yq, <16 x float> %i.xy, <16 x float> %i.ys)
  %i.yu = shufflevector <8 x float> %i.ym, <8 x float> %i.yo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yv = shufflevector <8 x float> %i.yn, <8 x float> %i.yp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yw = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yv, <16 x float> %i.yb, <16 x float> zeroinitializer)
  %i.yx = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.yu, <16 x float> %i.ya, <16 x float> %i.yw)
  %interleaved.vec = shufflevector <16 x float> %i.yt, <16 x float> %i.yx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.yh, align 4, !tbaa !336, !alias.scope !1216, !noalias !1213
  %index.next922 = add nuw i32 %index920, 4       ; 2 uses
  %i.yy = icmp eq i32 %index.next922, %n.vec886
  br i1 %i.yy, label %middle.block923, label %vector.body919, !llvm.loop !1218

middle.block923:                                  ; preds = %vector.body919
  %cmp.n924 = icmp eq i32 %n.vec886, %i.xi
  br i1 %cmp.n924, label %.loopexit373, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck880, %.lr.ph471, %middle.block923
  %.0314470.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck880 ], [ 0, %.lr.ph471 ], [ %n.vec886, %middle.block923 ]
  %i.yz = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.za = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zb = shufflevector <4 x float> %i.yz, <4 x float> %i.za, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zc = shufflevector <2 x float> %i.xd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zd = shufflevector <4 x float> %i.zb, <4 x float> %i.zc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ze = shufflevector <2 x float> %i.xa, <2 x float> %i.xb, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> %i.za, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zg = shufflevector <4 x float> %i.zf, <4 x float> %i.zc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.zh = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.zi = shufflevector <2 x float> %i.xg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zj = shufflevector <4 x float> %i.zh, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.zk = shufflevector <2 x float> %i.xh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.zl = shufflevector <4 x float> %i.zj, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.zm = shufflevector <2 x float> %i.xe, <2 x float> %i.xf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zn = shufflevector <4 x float> %i.zm, <4 x float> %i.zi, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zo = shufflevector <4 x float> %i.zn, <4 x float> %i.zk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %.0314470 = phi i32 [ %i.aad, %scalar.ph883 ], [ %.0314470.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.zp = shl i32 %.0314470, 1                    ; 2 uses
  %9 = zext i32 %i.zp to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !336
  %12 = or disjoint i32 %i.zp, 1
  %i.zq = zext i32 %12 to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zq
  %13 = load float, ptr %i.zr, align 4, !tbaa !336
  %i.zs = shl i32 %.0314470, 3                    ; 2 uses
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zt
  %14 = insertelement <4 x float> poison, float %11, i64 0
  %i.zv = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> %i.zd, <4 x float> zeroinitializer)
  %15 = insertelement <4 x float> poison, float %13, i64 0
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.zx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.zg, <4 x float> %i.zw)
  store <4 x float> %i.zx, ptr %i.zu, align 4, !tbaa !336
  %i.zy = or disjoint i32 %i.zs, 4
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zz
  %i.aab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> %i.zl, <4 x float> zeroinitializer)
  %i.aac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.zo, <4 x float> %i.aab)
  store <4 x float> %i.aac, ptr %i.aaa, align 4, !tbaa !336
  %i.aad = add i32 %.0314470, 1                   ; 3 uses
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = icmp ugt i64 %6, %i.aae
  br i1 %i.aaf, label %scalar.ph883, label %.loopexit373, !llvm.loop !1219

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge459
  %.1315468 = phi i32 [ 0, %.preheader374.lr.ph ], [ %i.aby, %._crit_edge459 ] ; 3 uses
  br i1 %.not489, label %._crit_edge459, label %.lr.ph458

.lr.ph458:                                        ; preds = %.preheader374
  %i.aag = mul i32 %.1315468, %5
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph458, %bb.ba
  %indvars.iv602 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next603, %bb.ba ] ; 10 uses
  %i.aah = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abc, %bb.ba ]
  %i.aai = phi <4 x float> [ zeroinitializer, %.lr.ph458 ], [ %i.abp, %bb.ba ]
  %i.aaj = trunc nuw i64 %indvars.iv602 to i32
  %i.aak = add i32 %i.aag, %i.aaj
  %i.aal = zext i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aal
  %i.aan = load float, ptr %i.aam, align 4, !tbaa !336
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv602
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !336
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv602
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !336
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %indvars.iv602
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !336
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv602
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !336
  %i.aaw = insertelement <4 x float> poison, float %i.aan, i64 0
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aay = insertelement <4 x float> poison, float %i.aap, i64 0
  %i.aaz = insertelement <4 x float> %i.aay, float %i.aar, i64 1
  %i.aba = insertelement <4 x float> %i.aaz, float %i.aat, i64 2
  %i.abb = insertelement <4 x float> %i.aba, float %i.aav, i64 3
  %i.abc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aax, <4 x float> %i.abb, <4 x float> %i.aah) ; 2 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv602
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !336
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %indvars.iv602
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !336
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv602
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !336
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %indvars.iv602
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !336
  %i.abl = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abm = insertelement <4 x float> %i.abl, float %i.abg, i64 1
  %i.abn = insertelement <4 x float> %i.abm, float %i.abi, i64 2
  %i.abo = insertelement <4 x float> %i.abn, float %i.abk, i64 3
  %i.abp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aax, <4 x float> %i.abo, <4 x float> %i.aai) ; 2 uses
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1 ; 2 uses
  %exitcond606.not = icmp eq i64 %indvars.iv.next603, %wide.trip.count605
  br i1 %exitcond606.not, label %._crit_edge459, label %bb.ba, !llvm.loop !1220

._crit_edge459:                                   ; preds = %bb.ba, %.preheader374
  %i.abq = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abc, %bb.ba ]
  %i.abr = phi <4 x float> [ zeroinitializer, %.preheader374 ], [ %i.abp, %bb.ba ]
  %i.abs = shl i32 %.1315468, 3                   ; 2 uses
  %i.abt = zext i32 %i.abs to i64
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abt
  store <4 x float> %i.abq, ptr %i.abu, align 4, !tbaa !336
  %i.abv = or disjoint i32 %i.abs, 4
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.abw
  store <4 x float> %i.abr, ptr %i.abx, align 4, !tbaa !336
  %i.aby = add i32 %.1315468, 1                   ; 3 uses
  %i.abz = zext i32 %i.aby to i64
  %i.aca = icmp ugt i64 %6, %i.abz
  br i1 %i.aca, label %.preheader374, label %.loopexit373, !llvm.loop !1221

.preheader377:                                    ; preds = %.preheader377.lr.ph, %._crit_edge441
  %.2447 = phi i32 [ 0, %.preheader377.lr.ph ], [ %i.adt, %._crit_edge441 ] ; 3 uses
  br i1 %.not487, label %._crit_edge441, label %.lr.ph440

.lr.ph440:                                        ; preds = %.preheader377
  %i.acb = mul i32 %.2447, %5
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph440, %bb.bb
  %indvars.iv597 = phi i64 [ 0, %.lr.ph440 ], [ %indvars.iv.next598, %bb.bb ] ; 8 uses
  %i.acc = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.adg, %bb.bb ]
  %i.acd = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acz, %bb.bb ]
  %i.ace = phi <2 x float> [ zeroinitializer, %.lr.ph440 ], [ %i.acs, %bb.bb ]
  %i.acf = trunc nuw i64 %indvars.iv597 to i32
  %i.acg = add i32 %i.acb, %i.acf
  %i.ach = zext i32 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ach
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !336
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv597
  %i.acl = load float, ptr %i.ack, align 4, !tbaa !336
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %indvars.iv597
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !336
  %i.aco = insertelement <2 x float> poison, float %i.acj, i64 0
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.acq = insertelement <2 x float> poison, float %i.acl, i64 0
  %i.acr = insertelement <2 x float> %i.acq, float %i.acn, i64 1
  %i.acs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.acr, <2 x float> %i.ace) ; 2 uses
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %indvars.iv597
  %i.acu = load float, ptr %i.act, align 4, !tbaa !336
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %indvars.iv597
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !336
  %i.acx = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acy = insertelement <2 x float> %i.acx, float %i.acw, i64 1
  %i.acz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.acy, <2 x float> %i.acd) ; 2 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %indvars.iv597
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !336
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %indvars.iv597
  %i.add = load float, ptr %i.adc, align 4, !tbaa !336
  %i.ade = insertelement <2 x float> poison, float %i.adb, i64 0
  %i.adf = insertelement <2 x float> %i.ade, float %i.add, i64 1
  %i.adg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acp, <2 x float> %i.adf, <2 x float> %i.acc) ; 2 uses
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1 ; 2 uses
  %exitcond601.not = icmp eq i64 %indvars.iv.next598, %wide.trip.count600
  br i1 %exitcond601.not, label %._crit_edge441, label %bb.bb, !llvm.loop !1222

._crit_edge441:                                   ; preds = %bb.bb, %.preheader377
  %i.adh = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.adg, %bb.bb ]
  %i.adi = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acz, %bb.bb ]
  %i.adj = phi <2 x float> [ zeroinitializer, %.preheader377 ], [ %i.acs, %bb.bb ]
  %i.adk = mul i32 %.2447, 6                      ; 3 uses
  %i.adl = zext i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adl
  store <2 x float> %i.adj, ptr %i.adm, align 4, !tbaa !336
  %i.adn = add i32 %i.adk, 2
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ado
  store <2 x float> %i.adi, ptr %i.adp, align 4, !tbaa !336
  %i.adq = add i32 %i.adk, 4
  %i.adr = zext i32 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.adr
  store <2 x float> %i.adh, ptr %i.ads, align 4, !tbaa !336
  %i.adt = add i32 %.2447, 1                      ; 3 uses
  %i.adu = zext i32 %i.adt to i64
  %i.adv = icmp ugt i64 %6, %i.adu
  br i1 %i.adv, label %.preheader377, label %.loopexit373, !llvm.loop !1223

.loopexit373:                                     ; preds = %._crit_edge441, %._crit_edge459, %scalar.ph883, %middle.block923, %.preheader380, %.preheader378, %.preheader375, %.preheader372, %._crit_edge432
  %.3 = phi i32 [ 0, %._crit_edge432 ], [ %i.aad, %scalar.ph883 ], [ 0, %.preheader380 ], [ 0, %.preheader372 ], [ 0, %.preheader375 ], [ 0, %.preheader378 ], [ %i.aby, %._crit_edge459 ], [ %n.vec886, %middle.block923 ], [ %i.adt, %._crit_edge441 ] ; 2 uses
  %i.adw = zext i32 %.3 to i64
  %i.adx = icmp ugt i64 %6, %i.adw
  br i1 %i.adx, label %.preheader371.lr.ph, label %.loopexit

.preheader371.lr.ph:                              ; preds = %.loopexit373
  %.not492 = icmp eq i32 %5, 0
  %wide.trip.count615 = zext nneg i32 %2 to i64   ; 6 uses
  %wide.trip.count610 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count620 = zext nneg i32 %2 to i64
  %i.ady = add nsw i64 %wide.trip.count615, -1    ; 2 uses
  %xtraiter1169 = and i64 %wide.trip.count610, 3  ; 3 uses
  %i.adz = add nsw i32 %5, -1
  %i.aea = icmp ult i32 %i.adz, 3
  %unroll_iter1174 = and i64 %wide.trip.count610, 60
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  %lcmp.mod1173 = icmp ne i64 %xtraiter1169, 0
  %min.iters.check928 = icmp ult i32 %2, 8
  %i.aeb = trunc nsw i64 %i.ady to i32
  %i.aec = icmp ugt i64 %i.ady, 4294967295
  %n.vec930 = and i64 %wide.trip.count615, 56     ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count615
  %xtraiter1176 = and i64 %wide.trip.count615, 3  ; 2 uses
  %lcmp.mod1177.not = icmp eq i64 %xtraiter1176, 0
  br label %.preheader371

.preheader371:                                    ; preds = %.preheader371.lr.ph, %._crit_edge479
  %.4480 = phi i32 [ %.3, %.preheader371.lr.ph ], [ %i.aha, %._crit_edge479 ] ; 3 uses
  br i1 %.not484, label %._crit_edge479, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader371
  %i.aed = mul i32 %.4480, %5                     ; 5 uses
  %i.aee = mul i32 %.4480, %2                     ; 8 uses
  br i1 %.not492, label %.preheader.preheader, label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  br i1 %min.iters.check928, label %.preheader.preheader960, label %vector.scevcheck926

vector.scevcheck926:                              ; preds = %.preheader.preheader
  %i.aef = xor i32 %i.aee, -1
  %i.aeg = icmp ult i32 %i.aef, %i.aeb
  %i.aeh = or i1 %i.aeg, %i.aec
  br i1 %i.aeh, label %.preheader.preheader960, label %vector.body931

vector.body931:                                   ; preds = %vector.scevcheck926, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %vector.scevcheck926 ] ; 2 uses
  %i.aei = trunc nuw nsw i64 %index932 to i32
  %i.aej = add i32 %i.aee, %i.aei
  %i.aek = zext i32 %i.aej to i64
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aek ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  store <4 x float> zeroinitializer, ptr %i.ael, align 4, !tbaa !336
  store <4 x float> zeroinitializer, ptr %i.aem, align 4, !tbaa !336
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.aen = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.aen, label %middle.block934, label %vector.body931, !llvm.loop !1224

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %._crit_edge479, label %.preheader.preheader960

.preheader.preheader960:                          ; preds = %vector.scevcheck926, %.preheader.preheader, %middle.block934
  %indvars.iv617.ph = phi i64 [ 0, %vector.scevcheck926 ], [ 0, %.preheader.preheader ], [ %n.vec930, %middle.block934 ] ; 3 uses
end_hunk_1
begin_hunk_2_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %i.th = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123 ; 2 uses
  %i.ti = shufflevector <4 x i32> %i.tg, <4 x i32> %i.tf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.tj = sitofp <4 x i32> %i.ti to <4 x float>
  %i.tk = fmul nnan <4 x float> %i.tj, splat (float f0x30000000)
  store <4 x float> %i.tk, ptr %i.th, align 4, !tbaa !336
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tm = shufflevector <4 x i32> %i.tg, <4 x i32> %i.tf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.tn = sitofp <4 x i32> %i.tm to <4 x float>
  %i.to = fmul nnan <4 x float> %i.tn, splat (float f0x30000000)
  store <4 x float> %i.to, ptr %i.tl, align 4, !tbaa !336
  %i.tp = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond271.not = icmp eq i64 %i.tp, %i.ni
  br i1 %exitcond271.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !1752

._crit_edge172:                                   ; preds = %.lr.ph171, %middle.block504, %bb.r
  %i.tq = and i64 %spec.select, 4294967292        ; 6 uses
  %.not231 = icmp eq i64 %i.tq, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.tr = or disjoint i64 %i.tq, 1
  %i.ts = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.tr) ; 2 uses
  %i.tt = sub nsw i64 %i.ts, %i.tq                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.tt, 4
  br i1 %min.iters.check476, label %.lr.ph175.preheader613, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph175.preheader
  %i.tu = and i64 %i.ts, 3                        ; 2 uses
  %n.vec478 = sub nuw nsw i64 %i.tt, %i.tu        ; 2 uses
  %i.tv = add nsw i64 %i.tq, %n.vec478
  %broadcast.splatinsert479 = insertelement <4 x i32> poison, i32 %i.nk, i64 0
  %broadcast.splat480 = shufflevector <4 x i32> %broadcast.splatinsert479, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert481 = insertelement <4 x i32> poison, i32 %i.nm, i64 0
  %broadcast.splat482 = shufflevector <4 x i32> %broadcast.splatinsert481, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph477
  %index484 = phi i64 [ 0, %vector.ph477 ], [ %index.next488, %vector.body483 ] ; 2 uses
  %i.tw = add nuw i64 %i.tq, %index484            ; 3 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.tw
  %wide.load485 = load <4 x i32>, ptr %i.tx, align 4, !tbaa !8
  %i.ty = shl <4 x i32> %wide.load485, %broadcast.splat480
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.tw
  %wide.load486 = load <4 x i32>, ptr %i.tz, align 4, !tbaa !8
  %i.ua = shl <4 x i32> %wide.load486, %broadcast.splat482 ; 2 uses
  %i.ub = add <4 x i32> %i.ua, %i.ty
  %i.uc = shl nuw nsw i64 %i.tw, 3
  %i.ud = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.uc
  %i.ue = shufflevector <4 x i32> %i.ub, <4 x i32> %i.ua, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.uf = sitofp <8 x i32> %i.ue to <8 x float>
  %interleaved.vec487 = fmul nnan <8 x float> %i.uf, splat (float f0x30000000)
  store <8 x float> %interleaved.vec487, ptr %i.ud, align 4, !tbaa !336
  %index.next488 = add nuw i64 %index484, 4       ; 2 uses
  %i.ug = icmp eq i64 %index.next488, %n.vec478
  br i1 %i.ug, label %middle.block489, label %vector.body483, !llvm.loop !1753

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %i.tu, 0
  br i1 %cmp.n490, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph175.preheader613

.lr.ph175.preheader613:                           ; preds = %.lr.ph175.preheader, %middle.block489
  %.1.i100173.ph = phi i64 [ %i.tq, %.lr.ph175.preheader ], [ %i.tv, %middle.block489 ]
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %.lr.ph175.preheader613, %.lr.ph175
  %.1.i100173 = phi i64 [ %i.ut, %.lr.ph175 ], [ %.1.i100173.ph, %.lr.ph175.preheader613 ] ; 4 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i100173
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !8
  %i.uj = shl i32 %i.ui, %i.nk
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i100173
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !8
  %i.um = shl i32 %i.ul, %i.nm                    ; 2 uses
  %i.un = add i32 %i.um, %i.uj
  %.idx122 = shl nuw nsw i64 %.1.i100173, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx122
  %i.up = insertelement <2 x i32> poison, i32 %i.un, i64 0
  %i.uq = insertelement <2 x i32> %i.up, i32 %i.um, i64 1
  %i.ur = sitofp <2 x i32> %i.uq to <2 x float>
  %i.us = fmul nnan <2 x float> %i.ur, splat (float f0x30000000)
  store <2 x float> %i.us, ptr %i.uo, align 4, !tbaa !336
  %i.ut = add nuw nsw i64 %.1.i100173, 1          ; 2 uses
  %i.uu = icmp samesign ult i64 %i.ut, %spec.select
  br i1 %i.uu, label %.lr.ph175, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1754

bb.s:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.uv = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.uw = icmp ult i8 %i.uv, 25
  br i1 %i.uw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ux = lshr i64 %spec.select, 2                ; 3 uses
  %.not228 = icmp eq i64 %i.ux, 0                 ; 2 uses
  br i1 %i.ai, label %.preheader140, label %bb.v

.preheader140:                                    ; preds = %bb.u
  br i1 %.not228, label %._crit_edge165, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader140, %.lr.ph164
  %.0.i102163 = phi i64 [ %i.vx, %.lr.ph164 ], [ 0, %.preheader140 ] ; 4 uses
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i102163
  %i.uz = load <4 x i32>, ptr %i.uy, align 1, !tbaa !9
  %i.va = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.vb = zext i8 %i.va to i32
  %i.vc = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.uz, i32 range(i32 -232, 288) %i.vb)
  %i.vd = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i102163
  %i.ve = load <4 x i32>, ptr %i.vd, align 1, !tbaa !9
  %i.vf = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.vg = zext i8 %i.vf to i32
  %i.vh = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ve, i32 range(i32 -232, 288) %i.vg) ; 3 uses
  %i.vi = shl <4 x i32> %i.vc, splat (i32 1)
  %i.vj = and <4 x i32> %i.vh, splat (i32 1)
  %i.vk = or disjoint <4 x i32> %i.vj, %i.vi      ; 2 uses
  %i.vl = add <4 x i32> %i.vk, %i.vh
  %i.vm = ashr <4 x i32> %i.vl, splat (i32 1)
  %i.vn = sub <4 x i32> %i.vk, %i.vh
  %i.vo = ashr <4 x i32> %i.vn, splat (i32 1)
  %i.vp = sitofp <4 x i32> %i.vm to <4 x float>
  %i.vq = fmul nnan <4 x float> %i.vp, splat (float f0x34000000) ; 2 uses
  %i.vr = sitofp <4 x i32> %i.vo to <4 x float>
  %i.vs = fmul nnan <4 x float> %i.vr, splat (float f0x34000000) ; 2 uses
  %.idx111.i = shl nuw nsw i64 %.0.i102163, 5
  %i.vt = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx111.i ; 2 uses
  %i.vu = shufflevector <4 x float> %i.vq, <4 x float> %i.vs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.vu, ptr %i.vt, align 1, !tbaa !9
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.vw = shufflevector <4 x float> %i.vq, <4 x float> %i.vs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.vw, ptr %i.vv, align 1, !tbaa !9
  %i.vx = add nuw nsw i64 %.0.i102163, 1          ; 2 uses
  %exitcond270.not = icmp eq i64 %i.vx, %i.ux
  br i1 %exitcond270.not, label %._crit_edge165, label %.lr.ph164, !llvm.loop !1755

._crit_edge165:                                   ; preds = %.lr.ph164, %.preheader140
  %i.vy = and i64 %spec.select, 4294967292        ; 6 uses
  %.not229 = icmp eq i64 %i.vy, %spec.select
  br i1 %.not229, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge165
  %i.vz = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.wa = zext nneg i8 %i.vz to i32               ; 2 uses
  %i.wb = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.wc = zext nneg i8 %i.wb to i32               ; 2 uses
  %i.wd = or disjoint i64 %i.vy, 1
  %i.we = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.wd) ; 2 uses
  %i.wf = sub nsw i64 %i.we, %i.vy                ; 2 uses
  %min.iters.check508 = icmp ult i64 %i.wf, 4
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %.lr.ph168
  %i.wg = and i64 %i.we, 3                        ; 2 uses
  %n.vec510 = sub nuw nsw i64 %i.wf, %i.wg        ; 2 uses
  %i.wh = add nsw i64 %i.vy, %n.vec510
  %broadcast.splatinsert511 = insertelement <4 x i32> poison, i32 %i.wa, i64 0
  %broadcast.splat512 = shufflevector <4 x i32> %broadcast.splatinsert511, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert513 = insertelement <4 x i32> poison, i32 %i.wc, i64 0
  %broadcast.splat514 = shufflevector <4 x i32> %broadcast.splatinsert513, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph509
  %index516 = phi i64 [ 0, %vector.ph509 ], [ %index.next520, %vector.body515 ] ; 2 uses
  %i.wi = add nuw i64 %i.vy, %index516            ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.wi
  %wide.load517 = load <4 x i32>, ptr %i.wj, align 4, !tbaa !8
  %i.wk = shl <4 x i32> %wide.load517, %broadcast.splat512
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.wi
  %wide.load518 = load <4 x i32>, ptr %i.wl, align 4, !tbaa !8
  %i.wm = shl <4 x i32> %wide.load518, %broadcast.splat514 ; 3 uses
  %i.wn = shl <4 x i32> %i.wk, splat (i32 1)
  %i.wo = and <4 x i32> %i.wm, splat (i32 1)
  %i.wp = or disjoint <4 x i32> %i.wo, %i.wn      ; 2 uses
  %i.wq = add <4 x i32> %i.wp, %i.wm
  %i.wr = shl nuw nsw i64 %i.wi, 3
  %i.ws = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.wr
  %i.wt = sub <4 x i32> %i.wp, %i.wm
  %i.wu = shufflevector <4 x i32> %i.wq, <4 x i32> %i.wt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.wv = ashr <8 x i32> %i.wu, splat (i32 1)
  %i.ww = sitofp <8 x i32> %i.wv to <8 x float>
  %interleaved.vec519 = fmul nnan <8 x float> %i.ww, splat (float f0x34000000)
  store <8 x float> %interleaved.vec519, ptr %i.ws, align 4, !tbaa !336
  %index.next520 = add nuw i64 %index516, 4       ; 2 uses
  %i.wx = icmp eq i64 %index.next520, %n.vec510
  br i1 %i.wx, label %middle.block521, label %vector.body515, !llvm.loop !1756

middle.block521:                                  ; preds = %vector.body515
  %cmp.n522 = icmp eq i64 %i.wg, 0
  br i1 %cmp.n522, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph507.preheader

scalar.ph507.preheader:                           ; preds = %.lr.ph168, %middle.block521
  %.1.i103166.ph = phi i64 [ %i.vy, %.lr.ph168 ], [ %i.wh, %middle.block521 ]
  br label %scalar.ph507

scalar.ph507:                                     ; preds = %scalar.ph507.preheader, %scalar.ph507
  %.1.i103166 = phi i64 [ %i.xl, %scalar.ph507 ], [ %.1.i103166.ph, %scalar.ph507.preheader ] ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i103166
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !8
  %i.xa = shl i32 %i.wz, %i.wa
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i103166
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !8
  %i.xd = shl i32 %i.xc, %i.wc                    ; 3 uses
  %3 = shl i32 %i.xa, 1
  %4 = and i32 %i.xd, 1
  %5 = or disjoint i32 %4, %3                     ; 2 uses
  %.idx121 = shl nuw nsw i64 %.1.i103166, 3
  %6 = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx121
  %i.xe = sub i32 %5, %i.xd
  %i.xf = add i32 %5, %i.xd
  %i.xg = insertelement <2 x i32> poison, i32 %i.xf, i64 0
  %i.xh = insertelement <2 x i32> %i.xg, i32 %i.xe, i64 1
  %i.xi = ashr <2 x i32> %i.xh, splat (i32 1)
  %i.xj = sitofp <2 x i32> %i.xi to <2 x float>
  %i.xk = fmul nnan <2 x float> %i.xj, splat (float f0x34000000)
  store <2 x float> %i.xk, ptr %6, align 4, !tbaa !336
  %i.xl = add nuw nsw i64 %.1.i103166, 1          ; 2 uses
  %i.xm = icmp samesign ult i64 %i.xl, %spec.select
  br i1 %i.xm, label %scalar.ph507, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1757

bb.v:                                             ; preds = %bb.u
  br i1 %.not228, label %._crit_edge, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.v, %.lr.ph159
  %.2.i158 = phi i64 [ %i.ym, %.lr.ph159 ], [ 0, %bb.v ] ; 4 uses
  %i.xn = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.2.i158
  %i.xo = load <4 x i32>, ptr %i.xn, align 1, !tbaa !9
  %i.xp = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.xq = zext i8 %i.xp to i32
  %i.xr = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xo, i32 range(i32 -232, 288) %i.xq)
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.2.i158
  %i.xt = load <4 x i32>, ptr %i.xs, align 1, !tbaa !9
  %i.xu = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.xv = zext i8 %i.xu to i32
  %i.xw = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.xt, i32 range(i32 -232, 288) %i.xv) ; 3 uses
  %i.xx = shl <4 x i32> %i.xr, splat (i32 1)
  %i.xy = and <4 x i32> %i.xw, splat (i32 1)
  %i.xz = or disjoint <4 x i32> %i.xy, %i.xx      ; 2 uses
  %i.ya = add <4 x i32> %i.xz, %i.xw
  %i.yb = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ya, i32 range(i32 -232, 288) %i.aj)
  %i.yc = sub <4 x i32> %i.xz, %i.xw
  %i.yd = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.yc, i32 range(i32 -232, 288) %i.aj)
  %i.ye = sitofp <4 x i32> %i.yb to <4 x float>
  %i.yf = fmul nnan <4 x float> %i.ye, splat (float f0x34000000) ; 2 uses
  %i.yg = sitofp <4 x i32> %i.yd to <4 x float>
  %i.yh = fmul nnan <4 x float> %i.yg, splat (float f0x34000000) ; 2 uses
  %.idx.i101 = shl nuw nsw i64 %.2.i158, 5
  %i.yi = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i101 ; 2 uses
  %i.yj = shufflevector <4 x float> %i.yf, <4 x float> %i.yh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yj, ptr %i.yi, align 1, !tbaa !9
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yl = shufflevector <4 x float> %i.yf, <4 x float> %i.yh, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yl, ptr %i.yk, align 1, !tbaa !9
  %i.ym = add nuw nsw i64 %.2.i158, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.ym, %i.ux
  br i1 %exitcond269.not, label %._crit_edge, label %.lr.ph159, !llvm.loop !1758

._crit_edge:                                      ; preds = %.lr.ph159, %bb.v
  %i.yn = and i64 %spec.select, 4294967292        ; 6 uses
  %.not227 = icmp eq i64 %i.yn, %spec.select
  br i1 %.not227, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph162

.lr.ph162:                                        ; preds = %._crit_edge
  %i.yo = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.yp = zext nneg i8 %i.yo to i32               ; 2 uses
  %i.yq = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.yr = zext nneg i8 %i.yq to i32               ; 2 uses
  %i.ys = or disjoint i64 %i.yn, 1
  %i.yt = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ys) ; 2 uses
  %i.yu = sub nsw i64 %i.yt, %i.yn                ; 2 uses
  %min.iters.check525 = icmp ult i64 %i.yu, 4
  br i1 %min.iters.check525, label %scalar.ph524.preheader, label %vector.ph526

vector.ph526:                                     ; preds = %.lr.ph162
  %i.yv = and i64 %i.yt, 3                        ; 2 uses
  %n.vec527 = sub nuw nsw i64 %i.yu, %i.yv        ; 2 uses
  %i.yw = add nsw i64 %i.yn, %n.vec527
  %broadcast.splatinsert528 = insertelement <4 x i32> poison, i32 %i.yp, i64 0
  %broadcast.splat529 = shufflevector <4 x i32> %broadcast.splatinsert528, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.yr, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph526
  %index535 = phi i64 [ 0, %vector.ph526 ], [ %index.next539, %vector.body534 ] ; 2 uses
  %i.yx = add nuw i64 %i.yn, %index535            ; 3 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.yx
  %wide.load536 = load <4 x i32>, ptr %i.yy, align 4, !tbaa !8
  %i.yz = shl <4 x i32> %wide.load536, %broadcast.splat529
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.yx
  %wide.load537 = load <4 x i32>, ptr %i.za, align 4, !tbaa !8
  %i.zb = shl <4 x i32> %wide.load537, %broadcast.splat531 ; 3 uses
  %i.zc = shl <4 x i32> %i.yz, splat (i32 1)
  %i.zd = and <4 x i32> %i.zb, splat (i32 1)
  %i.ze = or disjoint <4 x i32> %i.zd, %i.zc      ; 2 uses
  %i.zf = add <4 x i32> %i.ze, %i.zb
  %i.zg = shl <4 x i32> %i.zf, %broadcast.splat533
  %i.zh = shl nuw nsw i64 %i.yx, 3
  %i.zi = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.zh
  %i.zj = sub <4 x i32> %i.ze, %i.zb
  %i.zk = shl <4 x i32> %i.zj, %broadcast.splat533
  %i.zl = shufflevector <4 x i32> %i.zg, <4 x i32> %i.zk, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.zm = sitofp <8 x i32> %i.zl to <8 x float>
  %interleaved.vec538 = fmul nnan <8 x float> %i.zm, splat (float f0x34000000)
  store <8 x float> %interleaved.vec538, ptr %i.zi, align 4, !tbaa !336
  %index.next539 = add nuw i64 %index535, 4       ; 2 uses
  %i.zn = icmp eq i64 %index.next539, %n.vec527
  br i1 %i.zn, label %middle.block540, label %vector.body534, !llvm.loop !1759

middle.block540:                                  ; preds = %vector.body534
  %cmp.n541 = icmp eq i64 %i.yv, 0
  br i1 %cmp.n541, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph524.preheader

scalar.ph524.preheader:                           ; preds = %.lr.ph162, %middle.block540
  %.3.i160.ph = phi i64 [ %i.yn, %.lr.ph162 ], [ %i.yw, %middle.block540 ]
  br label %scalar.ph524

scalar.ph524:                                     ; preds = %scalar.ph524.preheader, %scalar.ph524
  %.3.i160 = phi i64 [ %i.aac, %scalar.ph524 ], [ %.3.i160.ph, %scalar.ph524.preheader ] ; 4 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.3.i160
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !8
  %i.zq = shl i32 %i.zp, %i.yp
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.3.i160
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !8
  %i.zt = shl i32 %i.zs, %i.yr                    ; 3 uses
  %7 = shl i32 %i.zq, 1
  %8 = and i32 %i.zt, 1
  %9 = or disjoint i32 %8, %7                     ; 2 uses
  %.idx120 = shl nuw nsw i64 %.3.i160, 3
  %10 = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx120
  %i.zu = sub i32 %9, %i.zt
  %i.zv = add i32 %9, %i.zt
  %i.zw = shl i32 %i.zu, %i.aj
  %i.zx = shl i32 %i.zv, %i.aj
  %i.zy = insertelement <2 x i32> poison, i32 %i.zx, i64 0
  %i.zz = insertelement <2 x i32> %i.zy, i32 %i.zw, i64 1
  %i.aaa = sitofp <2 x i32> %i.zz to <2 x float>
  %i.aab = fmul nnan <2 x float> %i.aaa, splat (float f0x34000000)
  store <2 x float> %i.aab, ptr %10, align 4, !tbaa !336
  %i.aac = add nuw nsw i64 %.3.i160, 1            ; 2 uses
  %i.aad = icmp samesign ult i64 %i.aac, %spec.select
  br i1 %i.aad, label %scalar.ph524, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1760

bb.w:                                             ; preds = %bb.t, %bb.s
  %i.aae = lshr i64 %spec.select, 2               ; 7 uses
  %.not224 = icmp eq i64 %i.aae, 0                ; 2 uses
  br i1 %.not.i, label %.preheader143, label %bb.x

.preheader143:                                    ; preds = %bb.w
  br i1 %.not224, label %.loopexit, label %.lr.ph155

.lr.ph155:                                        ; preds = %.preheader143
  %i.aaf = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.aag = zext i8 %i.aaf to i32                  ; 2 uses
  %i.aah = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.aai = zext i8 %i.aah to i32                  ; 2 uses
  %min.iters.check563 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check563, label %scalar.ph562.preheader, label %vector.ph564

vector.ph564:                                     ; preds = %.lr.ph155
  %n.vec565 = and i64 %i.aae, 1073741820          ; 3 uses
  %broadcast.splatinsert566 = insertelement <4 x i32> poison, i32 %i.aag, i64 0
  %broadcast.splat567 = shufflevector <4 x i32> %broadcast.splatinsert566, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert568 = insertelement <4 x i32> poison, i32 %i.aai, i64 0
  %broadcast.splat569 = shufflevector <4 x i32> %broadcast.splatinsert568, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph564
  %index571 = phi i64 [ 0, %vector.ph564 ], [ %index.next573, %vector.body570 ] ; 6 uses
  %i.aaj = shl nuw nsw i64 %index571, 2           ; 5 uses
  %i.aak = shl i64 %index571, 2                   ; 4 uses
  %i.aal = or disjoint i64 %i.aak, 4              ; 2 uses
  %i.aam = shl i64 %index571, 2                   ; 4 uses
  %i.aan = or disjoint i64 %i.aam, 8              ; 2 uses
  %i.aao = shl i64 %index571, 2                   ; 4 uses
  %i.aap = or disjoint i64 %i.aao, 12             ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aaj
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aal
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aan
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aap
  %i.aau = load i32, ptr %i.aaq, align 4, !tbaa !8
  %i.aav = load i32, ptr %i.aar, align 4, !tbaa !8
  %i.aaw = load i32, ptr %i.aas, align 4, !tbaa !8
  %i.aax = load i32, ptr %i.aat, align 4, !tbaa !8
  %i.aay = insertelement <4 x i32> poison, i32 %i.aau, i64 0
  %i.aaz = insertelement <4 x i32> %i.aay, i32 %i.aav, i64 1
  %i.aba = insertelement <4 x i32> %i.aaz, i32 %i.aaw, i64 2
  %i.abb = insertelement <4 x i32> %i.aba, i32 %i.aax, i64 3
  %i.abc = shl <4 x i32> %i.abb, %broadcast.splat567
  %i.abd = or disjoint i64 %i.aaj, 1              ; 2 uses
  %i.abe = or disjoint i64 %i.aak, 5              ; 2 uses
  %i.abf = or disjoint i64 %i.aam, 9              ; 2 uses
  %i.abg = or disjoint i64 %i.aao, 13             ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abd
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abe
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abf
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abg
  %i.abl = load i32, ptr %i.abh, align 4, !tbaa !8
  %i.abm = load i32, ptr %i.abi, align 4, !tbaa !8
  %i.abn = load i32, ptr %i.abj, align 4, !tbaa !8
  %i.abo = load i32, ptr %i.abk, align 4, !tbaa !8
  %i.abp = insertelement <4 x i32> poison, i32 %i.abl, i64 0
  %i.abq = insertelement <4 x i32> %i.abp, i32 %i.abm, i64 1
  %i.abr = insertelement <4 x i32> %i.abq, i32 %i.abn, i64 2
  %i.abs = insertelement <4 x i32> %i.abr, i32 %i.abo, i64 3
  %i.abt = shl <4 x i32> %i.abs, %broadcast.splat567
  %i.abu = or disjoint i64 %i.aaj, 2              ; 2 uses
  %i.abv = or disjoint i64 %i.aak, 6              ; 2 uses
  %i.abw = or disjoint i64 %i.aam, 10             ; 2 uses
  %i.abx = or disjoint i64 %i.aao, 14             ; 2 uses
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abu
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abv
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abw
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.abx
  %i.acc = load i32, ptr %i.aby, align 4, !tbaa !8
  %i.acd = load i32, ptr %i.abz, align 4, !tbaa !8
  %i.ace = load i32, ptr %i.aca, align 4, !tbaa !8
  %i.acf = load i32, ptr %i.acb, align 4, !tbaa !8
  %i.acg = insertelement <4 x i32> poison, i32 %i.acc, i64 0
  %i.ach = insertelement <4 x i32> %i.acg, i32 %i.acd, i64 1
  %i.aci = insertelement <4 x i32> %i.ach, i32 %i.ace, i64 2
  %i.acj = insertelement <4 x i32> %i.aci, i32 %i.acf, i64 3
  %i.ack = shl <4 x i32> %i.acj, %broadcast.splat567
  %i.acl = or disjoint i64 %i.aaj, 3              ; 2 uses
  %i.acm = or disjoint i64 %i.aak, 7              ; 2 uses
  %i.acn = or disjoint i64 %i.aam, 11             ; 2 uses
  %i.aco = or disjoint i64 %i.aao, 15             ; 2 uses
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acl
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acm
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.acn
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aco
  %i.act = load i32, ptr %i.acp, align 4, !tbaa !8
  %i.acu = load i32, ptr %i.acq, align 4, !tbaa !8
  %i.acv = load i32, ptr %i.acr, align 4, !tbaa !8
  %i.acw = load i32, ptr %i.acs, align 4, !tbaa !8
  %i.acx = insertelement <4 x i32> poison, i32 %i.act, i64 0
  %i.acy = insertelement <4 x i32> %i.acx, i32 %i.acu, i64 1
  %i.acz = insertelement <4 x i32> %i.acy, i32 %i.acv, i64 2
  %i.ada = insertelement <4 x i32> %i.acz, i32 %i.acw, i64 3
  %i.adb = shl <4 x i32> %i.ada, %broadcast.splat567
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aaj
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aal
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aan
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aap
  %i.adg = load i32, ptr %i.adc, align 4, !tbaa !8
  %i.adh = load i32, ptr %i.add, align 4, !tbaa !8
  %i.adi = load i32, ptr %i.ade, align 4, !tbaa !8
  %i.adj = load i32, ptr %i.adf, align 4, !tbaa !8
  %i.adk = insertelement <4 x i32> poison, i32 %i.adg, i64 0
  %i.adl = insertelement <4 x i32> %i.adk, i32 %i.adh, i64 1
  %i.adm = insertelement <4 x i32> %i.adl, i32 %i.adi, i64 2
  %i.adn = insertelement <4 x i32> %i.adm, i32 %i.adj, i64 3
  %i.ado = shl <4 x i32> %i.adn, %broadcast.splat569 ; 3 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abd
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abe
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abf
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abg
  %i.adt = load i32, ptr %i.adp, align 4, !tbaa !8
  %i.adu = load i32, ptr %i.adq, align 4, !tbaa !8
  %i.adv = load i32, ptr %i.adr, align 4, !tbaa !8
  %i.adw = load i32, ptr %i.ads, align 4, !tbaa !8
  %i.adx = insertelement <4 x i32> poison, i32 %i.adt, i64 0
  %i.ady = insertelement <4 x i32> %i.adx, i32 %i.adu, i64 1
  %i.adz = insertelement <4 x i32> %i.ady, i32 %i.adv, i64 2
  %i.aea = insertelement <4 x i32> %i.adz, i32 %i.adw, i64 3
  %i.aeb = shl <4 x i32> %i.aea, %broadcast.splat569 ; 3 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abu
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abv
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abw
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.abx
  %i.aeg = load i32, ptr %i.aec, align 4, !tbaa !8
  %i.aeh = load i32, ptr %i.aed, align 4, !tbaa !8
  %i.aei = load i32, ptr %i.aee, align 4, !tbaa !8
  %i.aej = load i32, ptr %i.aef, align 4, !tbaa !8
  %i.aek = insertelement <4 x i32> poison, i32 %i.aeg, i64 0
  %i.ael = insertelement <4 x i32> %i.aek, i32 %i.aeh, i64 1
  %i.aem = insertelement <4 x i32> %i.ael, i32 %i.aei, i64 2
  %i.aen = insertelement <4 x i32> %i.aem, i32 %i.aej, i64 3
  %i.aeo = shl <4 x i32> %i.aen, %broadcast.splat569 ; 3 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acl
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acm
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.acn
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aco
  %i.aet = load i32, ptr %i.aep, align 4, !tbaa !8
  %i.aeu = load i32, ptr %i.aeq, align 4, !tbaa !8
  %i.aev = load i32, ptr %i.aer, align 4, !tbaa !8
  %i.aew = load i32, ptr %i.aes, align 4, !tbaa !8
  %i.aex = insertelement <4 x i32> poison, i32 %i.aet, i64 0
  %i.aey = insertelement <4 x i32> %i.aex, i32 %i.aeu, i64 1
  %i.aez = insertelement <4 x i32> %i.aey, i32 %i.aev, i64 2
  %i.afa = insertelement <4 x i32> %i.aez, i32 %i.aew, i64 3
  %i.afb = shl <4 x i32> %i.afa, %broadcast.splat569 ; 3 uses
  %i.afc = shl <4 x i32> %i.abc, splat (i32 1)
  %i.afd = and <4 x i32> %i.ado, splat (i32 1)
  %i.afe = or disjoint <4 x i32> %i.afd, %i.afc   ; 2 uses
  %i.aff = shl <4 x i32> %i.abt, splat (i32 1)
  %i.afg = and <4 x i32> %i.aeb, splat (i32 1)
  %i.afh = or disjoint <4 x i32> %i.afg, %i.aff   ; 2 uses
  %i.afi = shl <4 x i32> %i.ack, splat (i32 1)
  %i.afj = and <4 x i32> %i.aeo, splat (i32 1)
  %i.afk = or disjoint <4 x i32> %i.afj, %i.afi   ; 2 uses
  %i.afl = shl <4 x i32> %i.adb, splat (i32 1)
  %i.afm = and <4 x i32> %i.afb, splat (i32 1)
  %i.afn = or disjoint <4 x i32> %i.afm, %i.afl   ; 2 uses
  %i.afo = add <4 x i32> %i.afe, %i.ado
  %i.afp = add <4 x i32> %i.afh, %i.aeb
  %i.afq = add <4 x i32> %i.afk, %i.aeo
  %i.afr = add <4 x i32> %i.afn, %i.afb
  %i.afs = sub <4 x i32> %i.afe, %i.ado
  %i.aft = sub <4 x i32> %i.afh, %i.aeb
  %i.afu = sub <4 x i32> %i.afk, %i.aeo
  %i.afv = sub <4 x i32> %i.afn, %i.afb
  %i.afw = shl nuw nsw i64 %index571, 5
  %i.afx = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.afw
  %i.afy = shufflevector <4 x i32> %i.afo, <4 x i32> %i.afs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afz = shufflevector <4 x i32> %i.afp, <4 x i32> %i.aft, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aga = shufflevector <8 x i32> %i.afy, <8 x i32> %i.afz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agb = shufflevector <4 x i32> %i.afq, <4 x i32> %i.afu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agc = shufflevector <4 x i32> %i.afr, <4 x i32> %i.afv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agd = shufflevector <8 x i32> %i.agb, <8 x i32> %i.agc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.age = shufflevector <16 x i32> %i.aga, <16 x i32> %i.agd, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.agf = ashr <32 x i32> %i.age, splat (i32 1)
  %i.agg = sitofp <32 x i32> %i.agf to <32 x float>
  %interleaved.vec572 = fmul nnan <32 x float> %i.agg, splat (float f0x30000000)
  store <32 x float> %interleaved.vec572, ptr %i.afx, align 4, !tbaa !336
  %index.next573 = add nuw i64 %index571, 4       ; 2 uses
  %i.agh = icmp eq i64 %index.next573, %n.vec565
  br i1 %i.agh, label %middle.block574, label %vector.body570, !llvm.loop !1761

middle.block574:                                  ; preds = %vector.body570
  %cmp.n575 = icmp eq i64 %i.aae, %n.vec565
  br i1 %cmp.n575, label %.loopexit, label %scalar.ph562.preheader

scalar.ph562.preheader:                           ; preds = %.lr.ph155, %middle.block574
  %.1.i106154.ph = phi i64 [ 0, %.lr.ph155 ], [ %n.vec565, %middle.block574 ]
  %i.agi = insertelement <2 x i32> poison, i32 %i.aag, i64 0
  %i.agj = shufflevector <2 x i32> %i.agi, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.agk = insertelement <2 x i32> poison, i32 %i.aai, i64 0
  %i.agl = shufflevector <2 x i32> %i.agk, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_2
begin_hunk_3_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %i.alw = add <4 x i32> %i.alo, %i.aki
  %i.alx = add <4 x i32> %i.alr, %i.akv
  %i.aly = add <4 x i32> %i.alu, %i.ali
  %i.alz = sub <4 x i32> %i.all, %i.ajv
  %i.ama = sub <4 x i32> %i.alo, %i.aki
  %i.amb = sub <4 x i32> %i.alr, %i.akv
  %i.amc = sub <4 x i32> %i.alu, %i.ali
  %i.amd = shl nuw nsw i64 %index588, 5
  %i.ame = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.amd
  %i.amf = shufflevector <4 x i32> %i.alv, <4 x i32> %i.alz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amg = shufflevector <4 x i32> %i.alw, <4 x i32> %i.ama, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amh = shufflevector <8 x i32> %i.amf, <8 x i32> %i.amg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ami = shl <16 x i32> %i.amh, %i.ao
  %i.amj = shufflevector <4 x i32> %i.alx, <4 x i32> %i.amb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amk = shufflevector <4 x i32> %i.aly, <4 x i32> %i.amc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aml = shufflevector <8 x i32> %i.amj, <8 x i32> %i.amk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amm = shl <16 x i32> %i.aml, %i.ap
  %i.amn = shufflevector <16 x i32> %i.ami, <16 x i32> %i.amm, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.amo = sitofp <32 x i32> %i.amn to <32 x float>
  %interleaved.vec589 = fmul nnan <32 x float> %i.amo, splat (float f0x30000000)
  store <32 x float> %interleaved.vec589, ptr %i.ame, align 4, !tbaa !336
  %index.next590 = add nuw i64 %index588, 4       ; 2 uses
  %i.amp = icmp eq i64 %index.next590, %n.vec580
  br i1 %i.amp, label %middle.block591, label %vector.body587, !llvm.loop !1762

middle.block591:                                  ; preds = %vector.body587
  %cmp.n592 = icmp eq i64 %i.aae, %n.vec580
  br i1 %cmp.n592, label %.loopexit, label %scalar.ph577.preheader

scalar.ph577.preheader:                           ; preds = %.lr.ph, %middle.block591
  %.0.i104153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec580, %middle.block591 ]
  %i.amq = insertelement <2 x i32> poison, i32 %i.agn, i64 0
  %i.amr = shufflevector <2 x i32> %i.amq, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ams = insertelement <2 x i32> poison, i32 %i.agp, i64 0
  %i.amt = shufflevector <2 x i32> %i.ams, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph577

scalar.ph577:                                     ; preds = %scalar.ph577.preheader, %scalar.ph577
  %.0.i104153 = phi i64 [ %i.aog, %scalar.ph577 ], [ %.0.i104153.ph, %scalar.ph577.preheader ] ; 3 uses
  %i.amu = shl nuw nsw i64 %.0.i104153, 2         ; 3 uses
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.amu
  %i.amw = or disjoint i64 %i.amu, 2              ; 2 uses
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.amw
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.amu
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.amw
  %.idx = shl nuw nsw i64 %.0.i104153, 5
  %i.ana = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx ; 2 uses
  %i.anb = load <2 x i32>, ptr %i.amv, align 4, !tbaa !8
  %i.anc = shl <2 x i32> %i.anb, %i.amr
  %i.and = load <2 x i32>, ptr %i.amy, align 4, !tbaa !8
  %i.ane = shl <2 x i32> %i.and, %i.amt           ; 2 uses
  %i.anf = shl <2 x i32> %i.anc, splat (i32 1)
  %i.ang = and <2 x i32> %i.ane, splat (i32 1)
  %i.anh = or disjoint <2 x i32> %i.ang, %i.anf
  %i.ani = shufflevector <2 x i32> %i.anh, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.anj = shufflevector <2 x i32> %i.ane, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.ank = add <4 x i32> %i.ani, %i.anj
  %i.anl = sub <4 x i32> %i.ani, %i.anj
  %i.anm = shufflevector <4 x i32> %i.ank, <4 x i32> %i.anl, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ann = shl <4 x i32> %i.anm, %i.ar
  %i.ano = sitofp <4 x i32> %i.ann to <4 x float>
  %i.anp = fmul nnan <4 x float> %i.ano, splat (float f0x30000000)
  store <4 x float> %i.anp, ptr %i.ana, align 4, !tbaa !336
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  %i.anr = load <2 x i32>, ptr %i.amx, align 4, !tbaa !8
  %i.ans = shl <2 x i32> %i.anr, %i.amr
  %i.ant = load <2 x i32>, ptr %i.amz, align 4, !tbaa !8
  %i.anu = shl <2 x i32> %i.ant, %i.amt           ; 2 uses
  %i.anv = shl <2 x i32> %i.ans, splat (i32 1)
  %i.anw = and <2 x i32> %i.anu, splat (i32 1)
  %i.anx = or disjoint <2 x i32> %i.anw, %i.anv
  %i.any = shufflevector <2 x i32> %i.anx, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.anz = shufflevector <2 x i32> %i.anu, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.aoa = add <4 x i32> %i.any, %i.anz
  %i.aob = sub <4 x i32> %i.any, %i.anz
  %i.aoc = shufflevector <4 x i32> %i.aoa, <4 x i32> %i.aob, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.aod = shl <4 x i32> %i.aoc, %i.ar
  %i.aoe = sitofp <4 x i32> %i.aod to <4 x float>
  %i.aof = fmul nnan <4 x float> %i.aoe, splat (float f0x30000000)
  store <4 x float> %i.aof, ptr %i.anq, align 4, !tbaa !336
  %i.aog = add nuw nsw i64 %.0.i104153, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aog, %i.aae
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph577, !llvm.loop !1763

scalar.ph562:                                     ; preds = %scalar.ph562.preheader, %scalar.ph562
  %.1.i106154 = phi i64 [ %i.apt, %scalar.ph562 ], [ %.1.i106154.ph, %scalar.ph562.preheader ] ; 3 uses
  %i.aoh = shl nuw nsw i64 %.1.i106154, 2         ; 3 uses
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aoh
  %i.aoj = or disjoint i64 %i.aoh, 2              ; 2 uses
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aoj
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aoh
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aoj
  %.idx119 = shl nuw nsw i64 %.1.i106154, 5
  %i.aon = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx119 ; 2 uses
  %i.aoo = load <2 x i32>, ptr %i.aoi, align 4, !tbaa !8
  %i.aop = shl <2 x i32> %i.aoo, %i.agj
  %i.aoq = load <2 x i32>, ptr %i.aol, align 4, !tbaa !8
  %i.aor = shl <2 x i32> %i.aoq, %i.agl           ; 2 uses
  %i.aos = shl <2 x i32> %i.aop, splat (i32 1)
  %i.aot = and <2 x i32> %i.aor, splat (i32 1)
  %i.aou = or disjoint <2 x i32> %i.aot, %i.aos
  %i.aov = shufflevector <2 x i32> %i.aou, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.aow = shufflevector <2 x i32> %i.aor, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.aox = add <4 x i32> %i.aov, %i.aow
  %i.aoy = sub <4 x i32> %i.aov, %i.aow
  %i.aoz = shufflevector <4 x i32> %i.aox, <4 x i32> %i.aoy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.apa = ashr <4 x i32> %i.aoz, splat (i32 1)
  %i.apb = sitofp <4 x i32> %i.apa to <4 x float>
  %i.apc = fmul nnan <4 x float> %i.apb, splat (float f0x30000000)
  store <4 x float> %i.apc, ptr %i.aon, align 4, !tbaa !336
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  %i.ape = load <2 x i32>, ptr %i.aok, align 4, !tbaa !8
  %i.apf = shl <2 x i32> %i.ape, %i.agj
  %i.apg = load <2 x i32>, ptr %i.aom, align 4, !tbaa !8
  %i.aph = shl <2 x i32> %i.apg, %i.agl           ; 2 uses
  %i.api = shl <2 x i32> %i.apf, splat (i32 1)
  %i.apj = and <2 x i32> %i.aph, splat (i32 1)
  %i.apk = or disjoint <2 x i32> %i.apj, %i.api
  %i.apl = shufflevector <2 x i32> %i.apk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.apm = shufflevector <2 x i32> %i.aph, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.apn = add <4 x i32> %i.apl, %i.apm
  %i.apo = sub <4 x i32> %i.apl, %i.apm
  %i.app = shufflevector <4 x i32> %i.apn, <4 x i32> %i.apo, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.apq = ashr <4 x i32> %i.app, splat (i32 1)
  %i.apr = sitofp <4 x i32> %i.apq to <4 x float>
  %i.aps = fmul nnan <4 x float> %i.apr, splat (float f0x30000000)
  store <4 x float> %i.aps, ptr %i.apd, align 4, !tbaa !336
  %i.apt = add nuw nsw i64 %.1.i106154, 1         ; 2 uses
  %exitcond268.not = icmp eq i64 %i.apt, %i.aae
  br i1 %exitcond268.not, label %.loopexit, label %scalar.ph562, !llvm.loop !1764

.loopexit:                                        ; preds = %scalar.ph577, %scalar.ph562, %middle.block591, %middle.block574, %bb.x, %.preheader143
  %i.apu = and i64 %spec.select, 4294967292       ; 6 uses
  %.not225 = icmp eq i64 %i.apu, %spec.select
  br i1 %.not225, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.loopexit
  %i.apv = load i8, ptr %i.ag, align 1, !tbaa !1740
  %i.apw = zext nneg i8 %i.apv to i32             ; 2 uses
  %i.apx = load i8, ptr %i.ah, align 1, !tbaa !1740
  %i.apy = zext nneg i8 %i.apx to i32             ; 2 uses
  %i.apz = or disjoint i64 %i.apu, 1
  %i.aqa = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.apz) ; 2 uses
  %i.aqb = sub nsw i64 %i.aqa, %i.apu             ; 2 uses
  %min.iters.check544 = icmp ult i64 %i.aqb, 4
  br i1 %min.iters.check544, label %scalar.ph543.preheader, label %vector.ph545

vector.ph545:                                     ; preds = %.lr.ph157
  %i.aqc = and i64 %i.aqa, 3                      ; 2 uses
  %n.vec546 = sub nuw nsw i64 %i.aqb, %i.aqc      ; 2 uses
  %i.aqd = add nsw i64 %i.apu, %n.vec546
  %broadcast.splatinsert547 = insertelement <4 x i32> poison, i32 %i.apw, i64 0
  %broadcast.splat548 = shufflevector <4 x i32> %broadcast.splatinsert547, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <4 x i32> poison, i32 %i.apy, i64 0
  %broadcast.splat550 = shufflevector <4 x i32> %broadcast.splatinsert549, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph545
  %index554 = phi i64 [ 0, %vector.ph545 ], [ %index.next558, %vector.body553 ] ; 2 uses
  %i.aqe = add nuw i64 %i.apu, %index554          ; 3 uses
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aqe
  %wide.load555 = load <4 x i32>, ptr %i.aqf, align 4, !tbaa !8
  %i.aqg = shl <4 x i32> %wide.load555, %broadcast.splat548
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aqe
  %wide.load556 = load <4 x i32>, ptr %i.aqh, align 4, !tbaa !8
  %i.aqi = shl <4 x i32> %wide.load556, %broadcast.splat550 ; 3 uses
  %i.aqj = shl <4 x i32> %i.aqg, splat (i32 1)
  %i.aqk = and <4 x i32> %i.aqi, splat (i32 1)
  %i.aql = or disjoint <4 x i32> %i.aqk, %i.aqj   ; 2 uses
  %i.aqm = add <4 x i32> %i.aql, %i.aqi
  %i.aqn = ashr <4 x i32> %i.aqm, splat (i32 1)
  %i.aqo = shl <4 x i32> %i.aqn, %broadcast.splat552
  %i.aqp = shl nuw nsw i64 %i.aqe, 3
  %i.aqq = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.aqp
  %i.aqr = sub <4 x i32> %i.aql, %i.aqi
  %i.aqs = ashr <4 x i32> %i.aqr, splat (i32 1)
  %i.aqt = shl <4 x i32> %i.aqs, %broadcast.splat552
  %i.aqu = shufflevector <4 x i32> %i.aqo, <4 x i32> %i.aqt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.aqv = sitofp <8 x i32> %i.aqu to <8 x float>
  %interleaved.vec557 = fmul nnan <8 x float> %i.aqv, splat (float f0x30000000)
  store <8 x float> %interleaved.vec557, ptr %i.aqq, align 4, !tbaa !336
  %index.next558 = add nuw i64 %index554, 4       ; 2 uses
  %i.aqw = icmp eq i64 %index.next558, %n.vec546
  br i1 %i.aqw, label %middle.block559, label %vector.body553, !llvm.loop !1765

middle.block559:                                  ; preds = %vector.body553
  %cmp.n560 = icmp eq i64 %i.aqc, 0
  br i1 %cmp.n560, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %scalar.ph543.preheader

scalar.ph543.preheader:                           ; preds = %.lr.ph157, %middle.block559
  %.2.i105156.ph = phi i64 [ %i.apu, %.lr.ph157 ], [ %i.aqd, %middle.block559 ]
  br label %scalar.ph543

scalar.ph543:                                     ; preds = %scalar.ph543.preheader, %scalar.ph543
  %.2.i105156 = phi i64 [ %i.arl, %scalar.ph543 ], [ %.2.i105156.ph, %scalar.ph543.preheader ] ; 4 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.2.i105156
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !8
  %i.aqz = shl i32 %i.aqy, %i.apw
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.2.i105156
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !8
  %i.arc = shl i32 %i.arb, %i.apy                 ; 3 uses
  %11 = shl i32 %i.aqz, 1
  %12 = and i32 %i.arc, 1
  %13 = or disjoint i32 %12, %11                  ; 2 uses
  %.idx118 = shl nuw nsw i64 %.2.i105156, 3
  %14 = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx118
  %i.ard = sub i32 %13, %i.arc
  %i.are = add i32 %13, %i.arc
  %i.arf = insertelement <2 x i32> poison, i32 %i.are, i64 0
  %i.arg = insertelement <2 x i32> %i.arf, i32 %i.ard, i64 1
  %i.arh = ashr <2 x i32> %i.arg, splat (i32 1)
  %i.ari = shl <2 x i32> %i.arh, %i.at
  %i.arj = sitofp <2 x i32> %i.ari to <2 x float>
  %i.ark = fmul nnan <2 x float> %i.arj, splat (float f0x30000000)
  store <2 x float> %i.ark, ptr %14, align 4, !tbaa !336
  %i.arl = add nuw nsw i64 %.2.i105156, 1         ; 2 uses
  %i.arm = icmp samesign ult i64 %i.arl, %spec.select
  br i1 %i.arm, label %scalar.ph543, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1766

bb.y:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.z, label %._crit_edge290

._crit_edge290:                                   ; preds = %bb.y
  %.pre291 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre293 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.arn = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.aro = icmp ult i8 %i.arn, 25
  %.pre292 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre294 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.aro, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.arp = lshr i64 %spec.select, 2               ; 2 uses
  %i.arq = zext i8 %.pre292 to i32
  %i.arr = zext i8 %.pre294 to i32
  %.reass347.reass = add i32 %i.arq, %invariant.op633 ; 3 uses
  %.reass349.reass = add i32 %i.arr, %invariant.op634 ; 3 uses
  %.not245 = icmp eq i64 %i.arp, 0
  br i1 %.not245, label %._crit_edge207, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.aa, %.lr.ph206
  %.0.i107204 = phi i64 [ %i.asg, %.lr.ph206 ], [ 0, %bb.aa ] ; 4 uses
  %i.ars = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0.i107204
  %i.art = load <4 x i32>, ptr %i.ars, align 1, !tbaa !9
  %i.aru = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.art, i32 range(i32 -232, 288) %.reass347.reass)
  %i.arv = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.0.i107204
  %i.arw = load <4 x i32>, ptr %i.arv, align 1, !tbaa !9
  %i.arx = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.arw, i32 range(i32 -232, 288) %.reass349.reass)
  %i.ary = sitofp <4 x i32> %i.aru to <4 x float>
  %i.arz = fmul nnan <4 x float> %i.ary, splat (float f0x34000000) ; 2 uses
  %i.asa = sitofp <4 x i32> %i.arx to <4 x float>
  %i.asb = fmul nnan <4 x float> %i.asa, splat (float f0x34000000) ; 2 uses
  %.idx.i109 = shl nuw nsw i64 %.0.i107204, 5
  %i.asc = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i109 ; 2 uses
  %i.asd = shufflevector <4 x float> %i.arz, <4 x float> %i.asb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.asd, ptr %i.asc, align 1, !tbaa !9
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asc, i64 16
  %i.asf = shufflevector <4 x float> %i.arz, <4 x float> %i.asb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.asf, ptr %i.ase, align 1, !tbaa !9
  %i.asg = add nuw nsw i64 %.0.i107204, 1         ; 2 uses
  %exitcond276.not = icmp eq i64 %i.asg, %i.arp
  br i1 %exitcond276.not, label %._crit_edge207, label %.lr.ph206, !llvm.loop !1767

._crit_edge207:                                   ; preds = %.lr.ph206, %bb.aa
  %i.ash = and i64 %spec.select, 4294967292       ; 6 uses
  %.not246 = icmp eq i64 %i.ash, %spec.select
  br i1 %.not246, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %._crit_edge207
  %i.asi = or disjoint i64 %i.ash, 1
  %i.asj = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.asi) ; 2 uses
  %i.ask = sub nsw i64 %i.asj, %i.ash             ; 2 uses
  %min.iters.check = icmp ult i64 %i.ask, 4
  br i1 %min.iters.check, label %.lr.ph210.preheader601, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph210.preheader
  %i.asl = and i64 %i.asj, 3                      ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ask, %i.asl         ; 2 uses
  %i.asm = add nsw i64 %i.ash, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.reass347.reass, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert374 = insertelement <4 x i32> poison, i32 %.reass349.reass, i64 0
  %broadcast.splat375 = shufflevector <4 x i32> %broadcast.splatinsert374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.asn = add nuw i64 %i.ash, %index             ; 3 uses
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.asn
  %wide.load = load <4 x i32>, ptr %i.aso, align 4, !tbaa !8
  %i.asp = shl <4 x i32> %wide.load, %broadcast.splat
  %i.asq = shl nuw nsw i64 %i.asn, 3
  %i.asr = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.asq
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.asn
  %wide.load376 = load <4 x i32>, ptr %i.ass, align 4, !tbaa !8
  %i.ast = shl <4 x i32> %wide.load376, %broadcast.splat375
  %i.asu = shufflevector <4 x i32> %i.asp, <4 x i32> %i.ast, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.asv = sitofp <8 x i32> %i.asu to <8 x float>
  %interleaved.vec = fmul nnan <8 x float> %i.asv, splat (float f0x34000000)
  store <8 x float> %interleaved.vec, ptr %i.asr, align 4, !tbaa !336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.asw = icmp eq i64 %index.next, %n.vec
  br i1 %i.asw, label %middle.block, label %vector.body, !llvm.loop !1768

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.asl, 0
  br i1 %cmp.n, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.lr.ph210.preheader601

.lr.ph210.preheader601:                           ; preds = %.lr.ph210.preheader, %middle.block
  %.1.i108208.ph = phi i64 [ %i.ash, %.lr.ph210.preheader ], [ %i.asm, %middle.block ]
  br label %.lr.ph210

.lr.ph210:                                        ; preds = %.lr.ph210.preheader601, %.lr.ph210
  %.1.i108208 = phi i64 [ %i.ati, %.lr.ph210 ], [ %.1.i108208.ph, %.lr.ph210.preheader601 ] ; 4 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i108208
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !8
  %.idx130 = shl nuw nsw i64 %.1.i108208, 3
  %i.asz = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx130
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i108208
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !8
  %i.atc = shl i32 %i.atb, %.reass349.reass
  %i.atd = shl i32 %i.asy, %.reass347.reass
  %i.ate = insertelement <2 x i32> poison, i32 %i.atd, i64 0
  %i.atf = insertelement <2 x i32> %i.ate, i32 %i.atc, i64 1
  %i.atg = sitofp <2 x i32> %i.atf to <2 x float>
  %i.ath = fmul nnan <2 x float> %i.atg, splat (float f0x34000000)
  store <2 x float> %i.ath, ptr %i.asz, align 4, !tbaa !336
  %i.ati = add nuw nsw i64 %.1.i108208, 1         ; 2 uses
  %i.atj = icmp samesign ult i64 %i.ati, %spec.select
  br i1 %i.atj, label %.lr.ph210, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1769

bb.ab:                                            ; preds = %._crit_edge290, %bb.z
  %i.atk = phi i8 [ %.pre293, %._crit_edge290 ], [ %.pre294, %bb.z ]
  %i.atl = phi i8 [ %.pre291, %._crit_edge290 ], [ %.pre292, %bb.z ]
  %i.atm = lshr i64 %spec.select, 2               ; 4 uses
  %i.atn = zext i8 %i.atl to i32
  %i.ato = add nsw i32 %i.z, %i.atn               ; 7 uses
  %i.atp = zext i8 %i.atk to i32
  %i.atq = add nsw i32 %i.z, %i.atp               ; 7 uses
  %.not241 = icmp eq i64 %i.atm, 0
  br i1 %.not241, label %._crit_edge200, label %.lr.ph199.preheader

.lr.ph199.preheader:                              ; preds = %bb.ab
  %min.iters.check395 = icmp samesign ult i64 %spec.select, 16
  br i1 %min.iters.check395, label %.lr.ph199.preheader605, label %vector.ph396

vector.ph396:                                     ; preds = %.lr.ph199.preheader
  %n.vec397 = and i64 %i.atm, 1073741820          ; 3 uses
  %broadcast.splatinsert398 = insertelement <4 x i32> poison, i32 %i.ato, i64 0
  %broadcast.splat399 = shufflevector <4 x i32> %broadcast.splatinsert398, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %i.atq, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph396
  %index403 = phi i64 [ 0, %vector.ph396 ], [ %index.next405, %vector.body402 ] ; 6 uses
  %i.atr = shl nuw nsw i64 %index403, 2           ; 5 uses
  %i.ats = shl i64 %index403, 2                   ; 4 uses
  %i.att = or disjoint i64 %i.ats, 4              ; 2 uses
  %i.atu = shl i64 %index403, 2                   ; 4 uses
  %i.atv = or disjoint i64 %i.atu, 8              ; 2 uses
  %i.atw = shl i64 %index403, 2                   ; 4 uses
  %i.atx = or disjoint i64 %i.atw, 12             ; 2 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.atr
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.att
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.atv
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.atx
  %i.auc = load i32, ptr %i.aty, align 4, !tbaa !8
  %i.aud = load i32, ptr %i.atz, align 4, !tbaa !8
  %i.aue = load i32, ptr %i.aua, align 4, !tbaa !8
  %i.auf = load i32, ptr %i.aub, align 4, !tbaa !8
  %i.aug = insertelement <4 x i32> poison, i32 %i.auc, i64 0
  %i.auh = insertelement <4 x i32> %i.aug, i32 %i.aud, i64 1
  %i.aui = insertelement <4 x i32> %i.auh, i32 %i.aue, i64 2
  %i.auj = insertelement <4 x i32> %i.aui, i32 %i.auf, i64 3
  %i.auk = shl <4 x i32> %i.auj, %broadcast.splat399
  %i.aul = or disjoint i64 %i.atr, 1              ; 2 uses
  %i.aum = or disjoint i64 %i.ats, 5              ; 2 uses
  %i.aun = or disjoint i64 %i.atu, 9              ; 2 uses
  %i.auo = or disjoint i64 %i.atw, 13             ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aul
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aum
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.aun
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.auo
  %i.aut = load i32, ptr %i.aup, align 4, !tbaa !8
  %i.auu = load i32, ptr %i.auq, align 4, !tbaa !8
  %i.auv = load i32, ptr %i.aur, align 4, !tbaa !8
  %i.auw = load i32, ptr %i.aus, align 4, !tbaa !8
  %i.aux = insertelement <4 x i32> poison, i32 %i.aut, i64 0
  %i.auy = insertelement <4 x i32> %i.aux, i32 %i.auu, i64 1
  %i.auz = insertelement <4 x i32> %i.auy, i32 %i.auv, i64 2
  %i.ava = insertelement <4 x i32> %i.auz, i32 %i.auw, i64 3
  %i.avb = shl <4 x i32> %i.ava, %broadcast.splat399
  %i.avc = or disjoint i64 %i.atr, 2              ; 2 uses
  %i.avd = or disjoint i64 %i.ats, 6              ; 2 uses
  %i.ave = or disjoint i64 %i.atu, 10             ; 2 uses
  %i.avf = or disjoint i64 %i.atw, 14             ; 2 uses
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avc
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avd
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ave
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.avf
  %i.avk = load i32, ptr %i.avg, align 4, !tbaa !8
  %i.avl = load i32, ptr %i.avh, align 4, !tbaa !8
  %i.avm = load i32, ptr %i.avi, align 4, !tbaa !8
  %i.avn = load i32, ptr %i.avj, align 4, !tbaa !8
  %i.avo = insertelement <4 x i32> poison, i32 %i.avk, i64 0
  %i.avp = insertelement <4 x i32> %i.avo, i32 %i.avl, i64 1
  %i.avq = insertelement <4 x i32> %i.avp, i32 %i.avm, i64 2
  %i.avr = insertelement <4 x i32> %i.avq, i32 %i.avn, i64 3
  %i.avs = shl <4 x i32> %i.avr, %broadcast.splat399
  %i.avt = or disjoint i64 %i.atr, 3              ; 2 uses
  %i.avu = or disjoint i64 %i.ats, 7              ; 2 uses
end_hunk_3
begin_hunk_4_@ma_dr_flac_read_pcm_frames_f32:bb.a
  %.1.i111201.ph = phi i64 [ %i.bam, %.lr.ph203.preheader ], [ %i.bar, %middle.block391 ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader603, %.lr.ph203
  %.1.i111201 = phi i64 [ %i.bbn, %.lr.ph203 ], [ %.1.i111201.ph, %.lr.ph203.preheader603 ] ; 4 uses
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.1.i111201
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !8
  %.idx128 = shl nuw nsw i64 %.1.i111201, 3
  %i.bbe = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx128
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.1.i111201
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !8
  %i.bbh = shl i32 %i.bbg, %i.atq
  %i.bbi = shl i32 %i.bbd, %i.ato
  %i.bbj = insertelement <2 x i32> poison, i32 %i.bbi, i64 0
  %i.bbk = insertelement <2 x i32> %i.bbj, i32 %i.bbh, i64 1
  %i.bbl = sitofp <2 x i32> %i.bbk to <2 x float>
  %i.bbm = fmul nnan <2 x float> %i.bbl, splat (float f0x30000000)
  store <2 x float> %i.bbm, ptr %i.bbe, align 4, !tbaa !336
  %i.bbn = add nuw nsw i64 %.1.i111201, 1         ; 2 uses
  %i.bbo = icmp samesign ult i64 %i.bbn, %spec.select
  br i1 %i.bbo, label %.lr.ph203, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, !llvm.loop !1773

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge213
  %.078214 = phi i64 [ %i.bdk, %._crit_edge213 ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.bbp = mul nuw nsw i64 %.078214, %i.bk
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bbp ; 3 uses
  br i1 %i.bm, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 8
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !1738
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %.078214
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %i.bbu, i64 %i.bg
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !8
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbr, i64 1
  %i.bby = load i8, ptr %i.bbx, align 1, !tbaa !1740
  %i.bbz = zext i8 %i.bby to i32
  %i.bca = add nsw i32 %i.z, %i.bbz
  %i.bcb = shl i32 %i.bbw, %i.bca
  %i.bcc = sitofp i32 %i.bcb to double
  %i.bcd = fmul nnan double %i.bcc, f0x3E00000000000000
  %i.bce = fptrunc double %i.bcd to float
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %indvars.iv
  store float %i.bce, ptr %i.bcf, align 4, !tbaa !336
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bcg = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !1738
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bci, i64 %.078214
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcj, i64 %i.bg
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !8
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcg, i64 1
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !1740
  %i.bco = zext i8 %i.bcn to i32
  %i.bcp = add nsw i32 %i.z, %i.bco
  %i.bcq = shl i32 %i.bcl, %i.bcp
  %i.bcr = sitofp i32 %i.bcq to double
  %i.bcs = fmul nnan double %i.bcr, f0x3E00000000000000
  %i.bct = fptrunc double %i.bcs to float
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %indvars.iv.next
  store float %i.bct, ptr %i.bcu, align 4, !tbaa !336
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge213.unr-lcssa, label %.preheader.new, !llvm.loop !1774

._crit_edge213.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge213, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge213.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge213.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod622)
  %i.bcv = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.epil.init ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 8
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !1738
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcx, i64 %.078214
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bcy, i64 %i.bg
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !8
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcv, i64 1
  %i.bdc = load i8, ptr %i.bdb, align 1, !tbaa !1740
  %i.bdd = zext i8 %i.bdc to i32
  %i.bde = add nsw i32 %i.z, %i.bdd
  %i.bdf = shl i32 %i.bda, %i.bde
  %i.bdg = sitofp i32 %i.bdf to double
  %i.bdh = fmul nnan double %i.bdg, f0x3E00000000000000
  %i.bdi = fptrunc double %i.bdh to float
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %indvars.iv.epil.init
  store float %i.bdi, ptr %i.bdj, align 4, !tbaa !336
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge213.unr-lcssa, %.epil.preheader
  %i.bdk = add nuw nsw i64 %.078214, 1            ; 2 uses
  %exitcond280.not = icmp eq i64 %i.bdk, %spec.select
  br i1 %exitcond280.not, label %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit, label %.preheader, !llvm.loop !1775

ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit: ; preds = %scalar.ph543, %scalar.ph524, %scalar.ph507, %.lr.ph175, %.lr.ph182, %.lr.ph189, %.lr.ph196, %.lr.ph203, %.lr.ph210, %._crit_edge213, %middle.block559, %middle.block540, %middle.block521, %middle.block489, %middle.block472, %middle.block440, %middle.block423, %middle.block391, %middle.block, %.loopexit, %._crit_edge, %._crit_edge165, %._crit_edge172, %._crit_edge179, %._crit_edge186, %._crit_edge193, %._crit_edge200, %._crit_edge207
  %i.bdl = add i64 %spec.select, %.080220
  %i.bdm = zext i8 %i.bc to i64
  %i.bdn = mul nuw nsw i64 %spec.select, %i.bdm
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %.081217, i64 %i.bdn
  %i.bdp = sub nuw i64 %.083216, %spec.select
  %i.bdq = load i64, ptr %i.al, align 8, !tbaa !1735
  %i.bdr = add i64 %i.bdq, %spec.select
  store i64 %i.bdr, ptr %i.al, align 8, !tbaa !1735
  %i.bds = trunc nuw i64 %spec.select to i32
  %i.bdt = load i32, ptr %i.aa, align 8, !tbaa !1732
  %i.bdu = sub i32 %i.bdt, %i.bds
  store i32 %i.bdu, ptr %i.aa, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit

ma_dr_flac__read_and_decode_next_flac_frame.exit: ; preds = %bb.h, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit
  %.184 = phi i64 [ %i.bdp, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.083216, %bb.h ] ; 2 uses
  %.182 = phi ptr [ %i.bdo, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.081217, %bb.h ]
  %.1 = phi i64 [ %i.bdl, %ma_dr_flac_read_pcm_frames_f32__decode_left_side.exit ], [ %.080220, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %.184, 0
  br i1 %.not, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.g, !llvm.loop !1776

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread: ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit, %bb.h, %.preheader249, %bb.a, %ma_dr_flac__seek_forward_by_pcm_frames.exit
  %.0 = phi i64 [ 0, %bb.a ], [ %.025.i, %ma_dr_flac__seek_forward_by_pcm_frames.exit ], [ %.080220, %bb.h ], [ %.080220, %.preheader249 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ma_dr_flac_read_pcm_frames_s16(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly %2) local_unnamed_addr #44 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.lr.ph.i, label %.lr.ph222

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %.01627.i = phi i64 [ %1, %.lr.ph.i ], [ %.117.i, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 5 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !1732 ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %i.j = load i8, ptr %i.f, align 1, !tbaa !1733
  %i.k = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.e, i8 noundef zeroext %i.j, ptr noundef %i.g)
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.l = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.l, label %ma_dr_flac__seek_forward_by_pcm_frames.exit [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i
    i32 -100, label %.preheader.i
  ]

bb.e:                                             ; preds = %bb.c
  %i.m = zext i32 %i.h to i64                     ; 3 uses
  %i.n = icmp ult i64 %.01627.i, %i.m
  br i1 %i.n, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i, label %bb.f

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i: ; preds = %bb.e
  %i.o = add i64 %.01627.i, %.028.i
  %i.p = trunc nuw i64 %.01627.i to i32
  %i.q = sub nuw i32 %i.h, %i.p
  store i32 %i.q, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__seek_forward_by_pcm_frames.exit

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.028.i, %i.m
  %i.s = sub nuw i64 %.01627.i, %i.m
  store i32 0, ptr %i.d, align 8, !tbaa !1732
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.i

ma_dr_flac__read_and_decode_next_flac_frame.exit.i: ; preds = %bb.d, %bb.f
  %.117.i = phi i64 [ %i.s, %bb.f ], [ %.01627.i, %bb.d ] ; 2 uses
  %.1.i112 = phi i64 [ %i.r, %bb.f ], [ %.028.i, %bb.d ] ; 2 uses
  %.not.i113 = icmp eq i64 %.117.i, 0
  br i1 %.not.i113, label %ma_dr_flac__seek_forward_by_pcm_frames.exit, label %bb.c, !llvm.loop !1734

ma_dr_flac__seek_forward_by_pcm_frames.exit:      ; preds = %ma_dr_flac__read_and_decode_next_flac_frame.exit.i, %.preheader.i, %bb.d, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i
  %.025.i = phi i64 [ %.028.i, %.preheader.i ], [ %i.o, %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread33.i ], [ %.028.i, %bb.d ], [ %.1.i112, %ma_dr_flac__read_and_decode_next_flac_frame.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1735
  %i.v = add i64 %i.u, %.025.i
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1735
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread

.lr.ph222:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 6 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !1733  ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 32, %i.y                     ; 18 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not.i = icmp eq i8 %i.x, 32                   ; 2 uses
  %i.af = sub nsw i32 31, %i.y                    ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 105 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %broadcast.splatinsert520 = insertelement <4 x i32> poison, i32 %i.af, i64 0 ; 2 uses
  %i.am = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.an = shufflevector <4 x i32> %broadcast.splatinsert520, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ao = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert486 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat487 = shufflevector <4 x i32> %broadcast.splatinsert486, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert467 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat468 = shufflevector <4 x i32> %broadcast.splatinsert467, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph222, %ma_dr_flac__read_and_decode_next_flac_frame.exit
  %.080220 = phi i64 [ 0, %.lr.ph222 ], [ %.1, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 4 uses
  %.081217 = phi ptr [ %2, %.lr.ph222 ], [ %.182, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 33 uses
  %.083216 = phi i64 [ %1, %.lr.ph222 ], [ %.184, %ma_dr_flac__read_and_decode_next_flac_frame.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !1732 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader244, label %bb.i

.preheader244:                                    ; preds = %bb.g, %bb.h
  %i.as = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.at = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.ak, i8 noundef zeroext %i.as, ptr noundef %i.al)
  %.not.i114 = icmp eq i32 %i.at, 0
  br i1 %.not.i114, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader244
  %i.au = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.au, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread [
    i32 0, label %ma_dr_flac__read_and_decode_next_flac_frame.exit
    i32 -100, label %.preheader244
  ]

bb.i:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ab, align 2, !tbaa !1736 ; 3 uses
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr @__const.ma_dr_flac__get_channel_count_from_channel_assignment.lookup, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9   ; 3 uses
  %i.az = load i16, ptr %i.ac, align 8, !tbaa !1737
  %i.ba = zext i16 %i.az to i32
  %i.bb = sub i32 %i.ba, %i.aq
  %i.bc = zext i32 %i.bb to i64                   ; 5 uses
  %i.bd = zext i32 %i.aq to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.083216, i64 %i.bd) ; 52 uses
  %i.be = shl nuw i64 1, %i.aw
  %i.bf = and i64 %i.be, 1794
  %.not117 = icmp eq i64 %i.bf, 0
  br i1 %.not117, label %.preheader.preheader, label %bb.j

.preheader.preheader:                             ; preds = %bb.i
  %i.bg = zext i8 %i.ay to i64
  %i.bh = tail call i8 @llvm.umax.i8(i8 %i.ay, i8 1) ; 2 uses
  %wide.trip.count = zext i8 %i.bh to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bi = icmp eq i8 %i.av, 0
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod554 = trunc i8 %i.bh to i1
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !1738
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bc ; 63 uses
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !1738
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bc ; 63 uses
  %.b.i93 = load i1, ptr @ma_dr_flac__gIsSSE2Supported, align 4 ; 4 uses
  switch i8 %i.av, label %bb.y [
    i8 8, label %bb.k
    i8 9, label %bb.o
    i8 10, label %bb.s
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.l, label %._crit_edge280

._crit_edge280:                                   ; preds = %bb.k
  %.pre281 = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre283 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.bo = icmp ult i8 %i.bn, 25
  %.pre282 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre284 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = lshr i64 %spec.select, 2                ; 2 uses
  %i.bq = zext i8 %.pre282 to i32
  %i.br = add nsw i32 %i.z, %i.bq                 ; 3 uses
  %i.bs = zext i8 %.pre284 to i32
  %i.bt = add nsw i32 %i.z, %i.bs                 ; 3 uses
  %.not236 = icmp eq i64 %i.bp, 0
  br i1 %.not236, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.m, %.lr.ph192
  %.0.i190 = phi i64 [ %i.cj, %.lr.ph192 ], [ 0, %bb.m ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i190
  %i.bv = load <4 x i32>, ptr %i.bu, align 1, !tbaa !9
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.bv, i32 range(i32 -232, 288) %i.br) ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i190
  %i.by = load <4 x i32>, ptr %i.bx, align 1, !tbaa !9
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.by, i32 range(i32 -232, 288) %i.bt)
  %i.ca = sub <4 x i32> %i.bw, %i.bz
  %i.cb = ashr <4 x i32> %i.bw, splat (i32 16)
  %i.cc = ashr <4 x i32> %i.ca, splat (i32 16)
  %.idx.i = shl nuw nsw i64 %.0.i190, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cb, <4 x i32> %i.cc)
  %i.cf = bitcast <8 x i16> %i.ce to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ch = bitcast <4 x i32> %i.cg to <8 x i16>
  %i.ci = shufflevector <8 x i16> %i.ch, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.ci, ptr %i.cd, align 1, !tbaa !9
  %i.cj = add nuw nsw i64 %.0.i190, 1             ; 2 uses
  %exitcond269.not = icmp eq i64 %i.cj, %i.bp
  br i1 %exitcond269.not, label %._crit_edge193, label %.lr.ph192, !llvm.loop !1777

._crit_edge193:                                   ; preds = %.lr.ph192, %bb.m
  %i.ck = and i64 %spec.select, 4294967292        ; 6 uses
  %.not237 = icmp eq i64 %i.ck, %spec.select
  br i1 %.not237, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %._crit_edge193
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.cl) ; 2 uses
  %i.cn = sub nsw i64 %i.cm, %i.ck                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check375, label %.lr.ph196.preheader540, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph196.preheader
  %i.co = and i64 %i.cm, 3                        ; 2 uses
  %n.vec377 = sub nuw nsw i64 %i.cn, %i.co        ; 2 uses
  %i.cp = add nsw i64 %i.ck, %n.vec377
  %broadcast.splatinsert378 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat379 = shufflevector <4 x i32> %broadcast.splatinsert378, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat381 = shufflevector <4 x i32> %broadcast.splatinsert380, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.ph376
  %index383 = phi i64 [ 0, %vector.ph376 ], [ %index.next387, %vector.body382 ] ; 2 uses
  %i.cq = add nuw i64 %i.ck, %index383            ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cq
  %wide.load384 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !8
  %i.cs = shl <4 x i32> %wide.load384, %broadcast.splat379 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cq
  %wide.load385 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !8
  %i.cu = shl <4 x i32> %wide.load385, %broadcast.splat381
  %i.cv = sub <4 x i32> %i.cs, %i.cu
  %i.cw = shl nuw nsw i64 %i.cq, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.cw
  %i.cy = shufflevector <4 x i32> %i.cs, <4 x i32> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cz = lshr <8 x i32> %i.cy, splat (i32 16)
  %interleaved.vec386 = trunc nuw <8 x i32> %i.cz to <8 x i16>
  store <8 x i16> %interleaved.vec386, ptr %i.cx, align 2, !tbaa !20
  %index.next387 = add nuw i64 %index383, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next387, %n.vec377
  br i1 %i.da, label %middle.block388, label %vector.body382, !llvm.loop !1778

middle.block388:                                  ; preds = %vector.body382
  %cmp.n389 = icmp eq i64 %i.co, 0
  br i1 %cmp.n389, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph196.preheader540

.lr.ph196.preheader540:                           ; preds = %.lr.ph196.preheader, %middle.block388
  %.1.i194.ph = phi i64 [ %i.ck, %.lr.ph196.preheader ], [ %i.cp, %middle.block388 ]
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196.preheader540, %.lr.ph196
  %.1.i194 = phi i64 [ %i.do, %.lr.ph196 ], [ %.1.i194.ph, %.lr.ph196.preheader540 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i194
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = shl i32 %i.dc, %i.br                    ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i194
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = shl i32 %i.df, %i.bt
  %i.dh = sub i32 %i.dd, %i.dg
  %i.di = lshr i32 %i.dd, 16
  %i.dj = lshr i32 %i.dh, 16
  %i.dk = trunc nuw i32 %i.di to i16
  %.idx127 = shl nuw nsw i64 %.1.i194, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx127 ; 2 uses
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !20
  %i.dm = trunc nuw i32 %i.dj to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !20
  %i.do = add nuw nsw i64 %.1.i194, 1             ; 2 uses
  %i.dp = icmp samesign ult i64 %i.do, %spec.select
  br i1 %i.dp, label %.lr.ph196, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1779

bb.n:                                             ; preds = %._crit_edge280, %bb.l
  %3 = phi i8 [ %.pre283, %._crit_edge280 ], [ %.pre284, %bb.l ]
  %4 = phi i8 [ %.pre281, %._crit_edge280 ], [ %.pre282, %bb.l ]
  %i.dq = lshr i64 %spec.select, 2                ; 2 uses
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %i.z, %5                       ; 3 uses
  %7 = zext i8 %3 to i32
  %8 = add nsw i32 %i.z, %7                       ; 3 uses
  %.not234 = icmp eq i64 %i.dq, 0
  br i1 %.not234, label %._crit_edge186, label %.lr.ph185.preheader

.lr.ph185.preheader:                              ; preds = %bb.n
  %9 = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.dr = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %8, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.lr.ph185
  %.0.i94183 = phi i64 [ %i.ef, %.lr.ph185 ], [ 0, %.lr.ph185.preheader ] ; 3 uses
  %i.ds = shl nuw nsw i64 %.0.i94183, 2           ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ds
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ds
  %.idx126 = shl nuw nsw i64 %.0.i94183, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx126
  %i.dw = load <4 x i32>, ptr %i.dt, align 4, !tbaa !8
  %i.dx = shl <4 x i32> %i.dw, %i.dr              ; 2 uses
  %i.dy = load <4 x i32>, ptr %i.du, align 4, !tbaa !8
  %i.dz = shl <4 x i32> %i.dy, %11
  %i.ea = sub <4 x i32> %i.dx, %i.dz
  %i.eb = shufflevector <4 x i32> %i.dx, <4 x i32> %i.ea, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 16)
  %i.ed = trunc nuw <8 x i32> %i.ec to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.ee, ptr %i.dv, align 2, !tbaa !20
  %i.ef = add nuw nsw i64 %.0.i94183, 1           ; 2 uses
  %exitcond268.not = icmp eq i64 %i.ef, %i.dq
  br i1 %exitcond268.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !1780

._crit_edge186:                                   ; preds = %.lr.ph185, %bb.n
  %i.eg = and i64 %spec.select, 4294967292        ; 6 uses
  %.not235 = icmp eq i64 %i.eg, %spec.select
  br i1 %.not235, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %._crit_edge186
  %i.eh = or disjoint i64 %i.eg, 1
  %i.ei = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.eh) ; 2 uses
  %i.ej = sub nsw i64 %i.ei, %i.eg                ; 2 uses
  %min.iters.check392 = icmp ult i64 %i.ej, 4
  br i1 %min.iters.check392, label %.lr.ph189.preheader542, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph189.preheader
  %i.ek = and i64 %i.ei, 3                        ; 2 uses
  %n.vec394 = sub nuw nsw i64 %i.ej, %i.ek        ; 2 uses
  %i.el = add nsw i64 %i.eg, %n.vec394
  %broadcast.splatinsert395 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat396 = shufflevector <4 x i32> %broadcast.splatinsert395, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert397 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat398 = shufflevector <4 x i32> %broadcast.splatinsert397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph393
  %index400 = phi i64 [ 0, %vector.ph393 ], [ %index.next404, %vector.body399 ] ; 2 uses
  %i.em = add nuw i64 %i.eg, %index400            ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.em
  %wide.load401 = load <4 x i32>, ptr %i.en, align 4, !tbaa !8
  %i.eo = shl <4 x i32> %wide.load401, %broadcast.splat396 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.em
  %wide.load402 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !8
  %i.eq = shl <4 x i32> %wide.load402, %broadcast.splat398
  %i.er = sub <4 x i32> %i.eo, %i.eq
  %i.es = shl nuw nsw i64 %i.em, 2
  %i.et = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.es
  %i.eu = shufflevector <4 x i32> %i.eo, <4 x i32> %i.er, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ev = lshr <8 x i32> %i.eu, splat (i32 16)
  %interleaved.vec403 = trunc nuw <8 x i32> %i.ev to <8 x i16>
  store <8 x i16> %interleaved.vec403, ptr %i.et, align 2, !tbaa !20
  %index.next404 = add nuw i64 %index400, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next404, %n.vec394
  br i1 %i.ew, label %middle.block405, label %vector.body399, !llvm.loop !1781

middle.block405:                                  ; preds = %vector.body399
  %cmp.n406 = icmp eq i64 %i.ek, 0
  br i1 %cmp.n406, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph189.preheader542

.lr.ph189.preheader542:                           ; preds = %.lr.ph189.preheader, %middle.block405
  %.1.i95187.ph = phi i64 [ %i.eg, %.lr.ph189.preheader ], [ %i.el, %middle.block405 ]
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader542, %.lr.ph189
  %.1.i95187 = phi i64 [ %i.fk, %.lr.ph189 ], [ %.1.i95187.ph, %.lr.ph189.preheader542 ] ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i95187
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = shl i32 %i.ey, %6                       ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i95187
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !8
  %i.fc = shl i32 %i.fb, %8
  %i.fd = sub i32 %i.ez, %i.fc
  %i.fe = lshr i32 %i.ez, 16
  %i.ff = lshr i32 %i.fd, 16
  %i.fg = trunc nuw i32 %i.fe to i16
  %.idx125 = shl nuw nsw i64 %.1.i95187, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx125 ; 2 uses
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !20
  %i.fi = trunc nuw i32 %i.ff to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !20
  %i.fk = add nuw nsw i64 %.1.i95187, 1           ; 2 uses
  %i.fl = icmp samesign ult i64 %i.fk, %spec.select
  br i1 %i.fl, label %.lr.ph189, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1782

bb.o:                                             ; preds = %bb.j
  br i1 %.b.i93, label %bb.p, label %._crit_edge276

._crit_edge276:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.ag, align 1, !tbaa !1740
  %.pre278 = load i8, ptr %i.ah, align 1, !tbaa !1740
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fm = load i8, ptr %i.w, align 1, !tbaa !1733
  %i.fn = icmp ult i8 %i.fm, 25
  %.pre277 = load i8, ptr %i.ag, align 1, !tbaa !1740 ; 2 uses
  %.pre279 = load i8, ptr %i.ah, align 1, !tbaa !1740 ; 2 uses
  br i1 %i.fn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fo = lshr i64 %spec.select, 2                ; 2 uses
  %i.fp = zext i8 %.pre277 to i32
  %i.fq = add nsw i32 %i.z, %i.fp                 ; 3 uses
  %i.fr = zext i8 %.pre279 to i32
  %i.fs = add nsw i32 %i.z, %i.fr                 ; 3 uses
  %.not232 = icmp eq i64 %i.fo, 0
  br i1 %.not232, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.q, %.lr.ph178
  %.0.i96176 = phi i64 [ %i.gi, %.lr.ph178 ], [ 0, %bb.q ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0.i96176
  %i.fu = load <4 x i32>, ptr %i.ft, align 1, !tbaa !9
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.fu, i32 range(i32 -232, 288) %i.fq)
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0.i96176
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !9
  %i.fy = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.fx, i32 range(i32 -232, 288) %i.fs) ; 2 uses
  %i.fz = add <4 x i32> %i.fy, %i.fv
  %i.ga = ashr <4 x i32> %i.fz, splat (i32 16)
  %i.gb = ashr <4 x i32> %i.fy, splat (i32 16)
  %.idx.i98 = shl nuw nsw i64 %.0.i96176, 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx.i98
  %i.gd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ga, <4 x i32> %i.gb)
  %i.ge = bitcast <8 x i16> %i.gd to <4 x i32>
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gg = bitcast <4 x i32> %i.gf to <8 x i16>
  %i.gh = shufflevector <8 x i16> %i.gg, <8 x i16> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  store <8 x i16> %i.gh, ptr %i.gc, align 1, !tbaa !9
  %i.gi = add nuw nsw i64 %.0.i96176, 1           ; 2 uses
  %exitcond267.not = icmp eq i64 %i.gi, %i.fo
  br i1 %exitcond267.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !1783

._crit_edge179:                                   ; preds = %.lr.ph178, %bb.q
  %i.gj = and i64 %spec.select, 4294967292        ; 6 uses
  %.not233 = icmp eq i64 %i.gj, %spec.select
  br i1 %.not233, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %._crit_edge179
  %i.gk = or disjoint i64 %i.gj, 1
  %i.gl = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.gk) ; 2 uses
  %i.gm = sub nsw i64 %i.gl, %i.gj                ; 2 uses
  %min.iters.check409 = icmp ult i64 %i.gm, 4
  br i1 %min.iters.check409, label %.lr.ph182.preheader544, label %vector.ph410

vector.ph410:                                     ; preds = %.lr.ph182.preheader
  %i.gn = and i64 %i.gl, 3                        ; 2 uses
  %n.vec411 = sub nuw nsw i64 %i.gm, %i.gn        ; 2 uses
  %i.go = add nsw i64 %i.gj, %n.vec411
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.fq, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert414 = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %broadcast.splat415 = shufflevector <4 x i32> %broadcast.splatinsert414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next421, %vector.body416 ] ; 2 uses
  %i.gp = add nuw i64 %i.gj, %index417            ; 3 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.gp
  %wide.load418 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !8
  %i.gr = shl <4 x i32> %wide.load418, %broadcast.splat413
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gp
  %wide.load419 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !8
  %i.gt = shl <4 x i32> %wide.load419, %broadcast.splat415 ; 2 uses
  %i.gu = add <4 x i32> %i.gt, %i.gr
  %i.gv = shl nuw nsw i64 %i.gp, 2
  %i.gw = getelementptr inbounds nuw i8, ptr %.081217, i64 %i.gv
  %i.gx = shufflevector <4 x i32> %i.gu, <4 x i32> %i.gt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gy = lshr <8 x i32> %i.gx, splat (i32 16)
  %interleaved.vec420 = trunc nuw <8 x i32> %i.gy to <8 x i16>
  store <8 x i16> %interleaved.vec420, ptr %i.gw, align 2, !tbaa !20
  %index.next421 = add nuw i64 %index417, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next421, %n.vec411
  br i1 %i.gz, label %middle.block422, label %vector.body416, !llvm.loop !1784

middle.block422:                                  ; preds = %vector.body416
  %cmp.n423 = icmp eq i64 %i.gn, 0
  br i1 %cmp.n423, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph182.preheader544

.lr.ph182.preheader544:                           ; preds = %.lr.ph182.preheader, %middle.block422
  %.1.i97180.ph = phi i64 [ %i.gj, %.lr.ph182.preheader ], [ %i.go, %middle.block422 ]
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader544, %.lr.ph182
  %.1.i97180 = phi i64 [ %i.hn, %.lr.ph182 ], [ %.1.i97180.ph, %.lr.ph182.preheader544 ] ; 4 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.1.i97180
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hc = shl i32 %i.hb, %i.fq
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.1.i97180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !8
  %i.hf = shl i32 %i.he, %i.fs                    ; 2 uses
  %i.hg = add i32 %i.hf, %i.hc
  %i.hh = lshr i32 %i.hg, 16
  %i.hi = lshr i32 %i.hf, 16
  %i.hj = trunc nuw i32 %i.hh to i16
  %.idx124 = shl nuw nsw i64 %.1.i97180, 2
  %i.hk = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx124 ; 2 uses
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !20
  %i.hl = trunc nuw i32 %i.hi to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !20
  %i.hn = add nuw nsw i64 %.1.i97180, 1           ; 2 uses
  %i.ho = icmp samesign ult i64 %i.hn, %spec.select
  br i1 %i.ho, label %.lr.ph182, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, !llvm.loop !1785

bb.r:                                             ; preds = %._crit_edge276, %bb.p
  %i.hp = phi i8 [ %.pre278, %._crit_edge276 ], [ %.pre279, %bb.p ]
  %i.hq = phi i8 [ %.pre, %._crit_edge276 ], [ %.pre277, %bb.p ]
  %i.hr = lshr i64 %spec.select, 2                ; 2 uses
  %i.hs = zext i8 %i.hq to i32
  %i.ht = add nsw i32 %i.z, %i.hs                 ; 3 uses
  %i.hu = zext i8 %i.hp to i32
  %i.hv = add nsw i32 %i.z, %i.hu                 ; 3 uses
  %.not230 = icmp eq i64 %i.hr, 0
  br i1 %.not230, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.r
  %i.hw = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %i.hx = shufflevector <4 x i32> %i.hw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hy = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %i.hz = shufflevector <4 x i32> %i.hy, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.0.i99169 = phi i64 [ %i.in, %.lr.ph171 ], [ 0, %.lr.ph171.preheader ] ; 3 uses
  %i.ia = shl nuw nsw i64 %.0.i99169, 2           ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ia
  %.idx123 = shl nuw nsw i64 %.0.i99169, 4
  %i.id = getelementptr inbounds nuw i8, ptr %.081217, i64 %.idx123
  %i.ie = load <4 x i32>, ptr %i.ib, align 4, !tbaa !8
  %i.if = shl <4 x i32> %i.ie, %i.hx
  %i.ig = load <4 x i32>, ptr %i.ic, align 4, !tbaa !8
  %i.ih = shl <4 x i32> %i.ig, %i.hz              ; 2 uses
  %i.ii = add <4 x i32> %i.ih, %i.if
  %i.ij = shufflevector <4 x i32> %i.ii, <4 x i32> %i.ih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ik = lshr <8 x i32> %i.ij, splat (i32 16)
  %i.il = trunc nuw <8 x i32> %i.ik to <8 x i16>
  %i.im = shufflevector <8 x i16> %i.il, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.im, ptr %i.id, align 2, !tbaa !20
  %i.in = add nuw nsw i64 %.0.i99169, 1           ; 2 uses
  %exitcond266.not = icmp eq i64 %i.in, %i.hr
  br i1 %exitcond266.not, label %._crit_edge172, label %.lr.ph171, !llvm.loop !1786

._crit_edge172:                                   ; preds = %.lr.ph171, %bb.r
  %i.io = and i64 %spec.select, 4294967292        ; 6 uses
  %.not231 = icmp eq i64 %i.io, %spec.select
  br i1 %.not231, label %ma_dr_flac_read_pcm_frames_s16__decode_left_side.exit, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %._crit_edge172
  %i.ip = or disjoint i64 %i.io, 1
  %i.iq = tail call i64 @llvm.umax.i64(i64 %spec.select, i64 %i.ip) ; 2 uses
  %i.ir = sub nsw i64 %i.iq, %i.io                ; 2 uses
  %min.iters.check426 = icmp ult i64 %i.ir, 4
  br i1 %min.iters.check426, label %.lr.ph175.preheader546, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph175.preheader
  %i.is = and i64 %i.iq, 3                        ; 2 uses
  %n.vec428 = sub nuw nsw i64 %i.ir, %i.is        ; 2 uses
  %i.it = add nsw i64 %i.io, %n.vec428
  %broadcast.splatinsert429 = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat430 = shufflevector <4 x i32> %broadcast.splatinsert429, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat432 = shufflevector <4 x i32> %broadcast.splatinsert431, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph427
  %index434 = phi i64 [ 0, %vector.ph427 ], [ %index.next438, %vector.body433 ] ; 2 uses
  %i.iu = add nuw i64 %i.io, %index434            ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.iu
  %wide.load435 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !8
  %i.iw = shl <4 x i32> %wide.load435, %broadcast.splat430
end_hunk_4
