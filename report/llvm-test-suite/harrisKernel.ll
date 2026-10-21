Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/harrisKernel?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z12harrisKerneliiPA2052_fPA2048_fPA2050_fS4_S4_S4_S4_S2_S2_S2_S2_S2_:bb.a
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next400
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !61 ; 2 uses
  %i.hk = fmul fast float %i.hj, %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next400
  store float %i.hk, ptr %i.hl, align 4, !tbaa !61
  %indvars.iv.next400.1 = add nuw nsw i64 %indvars.iv399, 2 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next400.1
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !61 ; 2 uses
  %i.ho = fmul fast float %i.hn, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next400.1
  store float %i.ho, ptr %i.hp, align 4, !tbaa !61
  %indvars.iv.next400.2 = add nuw nsw i64 %indvars.iv399, 3 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.next400.2
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !61 ; 2 uses
  %i.hs = fmul fast float %i.hr, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next400.2
  store float %i.hs, ptr %i.ht, align 4, !tbaa !61
  %indvars.iv.next400.3 = add nuw nsw i64 %indvars.iv399, 4 ; 2 uses
  %exitcond403.3 = icmp eq i64 %indvars.iv.next400.3, %wide.trip.count402
  br i1 %exitcond403.3, label %._crit_edge330, label %scalar.ph560, !llvm.loop !31

.preheader307:                                    ; preds = %.preheader307.preheader, %._crit_edge333
  %indvars.iv415 = phi i64 [ 0, %.preheader307.preheader ], [ %indvars.iv.next416, %._crit_edge333 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [8200 x i8], ptr %8, i64 %indvars.iv415 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8200 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16400 ; 5 uses
  %i.hx = getelementptr inbounds nuw [8192 x i8], ptr %11, i64 %indvars.iv415 ; 2 uses
  %brmerge725 = select i1 %min.iters.check580, i1 true, i1 %found.conflict578
  br i1 %brmerge725, label %scalar.ph579.preheader, label %vector.body583

vector.body583:                                   ; preds = %.preheader307, %vector.body583
  %index584 = phi i64 [ %index.next593, %vector.body583 ], [ 0, %.preheader307 ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %index584
  %wide.load585 = load <4 x float>, ptr %i.hy, align 4, !tbaa !61, !alias.scope !70
  %i.hz = or disjoint i64 %index584, 1            ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hz
  %wide.load586 = load <4 x float>, ptr %i.ia, align 4, !tbaa !61, !alias.scope !70
  %i.ib = or disjoint i64 %index584, 2            ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ib
  %wide.load587 = load <4 x float>, ptr %i.ic, align 4, !tbaa !61, !alias.scope !70
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hz
  %wide.load588 = load <4 x float>, ptr %i.id, align 4, !tbaa !61, !alias.scope !70
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ib
  %wide.load589 = load <4 x float>, ptr %i.ie, align 4, !tbaa !61, !alias.scope !70
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index584
  %wide.load590 = load <4 x float>, ptr %i.if, align 4, !tbaa !61, !alias.scope !70
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hz
  %wide.load591 = load <4 x float>, ptr %i.ig, align 4, !tbaa !61, !alias.scope !70
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ib
  %wide.load592 = load <4 x float>, ptr %i.ih, align 4, !tbaa !61, !alias.scope !70
  %i.ii = fmul fast <4 x float> %wide.load585, splat (float 2.000000e+00)
  %i.ij = fadd fast <4 x float> %i.ii, %wide.load586
  %i.ik = fadd fast <4 x float> %i.ij, %wide.load587
  %i.il = fadd fast <4 x float> %i.ik, %wide.load588
  %i.im = fadd fast <4 x float> %i.il, %wide.load589
  %i.in = fadd fast <4 x float> %i.im, %wide.load590
  %i.io = fadd fast <4 x float> %i.in, %wide.load591
  %i.ip = fadd fast <4 x float> %i.io, %wide.load592
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index584
  store <4 x float> %i.ip, ptr %i.iq, align 4, !tbaa !61, !alias.scope !71, !noalias !70
  %index.next593 = add nuw i64 %index584, 4       ; 2 uses
  %i.ir = icmp eq i64 %index.next593, %n.vec582
  br i1 %i.ir, label %middle.block594, label %vector.body583, !llvm.loop !35

middle.block594:                                  ; preds = %vector.body583
  br i1 %cmp.n595, label %._crit_edge333, label %scalar.ph579.preheader

scalar.ph579.preheader:                           ; preds = %.preheader307, %middle.block594
  %indvars.iv410.ph = phi i64 [ %n.vec582, %middle.block594 ], [ 0, %.preheader307 ]
  br label %scalar.ph579

.preheader305.preheader:                          ; preds = %._crit_edge333
  %wide.trip.count428 = zext nneg i32 %0 to i64
  %wide.trip.count423 = zext nneg i32 %1 to i64
  %i.is = shl nuw nsw i64 %wide.trip.count418, 13
  %i.it = shl nuw nsw i64 %wide.trip.count413, 2  ; 2 uses
  %i.iu = getelementptr i8, ptr %10, i64 %i.is
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.it
  %scevgep598 = getelementptr i8, ptr %i.iv, i64 -8192
  %i.iw = mul nuw nsw i64 %wide.trip.count418, 8200
  %i.ix = getelementptr i8, ptr %7, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 %i.it
  %scevgep599 = getelementptr i8, ptr %i.iy, i64 8208
  %min.iters.check604 = icmp ult i32 %1, 4
  %bound0600 = icmp ult ptr %10, %scevgep599
  %bound1601 = icmp ult ptr %7, %scevgep598
  %found.conflict602 = and i1 %bound0600, %bound1601
  %n.vec606 = and i64 %wide.trip.count413, 2147483644 ; 3 uses
  %cmp.n620 = icmp eq i64 %n.vec606, %wide.trip.count413
  br label %.preheader305

._crit_edge333:                                   ; preds = %scalar.ph579, %middle.block594
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next416, %wide.trip.count418
  br i1 %exitcond419.not, label %.preheader305.preheader, label %.preheader307, !llvm.loop !36

scalar.ph579:                                     ; preds = %scalar.ph579.preheader, %scalar.ph579
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %scalar.ph579 ], [ %indvars.iv410.ph, %scalar.ph579.preheader ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv410
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv.next411
  %i.jb = add nuw nsw i64 %indvars.iv410, 2       ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv410
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jb
  %i.jf = load <2 x float>, ptr %i.ja, align 4, !tbaa !61
  %i.jg = load <2 x float>, ptr %i.iz, align 4, !tbaa !61 ; 2 uses
  %i.jh = load float, ptr %i.jc, align 4, !tbaa !61
  %i.ji = load <2 x float>, ptr %i.jd, align 4, !tbaa !61
  %i.jj = load float, ptr %i.je, align 4, !tbaa !61
  %i.jk = shufflevector <2 x float> %i.jf, <2 x float> %i.jg, <8 x i32> <i32 0, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jl = shufflevector <2 x float> %i.ji, <2 x float> %i.jg, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2>
  %i.jm = shufflevector <8 x float> %i.jk, <8 x float> %i.jl, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 poison, i32 15>
  %i.jn = insertelement <8 x float> %i.jm, float %i.jh, i64 3
  %i.jo = insertelement <8 x float> %i.jn, float %i.jj, i64 6
  %i.jp = fmul reassoc arcp contract afn <8 x float> %i.jo, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %i.jq = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.jp)
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv410
  store float %i.jq, ptr %i.jr, align 4, !tbaa !61
  %exitcond414.not = icmp eq i64 %indvars.iv.next411, %wide.trip.count413
  br i1 %exitcond414.not, label %._crit_edge333, label %scalar.ph579, !llvm.loop !37

.preheader305:                                    ; preds = %.preheader305.preheader, %._crit_edge336
  %indvars.iv425 = phi i64 [ 0, %.preheader305.preheader ], [ %indvars.iv.next426, %._crit_edge336 ] ; 3 uses
  %i.js = getelementptr inbounds nuw [8200 x i8], ptr %7, i64 %indvars.iv425 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8200 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16400 ; 5 uses
  %i.jv = getelementptr inbounds nuw [8192 x i8], ptr %10, i64 %indvars.iv425 ; 2 uses
  %brmerge726 = select i1 %min.iters.check604, i1 true, i1 %found.conflict602
  br i1 %brmerge726, label %scalar.ph603.preheader, label %vector.body607

vector.body607:                                   ; preds = %.preheader305, %vector.body607
  %index608 = phi i64 [ %index.next618, %vector.body607 ], [ 0, %.preheader305 ] ; 7 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index608
  %wide.load609 = load <4 x float>, ptr %i.jw, align 4, !tbaa !61, !alias.scope !72
  %i.jx = or disjoint i64 %index608, 1            ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jx
  %wide.load610 = load <4 x float>, ptr %i.jy, align 4, !tbaa !61, !alias.scope !72
  %i.jz = fadd fast <4 x float> %wide.load610, %wide.load609
  %i.ka = or disjoint i64 %index608, 2            ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ka
  %wide.load611 = load <4 x float>, ptr %i.kb, align 4, !tbaa !61, !alias.scope !72
  %i.kc = fadd fast <4 x float> %i.jz, %wide.load611
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %index608
  %wide.load612 = load <4 x float>, ptr %i.kd, align 4, !tbaa !61, !alias.scope !72
  %i.ke = fadd fast <4 x float> %i.kc, %wide.load612
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jx
  %wide.load613 = load <4 x float>, ptr %i.kf, align 4, !tbaa !61, !alias.scope !72
  %i.kg = fadd fast <4 x float> %i.ke, %wide.load613
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ka
  %wide.load614 = load <4 x float>, ptr %i.kh, align 4, !tbaa !61, !alias.scope !72
  %i.ki = fadd fast <4 x float> %i.kg, %wide.load614
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %index608
  %wide.load615 = load <4 x float>, ptr %i.kj, align 4, !tbaa !61, !alias.scope !72
  %i.kk = fadd fast <4 x float> %i.ki, %wide.load615
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jx
  %wide.load616 = load <4 x float>, ptr %i.kl, align 4, !tbaa !61, !alias.scope !72
  %i.km = fadd fast <4 x float> %i.kk, %wide.load616
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ka
  %wide.load617 = load <4 x float>, ptr %i.kn, align 4, !tbaa !61, !alias.scope !72
  %i.ko = fadd fast <4 x float> %i.km, %wide.load617
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %index608
  store <4 x float> %i.ko, ptr %i.kp, align 4, !tbaa !61, !alias.scope !73, !noalias !72
  %index.next618 = add nuw i64 %index608, 4       ; 2 uses
  %i.kq = icmp eq i64 %index.next618, %n.vec606
  br i1 %i.kq, label %middle.block619, label %vector.body607, !llvm.loop !41

middle.block619:                                  ; preds = %vector.body607
  br i1 %cmp.n620, label %._crit_edge336, label %scalar.ph603.preheader

scalar.ph603.preheader:                           ; preds = %.preheader305, %middle.block619
  %indvars.iv420.ph = phi i64 [ %n.vec606, %middle.block619 ], [ 0, %.preheader305 ]
  br label %scalar.ph603

.preheader303.preheader:                          ; preds = %._crit_edge336
  %wide.trip.count438 = zext nneg i32 %0 to i64
  %wide.trip.count433 = zext nneg i32 %1 to i64
  %i.kr = shl nuw nsw i64 %wide.trip.count418, 13
  %i.ks = shl nuw nsw i64 %wide.trip.count413, 2  ; 2 uses
  %i.kt = getelementptr i8, ptr %9, i64 %i.kr
  %i.ku = getelementptr i8, ptr %i.kt, i64 %i.ks
  %scevgep623 = getelementptr i8, ptr %i.ku, i64 -8192
  %i.kv = mul nuw nsw i64 %wide.trip.count418, 8200
  %i.kw = getelementptr i8, ptr %6, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.ks
  %scevgep624 = getelementptr i8, ptr %i.kx, i64 8208
  %min.iters.check629 = icmp ult i32 %1, 4
  %bound0625 = icmp ult ptr %9, %scevgep624
  %bound1626 = icmp ult ptr %6, %scevgep623
  %found.conflict627 = and i1 %bound0625, %bound1626
  %n.vec631 = and i64 %wide.trip.count413, 2147483644 ; 3 uses
  %cmp.n645 = icmp eq i64 %n.vec631, %wide.trip.count413
  br label %.preheader303

._crit_edge336:                                   ; preds = %scalar.ph603, %middle.block619
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %.preheader303.preheader, label %.preheader305, !llvm.loop !42

scalar.ph603:                                     ; preds = %scalar.ph603.preheader, %scalar.ph603
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %scalar.ph603 ], [ %indvars.iv420.ph, %scalar.ph603.preheader ] ; 6 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv420
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 3 uses
  %i.kz = add nuw nsw i64 %indvars.iv420, 2       ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kz
  %14 = load float, ptr %i.la, align 4, !tbaa !61
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv420
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !61
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.next421
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv420
  %15 = load <2 x float>, ptr %i.ky, align 4, !tbaa !61
  %i.lf = load <2 x float>, ptr %i.ld, align 4, !tbaa !61
  %i.lg = load <2 x float>, ptr %i.le, align 4, !tbaa !61
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.kz
  %16 = load float, ptr %i.lh, align 4, !tbaa !61
  %17 = insertelement <8 x float> poison, float %14, i64 2
  %18 = insertelement <8 x float> %17, float %i.lc, i64 3
  %19 = shufflevector <2 x float> %15, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x float> %19, <8 x float> %18, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x float> %i.lf, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <8 x float> %20, <8 x float> %21, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %23 = shufflevector <2 x float> %i.lg, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <8 x float> %22, <8 x float> %23, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %op.rdx707 = tail call fast float @llvm.vector.reduce.fadd.v8f32(float %16, <8 x float> %24)
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %indvars.iv420
  store float %op.rdx707, ptr %i.li, align 4, !tbaa !61
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %._crit_edge336, label %scalar.ph603, !llvm.loop !43

.preheader303:                                    ; preds = %.preheader303.preheader, %._crit_edge339
  %indvars.iv435 = phi i64 [ 0, %.preheader303.preheader ], [ %indvars.iv.next436, %._crit_edge339 ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [8200 x i8], ptr %6, i64 %indvars.iv435 ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8200 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16400 ; 5 uses
  %i.lm = getelementptr inbounds nuw [8192 x i8], ptr %9, i64 %indvars.iv435 ; 2 uses
  %brmerge727 = select i1 %min.iters.check629, i1 true, i1 %found.conflict627
  br i1 %brmerge727, label %scalar.ph628.preheader, label %vector.body632

vector.body632:                                   ; preds = %.preheader303, %vector.body632
  %index633 = phi i64 [ %index.next643, %vector.body632 ], [ 0, %.preheader303 ] ; 7 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %index633
  %wide.load634 = load <4 x float>, ptr %i.ln, align 4, !tbaa !61, !alias.scope !74
  %i.lo = or disjoint i64 %index633, 1            ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lo
  %wide.load635 = load <4 x float>, ptr %i.lp, align 4, !tbaa !61, !alias.scope !74
  %i.lq = fadd fast <4 x float> %wide.load635, %wide.load634
  %i.lr = or disjoint i64 %index633, 2            ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lr
  %wide.load636 = load <4 x float>, ptr %i.ls, align 4, !tbaa !61, !alias.scope !74
  %i.lt = fadd fast <4 x float> %i.lq, %wide.load636
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %index633
  %wide.load637 = load <4 x float>, ptr %i.lu, align 4, !tbaa !61, !alias.scope !74
  %i.lv = fadd fast <4 x float> %i.lt, %wide.load637
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lo
  %wide.load638 = load <4 x float>, ptr %i.lw, align 4, !tbaa !61, !alias.scope !74
  %i.lx = fadd fast <4 x float> %i.lv, %wide.load638
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lr
  %wide.load639 = load <4 x float>, ptr %i.ly, align 4, !tbaa !61, !alias.scope !74
  %i.lz = fadd fast <4 x float> %i.lx, %wide.load639
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index633
  %wide.load640 = load <4 x float>, ptr %i.ma, align 4, !tbaa !61, !alias.scope !74
  %i.mb = fadd fast <4 x float> %i.lz, %wide.load640
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lo
  %wide.load641 = load <4 x float>, ptr %i.mc, align 4, !tbaa !61, !alias.scope !74
  %i.md = fadd fast <4 x float> %i.mb, %wide.load641
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lr
  %wide.load642 = load <4 x float>, ptr %i.me, align 4, !tbaa !61, !alias.scope !74
  %i.mf = fadd fast <4 x float> %i.md, %wide.load642
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index633
  store <4 x float> %i.mf, ptr %i.mg, align 4, !tbaa !61, !alias.scope !75, !noalias !74
  %index.next643 = add nuw i64 %index633, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next643, %n.vec631
  br i1 %i.mh, label %middle.block644, label %vector.body632, !llvm.loop !47

middle.block644:                                  ; preds = %vector.body632
  br i1 %cmp.n645, label %._crit_edge339, label %scalar.ph628.preheader

scalar.ph628.preheader:                           ; preds = %.preheader303, %middle.block644
  %indvars.iv430.ph = phi i64 [ %n.vec631, %middle.block644 ], [ 0, %.preheader303 ]
  br label %scalar.ph628

.preheader301.preheader:                          ; preds = %._crit_edge339
  %wide.trip.count448 = zext nneg i32 %0 to i64
  %wide.trip.count443 = zext nneg i32 %1 to i64
  %min.iters.check652 = icmp ult i32 %1, 8
  %i.mi = sub i64 %i.e, %i.f
  %diff.check648 = icmp ugt i64 %i.mi, -32
  %i.mj = sub i64 %i.d, %i.f
  %diff.check649 = icmp ugt i64 %i.mj, -32
  %conflict.rdx650 = or i1 %diff.check648, %diff.check649
  %n.vec654 = and i64 %wide.trip.count413, 2147483640 ; 3 uses
  %cmp.n663 = icmp eq i64 %n.vec654, %wide.trip.count413
  %xtraiter714 = and i64 %wide.trip.count413, 3   ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br label %.preheader301

._crit_edge339:                                   ; preds = %scalar.ph628, %middle.block644
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count438
  br i1 %exitcond439.not, label %.preheader301.preheader, label %.preheader303, !llvm.loop !48

scalar.ph628:                                     ; preds = %scalar.ph628.preheader, %scalar.ph628
  %indvars.iv430 = phi i64 [ %indvars.iv.next431, %scalar.ph628 ], [ %indvars.iv430.ph, %scalar.ph628.preheader ] ; 6 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv430
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 3 uses
  %i.ml = add nuw nsw i64 %indvars.iv430, 2       ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.ml
  %25 = load float, ptr %i.mm, align 4, !tbaa !61
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv430
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !61
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv.next431
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv430
  %26 = load <2 x float>, ptr %i.mk, align 4, !tbaa !61
  %i.mr = load <2 x float>, ptr %i.mp, align 4, !tbaa !61
  %i.ms = load <2 x float>, ptr %i.mq, align 4, !tbaa !61
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.ml
  %27 = load float, ptr %i.mt, align 4, !tbaa !61
  %28 = insertelement <8 x float> poison, float %25, i64 2
  %29 = insertelement <8 x float> %28, float %i.mo, i64 3
  %30 = shufflevector <2 x float> %26, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = shufflevector <8 x float> %30, <8 x float> %29, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <2 x float> %i.mr, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %33 = shufflevector <8 x float> %31, <8 x float> %32, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %34 = shufflevector <2 x float> %i.ms, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = shufflevector <8 x float> %33, <8 x float> %34, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %op.rdx = tail call fast float @llvm.vector.reduce.fadd.v8f32(float %27, <8 x float> %35)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv430
  store float %op.rdx, ptr %i.mu, align 4, !tbaa !61
  %exitcond434.not = icmp eq i64 %indvars.iv.next431, %wide.trip.count433
  br i1 %exitcond434.not, label %._crit_edge339, label %scalar.ph628, !llvm.loop !49

.preheader301:                                    ; preds = %.preheader301.preheader, %._crit_edge342
  %indvars.iv445 = phi i64 [ 0, %.preheader301.preheader ], [ %indvars.iv.next446, %._crit_edge342 ] ; 4 uses
  %i.mv = getelementptr inbounds nuw [8192 x i8], ptr %9, i64 %indvars.iv445 ; 6 uses
  %i.mw = getelementptr inbounds nuw [8192 x i8], ptr %11, i64 %indvars.iv445 ; 6 uses
  %i.mx = getelementptr inbounds nuw [8192 x i8], ptr %13, i64 %indvars.iv445 ; 6 uses
  %brmerge728 = or i1 %min.iters.check652, %conflict.rdx650
  br i1 %brmerge728, label %scalar.ph651.preheader, label %vector.body655

vector.body655:                                   ; preds = %.preheader301, %vector.body655
  %index656 = phi i64 [ %index.next661, %vector.body655 ], [ 0, %.preheader301 ] ; 4 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %index656 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %wide.load657 = load <4 x float>, ptr %i.my, align 4, !tbaa !61
  %wide.load658 = load <4 x float>, ptr %i.mz, align 4, !tbaa !61
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %index656 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %wide.load659 = load <4 x float>, ptr %i.na, align 4, !tbaa !61
  %wide.load660 = load <4 x float>, ptr %i.nb, align 4, !tbaa !61
  %i.nc = fadd fast <4 x float> %wide.load659, %wide.load657
  %i.nd = fadd fast <4 x float> %wide.load660, %wide.load658
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %index656 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <4 x float> %i.nc, ptr %i.ne, align 4, !tbaa !61
  store <4 x float> %i.nd, ptr %i.nf, align 4, !tbaa !61
  %index.next661 = add nuw i64 %index656, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next661, %n.vec654
  br i1 %i.ng, label %middle.block662, label %vector.body655, !llvm.loop !50

middle.block662:                                  ; preds = %vector.body655
  br i1 %cmp.n663, label %._crit_edge342, label %scalar.ph651.preheader

scalar.ph651.preheader:                           ; preds = %.preheader301, %middle.block662
  %indvars.iv440.ph = phi i64 [ %n.vec654, %middle.block662 ], [ 0, %.preheader301 ] ; 3 uses
  br i1 %lcmp.mod715.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol

scalar.ph651.prol:                                ; preds = %scalar.ph651.preheader, %scalar.ph651.prol
  %indvars.iv440.prol = phi i64 [ %indvars.iv.next441.prol, %scalar.ph651.prol ], [ %indvars.iv440.ph, %scalar.ph651.preheader ] ; 4 uses
  %prol.iter716 = phi i64 [ %prol.iter716.next, %scalar.ph651.prol ], [ 0, %scalar.ph651.preheader ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv440.prol
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !61
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv440.prol
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !61
  %i.nl = fadd fast float %i.nk, %i.ni
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv440.prol
  store float %i.nl, ptr %i.nm, align 4, !tbaa !61
  %indvars.iv.next441.prol = add nuw nsw i64 %indvars.iv440.prol, 1 ; 2 uses
  %prol.iter716.next = add i64 %prol.iter716, 1   ; 2 uses
  %prol.iter716.cmp.not = icmp eq i64 %prol.iter716.next, %xtraiter714
  br i1 %prol.iter716.cmp.not, label %scalar.ph651.prol.loopexit, label %scalar.ph651.prol, !llvm.loop !51

scalar.ph651.prol.loopexit:                       ; preds = %scalar.ph651.prol, %scalar.ph651.preheader
  %indvars.iv440.unr = phi i64 [ %indvars.iv440.ph, %scalar.ph651.preheader ], [ %indvars.iv.next441.prol, %scalar.ph651.prol ]
  %i.nn = sub nsw i64 %indvars.iv440.ph, %wide.trip.count413
  %i.no = icmp ugt i64 %i.nn, -4
  br i1 %i.no, label %._crit_edge342, label %scalar.ph651

.preheader299.preheader:                          ; preds = %._crit_edge342
  %wide.trip.count458 = zext nneg i32 %0 to i64
  %wide.trip.count453 = zext nneg i32 %1 to i64
  %min.iters.check672 = icmp ult i32 %1, 8
  %i.np = sub i64 %i.e, %i.c
  %diff.check666 = icmp ugt i64 %i.np, -32
  %i.nq = sub i64 %i.d, %i.c
  %diff.check667 = icmp ugt i64 %i.nq, -32
  %conflict.rdx668 = or i1 %diff.check666, %diff.check667
  %i.nr = sub i64 %i.b, %i.c
  %diff.check669 = icmp ugt i64 %i.nr, -32
  %conflict.rdx670 = or i1 %conflict.rdx668, %diff.check669
  %n.vec674 = and i64 %wide.trip.count413, 2147483640 ; 3 uses
  %cmp.n685 = icmp eq i64 %n.vec674, %wide.trip.count413
  %xtraiter717 = and i64 %wide.trip.count413, 1
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  %i.ns = add nsw i64 %wide.trip.count413, -1
  br label %.preheader299

._crit_edge342:                                   ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651, %middle.block662
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count448
  br i1 %exitcond449.not, label %.preheader299.preheader, label %.preheader301, !llvm.loop !52

scalar.ph651:                                     ; preds = %scalar.ph651.prol.loopexit, %scalar.ph651
  %indvars.iv440 = phi i64 [ %indvars.iv.next441.3, %scalar.ph651 ], [ %indvars.iv440.unr, %scalar.ph651.prol.loopexit ] ; 7 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv440
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !61
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv440
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !61
  %i.nx = fadd fast float %i.nw, %i.nu
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv440
  store float %i.nx, ptr %i.ny, align 4, !tbaa !61
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next441
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !61
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next441
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61
  %i.od = fadd fast float %i.oc, %i.oa
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next441
  store float %i.od, ptr %i.oe, align 4, !tbaa !61
  %indvars.iv.next441.1 = add nuw nsw i64 %indvars.iv440, 2 ; 3 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next441.1
  %i.og = load float, ptr %i.of, align 4, !tbaa !61
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next441.1
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !61
  %i.oj = fadd fast float %i.oi, %i.og
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next441.1
  store float %i.oj, ptr %i.ok, align 4, !tbaa !61
  %indvars.iv.next441.2 = add nuw nsw i64 %indvars.iv440, 3 ; 3 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %indvars.iv.next441.2
  %i.om = load float, ptr %i.ol, align 4, !tbaa !61
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv.next441.2
  %i.oo = load float, ptr %i.on, align 4, !tbaa !61
  %i.op = fadd fast float %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next441.2
  store float %i.op, ptr %i.oq, align 4, !tbaa !61
  %indvars.iv.next441.3 = add nuw nsw i64 %indvars.iv440, 4 ; 2 uses
  %exitcond444.not.3 = icmp eq i64 %indvars.iv.next441.3, %wide.trip.count443
  br i1 %exitcond444.not.3, label %._crit_edge342, label %scalar.ph651, !llvm.loop !53

.preheader299:                                    ; preds = %.preheader299.preheader, %._crit_edge345
  %indvars.iv455 = phi i64 [ 0, %.preheader299.preheader ], [ %indvars.iv.next456, %._crit_edge345 ] ; 5 uses
  %i.or = getelementptr inbounds nuw [8192 x i8], ptr %9, i64 %indvars.iv455 ; 4 uses
  %i.os = getelementptr inbounds nuw [8192 x i8], ptr %11, i64 %indvars.iv455 ; 4 uses
  %i.ot = getelementptr inbounds nuw [8192 x i8], ptr %10, i64 %indvars.iv455 ; 4 uses
  %i.ou = getelementptr inbounds nuw [8192 x i8], ptr %12, i64 %indvars.iv455 ; 4 uses
  %brmerge729 = or i1 %min.iters.check672, %conflict.rdx670
  br i1 %brmerge729, label %scalar.ph671.preheader, label %vector.body675

vector.body675:                                   ; preds = %.preheader299, %vector.body675
  %index676 = phi i64 [ %index.next683, %vector.body675 ], [ 0, %.preheader299 ] ; 5 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %index676 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %wide.load677 = load <4 x float>, ptr %i.ov, align 4, !tbaa !61
  %wide.load678 = load <4 x float>, ptr %i.ow, align 4, !tbaa !61
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %index676 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load679 = load <4 x float>, ptr %i.ox, align 4, !tbaa !61
  %wide.load680 = load <4 x float>, ptr %i.oy, align 4, !tbaa !61
  %i.oz = fmul fast <4 x float> %wide.load679, %wide.load677
  %i.pa = fmul fast <4 x float> %wide.load680, %wide.load678
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %index676 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load681 = load <4 x float>, ptr %i.pb, align 4, !tbaa !61 ; 2 uses
  %wide.load682 = load <4 x float>, ptr %i.pc, align 4, !tbaa !61 ; 2 uses
  %i.pd = fmul fast <4 x float> %wide.load681, %wide.load681
  %i.pe = fmul fast <4 x float> %wide.load682, %wide.load682
  %i.pf = fsub fast <4 x float> %i.oz, %i.pd
  %i.pg = fsub fast <4 x float> %i.pa, %i.pe
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index676 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <4 x float> %i.pf, ptr %i.ph, align 4, !tbaa !61
  store <4 x float> %i.pg, ptr %i.pi, align 4, !tbaa !61
  %index.next683 = add nuw i64 %index676, 8       ; 2 uses
  %i.pj = icmp eq i64 %index.next683, %n.vec674
  br i1 %i.pj, label %middle.block684, label %vector.body675, !llvm.loop !54

middle.block684:                                  ; preds = %vector.body675
  br i1 %cmp.n685, label %._crit_edge345, label %scalar.ph671.preheader

scalar.ph671.preheader:                           ; preds = %.preheader299, %middle.block684
  %indvars.iv450.ph = phi i64 [ %n.vec674, %middle.block684 ], [ 0, %.preheader299 ] ; 7 uses
  br i1 %lcmp.mod718.not, label %scalar.ph671.prol.loopexit, label %scalar.ph671.prol

scalar.ph671.prol:                                ; preds = %scalar.ph671.preheader
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv450.ph
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !61
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv450.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !61
  %i.po = fmul fast float %i.pn, %i.pl
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv450.ph
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !61 ; 2 uses
  %i.pr = fmul fast float %i.pq, %i.pq
  %i.ps = fsub fast float %i.po, %i.pr
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv450.ph
  store float %i.ps, ptr %i.pt, align 4, !tbaa !61
  %indvars.iv.next451.prol = or disjoint i64 %indvars.iv450.ph, 1
  br label %scalar.ph671.prol.loopexit

scalar.ph671.prol.loopexit:                       ; preds = %scalar.ph671.prol, %scalar.ph671.preheader
  %indvars.iv450.unr = phi i64 [ %indvars.iv450.ph, %scalar.ph671.preheader ], [ %indvars.iv.next451.prol, %scalar.ph671.prol ]
  %i.pu = icmp eq i64 %indvars.iv450.ph, %i.ns
  br i1 %i.pu, label %._crit_edge345, label %scalar.ph671

.preheader.preheader:                             ; preds = %._crit_edge345
  %wide.trip.count468 = zext nneg i32 %0 to i64
  %wide.trip.count463 = zext nneg i32 %1 to i64
  %min.iters.check692 = icmp ult i32 %1, 8
  %i.pv = sub i64 %i.c, %i.a
  %diff.check688 = icmp ugt i64 %i.pv, -32
  %i.pw = sub i64 %i.f, %i.a
  %diff.check689 = icmp ugt i64 %i.pw, -32
  %conflict.rdx690 = or i1 %diff.check688, %diff.check689
  %n.vec694 = and i64 %wide.trip.count413, 2147483640 ; 3 uses
  %cmp.n703 = icmp eq i64 %n.vec694, %wide.trip.count413
  %xtraiter720 = and i64 %wide.trip.count413, 1
  %lcmp.mod721.not = icmp eq i64 %xtraiter720, 0
  %i.px = add nsw i64 %wide.trip.count413, -1
  br label %.preheader

._crit_edge345:                                   ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671, %middle.block684
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader.preheader, label %.preheader299, !llvm.loop !55

scalar.ph671:                                     ; preds = %scalar.ph671.prol.loopexit, %scalar.ph671
  %indvars.iv450 = phi i64 [ %indvars.iv.next451.1, %scalar.ph671 ], [ %indvars.iv450.unr, %scalar.ph671.prol.loopexit ] ; 6 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv450
  %i.pz = load float, ptr %i.py, align 4, !tbaa !61
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv450
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !61
  %i.qc = fmul fast float %i.qb, %i.pz
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv450
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !61 ; 2 uses
  %i.qf = fmul fast float %i.qe, %i.qe
  %i.qg = fsub fast float %i.qc, %i.qf
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv450
  store float %i.qg, ptr %i.qh, align 4, !tbaa !61
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1 ; 4 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv.next451
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !61
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next451
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !61
  %i.qm = fmul fast float %i.ql, %i.qj
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.next451
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !61 ; 2 uses
  %i.qp = fmul fast float %i.qo, %i.qo
  %i.qq = fsub fast float %i.qm, %i.qp
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.next451
  store float %i.qq, ptr %i.qr, align 4, !tbaa !61
  %indvars.iv.next451.1 = add nuw nsw i64 %indvars.iv450, 2 ; 2 uses
  %exitcond454.not.1 = icmp eq i64 %indvars.iv.next451.1, %wide.trip.count453
  br i1 %exitcond454.not.1, label %._crit_edge345, label %scalar.ph671, !llvm.loop !56

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge348
  %indvars.iv465 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next466, %._crit_edge348 ] ; 4 uses
  %i.qs = getelementptr inbounds nuw [8192 x i8], ptr %12, i64 %indvars.iv465 ; 4 uses
  %i.qt = getelementptr inbounds nuw [8192 x i8], ptr %13, i64 %indvars.iv465 ; 4 uses
  %i.qu = getelementptr inbounds nuw [8192 x i8], ptr %3, i64 %indvars.iv465 ; 4 uses
  %brmerge730 = or i1 %min.iters.check692, %conflict.rdx690
  br i1 %brmerge730, label %scalar.ph691.preheader, label %vector.body695

vector.body695:                                   ; preds = %.preheader, %vector.body695
  %index696 = phi i64 [ %index.next701, %vector.body695 ], [ 0, %.preheader ] ; 4 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %index696 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load697 = load <4 x float>, ptr %i.qv, align 4, !tbaa !61
  %wide.load698 = load <4 x float>, ptr %i.qw, align 4, !tbaa !61
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %index696 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load699 = load <4 x float>, ptr %i.qx, align 4, !tbaa !61 ; 2 uses
  %wide.load700 = load <4 x float>, ptr %i.qy, align 4, !tbaa !61 ; 2 uses
  %i.qz = fmul fast <4 x float> %wide.load699, %wide.load699
  %i.ra = fmul fast <4 x float> %wide.load700, %wide.load700
  %i.rb = fmul fast <4 x float> %i.qz, splat (float 4.000000e-02)
  %i.rc = fmul fast <4 x float> %i.ra, splat (float 4.000000e-02)
  %i.rd = fsub fast <4 x float> %wide.load697, %i.rb
  %i.re = fsub fast <4 x float> %wide.load698, %i.rc
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %index696 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store <4 x float> %i.rd, ptr %i.rf, align 4, !tbaa !61
  store <4 x float> %i.re, ptr %i.rg, align 4, !tbaa !61
  %index.next701 = add nuw i64 %index696, 8       ; 2 uses
  %i.rh = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.rh, label %middle.block702, label %vector.body695, !llvm.loop !57

middle.block702:                                  ; preds = %vector.body695
  br i1 %cmp.n703, label %._crit_edge348, label %scalar.ph691.preheader

scalar.ph691.preheader:                           ; preds = %.preheader, %middle.block702
  %indvars.iv460.ph = phi i64 [ %n.vec694, %middle.block702 ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod721.not, label %scalar.ph691.prol.loopexit, label %scalar.ph691.prol

scalar.ph691.prol:                                ; preds = %scalar.ph691.preheader
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv460.ph
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !61
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv460.ph
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !61 ; 2 uses
  %i.rm = fmul fast float %i.rl, %i.rl
  %i.rn = fmul fast float %i.rm, 4.000000e-02
  %i.ro = fsub fast float %i.rj, %i.rn
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv460.ph
  store float %i.ro, ptr %i.rp, align 4, !tbaa !61
  %indvars.iv.next461.prol = or disjoint i64 %indvars.iv460.ph, 1
  br label %scalar.ph691.prol.loopexit

scalar.ph691.prol.loopexit:                       ; preds = %scalar.ph691.prol, %scalar.ph691.preheader
  %indvars.iv460.unr = phi i64 [ %indvars.iv460.ph, %scalar.ph691.preheader ], [ %indvars.iv.next461.prol, %scalar.ph691.prol ]
  %i.rq = icmp eq i64 %indvars.iv460.ph, %i.px
  br i1 %i.rq, label %._crit_edge348, label %scalar.ph691

._crit_edge350.split:                             ; preds = %._crit_edge348, %bb.a, %.preheader316, %.preheader314, %.preheader312, %.preheader310, %.preheader308
  ret void

._crit_edge348:                                   ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691, %middle.block702
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count468
  br i1 %exitcond469.not, label %._crit_edge350.split, label %.preheader, !llvm.loop !58

scalar.ph691:                                     ; preds = %scalar.ph691.prol.loopexit, %scalar.ph691
  %indvars.iv460 = phi i64 [ %indvars.iv.next461.1, %scalar.ph691 ], [ %indvars.iv460.unr, %scalar.ph691.prol.loopexit ] ; 5 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv460
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !61
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv460
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !61 ; 2 uses
  %i.rv = fmul fast float %i.ru, %i.ru
  %i.rw = fmul fast float %i.rv, 4.000000e-02
  %i.rx = fsub fast float %i.rs, %i.rw
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv460
  store float %i.rx, ptr %i.ry, align 4, !tbaa !61
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %indvars.iv.next461
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !61
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv.next461
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !61 ; 2 uses
  %i.sd = fmul fast float %i.sc, %i.sc
  %i.se = fmul fast float %i.sd, 4.000000e-02
  %i.sf = fsub fast float %i.sa, %i.se
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next461
  store float %i.sf, ptr %i.sg, align 4, !tbaa !61
  %indvars.iv.next461.1 = add nuw nsw i64 %indvars.iv460, 2 ; 2 uses
  %exitcond464.not.1 = icmp eq i64 %indvars.iv.next461.1, %wide.trip.count463
  br i1 %exitcond464.not.1, label %._crit_edge348, label %scalar.ph691, !llvm.loop !59
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !64, !65, !66}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64, !65}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !64, !65, !66}
!18 = distinct !{!18, !64}
!19 = distinct !{!19, !64, !65}
!20 = distinct !{!20, !64, !65, !66}
!21 = distinct !{!21, !69}
!22 = distinct !{!22, !64}
!23 = distinct !{!23, !64, !65}
!24 = distinct !{!24, !64, !65, !66}
!25 = distinct !{!25, !69}
!26 = distinct !{!26, !64}
!27 = distinct !{!27, !64, !65}
!28 = distinct !{!28, !64, !65, !66}
!29 = distinct !{!29, !69}
!30 = distinct !{!30, !64}
!31 = distinct !{!31, !64, !65}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !64, !65, !66}
!36 = distinct !{!36, !64}
!37 = distinct !{!37, !64, !65}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !64, !65, !66}
!42 = distinct !{!42, !64}
!43 = distinct !{!43, !64, !65}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !64, !65, !66}
!48 = distinct !{!48, !64}
!49 = distinct !{!49, !64, !65}
!50 = distinct !{!50, !64, !65, !66}
!51 = distinct !{!51, !69}
!52 = distinct !{!52, !64}
!53 = distinct !{!53, !64, !65}
!54 = distinct !{!54, !64, !65, !66}
!55 = distinct !{!55, !64}
!56 = distinct !{!56, !64, !65}
!57 = distinct !{!57, !64, !65, !66}
!58 = distinct !{!58, !64}
!59 = distinct !{!59, !64, !65}
!60 = !{!"float", !5, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!9}
!63 = !{!10}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!15}
!68 = !{!16}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!33}
!71 = !{!34}
!72 = !{!39}
!73 = !{!40}
!74 = !{!45}
!75 = !{!46}
end_hunk_0
