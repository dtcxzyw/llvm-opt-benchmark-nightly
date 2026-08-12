inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4ncnn27pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %niter837.next.3 = add i32 %niter837, 4         ; 2 uses
  %niter837.ncmp.3.not = icmp eq i32 %niter837.next.3, %unroll_iter836
  br i1 %niter837.ncmp.3.not, label %.preheader34.i.us.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !44

.preheader34.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod832.not, label %.preheader34.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.preheader34.i.us.loopexit.unr-lcssa, %.lr.ph.i.us.preheader
  %.136039.i.us.epil.init = phi ptr [ %.035999.i.us, %.lr.ph.i.us.preheader ], [ %i.io, %.preheader34.i.us.loopexit.unr-lcssa ]
  %.036638.i.us.epil.init = phi ptr [ %i.al, %.lr.ph.i.us.preheader ], [ %i.ip, %.preheader34.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod835)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %.136039.i.us.epil = phi ptr [ %i.is, %.lr.ph.i.us.epil ], [ %.136039.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.036638.i.us.epil = phi ptr [ %i.it, %.lr.ph.i.us.epil ], [ %.036638.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %epil.iter831 = phi i32 [ %epil.iter831.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.iq = load <32 x i16>, ptr %.036638.i.us.epil, align 1, !tbaa !17
  %i.ir = shufflevector <32 x i16> %i.iq, <32 x i16> poison, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %i.ir, ptr %.136039.i.us.epil, align 1, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %.136039.i.us.epil, i64 64 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.036638.i.us.epil, i64 64 ; 2 uses
  %epil.iter831.next = add i32 %epil.iter831, 1   ; 2 uses
  %epil.iter831.cmp.not = icmp eq i32 %epil.iter831.next, %xtraiter830
  br i1 %epil.iter831.cmp.not, label %.preheader34.i.us, label %.lr.ph.i.us.epil, !llvm.loop !45

.preheader34.i.us:                                ; preds = %.preheader34.i.us.loopexit.unr-lcssa, %.lr.ph.i.us.epil, %.preheader36.i.us
  %.0384.lcssa.i.us = phi i32 [ 0, %.preheader36.i.us ], [ %i.t, %.lr.ph.i.us.epil ], [ %i.t, %.preheader34.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.0366.lcssa.i.us = phi ptr [ %i.al, %.preheader36.i.us ], [ %i.ip, %.preheader34.i.us.loopexit.unr-lcssa ], [ %i.it, %.lr.ph.i.us.epil ] ; 2 uses
  %.1360.lcssa.i.us = phi ptr [ %.035999.i.us, %.preheader36.i.us ], [ %i.io, %.preheader34.i.us.loopexit.unr-lcssa ], [ %i.is, %.lr.ph.i.us.epil ] ; 3 uses
  %i.iu = icmp slt i32 %.0384.lcssa.i.us, %5
  br i1 %i.iu, label %.lr.ph45.i.us.preheader, label %.loopexit29.i.us

.lr.ph45.i.us.preheader:                          ; preds = %.preheader34.i.us
  %i.iv = sub i32 %5, %.0384.lcssa.i.us
  %xtraiter838 = and i32 %i.iv, 7                 ; 2 uses
  %lcmp.mod839.not = icmp eq i32 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph45.i.us.prol.loopexit, label %.lr.ph45.i.us.prol

.lr.ph45.i.us.prol:                               ; preds = %.lr.ph45.i.us.preheader, %.lr.ph45.i.us.prol
  %.244.i.us.prol = phi ptr [ %i.ix, %.lr.ph45.i.us.prol ], [ %.1360.lcssa.i.us, %.lr.ph45.i.us.preheader ] ; 2 uses
  %.136743.i.us.prol = phi ptr [ %i.iy, %.lr.ph45.i.us.prol ], [ %.0366.lcssa.i.us, %.lr.ph45.i.us.preheader ] ; 2 uses
  %.138542.i.us.prol = phi i32 [ %i.iz, %.lr.ph45.i.us.prol ], [ %.0384.lcssa.i.us, %.lr.ph45.i.us.preheader ]
  %prol.iter840 = phi i32 [ %prol.iter840.next, %.lr.ph45.i.us.prol ], [ 0, %.lr.ph45.i.us.preheader ]
  %i.iw = load <4 x i64>, ptr %.136743.i.us.prol, align 1, !tbaa !17
  store <4 x i64> %i.iw, ptr %.244.i.us.prol, align 1, !tbaa !17
  %i.ix = getelementptr inbounds nuw i8, ptr %.244.i.us.prol, i64 32 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.136743.i.us.prol, i64 32 ; 2 uses
  %i.iz = add nuw nsw i32 %.138542.i.us.prol, 1   ; 2 uses
  %prol.iter840.next = add i32 %prol.iter840, 1   ; 2 uses
  %prol.iter840.cmp.not = icmp eq i32 %prol.iter840.next, %xtraiter838
  br i1 %prol.iter840.cmp.not, label %.lr.ph45.i.us.prol.loopexit, label %.lr.ph45.i.us.prol, !llvm.loop !46

.lr.ph45.i.us.prol.loopexit:                      ; preds = %.lr.ph45.i.us.prol, %.lr.ph45.i.us.preheader
  %.lcssa809.unr = phi ptr [ poison, %.lr.ph45.i.us.preheader ], [ %i.ix, %.lr.ph45.i.us.prol ]
  %.244.i.us.unr = phi ptr [ %.1360.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.ix, %.lr.ph45.i.us.prol ]
  %.136743.i.us.unr = phi ptr [ %.0366.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.iy, %.lr.ph45.i.us.prol ]
  %.138542.i.us.unr = phi i32 [ %.0384.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.iz, %.lr.ph45.i.us.prol ]
  %i.ja = sub i32 %.0384.lcssa.i.us, %5
  %i.jb = icmp ugt i32 %i.ja, -8
  br i1 %i.jb, label %.loopexit29.i.us, label %.lr.ph45.i.us

.lr.ph45.i.us:                                    ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us
  %.244.i.us = phi ptr [ %i.jy, %.lr.ph45.i.us ], [ %.244.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 9 uses
  %.136743.i.us = phi ptr [ %i.jz, %.lr.ph45.i.us ], [ %.136743.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 9 uses
  %.138542.i.us = phi i32 [ %i.ka, %.lr.ph45.i.us ], [ %.138542.i.us.unr, %.lr.ph45.i.us.prol.loopexit ]
  %i.jc = load <4 x i64>, ptr %.136743.i.us, align 1, !tbaa !17
  store <4 x i64> %i.jc, ptr %.244.i.us, align 1, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 32
  %i.jf = load <4 x i64>, ptr %i.je, align 1, !tbaa !17
  store <4 x i64> %i.jf, ptr %i.jd, align 1, !tbaa !17
  %i.jg = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 64
  %i.ji = load <4 x i64>, ptr %i.jh, align 1, !tbaa !17
  store <4 x i64> %i.ji, ptr %i.jg, align 1, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 96
  %i.jk = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 96
  %i.jl = load <4 x i64>, ptr %i.jk, align 1, !tbaa !17
  store <4 x i64> %i.jl, ptr %i.jj, align 1, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 128
  %i.jn = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 128
  %i.jo = load <4 x i64>, ptr %i.jn, align 1, !tbaa !17
  store <4 x i64> %i.jo, ptr %i.jm, align 1, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 160
  %i.jq = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 160
  %i.jr = load <4 x i64>, ptr %i.jq, align 1, !tbaa !17
  store <4 x i64> %i.jr, ptr %i.jp, align 1, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 192
  %i.jt = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 192
  %i.ju = load <4 x i64>, ptr %i.jt, align 1, !tbaa !17
  store <4 x i64> %i.ju, ptr %i.js, align 1, !tbaa !17
  %i.jv = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 224
  %i.jw = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 224
  %i.jx = load <4 x i64>, ptr %i.jw, align 1, !tbaa !17
  store <4 x i64> %i.jx, ptr %i.jv, align 1, !tbaa !17
  %i.jy = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 256 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 256
  %i.ka = add nuw nsw i32 %.138542.i.us, 8        ; 2 uses
  %exitcond.not.i.us.7 = icmp eq i32 %i.ka, %5
  br i1 %exitcond.not.i.us.7, label %.loopexit29.i.us, label %.lr.ph45.i.us, !llvm.loop !47

.loopexit29.i.us:                                 ; preds = %.lr.ph96.i.us.prol.loopexit, %.lr.ph96.i.us, %.lr.ph83.i.us.prol.loopexit, %.lr.ph83.i.us, %.lr.ph61.i.us.prol.loopexit, %.lr.ph61.i.us, %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us, %middle.block, %.preheader34.i.us, %.preheader32.i.us, %.preheader30.i.us, %.preheader28.i.us, %.split.i.us
  %.12.i.us = phi ptr [ %.035999.i.us, %.split.i.us ], [ %.10.lcssa.i.us, %.preheader28.i.us ], [ %i.fl, %.lr.ph83.i.us ], [ %i.jy, %.lr.ph45.i.us ], [ %.7.lcssa.i.us, %.preheader30.i.us ], [ %i.hw, %.lr.ph61.i.us ], [ %.4.lcssa.i.us, %.preheader32.i.us ], [ %.1360.lcssa.i.us, %.preheader34.i.us ], [ %i.dq, %middle.block ], [ %.lcssa809.unr, %.lr.ph45.i.us.prol.loopexit ], [ %.lcssa806.unr, %.lr.ph61.i.us.prol.loopexit ], [ %.lcssa802.unr, %.lr.ph83.i.us.prol.loopexit ], [ %.lcssa796.unr, %.lr.ph96.i.us.prol.loopexit ], [ %i.by, %.lr.ph96.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.kb = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.kc = icmp samesign ult i64 %i.kb, %i.u
  br i1 %i.kc, label %.split.i.us, label %.preheader27.loopexit.i, !llvm.loop !48

.preheader27.loopexit.i:                          ; preds = %.loopexit29.i.us, %.loopexit29.i.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit29.i.preheader ], [ %.12.i.us, %.loopexit29.i.us ]
  %.us-phi53 = phi i64 [ %i.ag, %.loopexit29.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit29.i.us ]
  %i.kd = trunc nuw nsw i64 %.us-phi53 to i32
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %.preheader27.loopexit.i, %bb.a
  %.0361.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.kd, %.preheader27.loopexit.i ] ; 3 uses
  %.0359.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader27.loopexit.i ] ; 2 uses
  %i.ke = or disjoint i32 %.0361.lcssa.i, 7
  %i.kf = icmp slt i32 %i.ke, %3
  br i1 %i.kf, label %.lr.ph146.i, label %.preheader19.i

.lr.ph146.i:                                      ; preds = %.preheader27.i
  %i.kg = mul nsw i32 %i.b, %4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp sgt i32 %5, 1                      ; 3 uses
  %.idx417.i = shl i64 %i.k, 3
  %i.kj = trunc i64 %i.k to i32
  %i.kk = insertelement <8 x i32> poison, i32 %i.kj, i64 0
  %i.kl = shufflevector <8 x i32> %i.kk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.km = mul <8 x i32> %i.kl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.kn = and i32 %5, -2                          ; 6 uses
  %i.ko = zext nneg i32 %.0361.lcssa.i to i64
  %i.kp = sext i32 %3 to i64
  %i.kq = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.kp, -7
  %i.kr = add i32 %5, -2                          ; 4 uses
  %i.ks = lshr i32 %i.kr, 1                       ; 3 uses
  %i.kt = add nuw i32 %i.ks, 1                    ; 6 uses
  %xtraiter841 = and i32 %i.kt, 3                 ; 3 uses
  %i.ku = icmp ult i32 %i.kr, 6
  %unroll_iter847 = and i32 %i.kt, -4
  %lcmp.mod843.not = icmp eq i32 %xtraiter841, 0
  %lcmp.mod846 = icmp ne i32 %xtraiter841, 0
  %i.kv = icmp eq i32 %i.ks, 0
  %unroll_iter859 = and i32 %i.kt, -2
  %i.kw = and i32 %i.kr, 2
  %lcmp.mod854.not.not = icmp eq i32 %i.kw, 0
  %lcmp.mod858 = trunc i32 %i.kt to i1
  %i.kx = icmp eq i32 %i.ks, 0
  %unroll_iter870 = and i32 %i.kt, -2
  %i.ky = and i32 %i.kr, 2
  %lcmp.mod866.not.not = icmp eq i32 %i.ky, 0
  %lcmp.mod869 = trunc i32 %i.kt to i1
  br label %bb.f

.preheader19.loopexit.i:                          ; preds = %.loopexit21.i
  %i.kz = trunc nuw nsw i64 %indvars.iv.next317.i to i32
  br label %.preheader19.i

.preheader19.i:                                   ; preds = %.preheader19.loopexit.i, %.preheader27.i
  %.1362.lcssa.i = phi i32 [ %.0361.lcssa.i, %.preheader27.i ], [ %i.kz, %.preheader19.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0359.lcssa.i, %.preheader27.i ], [ %.22.i, %.preheader19.loopexit.i ] ; 4 uses
  %i.la = or disjoint i32 %.1362.lcssa.i, 3
  %i.lb = icmp slt i32 %i.la, %3
  br i1 %i.lb, label %.lr.ph185.i, label %.preheader14.i

.lr.ph185.i:                                      ; preds = %.preheader19.i
  %i.lc = mul i32 %i.b, %4
  %i.ld = sext i32 %i.lc to i64                   ; 4 uses
  %i.le = icmp sgt i32 %5, 1                      ; 2 uses
  %.idx.i = shl i64 %i.k, 2
  %.idx416.i = mul i64 %i.k, 6
  %i.lf = and i32 %5, -2                          ; 5 uses
  %i.lg = zext i32 %.1362.lcssa.i to i64          ; 8 uses
  %i.lh = sext i32 %3 to i64
  %i.li = sext i32 %2 to i64                      ; 3 uses
  %invariant.op410.i = add nsw i64 %i.lh, -3      ; 4 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader18.i.us.preheader
    i32 1, label %.lr.ph185.i.split.us56
  ]

.preheader18.i.us.preheader:                      ; preds = %.lr.ph185.i
  %i.lj = add i32 %5, -2                          ; 2 uses
  %i.lk = lshr i32 %i.lj, 1
  %i.ll = add nuw i32 %i.lk, 1                    ; 2 uses
  %xtraiter878 = and i32 %i.ll, 3                 ; 3 uses
  %i.lm = icmp ult i32 %i.lj, 6
  %unroll_iter884 = and i32 %i.ll, -4
  %lcmp.mod880.not = icmp eq i32 %xtraiter878, 0
  %lcmp.mod883 = icmp ne i32 %xtraiter878, 0
  br label %.preheader18.i.us

.loopexit.i.preheader:                            ; preds = %.lr.ph185.i
  %i.ln = add nuw nsw i64 %i.lg, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op410.i, i64 %i.ln)
  %i.lo = xor i64 %i.lg, -1
  %i.lp = add nsw i64 %smax, %i.lo
  %i.lq = and i64 %i.lp, -4
  %i.lr = add i64 %i.lq, %i.lg
  %i.ls = add i64 %i.lr, 4
  br label %.preheader14.loopexit.i

.preheader18.i.us:                                ; preds = %.preheader18.i.us.preheader, %.loopexit.i.us
  %indvars.iv321.i.us = phi i64 [ %indvars.iv.next322.i.us, %.loopexit.i.us ], [ %i.lg, %.preheader18.i.us.preheader ] ; 2 uses
  %.23184.i.us = phi ptr [ %.29.i.us, %.loopexit.i.us ], [ %.13.lcssa.i, %.preheader18.i.us.preheader ] ; 3 uses
  %i.lt = load ptr, ptr %0, align 8, !tbaa !9
  %i.lu = add nsw i64 %indvars.iv321.i.us, %i.li
  %i.lv = mul i64 %i.lu, %i.k
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.lv
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.lw, i64 %i.ld ; 3 uses
  br i1 %i.le, label %.lr.ph152.i.us.preheader, label %.preheader16.i.us

.lr.ph152.i.us.preheader:                         ; preds = %.preheader18.i.us
  br i1 %i.lm, label %.lr.ph152.i.us.epil.preheader, label %.lr.ph152.i.us

.lr.ph152.i.us:                                   ; preds = %.lr.ph152.i.us.preheader, %.lr.ph152.i.us
  %.24151.i.us = phi ptr [ %i.mu, %.lr.ph152.i.us ], [ %.23184.i.us, %.lr.ph152.i.us.preheader ] ; 5 uses
  %.0379149.i.us = phi ptr [ %i.mv, %.lr.ph152.i.us ], [ %i.lx, %.lr.ph152.i.us.preheader ] ; 5 uses
  %niter885 = phi i32 [ %niter885.next.3, %.lr.ph152.i.us ], [ 0, %.lr.ph152.i.us.preheader ]
  %i.ly = load <2 x i64>, ptr %.0379149.i.us, align 1, !tbaa !17 ; 2 uses
  %i.lz = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.ma = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.mb = shufflevector <8 x i16> %i.lz, <8 x i16> %i.ma, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mb, ptr %.24151.i.us, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 16
  %i.me = load <2 x i64>, ptr %i.md, align 1, !tbaa !17 ; 2 uses
  %i.mf = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mg = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mh = shufflevector <8 x i16> %i.mf, <8 x i16> %i.mg, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mh, ptr %i.mc, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 32
  %i.mk = load <2 x i64>, ptr %i.mj, align 1, !tbaa !17 ; 2 uses
  %i.ml = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mm = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mn = shufflevector <8 x i16> %i.ml, <8 x i16> %i.mm, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mn, ptr %i.mi, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 48
  %i.mp = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 48
  %i.mq = load <2 x i64>, ptr %i.mp, align 1, !tbaa !17 ; 2 uses
  %i.mr = bitcast <2 x i64> %i.mq to <8 x i16>
  %i.ms = bitcast <2 x i64> %i.mq to <8 x i16>
  %i.mt = shufflevector <8 x i16> %i.mr, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mt, ptr %i.mo, align 1, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 64 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 64 ; 3 uses
  %niter885.next.3 = add i32 %niter885, 4         ; 2 uses
  %niter885.ncmp.3.not = icmp eq i32 %niter885.next.3, %unroll_iter884
  br i1 %niter885.ncmp.3.not, label %.preheader16.i.us.loopexit.unr-lcssa, label %.lr.ph152.i.us, !llvm.loop !49

.preheader16.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph152.i.us
  br i1 %lcmp.mod880.not, label %.preheader16.i.us, label %.lr.ph152.i.us.epil.preheader

.lr.ph152.i.us.epil.preheader:                    ; preds = %.preheader16.i.us.loopexit.unr-lcssa, %.lr.ph152.i.us.preheader
  %.24151.i.us.epil.init = phi ptr [ %.23184.i.us, %.lr.ph152.i.us.preheader ], [ %i.mu, %.preheader16.i.us.loopexit.unr-lcssa ]
  %.0379149.i.us.epil.init = phi ptr [ %i.lx, %.lr.ph152.i.us.preheader ], [ %i.mv, %.preheader16.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod883)
  br label %.lr.ph152.i.us.epil

.lr.ph152.i.us.epil:                              ; preds = %.lr.ph152.i.us.epil, %.lr.ph152.i.us.epil.preheader
  %.24151.i.us.epil = phi ptr [ %i.na, %.lr.ph152.i.us.epil ], [ %.24151.i.us.epil.init, %.lr.ph152.i.us.epil.preheader ] ; 2 uses
  %.0379149.i.us.epil = phi ptr [ %i.nb, %.lr.ph152.i.us.epil ], [ %.0379149.i.us.epil.init, %.lr.ph152.i.us.epil.preheader ] ; 2 uses
  %epil.iter879 = phi i32 [ %epil.iter879.next, %.lr.ph152.i.us.epil ], [ 0, %.lr.ph152.i.us.epil.preheader ]
  %i.mw = load <2 x i64>, ptr %.0379149.i.us.epil, align 1, !tbaa !17 ; 2 uses
  %i.mx = bitcast <2 x i64> %i.mw to <8 x i16>
  %i.my = bitcast <2 x i64> %i.mw to <8 x i16>
  %i.mz = shufflevector <8 x i16> %i.mx, <8 x i16> %i.my, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mz, ptr %.24151.i.us.epil, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.24151.i.us.epil, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0379149.i.us.epil, i64 16 ; 2 uses
  %epil.iter879.next = add i32 %epil.iter879, 1   ; 2 uses
  %epil.iter879.cmp.not = icmp eq i32 %epil.iter879.next, %xtraiter878
  br i1 %epil.iter879.cmp.not, label %.preheader16.i.us, label %.lr.ph152.i.us.epil, !llvm.loop !50

.preheader16.i.us:                                ; preds = %.preheader16.i.us.loopexit.unr-lcssa, %.lr.ph152.i.us.epil, %.preheader18.i.us
  %.0379.lcssa.i.us = phi ptr [ %i.lx, %.preheader18.i.us ], [ %i.mv, %.preheader16.i.us.loopexit.unr-lcssa ], [ %i.nb, %.lr.ph152.i.us.epil ] ; 6 uses
  %.0377.lcssa.i.us = phi i32 [ 0, %.preheader18.i.us ], [ %i.lf, %.lr.ph152.i.us.epil ], [ %i.lf, %.preheader16.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.24.lcssa.i.us = phi ptr [ %.23184.i.us, %.preheader18.i.us ], [ %i.mu, %.preheader16.i.us.loopexit.unr-lcssa ], [ %i.na, %.lr.ph152.i.us.epil ] ; 7 uses
  %i.nc = icmp slt i32 %.0377.lcssa.i.us, %5
  br i1 %i.nc, label %iter.check477, label %.loopexit.i.us

iter.check477:                                    ; preds = %.preheader16.i.us
  %.0379.lcssa.i.us455 = ptrtoaddr ptr %.0379.lcssa.i.us to i64
  %.24.lcssa.i.us454 = ptrtoaddr ptr %.24.lcssa.i.us to i64
  %i.nd = xor i32 %.0377.lcssa.i.us, -1
  %i.ne = add i32 %5, %i.nd                       ; 3 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = add nuw nsw i64 %i.nf, 1                ; 5 uses
  %min.iters.check457 = icmp ult i32 %i.ne, 7
  %i.nh = sub i64 %.0379.lcssa.i.us455, %.24.lcssa.i.us454
  %diff.check = icmp ugt i64 %i.nh, -256
  %or.cond = select i1 %min.iters.check457, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph159.i.us.preheader, label %vector.main.loop.iter.check458

vector.main.loop.iter.check458:                   ; preds = %iter.check477
  %min.iters.check459 = icmp ult i32 %i.ne, 31
  br i1 %min.iters.check459, label %vec.epilog.ph481, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check458
  %i.ni = and i64 %i.ng, 24
  %n.vec461 = and i64 %i.ng, 8589934560           ; 5 uses
  %i.nj = shl nuw nsw i64 %n.vec461, 3            ; 2 uses
  %i.nk = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.nj ; 2 uses
  %i.nl = trunc i64 %n.vec461 to i32
  %i.nm = add i32 %.0377.lcssa.i.us, %i.nl
  %i.nn = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.nj
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next470, %vector.body462 ] ; 2 uses
  %i.no = shl i64 %index463, 3                    ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.no ; 4 uses
  %next.gep465 = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.no ; 4 uses
  %i.np = getelementptr i8, ptr %next.gep465, i64 64
  %i.nq = getelementptr i8, ptr %next.gep465, i64 128
  %i.nr = getelementptr i8, ptr %next.gep465, i64 192
  %wide.load466 = load <8 x i64>, ptr %next.gep465, align 1, !tbaa !17
  %wide.load467 = load <8 x i64>, ptr %i.np, align 1, !tbaa !17
  %wide.load468 = load <8 x i64>, ptr %i.nq, align 1, !tbaa !17
  %wide.load469 = load <8 x i64>, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr i8, ptr %next.gep464, i64 64
  %i.nt = getelementptr i8, ptr %next.gep464, i64 128
  %i.nu = getelementptr i8, ptr %next.gep464, i64 192
  store <8 x i64> %wide.load466, ptr %next.gep464, align 1, !tbaa !17
  store <8 x i64> %wide.load467, ptr %i.ns, align 1, !tbaa !17
  store <8 x i64> %wide.load468, ptr %i.nt, align 1, !tbaa !17
  store <8 x i64> %wide.load469, ptr %i.nu, align 1, !tbaa !17
  %index.next470 = add nuw i64 %index463, 32      ; 2 uses
  %i.nv = icmp eq i64 %index.next470, %n.vec461
  br i1 %i.nv, label %middle.block471, label %vector.body462, !llvm.loop !51

middle.block471:                                  ; preds = %vector.body462
  %cmp.n472 = icmp eq i64 %i.ng, %n.vec461
  br i1 %cmp.n472, label %.loopexit.i.us, label %vec.epilog.iter.check479

vec.epilog.iter.check479:                         ; preds = %middle.block471
  %min.epilog.iters.check480 = icmp eq i64 %i.ni, 0
  br i1 %min.epilog.iters.check480, label %.lr.ph159.i.us.preheader, label %vec.epilog.ph481, !prof !52

vec.epilog.ph481:                                 ; preds = %vector.main.loop.iter.check458, %vec.epilog.iter.check479
  %vec.epilog.resume.val473 = phi i64 [ %n.vec461, %vec.epilog.iter.check479 ], [ 0, %vector.main.loop.iter.check458 ]
  %n.vec482 = and i64 %i.ng, 8589934584           ; 4 uses
  %i.nw = shl nuw nsw i64 %n.vec482, 3            ; 2 uses
  %i.nx = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.nw ; 2 uses
  %i.ny = trunc i64 %n.vec482 to i32
  %i.nz = add i32 %.0377.lcssa.i.us, %i.ny
  %i.oa = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.nw
  br label %vec.epilog.vector.body483

vec.epilog.vector.body483:                        ; preds = %vec.epilog.vector.body483, %vec.epilog.ph481
  %index484 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph481 ], [ %index.next488, %vec.epilog.vector.body483 ] ; 2 uses
  %i.ob = shl i64 %index484, 3                    ; 2 uses
  %next.gep485 = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.ob
  %next.gep486 = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.ob
  %wide.load487 = load <8 x i64>, ptr %next.gep486, align 1, !tbaa !17
  store <8 x i64> %wide.load487, ptr %next.gep485, align 1, !tbaa !17
  %index.next488 = add nuw i64 %index484, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.oc, label %vec.epilog.middle.block489, label %vec.epilog.vector.body483, !llvm.loop !53

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body483
  %cmp.n490 = icmp eq i64 %i.ng, %n.vec482
  br i1 %cmp.n490, label %.loopexit.i.us, label %.lr.ph159.i.us.preheader

.lr.ph159.i.us.preheader:                         ; preds = %iter.check477, %vec.epilog.iter.check479, %vec.epilog.middle.block489
  %.25158.i.us.ph = phi ptr [ %.24.lcssa.i.us, %iter.check477 ], [ %i.nk, %vec.epilog.iter.check479 ], [ %i.nx, %vec.epilog.middle.block489 ] ; 2 uses
  %.1378157.i.us.ph = phi i32 [ %.0377.lcssa.i.us, %iter.check477 ], [ %i.nm, %vec.epilog.iter.check479 ], [ %i.nz, %vec.epilog.middle.block489 ] ; 4 uses
  %.1380156.i.us.ph = phi ptr [ %.0379.lcssa.i.us, %iter.check477 ], [ %i.nn, %vec.epilog.iter.check479 ], [ %i.oa, %vec.epilog.middle.block489 ] ; 2 uses
  %i.od = sub i32 %5, %.1378157.i.us.ph
  %xtraiter886 = and i32 %i.od, 7                 ; 2 uses
  %lcmp.mod887.not = icmp eq i32 %xtraiter886, 0
  br i1 %lcmp.mod887.not, label %.lr.ph159.i.us.prol.loopexit, label %.lr.ph159.i.us.prol

.lr.ph159.i.us.prol:                              ; preds = %.lr.ph159.i.us.preheader, %.lr.ph159.i.us.prol
  %.25158.i.us.prol = phi ptr [ %i.of, %.lr.ph159.i.us.prol ], [ %.25158.i.us.ph, %.lr.ph159.i.us.preheader ] ; 2 uses
  %.1378157.i.us.prol = phi i32 [ %i.oh, %.lr.ph159.i.us.prol ], [ %.1378157.i.us.ph, %.lr.ph159.i.us.preheader ]
  %.1380156.i.us.prol = phi ptr [ %i.og, %.lr.ph159.i.us.prol ], [ %.1380156.i.us.ph, %.lr.ph159.i.us.preheader ] ; 2 uses
  %prol.iter888 = phi i32 [ %prol.iter888.next, %.lr.ph159.i.us.prol ], [ 0, %.lr.ph159.i.us.preheader ]
  %i.oe = load i64, ptr %.1380156.i.us.prol, align 1, !tbaa !17
  store i64 %i.oe, ptr %.25158.i.us.prol, align 1, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %.25158.i.us.prol, i64 8 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1380156.i.us.prol, i64 8 ; 2 uses
  %i.oh = add nuw nsw i32 %.1378157.i.us.prol, 1  ; 2 uses
  %prol.iter888.next = add i32 %prol.iter888, 1   ; 2 uses
  %prol.iter888.cmp.not = icmp eq i32 %prol.iter888.next, %xtraiter886
  br i1 %prol.iter888.cmp.not, label %.lr.ph159.i.us.prol.loopexit, label %.lr.ph159.i.us.prol, !llvm.loop !54

.lr.ph159.i.us.prol.loopexit:                     ; preds = %.lr.ph159.i.us.prol, %.lr.ph159.i.us.preheader
  %.lcssa769.unr = phi ptr [ poison, %.lr.ph159.i.us.preheader ], [ %i.of, %.lr.ph159.i.us.prol ]
  %.25158.i.us.unr = phi ptr [ %.25158.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.of, %.lr.ph159.i.us.prol ]
  %.1378157.i.us.unr = phi i32 [ %.1378157.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.oh, %.lr.ph159.i.us.prol ]
  %.1380156.i.us.unr = phi ptr [ %.1380156.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.og, %.lr.ph159.i.us.prol ]
  %i.oi = sub i32 %.1378157.i.us.ph, %5
  %i.oj = icmp ugt i32 %i.oi, -8
  br i1 %i.oj, label %.loopexit.i.us, label %.lr.ph159.i.us

.lr.ph159.i.us:                                   ; preds = %.lr.ph159.i.us.prol.loopexit, %.lr.ph159.i.us
  %.25158.i.us = phi ptr [ %i.pg, %.lr.ph159.i.us ], [ %.25158.i.us.unr, %.lr.ph159.i.us.prol.loopexit ] ; 9 uses
  %.1378157.i.us = phi i32 [ %i.pi, %.lr.ph159.i.us ], [ %.1378157.i.us.unr, %.lr.ph159.i.us.prol.loopexit ]
end_hunk_0
begin_hunk_1_@_ZN4ncnn37transpose_pack_A_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.co = load <4 x i64>, ptr %i.cn, align 1, !tbaa !17
  store <4 x i64> %i.co, ptr %i.cm, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 224
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.k ; 2 uses
  %i.cr = load <4 x i64>, ptr %i.cq, align 1, !tbaa !17
  store <4 x i64> %i.cr, ptr %i.cp, align 1, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 256 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.k
  %i.cu = add nuw nsw i32 %.1583169.i.us.us.us.us, 8 ; 2 uses
  %exitcond.not.i.us.us.us.us.7 = icmp eq i32 %i.cu, %5
  br i1 %exitcond.not.i.us.us.us.us.7, label %.loopexit138.i.us.us.us.us, label %.lr.ph172.i.us.us.us.us, !llvm.loop !161

.loopexit138.i.us.us.us.us:                       ; preds = %.lr.ph172.i.us.us.us.us.prol.loopexit, %.lr.ph172.i.us.us.us.us, %.preheader137.i.us.us.us.us
  %.9.i.us.us.us.us = phi ptr [ %.7.lcssa.i.us.us.us.us, %.preheader137.i.us.us.us.us ], [ %.lcssa232.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ], [ %i.cs, %.lr.ph172.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 16 ; 3 uses
  %i.cv = or disjoint i64 %indvars.iv.next.i.us.us.us.us, 15
  %i.cw = icmp samesign ult i64 %i.cv, %i.v
  br i1 %i.cw, label %.loopexit145.i.us.us.us.us, label %.preheader136.loopexit.i, !llvm.loop !162

.loopexit145.i.us.us:                             ; preds = %.loopexit145.i.us.us.preheader, %.loopexit138.i.loopexit17.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit138.i.loopexit17.us.us ], [ 0, %.loopexit145.i.us.us.preheader ] ; 2 uses
  %.0549175.i.us.us = phi ptr [ %.lcssa234, %.loopexit138.i.loopexit17.us.us ], [ %.val, %.loopexit145.i.us.us.preheader ] ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.n
  %i.cz = add nsw i64 %indvars.iv.i.us.us, %i.w
  %i.da = mul nsw i64 %i.cz, %i.x
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.da ; 2 uses
  br i1 %i.ad, label %.lr.ph159.i.us.us.epil.preheader, label %.lr.ph159.i.us.us

.lr.ph159.i.us.us:                                ; preds = %.loopexit145.i.us.us, %.lr.ph159.i.us.us
  %.5554158.i.us.us = phi ptr [ %i.dq, %.lr.ph159.i.us.us ], [ %.0549175.i.us.us, %.loopexit145.i.us.us ] ; 5 uses
  %.4565157.i.us.us = phi ptr [ %i.dr, %.lr.ph159.i.us.us ], [ %i.db, %.loopexit145.i.us.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph159.i.us.us ], [ 0, %.loopexit145.i.us.us ]
  %i.dc = load <16 x i32>, ptr %.4565157.i.us.us, align 1, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us, i64 64
  %i.de = load <16 x i32>, ptr %i.dd, align 1, !tbaa !17 ; 2 uses
  %i.df = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dg = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.df, ptr %.5554158.i.us.us, align 1, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 64
  store <16 x i32> %i.dg, ptr %i.dh, align 1, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us, i64 %.idx625.i ; 3 uses
  %i.dk = load <16 x i32>, ptr %i.dj, align 1, !tbaa !17 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dm = load <16 x i32>, ptr %i.dl, align 1, !tbaa !17 ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.do = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.dn, ptr %i.di, align 1, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 192
  store <16 x i32> %i.do, ptr %i.dp, align 1, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 256 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx625.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit138.i.loopexit17.us.us.unr-lcssa, label %.lr.ph159.i.us.us, !llvm.loop !163

.loopexit138.i.loopexit17.us.us.unr-lcssa:        ; preds = %.lr.ph159.i.us.us
  br i1 %lcmp.mod.not.not, label %.lr.ph159.i.us.us.epil.preheader, label %.loopexit138.i.loopexit17.us.us

.lr.ph159.i.us.us.epil.preheader:                 ; preds = %.loopexit138.i.loopexit17.us.us.unr-lcssa, %.loopexit145.i.us.us
  %.5554158.i.us.us.epil.init = phi ptr [ %.0549175.i.us.us, %.loopexit145.i.us.us ], [ %i.dq, %.loopexit138.i.loopexit17.us.us.unr-lcssa ] ; 3 uses
  %.4565157.i.us.us.epil.init = phi ptr [ %i.db, %.loopexit145.i.us.us ], [ %i.dr, %.loopexit138.i.loopexit17.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %i.ds = load <16 x i32>, ptr %.4565157.i.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us.epil.init, i64 64
  %i.du = load <16 x i32>, ptr %i.dt, align 1, !tbaa !17 ; 2 uses
  %i.dv = shufflevector <16 x i32> %i.ds, <16 x i32> %i.du, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dw = shufflevector <16 x i32> %i.ds, <16 x i32> %i.du, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.dv, ptr %.5554158.i.us.us.epil.init, align 1, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us.epil.init, i64 64
  store <16 x i32> %i.dw, ptr %i.dx, align 1, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us.epil.init, i64 128
  br label %.loopexit138.i.loopexit17.us.us

.loopexit138.i.loopexit17.us.us:                  ; preds = %.loopexit138.i.loopexit17.us.us.unr-lcssa, %.lr.ph159.i.us.us.epil.preheader
  %.lcssa234 = phi ptr [ %i.dq, %.loopexit138.i.loopexit17.us.us.unr-lcssa ], [ %i.dy, %.lr.ph159.i.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 16 ; 3 uses
  %i.dz = or disjoint i64 %indvars.iv.next.i.us.us, 15
  %i.ea = icmp samesign ult i64 %i.dz, %i.v
  br i1 %i.ea, label %.loopexit145.i.us.us, label %.preheader136.loopexit.i, !llvm.loop !162

.loopexit145.i.us:                                ; preds = %.lr.ph176.i.split.us, %.loopexit138.i.loopexit18.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit138.i.loopexit18.us ], [ 0, %.lr.ph176.i.split.us ] ; 2 uses
  %.0549175.i.us = phi ptr [ %i.fc, %.loopexit138.i.loopexit18.us ], [ %.val, %.lr.ph176.i.split.us ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !9
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.n
  %i.ed = add nsw i64 %indvars.iv.i.us, %i.w
  %i.ee = mul nsw i64 %i.ed, %i.x
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ee
  br label %.lr.ph153.i.us

.lr.ph153.i.us:                                   ; preds = %.loopexit145.i.us, %.lr.ph153.i.us
  %.3552152.i.us = phi ptr [ %i.fc, %.lr.ph153.i.us ], [ %.0549175.i.us, %.loopexit145.i.us ] ; 5 uses
  %.2563151.i.us = phi ptr [ %i.fd, %.lr.ph153.i.us ], [ %i.ef, %.loopexit145.i.us ] ; 5 uses
  %.0580150.i.us = phi i32 [ %i.fe, %.lr.ph153.i.us ], [ 0, %.loopexit145.i.us ]
  %i.eg = load <16 x i32>, ptr %.2563151.i.us, align 1, !tbaa !17 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 64
  %i.ei = load <16 x i32>, ptr %i.eh, align 1, !tbaa !17 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 128
  %i.ek = load <16 x i32>, ptr %i.ej, align 1, !tbaa !17 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 192
  %i.em = load <16 x i32>, ptr %i.el, align 1, !tbaa !17 ; 4 uses
  %i.en = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x i32> %i.en, <16 x i32> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ew = shufflevector <16 x i32> %i.eo, <16 x i32> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ex = shufflevector <16 x i32> %i.ep, <16 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ey = shufflevector <16 x i32> %i.eq, <16 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i32> %i.ev, ptr %.3552152.i.us, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 64
  store <16 x i32> %i.ew, ptr %i.ez, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 128
  store <16 x i32> %i.ex, ptr %i.fa, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 192
  store <16 x i32> %i.ey, ptr %i.fb, align 1, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 256 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 %.idx626.i
  %i.fe = add nuw nsw i32 %.0580150.i.us, 8       ; 2 uses
  %i.ff = or disjoint i32 %i.fe, 7
  %i.fg = icmp slt i32 %i.ff, %5
  br i1 %i.fg, label %.lr.ph153.i.us, label %.loopexit138.i.loopexit18.us, !llvm.loop !164

.loopexit138.i.loopexit18.us:                     ; preds = %.lr.ph153.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.fh = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.fi = icmp samesign ult i64 %i.fh, %i.v
  br i1 %i.fi, label %.loopexit145.i.us, label %.preheader136.loopexit.i, !llvm.loop !162

.preheader136.loopexit.i:                         ; preds = %.loopexit138.i.loopexit19, %.loopexit138.i.loopexit18.us, %.loopexit138.i.loopexit17.us.us, %.loopexit138.i.us.us.us.us, %.loopexit145.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.9.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %.val, %.loopexit145.i.us.us.us.preheader ], [ %i.fc, %.loopexit138.i.loopexit18.us ], [ %.lcssa234, %.loopexit138.i.loopexit17.us.us ], [ %i.pk, %.loopexit138.i.loopexit19 ]
  %.us-phi47 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %i.ak, %.loopexit145.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit138.i.loopexit18.us ], [ %indvars.iv.next.i.us.us, %.loopexit138.i.loopexit17.us.us ], [ %indvars.iv.next.i, %.loopexit138.i.loopexit19 ]
  %i.fj = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader136.i

.preheader136.i:                                  ; preds = %.preheader136.loopexit.i, %bb.a
  %.0556.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.fj, %.preheader136.loopexit.i ] ; 3 uses
  %.0549.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader136.loopexit.i ] ; 6 uses
  %i.fk = or disjoint i32 %.0556.lcssa.i, 7
  %i.fl = icmp slt i32 %i.fk, %3
  br i1 %i.fl, label %.lr.ph211.i, label %.preheader126.i

.lr.ph211.i:                                      ; preds = %.preheader136.i
  %i.fm = sext i32 %4 to i64
  %i.fn = mul i64 %i.k, %i.fm                     ; 4 uses
  %i.fo = icmp ne i32 %i.b, 16
  %i.fp = icmp slt i32 %5, 16
  %.idx623.i = shl i64 %i.k, 5
  %.idx622.i = shl i64 %i.k, 4
  %i.fq = icmp ne i32 %i.b, 4
  %i.fr = icmp slt i32 %5, 4
  %.idx621.i = shl i64 %i.k, 3
  %i.fs = icmp eq i32 %i.b, 1
  %i.ft = icmp sgt i32 %5, 1
  %.idx620.i = shl i64 %i.k, 2                    ; 3 uses
  %i.fu = and i32 %5, -2                          ; 2 uses
  %i.fv = zext i32 %.0556.lcssa.i to i64          ; 7 uses
  %i.fw = sext i32 %3 to i64
  %i.fx = sext i32 %2 to i64                      ; 4 uses
  %i.fy = sext i32 %i.b to i64                    ; 4 uses
  %brmerge319.i = or i1 %i.fp, %i.fo
  %brmerge325.i = or i1 %i.fr, %i.fq
  %invariant.op.i = add nsw i64 %i.fw, -7         ; 5 uses
  br i1 %brmerge319.i, label %.lr.ph211.i.split.us, label %.lr.ph182.i.preheader

.lr.ph211.i.split.us:                             ; preds = %.lr.ph211.i
  %i.fz = icmp slt i32 %5, 8
  %i.ga = icmp ne i32 %i.b, 8
  %brmerge322.i = or i1 %i.fz, %i.ga
  br i1 %brmerge322.i, label %.lr.ph211.i.split.us.split.us, label %.loopexit135.i.us

.lr.ph211.i.split.us.split.us:                    ; preds = %.lr.ph211.i.split.us
  br i1 %brmerge325.i, label %.lr.ph211.i.split.us.split.us.split.us, label %.loopexit135.i.us.us

.lr.ph211.i.split.us.split.us.split.us:           ; preds = %.lr.ph211.i.split.us.split.us
  br i1 %i.fs, label %.loopexit135.i.us.us.us.us.preheader, label %.loopexit135.i.us.us.us.preheader

.loopexit135.i.us.us.us.us.preheader:             ; preds = %.lr.ph211.i.split.us.split.us.split.us
  %i.gb = add i32 %5, -2                          ; 2 uses
  %i.gc = lshr i32 %i.gb, 1                       ; 2 uses
  %i.gd = add nuw i32 %i.gc, 1                    ; 2 uses
  %i.ge = icmp eq i32 %i.gc, 0
  %unroll_iter255 = and i32 %i.gd, -2
  %i.gf = and i32 %i.gb, 2
  %lcmp.mod251.not.not = icmp eq i32 %i.gf, 0
  %lcmp.mod254 = trunc i32 %i.gd to i1
  br label %.loopexit135.i.us.us.us.us

.loopexit135.i.us.us.us.preheader:                ; preds = %.lr.ph211.i.split.us.split.us.split.us
  %i.gg = add nuw nsw i64 %i.fv, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.gg)
  %i.gh = xor i64 %i.fv, -1
  %i.gi = add nsw i64 %smax, %i.gh
  %i.gj = and i64 %i.gi, -8
  %i.gk = add i64 %i.gj, %i.fv
  %i.gl = add i64 %i.gk, 8
  br label %.preheader126.loopexit.i

.loopexit135.i.us.us.us.us:                       ; preds = %.loopexit135.i.us.us.us.us.preheader, %.loopexit128.i.us.us.us.us
  %indvars.iv408.i.us.us.us.us = phi i64 [ %indvars.iv.next409.i.us.us.us.us, %.loopexit128.i.us.us.us.us ], [ %i.fv, %.loopexit135.i.us.us.us.us.preheader ] ; 2 uses
  %.10210.i.us.us.us.us = phi ptr [ %.19.i.us.us.us.us, %.loopexit128.i.us.us.us.us ], [ %.0549.lcssa.i, %.loopexit135.i.us.us.us.us.preheader ] ; 3 uses
  %i.gm = load ptr, ptr %0, align 8, !tbaa !9
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.fn
  %i.go = add nsw i64 %indvars.iv408.i.us.us.us.us, %i.fx
  %i.gp = mul nuw nsw i64 %i.go, %i.fy
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.gp ; 3 uses
  br i1 %i.ft, label %.lr.ph200.i.us.us.us.us.preheader, label %.preheader127.i.us.us.us.us

.lr.ph200.i.us.us.us.us.preheader:                ; preds = %.loopexit135.i.us.us.us.us
  br i1 %i.ge, label %.lr.ph200.i.us.us.us.us.epil.preheader, label %.lr.ph200.i.us.us.us.us

.lr.ph200.i.us.us.us.us:                          ; preds = %.lr.ph200.i.us.us.us.us.preheader, %.lr.ph200.i.us.us.us.us
  %.17199.i.us.us.us.us = phi ptr [ %i.hf, %.lr.ph200.i.us.us.us.us ], [ %.10210.i.us.us.us.us, %.lr.ph200.i.us.us.us.us.preheader ] ; 5 uses
  %.6592198.i.us.us.us.us = phi ptr [ %i.hg, %.lr.ph200.i.us.us.us.us ], [ %i.gq, %.lr.ph200.i.us.us.us.us.preheader ] ; 3 uses
  %niter256 = phi i32 [ %niter256.next.1, %.lr.ph200.i.us.us.us.us ], [ 0, %.lr.ph200.i.us.us.us.us.preheader ]
  %i.gr = load <8 x i16>, ptr %.6592198.i.us.us.us.us, align 1, !tbaa !17 ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %.6592198.i.us.us.us.us, i64 %i.k
  %i.gt = load <8 x i16>, ptr %i.gs, align 1, !tbaa !17 ; 2 uses
  %i.gu = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gv = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.gu, ptr %.17199.i.us.us.us.us, align 1, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 16
  store <8 x i16> %i.gv, ptr %i.gw, align 1, !tbaa !17
  %i.gx = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %.6592198.i.us.us.us.us, i64 %.idx620.i ; 3 uses
  %i.gz = load <8 x i16>, ptr %i.gy, align 1, !tbaa !17 ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.k
  %i.hb = load <8 x i16>, ptr %i.ha, align 1, !tbaa !17 ; 2 uses
  %i.hc = shufflevector <8 x i16> %i.gz, <8 x i16> %i.hb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hd = shufflevector <8 x i16> %i.gz, <8 x i16> %i.hb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.hc, ptr %i.gx, align 1, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 48
  store <8 x i16> %i.hd, ptr %i.he, align 1, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 64 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx620.i ; 3 uses
  %niter256.next.1 = add nuw nsw i32 %niter256, 2 ; 2 uses
  %niter256.ncmp.1.not = icmp eq i32 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1.not, label %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph200.i.us.us.us.us, !llvm.loop !165

.preheader127.i.us.us.us.us.loopexit.unr-lcssa:   ; preds = %.lr.ph200.i.us.us.us.us
  br i1 %lcmp.mod251.not.not, label %.lr.ph200.i.us.us.us.us.epil.preheader, label %.preheader127.i.us.us.us.us

.lr.ph200.i.us.us.us.us.epil.preheader:           ; preds = %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, %.lr.ph200.i.us.us.us.us.preheader
  %.17199.i.us.us.us.us.epil.init = phi ptr [ %.10210.i.us.us.us.us, %.lr.ph200.i.us.us.us.us.preheader ], [ %i.hf, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  %.6592198.i.us.us.us.us.epil.init = phi ptr [ %i.gq, %.lr.ph200.i.us.us.us.us.preheader ], [ %i.hg, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.hh = load <8 x i16>, ptr %.6592198.i.us.us.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.6592198.i.us.us.us.us.epil.init, i64 %i.k
  %i.hj = load <8 x i16>, ptr %i.hi, align 1, !tbaa !17 ; 2 uses
  %i.hk = shufflevector <8 x i16> %i.hh, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hl = shufflevector <8 x i16> %i.hh, <8 x i16> %i.hj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.hk, ptr %.17199.i.us.us.us.us.epil.init, align 1, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us.epil.init, i64 16
  store <8 x i16> %i.hl, ptr %i.hm, align 1, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us.epil.init, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %.6592198.i.us.us.us.us.epil.init, i64 %.idx620.i
  br label %.preheader127.i.us.us.us.us

.preheader127.i.us.us.us.us:                      ; preds = %.lr.ph200.i.us.us.us.us.epil.preheader, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, %.loopexit135.i.us.us.us.us
  %.0597.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit135.i.us.us.us.us ], [ %i.fu, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 5 uses
  %.6592.lcssa.i.us.us.us.us = phi ptr [ %i.gq, %.loopexit135.i.us.us.us.us ], [ %i.hg, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.ho, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 2 uses
  %.17.lcssa.i.us.us.us.us = phi ptr [ %.10210.i.us.us.us.us, %.loopexit135.i.us.us.us.us ], [ %i.hf, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.hn, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 3 uses
  %i.hp = icmp slt i32 %.0597.lcssa.i.us.us.us.us, %5
  br i1 %i.hp, label %.lr.ph207.i.us.us.us.us.preheader, label %.loopexit128.i.us.us.us.us

.lr.ph207.i.us.us.us.us.preheader:                ; preds = %.preheader127.i.us.us.us.us
  %i.hq = sub i32 %5, %.0597.lcssa.i.us.us.us.us
  %xtraiter257 = and i32 %i.hq, 7                 ; 2 uses
  %lcmp.mod258.not = icmp eq i32 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph207.i.us.us.us.us.prol.loopexit, label %.lr.ph207.i.us.us.us.us.prol

.lr.ph207.i.us.us.us.us.prol:                     ; preds = %.lr.ph207.i.us.us.us.us.preheader, %.lr.ph207.i.us.us.us.us.prol
  %.18206.i.us.us.us.us.prol = phi ptr [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ], [ %.17.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ] ; 2 uses
  %.7593205.i.us.us.us.us.prol = phi ptr [ %i.ht, %.lr.ph207.i.us.us.us.us.prol ], [ %.6592.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ] ; 2 uses
  %.1598204.i.us.us.us.us.prol = phi i32 [ %i.hu, %.lr.ph207.i.us.us.us.us.prol ], [ %.0597.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ]
  %prol.iter259 = phi i32 [ %prol.iter259.next, %.lr.ph207.i.us.us.us.us.prol ], [ 0, %.lr.ph207.i.us.us.us.us.preheader ]
  %i.hr = load <2 x i64>, ptr %.7593205.i.us.us.us.us.prol, align 1, !tbaa !17
  store <2 x i64> %i.hr, ptr %.18206.i.us.us.us.us.prol, align 1, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us.prol, i64 16 ; 3 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.7593205.i.us.us.us.us.prol, i64 %i.k ; 2 uses
  %i.hu = add nuw nsw i32 %.1598204.i.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter259.next = add i32 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i32 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.lr.ph207.i.us.us.us.us.prol.loopexit, label %.lr.ph207.i.us.us.us.us.prol, !llvm.loop !166

.lr.ph207.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph207.i.us.us.us.us.prol, %.lr.ph207.i.us.us.us.us.preheader
  %.lcssa223.unr = phi ptr [ poison, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ]
  %.18206.i.us.us.us.us.unr = phi ptr [ %.17.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ]
  %.7593205.i.us.us.us.us.unr = phi ptr [ %.6592.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.ht, %.lr.ph207.i.us.us.us.us.prol ]
  %.1598204.i.us.us.us.us.unr = phi i32 [ %.0597.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hu, %.lr.ph207.i.us.us.us.us.prol ]
  %i.hv = sub i32 %.0597.lcssa.i.us.us.us.us, %5
  %i.hw = icmp ugt i32 %i.hv, -8
  br i1 %i.hw, label %.loopexit128.i.us.us.us.us, label %.lr.ph207.i.us.us.us.us

.lr.ph207.i.us.us.us.us:                          ; preds = %.lr.ph207.i.us.us.us.us.prol.loopexit, %.lr.ph207.i.us.us.us.us
  %.18206.i.us.us.us.us = phi ptr [ %i.it, %.lr.ph207.i.us.us.us.us ], [ %.18206.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ] ; 9 uses
  %.7593205.i.us.us.us.us = phi ptr [ %i.iu, %.lr.ph207.i.us.us.us.us ], [ %.7593205.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.1598204.i.us.us.us.us = phi i32 [ %i.iv, %.lr.ph207.i.us.us.us.us ], [ %.1598204.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ]
  %i.hx = load <2 x i64>, ptr %.7593205.i.us.us.us.us, align 1, !tbaa !17
  store <2 x i64> %i.hx, ptr %.18206.i.us.us.us.us, align 1, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 16
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.7593205.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !17
  store <2 x i64> %i.ia, ptr %i.hy, align 1, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 32
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.k ; 2 uses
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !17
  store <2 x i64> %i.id, ptr %i.ib, align 1, !tbaa !17
  %i.ie = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 48
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.k ; 2 uses
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !17
  store <2 x i64> %i.ig, ptr %i.ie, align 1, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.k ; 2 uses
  %i.ij = load <2 x i64>, ptr %i.ii, align 1, !tbaa !17
  store <2 x i64> %i.ij, ptr %i.ih, align 1, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 80
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.k ; 2 uses
  %i.im = load <2 x i64>, ptr %i.il, align 1, !tbaa !17
  store <2 x i64> %i.im, ptr %i.ik, align 1, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 96
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.k ; 2 uses
  %i.ip = load <2 x i64>, ptr %i.io, align 1, !tbaa !17
  store <2 x i64> %i.ip, ptr %i.in, align 1, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 112
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.k ; 2 uses
  %i.is = load <2 x i64>, ptr %i.ir, align 1, !tbaa !17
  store <2 x i64> %i.is, ptr %i.iq, align 1, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 128 ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.k
  %i.iv = add nuw nsw i32 %.1598204.i.us.us.us.us, 8 ; 2 uses
  %exitcond407.not.i.us.us.us.us.7 = icmp eq i32 %i.iv, %5
  br i1 %exitcond407.not.i.us.us.us.us.7, label %.loopexit128.i.us.us.us.us, label %.lr.ph207.i.us.us.us.us, !llvm.loop !167

.loopexit128.i.us.us.us.us:                       ; preds = %.lr.ph207.i.us.us.us.us.prol.loopexit, %.lr.ph207.i.us.us.us.us, %.preheader127.i.us.us.us.us
  %.19.i.us.us.us.us = phi ptr [ %.17.lcssa.i.us.us.us.us, %.preheader127.i.us.us.us.us ], [ %.lcssa223.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ], [ %i.it, %.lr.ph207.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next409.i.us.us.us.us = add nuw nsw i64 %indvars.iv408.i.us.us.us.us, 8 ; 3 uses
  %i.iw = icmp slt i64 %indvars.iv.next409.i.us.us.us.us, %invariant.op.i
  br i1 %i.iw, label %.loopexit135.i.us.us.us.us, label %.preheader126.loopexit.i, !llvm.loop !168

.loopexit135.i.us.us:                             ; preds = %.lr.ph211.i.split.us.split.us, %.loopexit128.i.loopexit14.us.us
  %indvars.iv408.i.us.us = phi i64 [ %indvars.iv.next409.i.us.us, %.loopexit128.i.loopexit14.us.us ], [ %i.fv, %.lr.ph211.i.split.us.split.us ] ; 2 uses
  %.10210.i.us.us = phi ptr [ %i.ks, %.loopexit128.i.loopexit14.us.us ], [ %.0549.lcssa.i, %.lr.ph211.i.split.us.split.us ]
  %i.ix = load ptr, ptr %0, align 8, !tbaa !9
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.fn
  %i.iz = add nsw i64 %indvars.iv408.i.us.us, %i.fx
  %i.ja = mul nsw i64 %i.iz, %i.fy
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.iy, i64 %i.ja
  br label %.lr.ph194.i.us.us

.lr.ph194.i.us.us:                                ; preds = %.loopexit135.i.us.us, %.lr.ph194.i.us.us
  %.15193.i.us.us = phi ptr [ %i.ks, %.lr.ph194.i.us.us ], [ %.10210.i.us.us, %.loopexit135.i.us.us ] ; 5 uses
  %.4590192.i.us.us = phi ptr [ %i.kt, %.lr.ph194.i.us.us ], [ %i.jb, %.loopexit135.i.us.us ] ; 9 uses
  %.0596191.i.us.us = phi i32 [ %i.ku, %.lr.ph194.i.us.us ], [ 0, %.loopexit135.i.us.us ]
  %i.jc = load i64, ptr %.4590192.i.us.us, align 1, !tbaa !17
  %i.jd = insertelement <2 x i64> poison, i64 %i.jc, i64 0
  %i.je = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 8
  %i.jf = load i64, ptr %i.je, align 1, !tbaa !17
  %i.jg = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %i.jh = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 16
  %i.ji = load i64, ptr %i.jh, align 1, !tbaa !17
  %i.jj = insertelement <2 x i64> poison, i64 %i.ji, i64 0
  %i.jk = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 24
  %i.jl = load i64, ptr %i.jk, align 1, !tbaa !17
  %i.jm = insertelement <2 x i64> poison, i64 %i.jl, i64 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 32
  %i.jo = load i64, ptr %i.jn, align 1, !tbaa !17
  %i.jp = insertelement <2 x i64> poison, i64 %i.jo, i64 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 40
  %i.jr = load i64, ptr %i.jq, align 1, !tbaa !17
  %i.js = insertelement <2 x i64> poison, i64 %i.jr, i64 0
  %i.jt = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 48
  %i.ju = load i64, ptr %i.jt, align 1, !tbaa !17
  %i.jv = insertelement <2 x i64> poison, i64 %i.ju, i64 0
  %i.jw = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 56
  %i.jx = load i64, ptr %i.jw, align 1, !tbaa !17
  %i.jy = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %i.jz = bitcast <2 x i64> %i.jd to <4 x i32>
  %i.ka = bitcast <2 x i64> %i.jg to <4 x i32>
  %i.kb = shufflevector <4 x i32> %i.jz, <4 x i32> %i.ka, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kc = bitcast <2 x i64> %i.jj to <4 x i32>
  %i.kd = bitcast <2 x i64> %i.jm to <4 x i32>
  %i.ke = shufflevector <4 x i32> %i.kc, <4 x i32> %i.kd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kf = bitcast <2 x i64> %i.jp to <4 x i32>
  %i.kg = bitcast <2 x i64> %i.js to <4 x i32>
  %i.kh = shufflevector <4 x i32> %i.kf, <4 x i32> %i.kg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ki = bitcast <2 x i64> %i.jv to <4 x i32>
  %i.kj = bitcast <2 x i64> %i.jy to <4 x i32>
  %i.kk = shufflevector <4 x i32> %i.ki, <4 x i32> %i.kj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kl = shufflevector <4 x i32> %i.kb, <4 x i32> %i.ke, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.km = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kn = shufflevector <4 x i32> %i.kb, <4 x i32> %i.ke, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ko = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.kl, ptr %.15193.i.us.us, align 1, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %.15193.i.us.us, i64 16
  store <4 x i32> %i.km, ptr %i.kp, align 1, !tbaa !17
end_hunk_1
begin_hunk_2_@_ZN4ncnn27pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %niter837.next.3 = add i32 %niter837, 4         ; 2 uses
  %niter837.ncmp.3.not = icmp eq i32 %niter837.next.3, %unroll_iter836
  br i1 %niter837.ncmp.3.not, label %.preheader34.i.us.loopexit.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !215

.preheader34.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod832.not, label %.preheader34.i.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.preheader34.i.us.loopexit.unr-lcssa, %.lr.ph.i.us.preheader
  %.136039.i.us.epil.init = phi ptr [ %.035999.i.us, %.lr.ph.i.us.preheader ], [ %i.io, %.preheader34.i.us.loopexit.unr-lcssa ]
  %.036638.i.us.epil.init = phi ptr [ %i.al, %.lr.ph.i.us.preheader ], [ %i.ip, %.preheader34.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod835)
  br label %.lr.ph.i.us.epil

.lr.ph.i.us.epil:                                 ; preds = %.lr.ph.i.us.epil, %.lr.ph.i.us.epil.preheader
  %.136039.i.us.epil = phi ptr [ %i.is, %.lr.ph.i.us.epil ], [ %.136039.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %.036638.i.us.epil = phi ptr [ %i.it, %.lr.ph.i.us.epil ], [ %.036638.i.us.epil.init, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %epil.iter831 = phi i32 [ %epil.iter831.next, %.lr.ph.i.us.epil ], [ 0, %.lr.ph.i.us.epil.preheader ]
  %i.iq = load <32 x i16>, ptr %.036638.i.us.epil, align 1, !tbaa !17
  %i.ir = shufflevector <32 x i16> %i.iq, <32 x i16> poison, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <32 x i16> %i.ir, ptr %.136039.i.us.epil, align 1, !tbaa !17
  %i.is = getelementptr inbounds nuw i8, ptr %.136039.i.us.epil, i64 64 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.036638.i.us.epil, i64 64 ; 2 uses
  %epil.iter831.next = add i32 %epil.iter831, 1   ; 2 uses
  %epil.iter831.cmp.not = icmp eq i32 %epil.iter831.next, %xtraiter830
  br i1 %epil.iter831.cmp.not, label %.preheader34.i.us, label %.lr.ph.i.us.epil, !llvm.loop !216

.preheader34.i.us:                                ; preds = %.preheader34.i.us.loopexit.unr-lcssa, %.lr.ph.i.us.epil, %.preheader36.i.us
  %.0384.lcssa.i.us = phi i32 [ 0, %.preheader36.i.us ], [ %i.t, %.lr.ph.i.us.epil ], [ %i.t, %.preheader34.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.0366.lcssa.i.us = phi ptr [ %i.al, %.preheader36.i.us ], [ %i.ip, %.preheader34.i.us.loopexit.unr-lcssa ], [ %i.it, %.lr.ph.i.us.epil ] ; 2 uses
  %.1360.lcssa.i.us = phi ptr [ %.035999.i.us, %.preheader36.i.us ], [ %i.io, %.preheader34.i.us.loopexit.unr-lcssa ], [ %i.is, %.lr.ph.i.us.epil ] ; 3 uses
  %i.iu = icmp slt i32 %.0384.lcssa.i.us, %5
  br i1 %i.iu, label %.lr.ph45.i.us.preheader, label %.loopexit29.i.us

.lr.ph45.i.us.preheader:                          ; preds = %.preheader34.i.us
  %i.iv = sub i32 %5, %.0384.lcssa.i.us
  %xtraiter838 = and i32 %i.iv, 7                 ; 2 uses
  %lcmp.mod839.not = icmp eq i32 %xtraiter838, 0
  br i1 %lcmp.mod839.not, label %.lr.ph45.i.us.prol.loopexit, label %.lr.ph45.i.us.prol

.lr.ph45.i.us.prol:                               ; preds = %.lr.ph45.i.us.preheader, %.lr.ph45.i.us.prol
  %.244.i.us.prol = phi ptr [ %i.ix, %.lr.ph45.i.us.prol ], [ %.1360.lcssa.i.us, %.lr.ph45.i.us.preheader ] ; 2 uses
  %.136743.i.us.prol = phi ptr [ %i.iy, %.lr.ph45.i.us.prol ], [ %.0366.lcssa.i.us, %.lr.ph45.i.us.preheader ] ; 2 uses
  %.138542.i.us.prol = phi i32 [ %i.iz, %.lr.ph45.i.us.prol ], [ %.0384.lcssa.i.us, %.lr.ph45.i.us.preheader ]
  %prol.iter840 = phi i32 [ %prol.iter840.next, %.lr.ph45.i.us.prol ], [ 0, %.lr.ph45.i.us.preheader ]
  %i.iw = load <4 x i64>, ptr %.136743.i.us.prol, align 1, !tbaa !17
  store <4 x i64> %i.iw, ptr %.244.i.us.prol, align 1, !tbaa !17
  %i.ix = getelementptr inbounds nuw i8, ptr %.244.i.us.prol, i64 32 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.136743.i.us.prol, i64 32 ; 2 uses
  %i.iz = add nuw nsw i32 %.138542.i.us.prol, 1   ; 2 uses
  %prol.iter840.next = add i32 %prol.iter840, 1   ; 2 uses
  %prol.iter840.cmp.not = icmp eq i32 %prol.iter840.next, %xtraiter838
  br i1 %prol.iter840.cmp.not, label %.lr.ph45.i.us.prol.loopexit, label %.lr.ph45.i.us.prol, !llvm.loop !217

.lr.ph45.i.us.prol.loopexit:                      ; preds = %.lr.ph45.i.us.prol, %.lr.ph45.i.us.preheader
  %.lcssa809.unr = phi ptr [ poison, %.lr.ph45.i.us.preheader ], [ %i.ix, %.lr.ph45.i.us.prol ]
  %.244.i.us.unr = phi ptr [ %.1360.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.ix, %.lr.ph45.i.us.prol ]
  %.136743.i.us.unr = phi ptr [ %.0366.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.iy, %.lr.ph45.i.us.prol ]
  %.138542.i.us.unr = phi i32 [ %.0384.lcssa.i.us, %.lr.ph45.i.us.preheader ], [ %i.iz, %.lr.ph45.i.us.prol ]
  %i.ja = sub i32 %.0384.lcssa.i.us, %5
  %i.jb = icmp ugt i32 %i.ja, -8
  br i1 %i.jb, label %.loopexit29.i.us, label %.lr.ph45.i.us

.lr.ph45.i.us:                                    ; preds = %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us
  %.244.i.us = phi ptr [ %i.jy, %.lr.ph45.i.us ], [ %.244.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 9 uses
  %.136743.i.us = phi ptr [ %i.jz, %.lr.ph45.i.us ], [ %.136743.i.us.unr, %.lr.ph45.i.us.prol.loopexit ] ; 9 uses
  %.138542.i.us = phi i32 [ %i.ka, %.lr.ph45.i.us ], [ %.138542.i.us.unr, %.lr.ph45.i.us.prol.loopexit ]
  %i.jc = load <4 x i64>, ptr %.136743.i.us, align 1, !tbaa !17
  store <4 x i64> %i.jc, ptr %.244.i.us, align 1, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 32
  %i.jf = load <4 x i64>, ptr %i.je, align 1, !tbaa !17
  store <4 x i64> %i.jf, ptr %i.jd, align 1, !tbaa !17
  %i.jg = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 64
  %i.ji = load <4 x i64>, ptr %i.jh, align 1, !tbaa !17
  store <4 x i64> %i.ji, ptr %i.jg, align 1, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 96
  %i.jk = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 96
  %i.jl = load <4 x i64>, ptr %i.jk, align 1, !tbaa !17
  store <4 x i64> %i.jl, ptr %i.jj, align 1, !tbaa !17
  %i.jm = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 128
  %i.jn = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 128
  %i.jo = load <4 x i64>, ptr %i.jn, align 1, !tbaa !17
  store <4 x i64> %i.jo, ptr %i.jm, align 1, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 160
  %i.jq = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 160
  %i.jr = load <4 x i64>, ptr %i.jq, align 1, !tbaa !17
  store <4 x i64> %i.jr, ptr %i.jp, align 1, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 192
  %i.jt = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 192
  %i.ju = load <4 x i64>, ptr %i.jt, align 1, !tbaa !17
  store <4 x i64> %i.ju, ptr %i.js, align 1, !tbaa !17
  %i.jv = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 224
  %i.jw = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 224
  %i.jx = load <4 x i64>, ptr %i.jw, align 1, !tbaa !17
  store <4 x i64> %i.jx, ptr %i.jv, align 1, !tbaa !17
  %i.jy = getelementptr inbounds nuw i8, ptr %.244.i.us, i64 256 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.136743.i.us, i64 256
  %i.ka = add nuw nsw i32 %.138542.i.us, 8        ; 2 uses
  %exitcond.not.i.us.7 = icmp eq i32 %i.ka, %5
  br i1 %exitcond.not.i.us.7, label %.loopexit29.i.us, label %.lr.ph45.i.us, !llvm.loop !218

.loopexit29.i.us:                                 ; preds = %.lr.ph96.i.us.prol.loopexit, %.lr.ph96.i.us, %.lr.ph83.i.us.prol.loopexit, %.lr.ph83.i.us, %.lr.ph61.i.us.prol.loopexit, %.lr.ph61.i.us, %.lr.ph45.i.us.prol.loopexit, %.lr.ph45.i.us, %middle.block, %.preheader34.i.us, %.preheader32.i.us, %.preheader30.i.us, %.preheader28.i.us, %.split.i.us
  %.12.i.us = phi ptr [ %.035999.i.us, %.split.i.us ], [ %.10.lcssa.i.us, %.preheader28.i.us ], [ %i.fl, %.lr.ph83.i.us ], [ %i.jy, %.lr.ph45.i.us ], [ %.7.lcssa.i.us, %.preheader30.i.us ], [ %i.hw, %.lr.ph61.i.us ], [ %.4.lcssa.i.us, %.preheader32.i.us ], [ %.1360.lcssa.i.us, %.preheader34.i.us ], [ %i.dq, %middle.block ], [ %.lcssa809.unr, %.lr.ph45.i.us.prol.loopexit ], [ %.lcssa806.unr, %.lr.ph61.i.us.prol.loopexit ], [ %.lcssa802.unr, %.lr.ph83.i.us.prol.loopexit ], [ %.lcssa796.unr, %.lr.ph96.i.us.prol.loopexit ], [ %i.by, %.lr.ph96.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.kb = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.kc = icmp samesign ult i64 %i.kb, %i.u
  br i1 %i.kc, label %.split.i.us, label %.preheader27.loopexit.i, !llvm.loop !219

.preheader27.loopexit.i:                          ; preds = %.loopexit29.i.us, %.loopexit29.i.preheader
  %.us-phi = phi ptr [ %.val, %.loopexit29.i.preheader ], [ %.12.i.us, %.loopexit29.i.us ]
  %.us-phi53 = phi i64 [ %i.ag, %.loopexit29.i.preheader ], [ %indvars.iv.next.i.us, %.loopexit29.i.us ]
  %i.kd = trunc nuw nsw i64 %.us-phi53 to i32
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %.preheader27.loopexit.i, %bb.a
  %.0361.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.kd, %.preheader27.loopexit.i ] ; 3 uses
  %.0359.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader27.loopexit.i ] ; 2 uses
  %i.ke = or disjoint i32 %.0361.lcssa.i, 7
  %i.kf = icmp slt i32 %i.ke, %3
  br i1 %i.kf, label %.lr.ph146.i, label %.preheader19.i

.lr.ph146.i:                                      ; preds = %.preheader27.i
  %i.kg = mul nsw i32 %i.b, %4
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp sgt i32 %5, 1                      ; 3 uses
  %.idx417.i = shl i64 %i.k, 3
  %i.kj = trunc i64 %i.k to i32
  %i.kk = insertelement <8 x i32> poison, i32 %i.kj, i64 0
  %i.kl = shufflevector <8 x i32> %i.kk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.km = mul <8 x i32> %i.kl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.kn = and i32 %5, -2                          ; 6 uses
  %i.ko = zext nneg i32 %.0361.lcssa.i to i64
  %i.kp = sext i32 %3 to i64
  %i.kq = sext i32 %2 to i64
  %invariant.op.i = add nsw i64 %i.kp, -7
  %i.kr = add i32 %5, -2                          ; 4 uses
  %i.ks = lshr i32 %i.kr, 1                       ; 3 uses
  %i.kt = add nuw i32 %i.ks, 1                    ; 6 uses
  %xtraiter841 = and i32 %i.kt, 3                 ; 3 uses
  %i.ku = icmp ult i32 %i.kr, 6
  %unroll_iter847 = and i32 %i.kt, -4
  %lcmp.mod843.not = icmp eq i32 %xtraiter841, 0
  %lcmp.mod846 = icmp ne i32 %xtraiter841, 0
  %i.kv = icmp eq i32 %i.ks, 0
  %unroll_iter859 = and i32 %i.kt, -2
  %i.kw = and i32 %i.kr, 2
  %lcmp.mod854.not.not = icmp eq i32 %i.kw, 0
  %lcmp.mod858 = trunc i32 %i.kt to i1
  %i.kx = icmp eq i32 %i.ks, 0
  %unroll_iter870 = and i32 %i.kt, -2
  %i.ky = and i32 %i.kr, 2
  %lcmp.mod866.not.not = icmp eq i32 %i.ky, 0
  %lcmp.mod869 = trunc i32 %i.kt to i1
  br label %bb.f

.preheader19.loopexit.i:                          ; preds = %.loopexit21.i
  %i.kz = trunc nuw nsw i64 %indvars.iv.next317.i to i32
  br label %.preheader19.i

.preheader19.i:                                   ; preds = %.preheader19.loopexit.i, %.preheader27.i
  %.1362.lcssa.i = phi i32 [ %.0361.lcssa.i, %.preheader27.i ], [ %i.kz, %.preheader19.loopexit.i ] ; 3 uses
  %.13.lcssa.i = phi ptr [ %.0359.lcssa.i, %.preheader27.i ], [ %.22.i, %.preheader19.loopexit.i ] ; 4 uses
  %i.la = or disjoint i32 %.1362.lcssa.i, 3
  %i.lb = icmp slt i32 %i.la, %3
  br i1 %i.lb, label %.lr.ph185.i, label %.preheader14.i

.lr.ph185.i:                                      ; preds = %.preheader19.i
  %i.lc = mul i32 %i.b, %4
  %i.ld = sext i32 %i.lc to i64                   ; 4 uses
  %i.le = icmp sgt i32 %5, 1                      ; 2 uses
  %.idx.i = shl i64 %i.k, 2
  %.idx416.i = mul i64 %i.k, 6
  %i.lf = and i32 %5, -2                          ; 5 uses
  %i.lg = zext i32 %.1362.lcssa.i to i64          ; 8 uses
  %i.lh = sext i32 %3 to i64
  %i.li = sext i32 %2 to i64                      ; 3 uses
  %invariant.op410.i = add nsw i64 %i.lh, -3      ; 4 uses
  switch i32 %i.b, label %.loopexit.i.preheader [
    i32 4, label %.preheader18.i.us.preheader
    i32 1, label %.lr.ph185.i.split.us56
  ]

.preheader18.i.us.preheader:                      ; preds = %.lr.ph185.i
  %i.lj = add i32 %5, -2                          ; 2 uses
  %i.lk = lshr i32 %i.lj, 1
  %i.ll = add nuw i32 %i.lk, 1                    ; 2 uses
  %xtraiter878 = and i32 %i.ll, 3                 ; 3 uses
  %i.lm = icmp ult i32 %i.lj, 6
  %unroll_iter884 = and i32 %i.ll, -4
  %lcmp.mod880.not = icmp eq i32 %xtraiter878, 0
  %lcmp.mod883 = icmp ne i32 %xtraiter878, 0
  br label %.preheader18.i.us

.loopexit.i.preheader:                            ; preds = %.lr.ph185.i
  %i.ln = add nuw nsw i64 %i.lg, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op410.i, i64 %i.ln)
  %i.lo = xor i64 %i.lg, -1
  %i.lp = add nsw i64 %smax, %i.lo
  %i.lq = and i64 %i.lp, -4
  %i.lr = add i64 %i.lq, %i.lg
  %i.ls = add i64 %i.lr, 4
  br label %.preheader14.loopexit.i

.preheader18.i.us:                                ; preds = %.preheader18.i.us.preheader, %.loopexit.i.us
  %indvars.iv321.i.us = phi i64 [ %indvars.iv.next322.i.us, %.loopexit.i.us ], [ %i.lg, %.preheader18.i.us.preheader ] ; 2 uses
  %.23184.i.us = phi ptr [ %.29.i.us, %.loopexit.i.us ], [ %.13.lcssa.i, %.preheader18.i.us.preheader ] ; 3 uses
  %i.lt = load ptr, ptr %0, align 8, !tbaa !9
  %i.lu = add nsw i64 %indvars.iv321.i.us, %i.li
  %i.lv = mul i64 %i.lu, %i.k
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.lt, i64 %i.lv
  %i.lx = getelementptr inbounds [2 x i8], ptr %i.lw, i64 %i.ld ; 3 uses
  br i1 %i.le, label %.lr.ph152.i.us.preheader, label %.preheader16.i.us

.lr.ph152.i.us.preheader:                         ; preds = %.preheader18.i.us
  br i1 %i.lm, label %.lr.ph152.i.us.epil.preheader, label %.lr.ph152.i.us

.lr.ph152.i.us:                                   ; preds = %.lr.ph152.i.us.preheader, %.lr.ph152.i.us
  %.24151.i.us = phi ptr [ %i.mu, %.lr.ph152.i.us ], [ %.23184.i.us, %.lr.ph152.i.us.preheader ] ; 5 uses
  %.0379149.i.us = phi ptr [ %i.mv, %.lr.ph152.i.us ], [ %i.lx, %.lr.ph152.i.us.preheader ] ; 5 uses
  %niter885 = phi i32 [ %niter885.next.3, %.lr.ph152.i.us ], [ 0, %.lr.ph152.i.us.preheader ]
  %i.ly = load <2 x i64>, ptr %.0379149.i.us, align 1, !tbaa !17 ; 2 uses
  %i.lz = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.ma = bitcast <2 x i64> %i.ly to <8 x i16>
  %i.mb = shufflevector <8 x i16> %i.lz, <8 x i16> %i.ma, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mb, ptr %.24151.i.us, align 1, !tbaa !17
  %i.mc = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 16
  %i.me = load <2 x i64>, ptr %i.md, align 1, !tbaa !17 ; 2 uses
  %i.mf = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mg = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mh = shufflevector <8 x i16> %i.mf, <8 x i16> %i.mg, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mh, ptr %i.mc, align 1, !tbaa !17
  %i.mi = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 32
  %i.mk = load <2 x i64>, ptr %i.mj, align 1, !tbaa !17 ; 2 uses
  %i.ml = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mm = bitcast <2 x i64> %i.mk to <8 x i16>
  %i.mn = shufflevector <8 x i16> %i.ml, <8 x i16> %i.mm, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mn, ptr %i.mi, align 1, !tbaa !17
  %i.mo = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 48
  %i.mp = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 48
  %i.mq = load <2 x i64>, ptr %i.mp, align 1, !tbaa !17 ; 2 uses
  %i.mr = bitcast <2 x i64> %i.mq to <8 x i16>
  %i.ms = bitcast <2 x i64> %i.mq to <8 x i16>
  %i.mt = shufflevector <8 x i16> %i.mr, <8 x i16> %i.ms, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mt, ptr %i.mo, align 1, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %.24151.i.us, i64 64 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0379149.i.us, i64 64 ; 3 uses
  %niter885.next.3 = add i32 %niter885, 4         ; 2 uses
  %niter885.ncmp.3.not = icmp eq i32 %niter885.next.3, %unroll_iter884
  br i1 %niter885.ncmp.3.not, label %.preheader16.i.us.loopexit.unr-lcssa, label %.lr.ph152.i.us, !llvm.loop !220

.preheader16.i.us.loopexit.unr-lcssa:             ; preds = %.lr.ph152.i.us
  br i1 %lcmp.mod880.not, label %.preheader16.i.us, label %.lr.ph152.i.us.epil.preheader

.lr.ph152.i.us.epil.preheader:                    ; preds = %.preheader16.i.us.loopexit.unr-lcssa, %.lr.ph152.i.us.preheader
  %.24151.i.us.epil.init = phi ptr [ %.23184.i.us, %.lr.ph152.i.us.preheader ], [ %i.mu, %.preheader16.i.us.loopexit.unr-lcssa ]
  %.0379149.i.us.epil.init = phi ptr [ %i.lx, %.lr.ph152.i.us.preheader ], [ %i.mv, %.preheader16.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod883)
  br label %.lr.ph152.i.us.epil

.lr.ph152.i.us.epil:                              ; preds = %.lr.ph152.i.us.epil, %.lr.ph152.i.us.epil.preheader
  %.24151.i.us.epil = phi ptr [ %i.na, %.lr.ph152.i.us.epil ], [ %.24151.i.us.epil.init, %.lr.ph152.i.us.epil.preheader ] ; 2 uses
  %.0379149.i.us.epil = phi ptr [ %i.nb, %.lr.ph152.i.us.epil ], [ %.0379149.i.us.epil.init, %.lr.ph152.i.us.epil.preheader ] ; 2 uses
  %epil.iter879 = phi i32 [ %epil.iter879.next, %.lr.ph152.i.us.epil ], [ 0, %.lr.ph152.i.us.epil.preheader ]
  %i.mw = load <2 x i64>, ptr %.0379149.i.us.epil, align 1, !tbaa !17 ; 2 uses
  %i.mx = bitcast <2 x i64> %i.mw to <8 x i16>
  %i.my = bitcast <2 x i64> %i.mw to <8 x i16>
  %i.mz = shufflevector <8 x i16> %i.mx, <8 x i16> %i.my, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.mz, ptr %.24151.i.us.epil, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.24151.i.us.epil, i64 16 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0379149.i.us.epil, i64 16 ; 2 uses
  %epil.iter879.next = add i32 %epil.iter879, 1   ; 2 uses
  %epil.iter879.cmp.not = icmp eq i32 %epil.iter879.next, %xtraiter878
  br i1 %epil.iter879.cmp.not, label %.preheader16.i.us, label %.lr.ph152.i.us.epil, !llvm.loop !221

.preheader16.i.us:                                ; preds = %.preheader16.i.us.loopexit.unr-lcssa, %.lr.ph152.i.us.epil, %.preheader18.i.us
  %.0379.lcssa.i.us = phi ptr [ %i.lx, %.preheader18.i.us ], [ %i.mv, %.preheader16.i.us.loopexit.unr-lcssa ], [ %i.nb, %.lr.ph152.i.us.epil ] ; 6 uses
  %.0377.lcssa.i.us = phi i32 [ 0, %.preheader18.i.us ], [ %i.lf, %.lr.ph152.i.us.epil ], [ %i.lf, %.preheader16.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.24.lcssa.i.us = phi ptr [ %.23184.i.us, %.preheader18.i.us ], [ %i.mu, %.preheader16.i.us.loopexit.unr-lcssa ], [ %i.na, %.lr.ph152.i.us.epil ] ; 7 uses
  %i.nc = icmp slt i32 %.0377.lcssa.i.us, %5
  br i1 %i.nc, label %iter.check477, label %.loopexit.i.us

iter.check477:                                    ; preds = %.preheader16.i.us
  %.0379.lcssa.i.us455 = ptrtoaddr ptr %.0379.lcssa.i.us to i64
  %.24.lcssa.i.us454 = ptrtoaddr ptr %.24.lcssa.i.us to i64
  %i.nd = xor i32 %.0377.lcssa.i.us, -1
  %i.ne = add i32 %5, %i.nd                       ; 3 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = add nuw nsw i64 %i.nf, 1                ; 5 uses
  %min.iters.check457 = icmp ult i32 %i.ne, 7
  %i.nh = sub i64 %.0379.lcssa.i.us455, %.24.lcssa.i.us454
  %diff.check = icmp ugt i64 %i.nh, -256
  %or.cond = select i1 %min.iters.check457, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph159.i.us.preheader, label %vector.main.loop.iter.check458

vector.main.loop.iter.check458:                   ; preds = %iter.check477
  %min.iters.check459 = icmp ult i32 %i.ne, 31
  br i1 %min.iters.check459, label %vec.epilog.ph481, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check458
  %i.ni = and i64 %i.ng, 24
  %n.vec461 = and i64 %i.ng, 8589934560           ; 5 uses
  %i.nj = shl nuw nsw i64 %n.vec461, 3            ; 2 uses
  %i.nk = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.nj ; 2 uses
  %i.nl = trunc i64 %n.vec461 to i32
  %i.nm = add i32 %.0377.lcssa.i.us, %i.nl
  %i.nn = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.nj
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next470, %vector.body462 ] ; 2 uses
  %i.no = shl i64 %index463, 3                    ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.no ; 4 uses
  %next.gep465 = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.no ; 4 uses
  %i.np = getelementptr i8, ptr %next.gep465, i64 64
  %i.nq = getelementptr i8, ptr %next.gep465, i64 128
  %i.nr = getelementptr i8, ptr %next.gep465, i64 192
  %wide.load466 = load <8 x i64>, ptr %next.gep465, align 1, !tbaa !17
  %wide.load467 = load <8 x i64>, ptr %i.np, align 1, !tbaa !17
  %wide.load468 = load <8 x i64>, ptr %i.nq, align 1, !tbaa !17
  %wide.load469 = load <8 x i64>, ptr %i.nr, align 1, !tbaa !17
  %i.ns = getelementptr i8, ptr %next.gep464, i64 64
  %i.nt = getelementptr i8, ptr %next.gep464, i64 128
  %i.nu = getelementptr i8, ptr %next.gep464, i64 192
  store <8 x i64> %wide.load466, ptr %next.gep464, align 1, !tbaa !17
  store <8 x i64> %wide.load467, ptr %i.ns, align 1, !tbaa !17
  store <8 x i64> %wide.load468, ptr %i.nt, align 1, !tbaa !17
  store <8 x i64> %wide.load469, ptr %i.nu, align 1, !tbaa !17
  %index.next470 = add nuw i64 %index463, 32      ; 2 uses
  %i.nv = icmp eq i64 %index.next470, %n.vec461
  br i1 %i.nv, label %middle.block471, label %vector.body462, !llvm.loop !222

middle.block471:                                  ; preds = %vector.body462
  %cmp.n472 = icmp eq i64 %i.ng, %n.vec461
  br i1 %cmp.n472, label %.loopexit.i.us, label %vec.epilog.iter.check479

vec.epilog.iter.check479:                         ; preds = %middle.block471
  %min.epilog.iters.check480 = icmp eq i64 %i.ni, 0
  br i1 %min.epilog.iters.check480, label %.lr.ph159.i.us.preheader, label %vec.epilog.ph481, !prof !52

vec.epilog.ph481:                                 ; preds = %vector.main.loop.iter.check458, %vec.epilog.iter.check479
  %vec.epilog.resume.val473 = phi i64 [ %n.vec461, %vec.epilog.iter.check479 ], [ 0, %vector.main.loop.iter.check458 ]
  %n.vec482 = and i64 %i.ng, 8589934584           ; 4 uses
  %i.nw = shl nuw nsw i64 %n.vec482, 3            ; 2 uses
  %i.nx = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.nw ; 2 uses
  %i.ny = trunc i64 %n.vec482 to i32
  %i.nz = add i32 %.0377.lcssa.i.us, %i.ny
  %i.oa = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.nw
  br label %vec.epilog.vector.body483

vec.epilog.vector.body483:                        ; preds = %vec.epilog.vector.body483, %vec.epilog.ph481
  %index484 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph481 ], [ %index.next488, %vec.epilog.vector.body483 ] ; 2 uses
  %i.ob = shl i64 %index484, 3                    ; 2 uses
  %next.gep485 = getelementptr i8, ptr %.24.lcssa.i.us, i64 %i.ob
  %next.gep486 = getelementptr i8, ptr %.0379.lcssa.i.us, i64 %i.ob
  %wide.load487 = load <8 x i64>, ptr %next.gep486, align 1, !tbaa !17
  store <8 x i64> %wide.load487, ptr %next.gep485, align 1, !tbaa !17
  %index.next488 = add nuw i64 %index484, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.oc, label %vec.epilog.middle.block489, label %vec.epilog.vector.body483, !llvm.loop !223

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body483
  %cmp.n490 = icmp eq i64 %i.ng, %n.vec482
  br i1 %cmp.n490, label %.loopexit.i.us, label %.lr.ph159.i.us.preheader

.lr.ph159.i.us.preheader:                         ; preds = %iter.check477, %vec.epilog.iter.check479, %vec.epilog.middle.block489
  %.25158.i.us.ph = phi ptr [ %.24.lcssa.i.us, %iter.check477 ], [ %i.nk, %vec.epilog.iter.check479 ], [ %i.nx, %vec.epilog.middle.block489 ] ; 2 uses
  %.1378157.i.us.ph = phi i32 [ %.0377.lcssa.i.us, %iter.check477 ], [ %i.nm, %vec.epilog.iter.check479 ], [ %i.nz, %vec.epilog.middle.block489 ] ; 4 uses
  %.1380156.i.us.ph = phi ptr [ %.0379.lcssa.i.us, %iter.check477 ], [ %i.nn, %vec.epilog.iter.check479 ], [ %i.oa, %vec.epilog.middle.block489 ] ; 2 uses
  %i.od = sub i32 %5, %.1378157.i.us.ph
  %xtraiter886 = and i32 %i.od, 7                 ; 2 uses
  %lcmp.mod887.not = icmp eq i32 %xtraiter886, 0
  br i1 %lcmp.mod887.not, label %.lr.ph159.i.us.prol.loopexit, label %.lr.ph159.i.us.prol

.lr.ph159.i.us.prol:                              ; preds = %.lr.ph159.i.us.preheader, %.lr.ph159.i.us.prol
  %.25158.i.us.prol = phi ptr [ %i.of, %.lr.ph159.i.us.prol ], [ %.25158.i.us.ph, %.lr.ph159.i.us.preheader ] ; 2 uses
  %.1378157.i.us.prol = phi i32 [ %i.oh, %.lr.ph159.i.us.prol ], [ %.1378157.i.us.ph, %.lr.ph159.i.us.preheader ]
  %.1380156.i.us.prol = phi ptr [ %i.og, %.lr.ph159.i.us.prol ], [ %.1380156.i.us.ph, %.lr.ph159.i.us.preheader ] ; 2 uses
  %prol.iter888 = phi i32 [ %prol.iter888.next, %.lr.ph159.i.us.prol ], [ 0, %.lr.ph159.i.us.preheader ]
  %i.oe = load i64, ptr %.1380156.i.us.prol, align 1, !tbaa !17
  store i64 %i.oe, ptr %.25158.i.us.prol, align 1, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %.25158.i.us.prol, i64 8 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.1380156.i.us.prol, i64 8 ; 2 uses
  %i.oh = add nuw nsw i32 %.1378157.i.us.prol, 1  ; 2 uses
  %prol.iter888.next = add i32 %prol.iter888, 1   ; 2 uses
  %prol.iter888.cmp.not = icmp eq i32 %prol.iter888.next, %xtraiter886
  br i1 %prol.iter888.cmp.not, label %.lr.ph159.i.us.prol.loopexit, label %.lr.ph159.i.us.prol, !llvm.loop !224

.lr.ph159.i.us.prol.loopexit:                     ; preds = %.lr.ph159.i.us.prol, %.lr.ph159.i.us.preheader
  %.lcssa769.unr = phi ptr [ poison, %.lr.ph159.i.us.preheader ], [ %i.of, %.lr.ph159.i.us.prol ]
  %.25158.i.us.unr = phi ptr [ %.25158.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.of, %.lr.ph159.i.us.prol ]
  %.1378157.i.us.unr = phi i32 [ %.1378157.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.oh, %.lr.ph159.i.us.prol ]
  %.1380156.i.us.unr = phi ptr [ %.1380156.i.us.ph, %.lr.ph159.i.us.preheader ], [ %i.og, %.lr.ph159.i.us.prol ]
  %i.oi = sub i32 %.1378157.i.us.ph, %5
  %i.oj = icmp ugt i32 %i.oi, -8
  br i1 %i.oj, label %.loopexit.i.us, label %.lr.ph159.i.us

.lr.ph159.i.us:                                   ; preds = %.lr.ph159.i.us.prol.loopexit, %.lr.ph159.i.us
  %.25158.i.us = phi ptr [ %i.pg, %.lr.ph159.i.us ], [ %.25158.i.us.unr, %.lr.ph159.i.us.prol.loopexit ] ; 9 uses
  %.1378157.i.us = phi i32 [ %i.pi, %.lr.ph159.i.us ], [ %.1378157.i.us.unr, %.lr.ph159.i.us.prol.loopexit ]
end_hunk_2
begin_hunk_3_@_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.co = load <4 x i64>, ptr %i.cn, align 1, !tbaa !17
  store <4 x i64> %i.co, ptr %i.cm, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 224
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.k ; 2 uses
  %i.cr = load <4 x i64>, ptr %i.cq, align 1, !tbaa !17
  store <4 x i64> %i.cr, ptr %i.cp, align 1, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %.8171.i.us.us.us.us, i64 256 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.k
  %i.cu = add nuw nsw i32 %.1583169.i.us.us.us.us, 8 ; 2 uses
  %exitcond.not.i.us.us.us.us.7 = icmp eq i32 %i.cu, %5
  br i1 %exitcond.not.i.us.us.us.us.7, label %.loopexit138.i.us.us.us.us, label %.lr.ph172.i.us.us.us.us, !llvm.loop !326

.loopexit138.i.us.us.us.us:                       ; preds = %.lr.ph172.i.us.us.us.us.prol.loopexit, %.lr.ph172.i.us.us.us.us, %.preheader137.i.us.us.us.us
  %.9.i.us.us.us.us = phi ptr [ %.7.lcssa.i.us.us.us.us, %.preheader137.i.us.us.us.us ], [ %.lcssa232.unr, %.lr.ph172.i.us.us.us.us.prol.loopexit ], [ %i.cs, %.lr.ph172.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 16 ; 3 uses
  %i.cv = or disjoint i64 %indvars.iv.next.i.us.us.us.us, 15
  %i.cw = icmp samesign ult i64 %i.cv, %i.v
  br i1 %i.cw, label %.loopexit145.i.us.us.us.us, label %.preheader136.loopexit.i, !llvm.loop !327

.loopexit145.i.us.us:                             ; preds = %.loopexit145.i.us.us.preheader, %.loopexit138.i.loopexit17.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.loopexit138.i.loopexit17.us.us ], [ 0, %.loopexit145.i.us.us.preheader ] ; 2 uses
  %.0549175.i.us.us = phi ptr [ %.lcssa234, %.loopexit138.i.loopexit17.us.us ], [ %.val, %.loopexit145.i.us.us.preheader ] ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.n
  %i.cz = add nsw i64 %indvars.iv.i.us.us, %i.w
  %i.da = mul nsw i64 %i.cz, %i.x
  %i.db = getelementptr inbounds [2 x i8], ptr %i.cy, i64 %i.da ; 2 uses
  br i1 %i.ad, label %.lr.ph159.i.us.us.epil.preheader, label %.lr.ph159.i.us.us

.lr.ph159.i.us.us:                                ; preds = %.loopexit145.i.us.us, %.lr.ph159.i.us.us
  %.5554158.i.us.us = phi ptr [ %i.dq, %.lr.ph159.i.us.us ], [ %.0549175.i.us.us, %.loopexit145.i.us.us ] ; 5 uses
  %.4565157.i.us.us = phi ptr [ %i.dr, %.lr.ph159.i.us.us ], [ %i.db, %.loopexit145.i.us.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph159.i.us.us ], [ 0, %.loopexit145.i.us.us ]
  %i.dc = load <16 x i32>, ptr %.4565157.i.us.us, align 1, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us, i64 64
  %i.de = load <16 x i32>, ptr %i.dd, align 1, !tbaa !17 ; 2 uses
  %i.df = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dg = shufflevector <16 x i32> %i.dc, <16 x i32> %i.de, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.df, ptr %.5554158.i.us.us, align 1, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 64
  store <16 x i32> %i.dg, ptr %i.dh, align 1, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us, i64 %.idx625.i ; 3 uses
  %i.dk = load <16 x i32>, ptr %i.dj, align 1, !tbaa !17 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dm = load <16 x i32>, ptr %i.dl, align 1, !tbaa !17 ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.do = shufflevector <16 x i32> %i.dk, <16 x i32> %i.dm, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.dn, ptr %i.di, align 1, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 192
  store <16 x i32> %i.do, ptr %i.dp, align 1, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us, i64 256 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx625.i ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit138.i.loopexit17.us.us.unr-lcssa, label %.lr.ph159.i.us.us, !llvm.loop !328

.loopexit138.i.loopexit17.us.us.unr-lcssa:        ; preds = %.lr.ph159.i.us.us
  br i1 %lcmp.mod.not.not, label %.lr.ph159.i.us.us.epil.preheader, label %.loopexit138.i.loopexit17.us.us

.lr.ph159.i.us.us.epil.preheader:                 ; preds = %.loopexit138.i.loopexit17.us.us.unr-lcssa, %.loopexit145.i.us.us
  %.5554158.i.us.us.epil.init = phi ptr [ %.0549175.i.us.us, %.loopexit145.i.us.us ], [ %i.dq, %.loopexit138.i.loopexit17.us.us.unr-lcssa ] ; 3 uses
  %.4565157.i.us.us.epil.init = phi ptr [ %i.db, %.loopexit145.i.us.us ], [ %i.dr, %.loopexit138.i.loopexit17.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod240)
  %i.ds = load <16 x i32>, ptr %.4565157.i.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.4565157.i.us.us.epil.init, i64 64
  %i.du = load <16 x i32>, ptr %i.dt, align 1, !tbaa !17 ; 2 uses
  %i.dv = shufflevector <16 x i32> %i.ds, <16 x i32> %i.du, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.dw = shufflevector <16 x i32> %i.ds, <16 x i32> %i.du, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  store <16 x i32> %i.dv, ptr %.5554158.i.us.us.epil.init, align 1, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us.epil.init, i64 64
  store <16 x i32> %i.dw, ptr %i.dx, align 1, !tbaa !17
  %i.dy = getelementptr inbounds nuw i8, ptr %.5554158.i.us.us.epil.init, i64 128
  br label %.loopexit138.i.loopexit17.us.us

.loopexit138.i.loopexit17.us.us:                  ; preds = %.loopexit138.i.loopexit17.us.us.unr-lcssa, %.lr.ph159.i.us.us.epil.preheader
  %.lcssa234 = phi ptr [ %i.dq, %.loopexit138.i.loopexit17.us.us.unr-lcssa ], [ %i.dy, %.lr.ph159.i.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 16 ; 3 uses
  %i.dz = or disjoint i64 %indvars.iv.next.i.us.us, 15
  %i.ea = icmp samesign ult i64 %i.dz, %i.v
  br i1 %i.ea, label %.loopexit145.i.us.us, label %.preheader136.loopexit.i, !llvm.loop !327

.loopexit145.i.us:                                ; preds = %.lr.ph176.i.split.us, %.loopexit138.i.loopexit18.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit138.i.loopexit18.us ], [ 0, %.lr.ph176.i.split.us ] ; 2 uses
  %.0549175.i.us = phi ptr [ %i.fc, %.loopexit138.i.loopexit18.us ], [ %.val, %.lr.ph176.i.split.us ]
  %i.eb = load ptr, ptr %0, align 8, !tbaa !9
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.n
  %i.ed = add nsw i64 %indvars.iv.i.us, %i.w
  %i.ee = mul nsw i64 %i.ed, %i.x
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.ec, i64 %i.ee
  br label %.lr.ph153.i.us

.lr.ph153.i.us:                                   ; preds = %.loopexit145.i.us, %.lr.ph153.i.us
  %.3552152.i.us = phi ptr [ %i.fc, %.lr.ph153.i.us ], [ %.0549175.i.us, %.loopexit145.i.us ] ; 5 uses
  %.2563151.i.us = phi ptr [ %i.fd, %.lr.ph153.i.us ], [ %i.ef, %.loopexit145.i.us ] ; 5 uses
  %.0580150.i.us = phi i32 [ %i.fe, %.lr.ph153.i.us ], [ 0, %.loopexit145.i.us ]
  %i.eg = load <16 x i32>, ptr %.2563151.i.us, align 1, !tbaa !17 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 64
  %i.ei = load <16 x i32>, ptr %i.eh, align 1, !tbaa !17 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 128
  %i.ek = load <16 x i32>, ptr %i.ej, align 1, !tbaa !17 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 192
  %i.em = load <16 x i32>, ptr %i.el, align 1, !tbaa !17 ; 4 uses
  %i.en = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eo = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ep = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eq = shufflevector <16 x i32> %i.eg, <16 x i32> %i.ei, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.es = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eu = shufflevector <16 x i32> %i.ek, <16 x i32> %i.em, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ev = shufflevector <16 x i32> %i.en, <16 x i32> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ew = shufflevector <16 x i32> %i.eo, <16 x i32> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ex = shufflevector <16 x i32> %i.ep, <16 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ey = shufflevector <16 x i32> %i.eq, <16 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x i32> %i.ev, ptr %.3552152.i.us, align 1, !tbaa !17
  %i.ez = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 64
  store <16 x i32> %i.ew, ptr %i.ez, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 128
  store <16 x i32> %i.ex, ptr %i.fa, align 1, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 192
  store <16 x i32> %i.ey, ptr %i.fb, align 1, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %.3552152.i.us, i64 256 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.2563151.i.us, i64 %.idx626.i
  %i.fe = add nuw nsw i32 %.0580150.i.us, 8       ; 2 uses
  %i.ff = or disjoint i32 %i.fe, 7
  %i.fg = icmp slt i32 %i.ff, %5
  br i1 %i.fg, label %.lr.ph153.i.us, label %.loopexit138.i.loopexit18.us, !llvm.loop !329

.loopexit138.i.loopexit18.us:                     ; preds = %.lr.ph153.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 16 ; 3 uses
  %i.fh = or disjoint i64 %indvars.iv.next.i.us, 15
  %i.fi = icmp samesign ult i64 %i.fh, %i.v
  br i1 %i.fi, label %.loopexit145.i.us, label %.preheader136.loopexit.i, !llvm.loop !327

.preheader136.loopexit.i:                         ; preds = %.loopexit138.i.loopexit19, %.loopexit138.i.loopexit18.us, %.loopexit138.i.loopexit17.us.us, %.loopexit138.i.us.us.us.us, %.loopexit145.i.us.us.us.preheader
  %.us-phi = phi ptr [ %.9.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %.val, %.loopexit145.i.us.us.us.preheader ], [ %i.fc, %.loopexit138.i.loopexit18.us ], [ %.lcssa234, %.loopexit138.i.loopexit17.us.us ], [ %i.pk, %.loopexit138.i.loopexit19 ]
  %.us-phi47 = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.loopexit138.i.us.us.us.us ], [ %i.ak, %.loopexit145.i.us.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit138.i.loopexit18.us ], [ %indvars.iv.next.i.us.us, %.loopexit138.i.loopexit17.us.us ], [ %indvars.iv.next.i, %.loopexit138.i.loopexit19 ]
  %i.fj = trunc nuw nsw i64 %.us-phi47 to i32
  br label %.preheader136.i

.preheader136.i:                                  ; preds = %.preheader136.loopexit.i, %bb.a
  %.0556.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.fj, %.preheader136.loopexit.i ] ; 3 uses
  %.0549.lcssa.i = phi ptr [ %.val, %bb.a ], [ %.us-phi, %.preheader136.loopexit.i ] ; 6 uses
  %i.fk = or disjoint i32 %.0556.lcssa.i, 7
  %i.fl = icmp slt i32 %i.fk, %3
  br i1 %i.fl, label %.lr.ph211.i, label %.preheader126.i

.lr.ph211.i:                                      ; preds = %.preheader136.i
  %i.fm = sext i32 %4 to i64
  %i.fn = mul i64 %i.k, %i.fm                     ; 4 uses
  %i.fo = icmp ne i32 %i.b, 16
  %i.fp = icmp slt i32 %5, 16
  %.idx623.i = shl i64 %i.k, 5
  %.idx622.i = shl i64 %i.k, 4
  %i.fq = icmp ne i32 %i.b, 4
  %i.fr = icmp slt i32 %5, 4
  %.idx621.i = shl i64 %i.k, 3
  %i.fs = icmp eq i32 %i.b, 1
  %i.ft = icmp sgt i32 %5, 1
  %.idx620.i = shl i64 %i.k, 2                    ; 3 uses
  %i.fu = and i32 %5, -2                          ; 2 uses
  %i.fv = zext i32 %.0556.lcssa.i to i64          ; 7 uses
  %i.fw = sext i32 %3 to i64
  %i.fx = sext i32 %2 to i64                      ; 4 uses
  %i.fy = sext i32 %i.b to i64                    ; 4 uses
  %brmerge319.i = or i1 %i.fp, %i.fo
  %brmerge325.i = or i1 %i.fr, %i.fq
  %invariant.op.i = add nsw i64 %i.fw, -7         ; 5 uses
  br i1 %brmerge319.i, label %.lr.ph211.i.split.us, label %.lr.ph182.i.preheader

.lr.ph211.i.split.us:                             ; preds = %.lr.ph211.i
  %i.fz = icmp slt i32 %5, 8
  %i.ga = icmp ne i32 %i.b, 8
  %brmerge322.i = or i1 %i.fz, %i.ga
  br i1 %brmerge322.i, label %.lr.ph211.i.split.us.split.us, label %.loopexit135.i.us

.lr.ph211.i.split.us.split.us:                    ; preds = %.lr.ph211.i.split.us
  br i1 %brmerge325.i, label %.lr.ph211.i.split.us.split.us.split.us, label %.loopexit135.i.us.us

.lr.ph211.i.split.us.split.us.split.us:           ; preds = %.lr.ph211.i.split.us.split.us
  br i1 %i.fs, label %.loopexit135.i.us.us.us.us.preheader, label %.loopexit135.i.us.us.us.preheader

.loopexit135.i.us.us.us.us.preheader:             ; preds = %.lr.ph211.i.split.us.split.us.split.us
  %i.gb = add i32 %5, -2                          ; 2 uses
  %i.gc = lshr i32 %i.gb, 1                       ; 2 uses
  %i.gd = add nuw i32 %i.gc, 1                    ; 2 uses
  %i.ge = icmp eq i32 %i.gc, 0
  %unroll_iter255 = and i32 %i.gd, -2
  %i.gf = and i32 %i.gb, 2
  %lcmp.mod251.not.not = icmp eq i32 %i.gf, 0
  %lcmp.mod254 = trunc i32 %i.gd to i1
  br label %.loopexit135.i.us.us.us.us

.loopexit135.i.us.us.us.preheader:                ; preds = %.lr.ph211.i.split.us.split.us.split.us
  %i.gg = add nuw nsw i64 %i.fv, 8
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.gg)
  %i.gh = xor i64 %i.fv, -1
  %i.gi = add nsw i64 %smax, %i.gh
  %i.gj = and i64 %i.gi, -8
  %i.gk = add i64 %i.gj, %i.fv
  %i.gl = add i64 %i.gk, 8
  br label %.preheader126.loopexit.i

.loopexit135.i.us.us.us.us:                       ; preds = %.loopexit135.i.us.us.us.us.preheader, %.loopexit128.i.us.us.us.us
  %indvars.iv408.i.us.us.us.us = phi i64 [ %indvars.iv.next409.i.us.us.us.us, %.loopexit128.i.us.us.us.us ], [ %i.fv, %.loopexit135.i.us.us.us.us.preheader ] ; 2 uses
  %.10210.i.us.us.us.us = phi ptr [ %.19.i.us.us.us.us, %.loopexit128.i.us.us.us.us ], [ %.0549.lcssa.i, %.loopexit135.i.us.us.us.us.preheader ] ; 3 uses
  %i.gm = load ptr, ptr %0, align 8, !tbaa !9
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.fn
  %i.go = add nsw i64 %indvars.iv408.i.us.us.us.us, %i.fx
  %i.gp = mul nuw nsw i64 %i.go, %i.fy
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.gp ; 3 uses
  br i1 %i.ft, label %.lr.ph200.i.us.us.us.us.preheader, label %.preheader127.i.us.us.us.us

.lr.ph200.i.us.us.us.us.preheader:                ; preds = %.loopexit135.i.us.us.us.us
  br i1 %i.ge, label %.lr.ph200.i.us.us.us.us.epil.preheader, label %.lr.ph200.i.us.us.us.us

.lr.ph200.i.us.us.us.us:                          ; preds = %.lr.ph200.i.us.us.us.us.preheader, %.lr.ph200.i.us.us.us.us
  %.17199.i.us.us.us.us = phi ptr [ %i.hf, %.lr.ph200.i.us.us.us.us ], [ %.10210.i.us.us.us.us, %.lr.ph200.i.us.us.us.us.preheader ] ; 5 uses
  %.6592198.i.us.us.us.us = phi ptr [ %i.hg, %.lr.ph200.i.us.us.us.us ], [ %i.gq, %.lr.ph200.i.us.us.us.us.preheader ] ; 3 uses
  %niter256 = phi i32 [ %niter256.next.1, %.lr.ph200.i.us.us.us.us ], [ 0, %.lr.ph200.i.us.us.us.us.preheader ]
  %i.gr = load <8 x i16>, ptr %.6592198.i.us.us.us.us, align 1, !tbaa !17 ; 2 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %.6592198.i.us.us.us.us, i64 %i.k
  %i.gt = load <8 x i16>, ptr %i.gs, align 1, !tbaa !17 ; 2 uses
  %i.gu = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gv = shufflevector <8 x i16> %i.gr, <8 x i16> %i.gt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.gu, ptr %.17199.i.us.us.us.us, align 1, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 16
  store <8 x i16> %i.gv, ptr %i.gw, align 1, !tbaa !17
  %i.gx = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %.6592198.i.us.us.us.us, i64 %.idx620.i ; 3 uses
  %i.gz = load <8 x i16>, ptr %i.gy, align 1, !tbaa !17 ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.k
  %i.hb = load <8 x i16>, ptr %i.ha, align 1, !tbaa !17 ; 2 uses
  %i.hc = shufflevector <8 x i16> %i.gz, <8 x i16> %i.hb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hd = shufflevector <8 x i16> %i.gz, <8 x i16> %i.hb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.hc, ptr %i.gx, align 1, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 48
  store <8 x i16> %i.hd, ptr %i.he, align 1, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us, i64 64 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.idx620.i ; 3 uses
  %niter256.next.1 = add nuw nsw i32 %niter256, 2 ; 2 uses
  %niter256.ncmp.1.not = icmp eq i32 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1.not, label %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, label %.lr.ph200.i.us.us.us.us, !llvm.loop !330

.preheader127.i.us.us.us.us.loopexit.unr-lcssa:   ; preds = %.lr.ph200.i.us.us.us.us
  br i1 %lcmp.mod251.not.not, label %.lr.ph200.i.us.us.us.us.epil.preheader, label %.preheader127.i.us.us.us.us

.lr.ph200.i.us.us.us.us.epil.preheader:           ; preds = %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, %.lr.ph200.i.us.us.us.us.preheader
  %.17199.i.us.us.us.us.epil.init = phi ptr [ %.10210.i.us.us.us.us, %.lr.ph200.i.us.us.us.us.preheader ], [ %i.hf, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  %.6592198.i.us.us.us.us.epil.init = phi ptr [ %i.gq, %.lr.ph200.i.us.us.us.us.preheader ], [ %i.hg, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.hh = load <8 x i16>, ptr %.6592198.i.us.us.us.us.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.6592198.i.us.us.us.us.epil.init, i64 %i.k
  %i.hj = load <8 x i16>, ptr %i.hi, align 1, !tbaa !17 ; 2 uses
  %i.hk = shufflevector <8 x i16> %i.hh, <8 x i16> %i.hj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.hl = shufflevector <8 x i16> %i.hh, <8 x i16> %i.hj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.hk, ptr %.17199.i.us.us.us.us.epil.init, align 1, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us.epil.init, i64 16
  store <8 x i16> %i.hl, ptr %i.hm, align 1, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %.17199.i.us.us.us.us.epil.init, i64 32
  %i.ho = getelementptr inbounds nuw i8, ptr %.6592198.i.us.us.us.us.epil.init, i64 %.idx620.i
  br label %.preheader127.i.us.us.us.us

.preheader127.i.us.us.us.us:                      ; preds = %.lr.ph200.i.us.us.us.us.epil.preheader, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa, %.loopexit135.i.us.us.us.us
  %.0597.lcssa.i.us.us.us.us = phi i32 [ 0, %.loopexit135.i.us.us.us.us ], [ %i.fu, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 5 uses
  %.6592.lcssa.i.us.us.us.us = phi ptr [ %i.gq, %.loopexit135.i.us.us.us.us ], [ %i.hg, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.ho, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 2 uses
  %.17.lcssa.i.us.us.us.us = phi ptr [ %.10210.i.us.us.us.us, %.loopexit135.i.us.us.us.us ], [ %i.hf, %.preheader127.i.us.us.us.us.loopexit.unr-lcssa ], [ %i.hn, %.lr.ph200.i.us.us.us.us.epil.preheader ] ; 3 uses
  %i.hp = icmp slt i32 %.0597.lcssa.i.us.us.us.us, %5
  br i1 %i.hp, label %.lr.ph207.i.us.us.us.us.preheader, label %.loopexit128.i.us.us.us.us

.lr.ph207.i.us.us.us.us.preheader:                ; preds = %.preheader127.i.us.us.us.us
  %i.hq = sub i32 %5, %.0597.lcssa.i.us.us.us.us
  %xtraiter257 = and i32 %i.hq, 7                 ; 2 uses
  %lcmp.mod258.not = icmp eq i32 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %.lr.ph207.i.us.us.us.us.prol.loopexit, label %.lr.ph207.i.us.us.us.us.prol

.lr.ph207.i.us.us.us.us.prol:                     ; preds = %.lr.ph207.i.us.us.us.us.preheader, %.lr.ph207.i.us.us.us.us.prol
  %.18206.i.us.us.us.us.prol = phi ptr [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ], [ %.17.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ] ; 2 uses
  %.7593205.i.us.us.us.us.prol = phi ptr [ %i.ht, %.lr.ph207.i.us.us.us.us.prol ], [ %.6592.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ] ; 2 uses
  %.1598204.i.us.us.us.us.prol = phi i32 [ %i.hu, %.lr.ph207.i.us.us.us.us.prol ], [ %.0597.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ]
  %prol.iter259 = phi i32 [ %prol.iter259.next, %.lr.ph207.i.us.us.us.us.prol ], [ 0, %.lr.ph207.i.us.us.us.us.preheader ]
  %i.hr = load <2 x i64>, ptr %.7593205.i.us.us.us.us.prol, align 1, !tbaa !17
  store <2 x i64> %i.hr, ptr %.18206.i.us.us.us.us.prol, align 1, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us.prol, i64 16 ; 3 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.7593205.i.us.us.us.us.prol, i64 %i.k ; 2 uses
  %i.hu = add nuw nsw i32 %.1598204.i.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter259.next = add i32 %prol.iter259, 1   ; 2 uses
  %prol.iter259.cmp.not = icmp eq i32 %prol.iter259.next, %xtraiter257
  br i1 %prol.iter259.cmp.not, label %.lr.ph207.i.us.us.us.us.prol.loopexit, label %.lr.ph207.i.us.us.us.us.prol, !llvm.loop !331

.lr.ph207.i.us.us.us.us.prol.loopexit:            ; preds = %.lr.ph207.i.us.us.us.us.prol, %.lr.ph207.i.us.us.us.us.preheader
  %.lcssa223.unr = phi ptr [ poison, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ]
  %.18206.i.us.us.us.us.unr = phi ptr [ %.17.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hs, %.lr.ph207.i.us.us.us.us.prol ]
  %.7593205.i.us.us.us.us.unr = phi ptr [ %.6592.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.ht, %.lr.ph207.i.us.us.us.us.prol ]
  %.1598204.i.us.us.us.us.unr = phi i32 [ %.0597.lcssa.i.us.us.us.us, %.lr.ph207.i.us.us.us.us.preheader ], [ %i.hu, %.lr.ph207.i.us.us.us.us.prol ]
  %i.hv = sub i32 %.0597.lcssa.i.us.us.us.us, %5
  %i.hw = icmp ugt i32 %i.hv, -8
  br i1 %i.hw, label %.loopexit128.i.us.us.us.us, label %.lr.ph207.i.us.us.us.us

.lr.ph207.i.us.us.us.us:                          ; preds = %.lr.ph207.i.us.us.us.us.prol.loopexit, %.lr.ph207.i.us.us.us.us
  %.18206.i.us.us.us.us = phi ptr [ %i.it, %.lr.ph207.i.us.us.us.us ], [ %.18206.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ] ; 9 uses
  %.7593205.i.us.us.us.us = phi ptr [ %i.iu, %.lr.ph207.i.us.us.us.us ], [ %.7593205.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ] ; 2 uses
  %.1598204.i.us.us.us.us = phi i32 [ %i.iv, %.lr.ph207.i.us.us.us.us ], [ %.1598204.i.us.us.us.us.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ]
  %i.hx = load <2 x i64>, ptr %.7593205.i.us.us.us.us, align 1, !tbaa !17
  store <2 x i64> %i.hx, ptr %.18206.i.us.us.us.us, align 1, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 16
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.7593205.i.us.us.us.us, i64 %i.k ; 2 uses
  %i.ia = load <2 x i64>, ptr %i.hz, align 1, !tbaa !17
  store <2 x i64> %i.ia, ptr %i.hy, align 1, !tbaa !17
  %i.ib = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 32
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.k ; 2 uses
  %i.id = load <2 x i64>, ptr %i.ic, align 1, !tbaa !17
  store <2 x i64> %i.id, ptr %i.ib, align 1, !tbaa !17
  %i.ie = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 48
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.k ; 2 uses
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !17
  store <2 x i64> %i.ig, ptr %i.ie, align 1, !tbaa !17
  %i.ih = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.k ; 2 uses
  %i.ij = load <2 x i64>, ptr %i.ii, align 1, !tbaa !17
  store <2 x i64> %i.ij, ptr %i.ih, align 1, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 80
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.k ; 2 uses
  %i.im = load <2 x i64>, ptr %i.il, align 1, !tbaa !17
  store <2 x i64> %i.im, ptr %i.ik, align 1, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 96
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %i.k ; 2 uses
  %i.ip = load <2 x i64>, ptr %i.io, align 1, !tbaa !17
  store <2 x i64> %i.ip, ptr %i.in, align 1, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 112
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %i.k ; 2 uses
  %i.is = load <2 x i64>, ptr %i.ir, align 1, !tbaa !17
  store <2 x i64> %i.is, ptr %i.iq, align 1, !tbaa !17
  %i.it = getelementptr inbounds nuw i8, ptr %.18206.i.us.us.us.us, i64 128 ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.k
  %i.iv = add nuw nsw i32 %.1598204.i.us.us.us.us, 8 ; 2 uses
  %exitcond407.not.i.us.us.us.us.7 = icmp eq i32 %i.iv, %5
  br i1 %exitcond407.not.i.us.us.us.us.7, label %.loopexit128.i.us.us.us.us, label %.lr.ph207.i.us.us.us.us, !llvm.loop !332

.loopexit128.i.us.us.us.us:                       ; preds = %.lr.ph207.i.us.us.us.us.prol.loopexit, %.lr.ph207.i.us.us.us.us, %.preheader127.i.us.us.us.us
  %.19.i.us.us.us.us = phi ptr [ %.17.lcssa.i.us.us.us.us, %.preheader127.i.us.us.us.us ], [ %.lcssa223.unr, %.lr.ph207.i.us.us.us.us.prol.loopexit ], [ %i.it, %.lr.ph207.i.us.us.us.us ] ; 2 uses
  %indvars.iv.next409.i.us.us.us.us = add nuw nsw i64 %indvars.iv408.i.us.us.us.us, 8 ; 3 uses
  %i.iw = icmp slt i64 %indvars.iv.next409.i.us.us.us.us, %invariant.op.i
  br i1 %i.iw, label %.loopexit135.i.us.us.us.us, label %.preheader126.loopexit.i, !llvm.loop !333

.loopexit135.i.us.us:                             ; preds = %.lr.ph211.i.split.us.split.us, %.loopexit128.i.loopexit14.us.us
  %indvars.iv408.i.us.us = phi i64 [ %indvars.iv.next409.i.us.us, %.loopexit128.i.loopexit14.us.us ], [ %i.fv, %.lr.ph211.i.split.us.split.us ] ; 2 uses
  %.10210.i.us.us = phi ptr [ %i.ks, %.loopexit128.i.loopexit14.us.us ], [ %.0549.lcssa.i, %.lr.ph211.i.split.us.split.us ]
  %i.ix = load ptr, ptr %0, align 8, !tbaa !9
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.fn
  %i.iz = add nsw i64 %indvars.iv408.i.us.us, %i.fx
  %i.ja = mul nsw i64 %i.iz, %i.fy
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.iy, i64 %i.ja
  br label %.lr.ph194.i.us.us

.lr.ph194.i.us.us:                                ; preds = %.loopexit135.i.us.us, %.lr.ph194.i.us.us
  %.15193.i.us.us = phi ptr [ %i.ks, %.lr.ph194.i.us.us ], [ %.10210.i.us.us, %.loopexit135.i.us.us ] ; 5 uses
  %.4590192.i.us.us = phi ptr [ %i.kt, %.lr.ph194.i.us.us ], [ %i.jb, %.loopexit135.i.us.us ] ; 9 uses
  %.0596191.i.us.us = phi i32 [ %i.ku, %.lr.ph194.i.us.us ], [ 0, %.loopexit135.i.us.us ]
  %i.jc = load i64, ptr %.4590192.i.us.us, align 1, !tbaa !17
  %i.jd = insertelement <2 x i64> poison, i64 %i.jc, i64 0
  %i.je = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 8
  %i.jf = load i64, ptr %i.je, align 1, !tbaa !17
  %i.jg = insertelement <2 x i64> poison, i64 %i.jf, i64 0
  %i.jh = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 16
  %i.ji = load i64, ptr %i.jh, align 1, !tbaa !17
  %i.jj = insertelement <2 x i64> poison, i64 %i.ji, i64 0
  %i.jk = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 24
  %i.jl = load i64, ptr %i.jk, align 1, !tbaa !17
  %i.jm = insertelement <2 x i64> poison, i64 %i.jl, i64 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 32
  %i.jo = load i64, ptr %i.jn, align 1, !tbaa !17
  %i.jp = insertelement <2 x i64> poison, i64 %i.jo, i64 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 40
  %i.jr = load i64, ptr %i.jq, align 1, !tbaa !17
  %i.js = insertelement <2 x i64> poison, i64 %i.jr, i64 0
  %i.jt = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 48
  %i.ju = load i64, ptr %i.jt, align 1, !tbaa !17
  %i.jv = insertelement <2 x i64> poison, i64 %i.ju, i64 0
  %i.jw = getelementptr inbounds nuw i8, ptr %.4590192.i.us.us, i64 56
  %i.jx = load i64, ptr %i.jw, align 1, !tbaa !17
  %i.jy = insertelement <2 x i64> poison, i64 %i.jx, i64 0
  %i.jz = bitcast <2 x i64> %i.jd to <4 x i32>
  %i.ka = bitcast <2 x i64> %i.jg to <4 x i32>
  %i.kb = shufflevector <4 x i32> %i.jz, <4 x i32> %i.ka, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kc = bitcast <2 x i64> %i.jj to <4 x i32>
  %i.kd = bitcast <2 x i64> %i.jm to <4 x i32>
  %i.ke = shufflevector <4 x i32> %i.kc, <4 x i32> %i.kd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kf = bitcast <2 x i64> %i.jp to <4 x i32>
  %i.kg = bitcast <2 x i64> %i.js to <4 x i32>
  %i.kh = shufflevector <4 x i32> %i.kf, <4 x i32> %i.kg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ki = bitcast <2 x i64> %i.jv to <4 x i32>
  %i.kj = bitcast <2 x i64> %i.jy to <4 x i32>
  %i.kk = shufflevector <4 x i32> %i.ki, <4 x i32> %i.kj, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.kl = shufflevector <4 x i32> %i.kb, <4 x i32> %i.ke, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.km = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kn = shufflevector <4 x i32> %i.kb, <4 x i32> %i.ke, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ko = shufflevector <4 x i32> %i.kh, <4 x i32> %i.kk, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  store <4 x i32> %i.kl, ptr %.15193.i.us.us, align 1, !tbaa !17
  %i.kp = getelementptr inbounds nuw i8, ptr %.15193.i.us.us, i64 16
  store <4 x i32> %i.km, ptr %i.kp, align 1, !tbaa !17
end_hunk_3
begin_hunk_4_@_ZN4ncnn37transpose_pack_B_tile_bf16_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !57
  %i.ahf = getelementptr inbounds nuw i8, ptr %.38275.i, i64 14
  store i16 %i.ahe, ptr %i.ahf, align 2, !tbaa !57
  %i.ahg = getelementptr inbounds nuw i8, ptr %.38275.i, i64 16 ; 2 uses
  %i.ahh = getelementptr inbounds nuw [2 x i8], ptr %i.ahb, i64 %i.k
  %i.ahi = add nuw nsw i32 %.1547276.i, 4         ; 2 uses
  %exitcond415.not.i.3 = icmp eq i32 %i.ahi, %5
  br i1 %exitcond415.not.i.3, label %.loopexit108.i, label %.lr.ph277.i, !llvm.loop !350

.loopexit108.i.loopexit204.unr-lcssa:             ; preds = %.lr.ph258.i
  br i1 %lcmp.mod283.not.not, label %.lr.ph258.i.epil.preheader, label %.loopexit108.i

.lr.ph258.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph258.i.preheader
  %.33257.i.epil.init = phi ptr [ %.30280.i, %.lr.ph258.i.preheader ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ] ; 3 uses
  %.2574255.i.epil.init = phi ptr [ %i.ach, %.lr.ph258.i.preheader ], [ %i.adn, %.loopexit108.i.loopexit204.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod285)
  %i.ahj = load <4 x i32>, ptr %.2574255.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.2574255.i.epil.init, i64 16
  %i.ahl = load <4 x i32>, ptr %i.ahk, align 1, !tbaa !17 ; 2 uses
  %i.ahm = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ahn = shufflevector <4 x i32> %i.ahj, <4 x i32> %i.ahl, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.ahm, ptr %.33257.i.epil.init, align 1, !tbaa !17
  %i.aho = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 16
  store <4 x i32> %i.ahn, ptr %i.aho, align 1, !tbaa !17
  %i.ahp = getelementptr inbounds nuw i8, ptr %.33257.i.epil.init, i64 32
  br label %.loopexit108.i

.loopexit108.i.loopexit205.unr-lcssa:             ; preds = %.lr.ph252.i
  br i1 %lcmp.mod277.not.not, label %.lr.ph252.i.epil.preheader, label %.loopexit108.i

.lr.ph252.i.epil.preheader:                       ; preds = %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph252.i.preheader
  %.31251.i.epil.init = phi ptr [ %.30280.i, %.lr.ph252.i.preheader ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ] ; 3 uses
  %.0572249.i.epil.init = phi ptr [ %i.ach, %.lr.ph252.i.preheader ], [ %i.acx, %.loopexit108.i.loopexit205.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.ahq = load <8 x i32>, ptr %.0572249.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.0572249.i.epil.init, i64 32
  %i.ahs = load <8 x i32>, ptr %i.ahr, align 1, !tbaa !17 ; 2 uses
  %i.aht = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ahu = shufflevector <8 x i32> %i.ahq, <8 x i32> %i.ahs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i32> %i.aht, ptr %.31251.i.epil.init, align 1, !tbaa !17
  %i.ahv = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 32
  store <8 x i32> %i.ahu, ptr %i.ahv, align 1, !tbaa !17
  %i.ahw = getelementptr inbounds nuw i8, ptr %.31251.i.epil.init, i64 64
  br label %.loopexit108.i

.loopexit108.i:                                   ; preds = %.lr.ph252.i.epil.preheader, %.loopexit108.i.loopexit205.unr-lcssa, %.lr.ph258.i.epil.preheader, %.loopexit108.i.loopexit204.unr-lcssa, %.lr.ph264.i, %.lr.ph277.i.prol.loopexit, %.lr.ph277.i, %.preheader107.i, %.loopexit111.i
  %.39.i = phi ptr [ %.30280.i, %.loopexit111.i ], [ %.37.lcssa.i, %.preheader107.i ], [ %i.ahg, %.lr.ph277.i ], [ %i.aek, %.lr.ph264.i ], [ %i.ahp, %.lr.ph258.i.epil.preheader ], [ %.lcssa211.unr, %.lr.ph277.i.prol.loopexit ], [ %i.adm, %.loopexit108.i.loopexit204.unr-lcssa ], [ %i.acw, %.loopexit108.i.loopexit205.unr-lcssa ], [ %i.ahw, %.lr.ph252.i.epil.preheader ] ; 2 uses
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 2 ; 3 uses
  %i.ahx = icmp slt i64 %indvars.iv.next417.i, %invariant.op522.i
  br i1 %i.ahx, label %bb.b, label %.preheader106.loopexit.i, !llvm.loop !351

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph309.i
  %indvars.iv420.i = phi i64 [ %i.abt, %.lr.ph309.i ], [ %indvars.iv.next421.i, %.loopexit.i ] ; 2 uses
  %.40308.i = phi ptr [ %.30.lcssa.i, %.lr.ph309.i ], [ %.48.i, %.loopexit.i ] ; 6 uses
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !9
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahy, i64 %i.abm
  %i.aia = add nsw i64 %indvars.iv420.i, %i.abu
  %i.aib = mul nsw i64 %i.aia, %i.abv
  %i.aic = getelementptr inbounds [2 x i8], ptr %i.ahz, i64 %i.aib ; 5 uses
  br i1 %i.abx, label %.loopexit105.i, label %.lr.ph287.i

.lr.ph287.i:                                      ; preds = %bb.c, %.lr.ph287.i
  %.0544286.i = phi i32 [ %i.aig, %.lr.ph287.i ], [ 0, %bb.c ]
  %.0545285.i = phi ptr [ %i.aif, %.lr.ph287.i ], [ %i.aic, %bb.c ] ; 2 uses
  %.41284.i = phi ptr [ %i.aie, %.lr.ph287.i ], [ %.40308.i, %bb.c ] ; 2 uses
  %i.aid = load <4 x i64>, ptr %.0545285.i, align 1, !tbaa !17
  store <4 x i64> %i.aid, ptr %.41284.i, align 1, !tbaa !17
  %i.aie = getelementptr inbounds nuw i8, ptr %.41284.i, i64 32 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.0545285.i, i64 %.idx611.i
  %i.aig = add nuw nsw i32 %.0544286.i, 16        ; 2 uses
  %i.aih = or disjoint i32 %i.aig, 15
  %i.aii = icmp slt i32 %i.aih, %5
  br i1 %i.aii, label %.lr.ph287.i, label %.loopexit.i, !llvm.loop !352

.loopexit105.i:                                   ; preds = %bb.c
  br i1 %i.aby, label %.loopexit103.i, label %.lr.ph293.i

.lr.ph293.i:                                      ; preds = %.loopexit105.i, %.lr.ph293.i
  %.0543292.i = phi i32 [ %i.aim, %.lr.ph293.i ], [ 0, %.loopexit105.i ]
  %.2291.i = phi ptr [ %i.ail, %.lr.ph293.i ], [ %i.aic, %.loopexit105.i ] ; 2 uses
  %.43290.i = phi ptr [ %i.aik, %.lr.ph293.i ], [ %.40308.i, %.loopexit105.i ] ; 2 uses
  %i.aij = load <2 x i64>, ptr %.2291.i, align 1, !tbaa !17
  store <2 x i64> %i.aij, ptr %.43290.i, align 1, !tbaa !17
  %i.aik = getelementptr inbounds nuw i8, ptr %.43290.i, i64 16 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %.2291.i, i64 %.idx610.i
  %i.aim = add nuw nsw i32 %.0543292.i, 8         ; 2 uses
  %i.ain = or disjoint i32 %i.aim, 7
  %i.aio = icmp slt i32 %i.ain, %5
  br i1 %i.aio, label %.lr.ph293.i, label %.loopexit.i, !llvm.loop !353

.loopexit103.i:                                   ; preds = %.loopexit105.i
  br i1 %i.abz, label %.loopexit101.i, label %.lr.ph299.i

.lr.ph299.i:                                      ; preds = %.loopexit103.i, %.lr.ph299.i
  %.0542298.i = phi i32 [ %i.ais, %.lr.ph299.i ], [ 0, %.loopexit103.i ]
  %.4297.i = phi ptr [ %i.air, %.lr.ph299.i ], [ %i.aic, %.loopexit103.i ] ; 2 uses
  %.45296.i = phi ptr [ %i.aiq, %.lr.ph299.i ], [ %.40308.i, %.loopexit103.i ] ; 2 uses
  %i.aip = load i64, ptr %.4297.i, align 1, !tbaa !17
  store i64 %i.aip, ptr %.45296.i, align 1, !tbaa !17
  %i.aiq = getelementptr inbounds nuw i8, ptr %.45296.i, i64 8 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.4297.i, i64 %.idx.i
  %i.ais = add nuw nsw i32 %.0542298.i, 4         ; 2 uses
  %i.ait = or disjoint i32 %i.ais, 3
  %i.aiu = icmp slt i32 %i.ait, %5
  br i1 %i.aiu, label %.lr.ph299.i, label %.loopexit.i, !llvm.loop !354

.loopexit101.i:                                   ; preds = %.loopexit103.i
  br i1 %i.aca, label %.loopexit.i, label %.lr.ph305.i.preheader

.lr.ph305.i.preheader:                            ; preds = %.loopexit101.i
  br i1 %i.acc, label %.lr.ph305.i.epil.preheader, label %.lr.ph305.i

.lr.ph305.i:                                      ; preds = %.lr.ph305.i.preheader, %.lr.ph305.i
  %.6303.i = phi ptr [ %i.ajs, %.lr.ph305.i ], [ %i.aic, %.lr.ph305.i.preheader ] ; 2 uses
  %.47302.i = phi ptr [ %i.ajr, %.lr.ph305.i ], [ %.40308.i, %.lr.ph305.i.preheader ] ; 9 uses
  %niter303 = phi i32 [ %niter303.next.7, %.lr.ph305.i ], [ 0, %.lr.ph305.i.preheader ]
  %i.aiv = load i16, ptr %.6303.i, align 2, !tbaa !57
  store i16 %i.aiv, ptr %.47302.i, align 2, !tbaa !57
  %i.aiw = getelementptr inbounds nuw i8, ptr %.47302.i, i64 2
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.6303.i, i64 %i.k ; 2 uses
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !57
  store i16 %i.aiy, ptr %i.aiw, align 2, !tbaa !57
  %i.aiz = getelementptr inbounds nuw i8, ptr %.47302.i, i64 4
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.aix, i64 %i.k ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !57
  store i16 %i.ajb, ptr %i.aiz, align 2, !tbaa !57
  %i.ajc = getelementptr inbounds nuw i8, ptr %.47302.i, i64 6
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.aja, i64 %i.k ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !57
  store i16 %i.aje, ptr %i.ajc, align 2, !tbaa !57
  %i.ajf = getelementptr inbounds nuw i8, ptr %.47302.i, i64 8
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajd, i64 %i.k ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !57
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !57
  %i.aji = getelementptr inbounds nuw i8, ptr %.47302.i, i64 10
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ajg, i64 %i.k ; 2 uses
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !57
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !57
  %i.ajl = getelementptr inbounds nuw i8, ptr %.47302.i, i64 12
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %i.ajj, i64 %i.k ; 2 uses
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !57
  store i16 %i.ajn, ptr %i.ajl, align 2, !tbaa !57
  %i.ajo = getelementptr inbounds nuw i8, ptr %.47302.i, i64 14
  %i.ajp = getelementptr inbounds nuw [2 x i8], ptr %i.ajm, i64 %i.k ; 2 uses
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !57
  store i16 %i.ajq, ptr %i.ajo, align 2, !tbaa !57
  %i.ajr = getelementptr inbounds nuw i8, ptr %.47302.i, i64 16 ; 3 uses
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ajp, i64 %i.k ; 2 uses
  %niter303.next.7 = add i32 %niter303, 8         ; 2 uses
  %niter303.ncmp.7 = icmp eq i32 %niter303.next.7, %unroll_iter302
  br i1 %niter303.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph305.i, !llvm.loop !355

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph305.i
  br i1 %lcmp.mod299.not, label %.loopexit.i, label %.lr.ph305.i.epil.preheader

.lr.ph305.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.preheader
  %.6303.i.epil.init = phi ptr [ %i.aic, %.lr.ph305.i.preheader ], [ %i.ajs, %.loopexit.i.loopexit.unr-lcssa ]
  %.47302.i.epil.init = phi ptr [ %.40308.i, %.lr.ph305.i.preheader ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod301)
  br label %.lr.ph305.i.epil

.lr.ph305.i.epil:                                 ; preds = %.lr.ph305.i.epil, %.lr.ph305.i.epil.preheader
  %.6303.i.epil = phi ptr [ %i.ajv, %.lr.ph305.i.epil ], [ %.6303.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %.47302.i.epil = phi ptr [ %i.aju, %.lr.ph305.i.epil ], [ %.47302.i.epil.init, %.lr.ph305.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph305.i.epil ], [ 0, %.lr.ph305.i.epil.preheader ]
  %i.ajt = load i16, ptr %.6303.i.epil, align 2, !tbaa !57
  store i16 %i.ajt, ptr %.47302.i.epil, align 2, !tbaa !57
  %i.aju = getelementptr inbounds nuw i8, ptr %.47302.i.epil, i64 2 ; 2 uses
  %i.ajv = getelementptr inbounds nuw [2 x i8], ptr %.6303.i.epil, i64 %i.k
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter298
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph305.i.epil, !llvm.loop !356

.loopexit.i:                                      ; preds = %.lr.ph287.i, %.lr.ph293.i, %.lr.ph299.i, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph305.i.epil, %.loopexit101.i
  %.48.i = phi ptr [ %.40308.i, %.loopexit101.i ], [ %i.aju, %.lr.ph305.i.epil ], [ %i.aiq, %.lr.ph299.i ], [ %i.aik, %.lr.ph293.i ], [ %i.ajr, %.loopexit.i.loopexit.unr-lcssa ], [ %i.aie, %.lr.ph287.i ]
  %indvars.iv.next421.i = add nsw i64 %indvars.iv420.i, 1 ; 2 uses
  %exitcond423.not.i = icmp eq i64 %indvars.iv.next421.i, %wide.trip.count.i
  br i1 %exitcond423.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit, label %bb.c, !llvm.loop !357

_ZN4ncnnL26transpose_pack_B_tile_bf16ERKNS_3MatERS0_iiii.exit: ; preds = %.loopexit.i, %.preheader106.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %.val8 = load ptr, ptr %1, align 8, !tbaa !9    ; 10 uses
  %.val9 = load ptr, ptr %2, align 8, !tbaa !9    ; 2 uses
  %i.a = icmp sgt i32 %4, 15
  br i1 %i.a, label %.preheader425.lr.ph.i, label %.preheader415.i

.preheader425.lr.ph.i:                            ; preds = %bb.a
  %i.b = icmp sgt i32 %6, 15
  %.not1811.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.c = icmp sgt i32 %8, 1                       ; 5 uses
  %i.d = shl i32 %8, 4
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add i32 %8, -2                           ; 6 uses
  %i.g = and i32 %i.f, -2
  %i.h = add i32 %i.g, 2                          ; 5 uses
  %i.i = and i32 %6, -16
  %i.j = lshr i32 %i.f, 1                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %i.l = shl nuw nsw i64 %i.k, 5
  %i.m = shl nuw nsw i64 %i.k, 4
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = shl nuw nsw i64 %i.k, 2
  %i.p = lshr i32 %i.f, 1                         ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 64                 ; 2 uses
  %scevgep626 = getelementptr i8, ptr %.val, i64 %i.s
  %i.t = shl nsw i64 %i.e, 1
  %i.u = add nuw i32 %i.p, 1                      ; 6 uses
  %i.v = icmp eq i32 %i.p, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.f, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod2484 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.j, 0
  %unroll_iter2492 = and i32 %i.u, -2
  %i.y = and i32 %i.f, 2
  %lcmp.mod2488.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod2491 = trunc i32 %i.u to i1
  %xtraiter2496 = and i32 %i.u, 3                 ; 3 uses
  %i.z = icmp ult i32 %i.f, 6
  %unroll_iter2500 = and i32 %i.u, -4
  %lcmp.mod2497.not = icmp eq i32 %xtraiter2496, 0
  %lcmp.mod2499 = icmp ne i32 %xtraiter2496, 0
  br label %.preheader425.i

.preheader425.i:                                  ; preds = %._crit_edge648.i, %.preheader425.lr.ph.i
  %indvars.iv = phi ptr [ %scevgep627, %._crit_edge648.i ], [ %scevgep626, %.preheader425.lr.ph.i ] ; 5 uses
  %.01380652.i = phi ptr [ %i.tu, %._crit_edge648.i ], [ %.val, %.preheader425.lr.ph.i ] ; 14 uses
  %.01381651.i = phi ptr [ %.5.lcssa.i, %._crit_edge648.i ], [ %.val9, %.preheader425.lr.ph.i ] ; 2 uses
  %.01386650.i = phi i32 [ %i.tv, %._crit_edge648.i ], [ 0, %.preheader425.lr.ph.i ]
  br i1 %i.b, label %.lr.ph503.i, label %.preheader424.i

.preheader415.loopexit.i:                         ; preds = %._crit_edge648.i
  %i.aa = and i32 %4, 2147483632
  br label %.preheader415.i

.preheader415.i:                                  ; preds = %.preheader415.loopexit.i, %bb.a
  %.01386.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader415.loopexit.i ] ; 3 uses
  %.01381.lcssa.i = phi ptr [ %.val9, %bb.a ], [ %.5.lcssa.i, %.preheader415.loopexit.i ] ; 2 uses
  %.01380.lcssa.i = phi ptr [ %.val, %bb.a ], [ %i.tu, %.preheader415.loopexit.i ] ; 3 uses
  %i.ab = or disjoint i32 %.01386.lcssa.i, 7
  %i.ac = icmp slt i32 %i.ab, %4
  br i1 %i.ac, label %.preheader414.lr.ph.i, label %.preheader404.i

.preheader414.lr.ph.i:                            ; preds = %.preheader415.i
  %i.ad = icmp sgt i32 %6, 15
  %.not1806.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.ae = icmp sgt i32 %8, 1                      ; 5 uses
  %i.af = shl i32 %8, 3
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = add i32 %8, -2                          ; 6 uses
  %i.ai = and i32 %i.ah, -2
  %i.aj = add i32 %i.ai, 2                        ; 5 uses
  %i.ak = and i32 %6, -16
  %i.al = lshr i32 %i.ah, 1                       ; 2 uses
  %i.am = zext nneg i32 %i.al to i64              ; 4 uses
  %i.an = shl nuw nsw i64 %i.am, 5
  %i.ao = add nuw nsw i64 %i.an, 32               ; 2 uses
  %scevgep1787.i = getelementptr i8, ptr %.01380.lcssa.i, i64 %i.ao
  %i.ap = shl nsw i64 %i.ag, 1
  %i.aq = shl nuw nsw i64 %i.am, 4
  %i.ar = shl nuw nsw i64 %i.am, 3
  %i.as = shl nuw nsw i64 %i.am, 2
  %i.at = lshr i32 %i.ah, 1                       ; 3 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 6
  %i.aw = add nuw i32 %i.at, 1                    ; 6 uses
  %i.ax = icmp eq i32 %i.at, 0
  %unroll_iter2512 = and i32 %i.aw, -2
  %i.ay = and i32 %i.ah, 2
  %lcmp.mod2506.not.not = icmp eq i32 %i.ay, 0
  %lcmp.mod2511 = trunc i32 %i.aw to i1
  %i.az = icmp eq i32 %i.al, 0
  %unroll_iter2522 = and i32 %i.aw, -2
  %i.ba = and i32 %i.ah, 2
  %lcmp.mod2518.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod2521 = trunc i32 %i.aw to i1
  %xtraiter2526 = and i32 %i.aw, 3                ; 3 uses
  %i.bb = icmp ult i32 %i.ah, 6
  %unroll_iter2531 = and i32 %i.aw, -4
  %lcmp.mod2528.not = icmp eq i32 %xtraiter2526, 0
  %lcmp.mod2530 = icmp ne i32 %xtraiter2526, 0
  br label %.preheader414.i

.preheader424.i:                                  ; preds = %._crit_edge.i, %.preheader425.i
  %.01415.lcssa.i = phi i32 [ 0, %.preheader425.i ], [ %i.i, %._crit_edge.i ] ; 3 uses
  %.01391.lcssa.i = phi ptr [ %.val8, %.preheader425.i ], [ %.21393.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.11382.lcssa.i = phi ptr [ %.01381651.i, %.preheader425.i ], [ %i.fp, %._crit_edge.i ] ; 2 uses
  %i.bc = or disjoint i32 %.01415.lcssa.i, 7
  %i.bd = icmp slt i32 %i.bc, %6
  br i1 %i.bd, label %.lr.ph556.i, label %.preheader423.i

.lr.ph503.i:                                      ; preds = %.preheader425.i, %._crit_edge.i
  %.11382502.i = phi ptr [ %i.fp, %._crit_edge.i ], [ %.01381651.i, %.preheader425.i ] ; 33 uses
  %.01391501.i = phi ptr [ %.21393.lcssa.i, %._crit_edge.i ], [ %.val8, %.preheader425.i ] ; 3 uses
  %.01415500.i = phi i32 [ %i.fq, %._crit_edge.i ], [ 0, %.preheader425.i ]
  br i1 %.not1811.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph503.i
  %i.be = load <16 x float>, ptr %.11382502.i, align 64, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 64
  %i.bg = load <16 x float>, ptr %i.bf, align 64, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 128
  %i.bi = load <16 x float>, ptr %i.bh, align 64, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 192
  %i.bk = load <16 x float>, ptr %i.bj, align 64, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 256
  %i.bm = load <16 x float>, ptr %i.bl, align 64, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 320
  %i.bo = load <16 x float>, ptr %i.bn, align 64, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 384
  %i.bq = load <16 x float>, ptr %i.bp, align 64, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 448
  %i.bs = load <16 x float>, ptr %i.br, align 64, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 512
  %i.bu = load <16 x float>, ptr %i.bt, align 64, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 576
  %i.bw = load <16 x float>, ptr %i.bv, align 64, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 640
  %i.by = load <16 x float>, ptr %i.bx, align 64, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 704
  %i.ca = load <16 x float>, ptr %i.bz, align 64, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 768
  %i.cc = load <16 x float>, ptr %i.cb, align 64, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 832
  %i.ce = load <16 x float>, ptr %i.cd, align 64, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 896
  %i.cg = load <16 x float>, ptr %i.cf, align 64, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.11382502.i, i64 960
  %i.ci = load <16 x float>, ptr %i.ch, align 64, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph503.i
  %.01499.i = phi nsz <16 x float> [ %i.ci, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01496.i = phi nsz <16 x float> [ %i.cg, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01493.i = phi nsz <16 x float> [ %i.ce, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01484.i = phi nsz <16 x float> [ %i.cc, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01481.i = phi nsz <16 x float> [ %i.ca, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01472.i = phi nsz <16 x float> [ %i.by, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01469.i = phi nsz <16 x float> [ %i.bw, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01454.i = phi nsz <16 x float> [ %i.bu, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01451.i = phi nsz <16 x float> [ %i.bs, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01448.i = phi nsz <16 x float> [ %i.bq, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01445.i = phi nsz <16 x float> [ %i.bo, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01442.i = phi nsz <16 x float> [ %i.bm, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01439.i = phi nsz <16 x float> [ %i.bk, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01428.i = phi nsz <16 x float> [ %i.bi, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01425.i = phi nsz <16 x float> [ %i.bg, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  %.01422.i = phi nsz <16 x float> [ %i.be, %bb.b ], [ zeroinitializer, %.lr.ph503.i ] ; 2 uses
  br i1 %i.c, label %.lr.ph.i, label %.preheader420.i

.preheader420.i.loopexit:                         ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.01391501.i, i64 %i.s
  br label %.preheader420.i

.preheader420.i:                                  ; preds = %.preheader420.i.loopexit, %bb.c
  %.01502.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.h, %.preheader420.i.loopexit ] ; 2 uses
  %.11500.lcssa.i = phi <16 x float> [ %.01499.i, %bb.c ], [ %i.dr, %.preheader420.i.loopexit ] ; 2 uses
  %.11497.lcssa.i = phi <16 x float> [ %.01496.i, %bb.c ], [ %i.dm, %.preheader420.i.loopexit ] ; 2 uses
  %.11494.lcssa.i = phi <16 x float> [ %.01493.i, %bb.c ], [ %i.dq, %.preheader420.i.loopexit ] ; 2 uses
  %.11485.lcssa.i = phi <16 x float> [ %.01484.i, %bb.c ], [ %i.dl, %.preheader420.i.loopexit ] ; 2 uses
  %.11482.lcssa.i = phi <16 x float> [ %.01481.i, %bb.c ], [ %i.dk, %.preheader420.i.loopexit ] ; 2 uses
  %.11473.lcssa.i = phi <16 x float> [ %.01472.i, %bb.c ], [ %i.dj, %.preheader420.i.loopexit ] ; 2 uses
  %.11470.lcssa.i = phi <16 x float> [ %.01469.i, %bb.c ], [ %i.dd, %.preheader420.i.loopexit ] ; 2 uses
  %.11455.lcssa.i = phi <16 x float> [ %.01454.i, %bb.c ], [ %i.dc, %.preheader420.i.loopexit ] ; 2 uses
  %.11452.lcssa.i = phi <16 x float> [ %.01451.i, %bb.c ], [ %i.dp, %.preheader420.i.loopexit ] ; 2 uses
  %.11449.lcssa.i = phi <16 x float> [ %.01448.i, %bb.c ], [ %i.dh, %.preheader420.i.loopexit ] ; 2 uses
  %.11446.lcssa.i = phi <16 x float> [ %.01445.i, %bb.c ], [ %i.do, %.preheader420.i.loopexit ] ; 2 uses
  %.11443.lcssa.i = phi <16 x float> [ %.01442.i, %bb.c ], [ %i.dg, %.preheader420.i.loopexit ] ; 2 uses
  %.11440.lcssa.i = phi <16 x float> [ %.01439.i, %bb.c ], [ %i.da, %.preheader420.i.loopexit ] ; 2 uses
  %.11429.lcssa.i = phi <16 x float> [ %.01428.i, %bb.c ], [ %i.cz, %.preheader420.i.loopexit ] ; 2 uses
  %.11426.lcssa.i = phi <16 x float> [ %.01425.i, %bb.c ], [ %i.cx, %.preheader420.i.loopexit ] ; 2 uses
  %.11423.lcssa.i = phi <16 x float> [ %.01422.i, %bb.c ], [ %i.cu, %.preheader420.i.loopexit ] ; 2 uses
  %.01420.lcssa.i = phi ptr [ %.01380652.i, %bb.c ], [ %i.ds, %.preheader420.i.loopexit ]
  %.11392.lcssa.i = phi ptr [ %.01391501.i, %bb.c ], [ %scevgep, %.preheader420.i.loopexit ] ; 2 uses
  %i.cj = icmp slt i32 %.01502.lcssa.i, %8
  br i1 %i.cj, label %.lr.ph482.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.11392444.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %.01391501.i, %bb.c ] ; 2 uses
  %.01420443.i = phi ptr [ %i.ds, %.lr.ph.i ], [ %.01380652.i, %bb.c ] ; 2 uses
  %.11423442.i = phi <16 x float> [ %i.cu, %.lr.ph.i ], [ %.01422.i, %bb.c ]
  %.11426441.i = phi <16 x float> [ %i.cx, %.lr.ph.i ], [ %.01425.i, %bb.c ]
  %.11429440.i = phi <16 x float> [ %i.cz, %.lr.ph.i ], [ %.01428.i, %bb.c ]
  %.11440439.i = phi <16 x float> [ %i.da, %.lr.ph.i ], [ %.01439.i, %bb.c ]
  %.11443438.i = phi <16 x float> [ %i.dg, %.lr.ph.i ], [ %.01442.i, %bb.c ]
  %.11446437.i = phi <16 x float> [ %i.do, %.lr.ph.i ], [ %.01445.i, %bb.c ]
  %.11449436.i = phi <16 x float> [ %i.dh, %.lr.ph.i ], [ %.01448.i, %bb.c ]
  %.11452435.i = phi <16 x float> [ %i.dp, %.lr.ph.i ], [ %.01451.i, %bb.c ]
  %.11455434.i = phi <16 x float> [ %i.dc, %.lr.ph.i ], [ %.01454.i, %bb.c ]
  %.11470433.i = phi <16 x float> [ %i.dd, %.lr.ph.i ], [ %.01469.i, %bb.c ]
  %.11473432.i = phi <16 x float> [ %i.dj, %.lr.ph.i ], [ %.01472.i, %bb.c ]
  %.11482431.i = phi <16 x float> [ %i.dk, %.lr.ph.i ], [ %.01481.i, %bb.c ]
  %.11485430.i = phi <16 x float> [ %i.dl, %.lr.ph.i ], [ %.01484.i, %bb.c ]
  %.11494429.i = phi <16 x float> [ %i.dq, %.lr.ph.i ], [ %.01493.i, %bb.c ]
  %.11497428.i = phi <16 x float> [ %i.dm, %.lr.ph.i ], [ %.01496.i, %bb.c ]
  %.11500427.i = phi <16 x float> [ %i.dr, %.lr.ph.i ], [ %.01499.i, %bb.c ]
  %.01502426.i = phi i32 [ %i.du, %.lr.ph.i ], [ 0, %bb.c ]
  %i.ck = load <8 x i64>, ptr %.01420443.i, align 1, !tbaa !17 ; 2 uses
  %i.cl = load <8 x i64>, ptr %.11392444.i, align 1, !tbaa !17 ; 2 uses
  %i.cm = bitcast <8 x i64> %i.ck to <16 x i32>   ; 3 uses
  %i.cn = shufflevector <16 x i32> %i.cm, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.co = shufflevector <16 x i32> %i.cm, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.cp = bitcast <8 x i64> %i.cl to <16 x i32>   ; 3 uses
  %i.cq = shufflevector <16 x i32> %i.cp, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <16 x i32> %i.cp, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cs = bitcast <8 x i64> %i.ck to <32 x bfloat> ; 4 uses
  %i.ct = bitcast <8 x i64> %i.cl to <32 x bfloat> ; 4 uses
  %i.cu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11423442.i, <32 x bfloat> nofpclass(nan inf) %i.cs, <32 x bfloat> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.cv = shufflevector <16 x i32> %i.cm, <16 x i32> poison, <16 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 14, i32 15, i32 12, i32 13, i32 10, i32 11, i32 8, i32 9>
  %i.cw = bitcast <16 x i32> %i.cr to <32 x bfloat> ; 4 uses
  %i.cx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11426441.i, <32 x bfloat> nofpclass(nan inf) %i.cs, <32 x bfloat> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.cy = bitcast <16 x i32> %i.cn to <32 x bfloat> ; 4 uses
  %i.cz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11429440.i, <32 x bfloat> nofpclass(nan inf) %i.cy, <32 x bfloat> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.da = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11440439.i, <32 x bfloat> nofpclass(nan inf) %i.cy, <32 x bfloat> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.db = bitcast <16 x i32> %i.co to <32 x bfloat> ; 4 uses
  %i.dc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11455434.i, <32 x bfloat> nofpclass(nan inf) %i.db, <32 x bfloat> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.dd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11470433.i, <32 x bfloat> nofpclass(nan inf) %i.db, <32 x bfloat> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.de = shufflevector <16 x i32> %i.cp, <16 x i32> poison, <16 x i32> <i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12, i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.df = bitcast <16 x i32> %i.cq to <32 x bfloat> ; 4 uses
  %i.dg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11443438.i, <32 x bfloat> nofpclass(nan inf) %i.cs, <32 x bfloat> nofpclass(nan inf) %i.df) ; 2 uses
  %i.dh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11449436.i, <32 x bfloat> nofpclass(nan inf) %i.cy, <32 x bfloat> nofpclass(nan inf) %i.df) ; 2 uses
  %i.di = bitcast <16 x i32> %i.cv to <32 x bfloat> ; 4 uses
  %i.dj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11473432.i, <32 x bfloat> nofpclass(nan inf) %i.di, <32 x bfloat> nofpclass(nan inf) %i.ct) ; 2 uses
  %i.dk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11482431.i, <32 x bfloat> nofpclass(nan inf) %i.di, <32 x bfloat> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.dl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11485430.i, <32 x bfloat> nofpclass(nan inf) %i.db, <32 x bfloat> nofpclass(nan inf) %i.df) ; 2 uses
  %i.dm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11497428.i, <32 x bfloat> nofpclass(nan inf) %i.di, <32 x bfloat> nofpclass(nan inf) %i.df) ; 2 uses
  %i.dn = bitcast <16 x i32> %i.de to <32 x bfloat> ; 4 uses
  %i.do = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11446437.i, <32 x bfloat> nofpclass(nan inf) %i.cs, <32 x bfloat> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11452435.i, <32 x bfloat> nofpclass(nan inf) %i.cy, <32 x bfloat> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11494429.i, <32 x bfloat> nofpclass(nan inf) %i.db, <32 x bfloat> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11500427.i, <32 x bfloat> nofpclass(nan inf) %i.di, <32 x bfloat> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01420443.i, i64 64 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.11392444.i, i64 64
  %i.du = add nuw nsw i32 %.01502426.i, 2         ; 2 uses
  %i.dv = or disjoint i32 %i.du, 1
  %i.dw = icmp slt i32 %i.dv, %8
  br i1 %i.dw, label %.lr.ph.i, label %.preheader420.i.loopexit, !llvm.loop !358

.lr.ph482.i:                                      ; preds = %.preheader420.i, %.lr.ph482.i
  %.21393481.i = phi ptr [ %i.ey, %.lr.ph482.i ], [ %.11392.lcssa.i, %.preheader420.i ] ; 2 uses
  %.11421480.i = phi ptr [ %i.ex, %.lr.ph482.i ], [ %.01420.lcssa.i, %.preheader420.i ] ; 2 uses
  %.21424479.i = phi <16 x float> [ %i.eh, %.lr.ph482.i ], [ %.11423.lcssa.i, %.preheader420.i ]
  %.21427478.i = phi <16 x float> [ %i.ei, %.lr.ph482.i ], [ %.11426.lcssa.i, %.preheader420.i ]
  %.21430477.i = phi <16 x float> [ %i.ej, %.lr.ph482.i ], [ %.11429.lcssa.i, %.preheader420.i ]
  %.21441476.i = phi <16 x float> [ %i.ek, %.lr.ph482.i ], [ %.11440.lcssa.i, %.preheader420.i ]
  %.21444475.i = phi <16 x float> [ %i.el, %.lr.ph482.i ], [ %.11443.lcssa.i, %.preheader420.i ]
  %.21447474.i = phi <16 x float> [ %i.em, %.lr.ph482.i ], [ %.11446.lcssa.i, %.preheader420.i ]
  %.21450473.i = phi <16 x float> [ %i.en, %.lr.ph482.i ], [ %.11449.lcssa.i, %.preheader420.i ]
  %.21453472.i = phi <16 x float> [ %i.eo, %.lr.ph482.i ], [ %.11452.lcssa.i, %.preheader420.i ]
  %.21456471.i = phi <16 x float> [ %i.ep, %.lr.ph482.i ], [ %.11455.lcssa.i, %.preheader420.i ]
  %.21471470.i = phi <16 x float> [ %i.eq, %.lr.ph482.i ], [ %.11470.lcssa.i, %.preheader420.i ]
  %.21474469.i = phi <16 x float> [ %i.er, %.lr.ph482.i ], [ %.11473.lcssa.i, %.preheader420.i ]
end_hunk_4
begin_hunk_5_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.41419644.i = phi i32 [ %i.tt, %._crit_edge641.i ], [ %.31418.lcssa.i, %.preheader421.i ]
  br i1 %.not1811.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph647.i
  %i.qq = load <16 x float>, ptr %.5646.i, align 64, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph647.i
  %.01608.i = phi nsz <16 x float> [ %i.qq, %bb.j ], [ zeroinitializer, %.lr.ph647.i ] ; 3 uses
  br i1 %i.c, label %.lr.ph631.i.preheader, label %.preheader416.i

.lr.ph631.i.preheader:                            ; preds = %bb.k
  br i1 %i.z, label %.lr.ph631.i.epil.preheader, label %.lr.ph631.i

.preheader416.loopexit.i.unr-lcssa:               ; preds = %.lr.ph631.i
  br i1 %lcmp.mod2497.not, label %.preheader416.loopexit.i, label %.lr.ph631.i.epil.preheader

.lr.ph631.i.epil.preheader:                       ; preds = %.preheader416.loopexit.i.unr-lcssa, %.lr.ph631.i.preheader
  %.131404629.i.epil.init = phi ptr [ %.121403645.i, %.lr.ph631.i.preheader ], [ %i.su, %.preheader416.loopexit.i.unr-lcssa ]
  %.01606628.i.epil.init = phi ptr [ %.01380652.i, %.lr.ph631.i.preheader ], [ %i.st, %.preheader416.loopexit.i.unr-lcssa ]
  %.11609627.i.epil.init = phi <16 x float> [ %.01608.i, %.lr.ph631.i.preheader ], [ %i.ss, %.preheader416.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2499)
  br label %.lr.ph631.i.epil

.lr.ph631.i.epil:                                 ; preds = %.lr.ph631.i.epil, %.lr.ph631.i.epil.preheader
  %.131404629.i.epil = phi ptr [ %i.qy, %.lr.ph631.i.epil ], [ %.131404629.i.epil.init, %.lr.ph631.i.epil.preheader ] ; 2 uses
  %.01606628.i.epil = phi ptr [ %i.qx, %.lr.ph631.i.epil ], [ %.01606628.i.epil.init, %.lr.ph631.i.epil.preheader ] ; 2 uses
  %.11609627.i.epil = phi <16 x float> [ %i.qw, %.lr.ph631.i.epil ], [ %.11609627.i.epil.init, %.lr.ph631.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph631.i.epil ], [ 0, %.lr.ph631.i.epil.preheader ]
  %i.qr = load <32 x bfloat>, ptr %.01606628.i.epil, align 1, !tbaa !17
  %i.qs = load i32, ptr %.131404629.i.epil, align 4, !tbaa !369
  %i.qt = insertelement <16 x i32> poison, i32 %i.qs, i64 0
  %i.qu = shufflevector <16 x i32> %i.qt, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.qv = bitcast <16 x i32> %i.qu to <32 x bfloat>
  %i.qw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11609627.i.epil, <32 x bfloat> nofpclass(nan inf) %i.qr, <32 x bfloat> nofpclass(nan inf) %i.qv) ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.01606628.i.epil, i64 64
  %i.qy = getelementptr inbounds nuw i8, ptr %.131404629.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter2496
  br i1 %epil.iter.cmp.not, label %.preheader416.loopexit.i, label %.lr.ph631.i.epil, !llvm.loop !373

.preheader416.loopexit.i:                         ; preds = %.lr.ph631.i.epil, %.preheader416.loopexit.i.unr-lcssa
  %.lcssa2475 = phi <16 x float> [ %i.ss, %.preheader416.loopexit.i.unr-lcssa ], [ %i.qw, %.lr.ph631.i.epil ]
  %i.qz = getelementptr i8, ptr %.121403645.i, i64 %i.o
  %scevgep1781.i = getelementptr i8, ptr %i.qz, i64 4
  br label %.preheader416.i

.preheader416.i:                                  ; preds = %.preheader416.loopexit.i, %bb.k
  %.01611.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.h, %.preheader416.loopexit.i ] ; 5 uses
  %.11609.lcssa.i = phi <16 x float> [ %.01608.i, %bb.k ], [ %.lcssa2475, %.preheader416.loopexit.i ] ; 3 uses
  %.01606.lcssa.i = phi ptr [ %.01380652.i, %bb.k ], [ %indvars.iv, %.preheader416.loopexit.i ] ; 3 uses
  %.131404.lcssa.i = phi ptr [ %.121403645.i, %bb.k ], [ %scevgep1781.i, %.preheader416.loopexit.i ] ; 4 uses
  %i.ra = icmp slt i32 %.01611.lcssa.i, %8
  br i1 %i.ra, label %.lr.ph640.i.preheader, label %._crit_edge641.i

.lr.ph640.i.preheader:                            ; preds = %.preheader416.i
  %i.rb = sub i32 %8, %.01611.lcssa.i
  %.neg2656 = add i32 %.01611.lcssa.i, 1
  %xtraiter2502 = and i32 %i.rb, 1
  %lcmp.mod2503.not = icmp eq i32 %xtraiter2502, 0
  br i1 %lcmp.mod2503.not, label %.lr.ph640.i.prol.loopexit, label %.lr.ph640.i.prol

.lr.ph640.i.prol:                                 ; preds = %.lr.ph640.i.preheader
  %i.rc = load <16 x bfloat>, ptr %.01606.lcssa.i, align 1, !tbaa !17
  %i.rd = fpext fast <16 x bfloat> %i.rc to <16 x float>
  %i.re = load i16, ptr %.131404.lcssa.i, align 2, !tbaa !57
  %i.rf = zext i16 %i.re to i32
  %i.rg = shl nuw i32 %i.rf, 16
  %i.rh = insertelement <16 x i32> poison, i32 %i.rg, i64 0
  %i.ri = bitcast <16 x i32> %i.rh to <16 x float>
  %i.rj = shufflevector <16 x float> %i.ri, <16 x float> poison, <16 x i32> zeroinitializer
  %i.rk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.rd, <16 x float> nofpclass(nan inf) %i.rj, <16 x float> nofpclass(nan inf) %.11609.lcssa.i) ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.01606.lcssa.i, i64 32
  %i.rm = getelementptr inbounds nuw i8, ptr %.131404.lcssa.i, i64 2 ; 2 uses
  %i.rn = add nuw nsw i32 %.01611.lcssa.i, 1
  br label %.lr.ph640.i.prol.loopexit

.lr.ph640.i.prol.loopexit:                        ; preds = %.lr.ph640.i.prol, %.lr.ph640.i.preheader
  %.lcssa2477.unr = phi <16 x float> [ poison, %.lr.ph640.i.preheader ], [ %i.rk, %.lr.ph640.i.prol ]
  %.lcssa2476.unr = phi ptr [ poison, %.lr.ph640.i.preheader ], [ %i.rm, %.lr.ph640.i.prol ]
  %.141405639.i.unr = phi ptr [ %.131404.lcssa.i, %.lr.ph640.i.preheader ], [ %i.rm, %.lr.ph640.i.prol ]
  %.11607638.i.unr = phi ptr [ %.01606.lcssa.i, %.lr.ph640.i.preheader ], [ %i.rl, %.lr.ph640.i.prol ]
  %.21610637.i.unr = phi <16 x float> [ %.11609.lcssa.i, %.lr.ph640.i.preheader ], [ %i.rk, %.lr.ph640.i.prol ]
  %.11612636.i.unr = phi i32 [ %.01611.lcssa.i, %.lr.ph640.i.preheader ], [ %i.rn, %.lr.ph640.i.prol ]
  %i.ro = icmp eq i32 %8, %.neg2656
  br i1 %i.ro, label %._crit_edge641.i, label %.lr.ph640.i

.lr.ph631.i:                                      ; preds = %.lr.ph631.i.preheader, %.lr.ph631.i
  %.131404629.i = phi ptr [ %i.su, %.lr.ph631.i ], [ %.121403645.i, %.lr.ph631.i.preheader ] ; 5 uses
  %.01606628.i = phi ptr [ %i.st, %.lr.ph631.i ], [ %.01380652.i, %.lr.ph631.i.preheader ] ; 5 uses
  %.11609627.i = phi <16 x float> [ %i.ss, %.lr.ph631.i ], [ %.01608.i, %.lr.ph631.i.preheader ]
  %niter2501 = phi i32 [ %niter2501.next.3, %.lr.ph631.i ], [ 0, %.lr.ph631.i.preheader ]
  %i.rp = load <32 x bfloat>, ptr %.01606628.i, align 1, !tbaa !17
  %i.rq = load i32, ptr %.131404629.i, align 4, !tbaa !369
  %i.rr = insertelement <16 x i32> poison, i32 %i.rq, i64 0
  %i.rs = shufflevector <16 x i32> %i.rr, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.rt = bitcast <16 x i32> %i.rs to <32 x bfloat>
  %i.ru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11609627.i, <32 x bfloat> nofpclass(nan inf) %i.rp, <32 x bfloat> nofpclass(nan inf) %i.rt)
  %i.rv = getelementptr inbounds nuw i8, ptr %.01606628.i, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %.131404629.i, i64 4
  %i.rx = load <32 x bfloat>, ptr %i.rv, align 1, !tbaa !17
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !369
  %i.rz = insertelement <16 x i32> poison, i32 %i.ry, i64 0
  %i.sa = shufflevector <16 x i32> %i.rz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.sb = bitcast <16 x i32> %i.sa to <32 x bfloat>
  %i.sc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.ru, <32 x bfloat> nofpclass(nan inf) %i.rx, <32 x bfloat> nofpclass(nan inf) %i.sb)
  %i.sd = getelementptr inbounds nuw i8, ptr %.01606628.i, i64 128
  %i.se = getelementptr inbounds nuw i8, ptr %.131404629.i, i64 8
  %i.sf = load <32 x bfloat>, ptr %i.sd, align 1, !tbaa !17
  %i.sg = load i32, ptr %i.se, align 4, !tbaa !369
  %i.sh = insertelement <16 x i32> poison, i32 %i.sg, i64 0
  %i.si = shufflevector <16 x i32> %i.sh, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.sj = bitcast <16 x i32> %i.si to <32 x bfloat>
  %i.sk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.sc, <32 x bfloat> nofpclass(nan inf) %i.sf, <32 x bfloat> nofpclass(nan inf) %i.sj)
  %i.sl = getelementptr inbounds nuw i8, ptr %.01606628.i, i64 192
  %i.sm = getelementptr inbounds nuw i8, ptr %.131404629.i, i64 12
  %i.sn = load <32 x bfloat>, ptr %i.sl, align 1, !tbaa !17
  %i.so = load i32, ptr %i.sm, align 4, !tbaa !369
  %i.sp = insertelement <16 x i32> poison, i32 %i.so, i64 0
  %i.sq = shufflevector <16 x i32> %i.sp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.sr = bitcast <16 x i32> %i.sq to <32 x bfloat>
  %i.ss = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.sk, <32 x bfloat> nofpclass(nan inf) %i.sn, <32 x bfloat> nofpclass(nan inf) %i.sr) ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.01606628.i, i64 256 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.131404629.i, i64 16 ; 2 uses
  %niter2501.next.3 = add i32 %niter2501, 4       ; 2 uses
  %niter2501.ncmp.3.not = icmp eq i32 %niter2501.next.3, %unroll_iter2500
  br i1 %niter2501.ncmp.3.not, label %.preheader416.loopexit.i.unr-lcssa, label %.lr.ph631.i, !llvm.loop !374

.lr.ph640.i:                                      ; preds = %.lr.ph640.i.prol.loopexit, %.lr.ph640.i
  %.141405639.i = phi ptr [ %i.tq, %.lr.ph640.i ], [ %.141405639.i.unr, %.lr.ph640.i.prol.loopexit ] ; 3 uses
  %.11607638.i = phi ptr [ %i.tp, %.lr.ph640.i ], [ %.11607638.i.unr, %.lr.ph640.i.prol.loopexit ] ; 3 uses
  %.21610637.i = phi <16 x float> [ %i.to, %.lr.ph640.i ], [ %.21610637.i.unr, %.lr.ph640.i.prol.loopexit ]
  %.11612636.i = phi i32 [ %i.tr, %.lr.ph640.i ], [ %.11612636.i.unr, %.lr.ph640.i.prol.loopexit ]
  %i.sv = load <16 x bfloat>, ptr %.11607638.i, align 1, !tbaa !17
  %i.sw = fpext fast <16 x bfloat> %i.sv to <16 x float>
  %i.sx = load i16, ptr %.141405639.i, align 2, !tbaa !57
  %i.sy = zext i16 %i.sx to i32
  %i.sz = shl nuw i32 %i.sy, 16
  %i.ta = insertelement <16 x i32> poison, i32 %i.sz, i64 0
  %i.tb = bitcast <16 x i32> %i.ta to <16 x float>
  %i.tc = shufflevector <16 x float> %i.tb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.td = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.sw, <16 x float> nofpclass(nan inf) %i.tc, <16 x float> nofpclass(nan inf) %.21610637.i)
  %i.te = getelementptr inbounds nuw i8, ptr %.11607638.i, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %.141405639.i, i64 2
  %i.tg = load <16 x bfloat>, ptr %i.te, align 1, !tbaa !17
  %i.th = fpext fast <16 x bfloat> %i.tg to <16 x float>
  %i.ti = load i16, ptr %i.tf, align 2, !tbaa !57
  %i.tj = zext i16 %i.ti to i32
  %i.tk = shl nuw i32 %i.tj, 16
  %i.tl = insertelement <16 x i32> poison, i32 %i.tk, i64 0
  %i.tm = bitcast <16 x i32> %i.tl to <16 x float>
  %i.tn = shufflevector <16 x float> %i.tm, <16 x float> poison, <16 x i32> zeroinitializer
  %i.to = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.th, <16 x float> nofpclass(nan inf) %i.tn, <16 x float> nofpclass(nan inf) %i.td) ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.11607638.i, i64 64
  %i.tq = getelementptr inbounds nuw i8, ptr %.141405639.i, i64 4 ; 2 uses
  %i.tr = add nuw nsw i32 %.11612636.i, 2         ; 2 uses
  %exitcond1782.not.i.1 = icmp eq i32 %i.tr, %8
  br i1 %exitcond1782.not.i.1, label %._crit_edge641.i, label %.lr.ph640.i, !llvm.loop !375

._crit_edge641.i:                                 ; preds = %.lr.ph640.i.prol.loopexit, %.lr.ph640.i, %.preheader416.i
  %.21610.lcssa.i = phi <16 x float> [ %.11609.lcssa.i, %.preheader416.i ], [ %.lcssa2477.unr, %.lr.ph640.i.prol.loopexit ], [ %i.to, %.lr.ph640.i ]
  %.141405.lcssa.i = phi ptr [ %.131404.lcssa.i, %.preheader416.i ], [ %.lcssa2476.unr, %.lr.ph640.i.prol.loopexit ], [ %i.tq, %.lr.ph640.i ]
  store <16 x float> %.21610.lcssa.i, ptr %.5646.i, align 64, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.5646.i, i64 64 ; 2 uses
  %i.tt = add nuw nsw i32 %.41419644.i, 1         ; 2 uses
  %exitcond1783.not.i = icmp eq i32 %i.tt, %6
  br i1 %exitcond1783.not.i, label %._crit_edge648.i, label %.lr.ph647.i, !llvm.loop !376

._crit_edge648.i:                                 ; preds = %._crit_edge641.i, %.preheader421.i
  %.5.lcssa.i = phi ptr [ %.41385.lcssa.i, %.preheader421.i ], [ %i.ts, %._crit_edge641.i ] ; 2 uses
  %i.tu = getelementptr inbounds [2 x i8], ptr %.01380652.i, i64 %i.e ; 2 uses
  %i.tv = add nuw nsw i32 %.01386650.i, 16        ; 2 uses
  %i.tw = or disjoint i32 %i.tv, 15
  %i.tx = icmp slt i32 %i.tw, %4
  %scevgep627 = getelementptr i8, ptr %indvars.iv, i64 %i.t
  br i1 %i.tx, label %.preheader425.i, label %.preheader415.loopexit.i, !llvm.loop !377

.preheader414.i:                                  ; preds = %._crit_edge850.i, %.preheader414.lr.ph.i
  %indvars.iv.i = phi ptr [ %scevgep1787.i, %.preheader414.lr.ph.i ], [ %scevgep1788.i, %._crit_edge850.i ] ; 5 uses
  %.1854.i = phi ptr [ %.01380.lcssa.i, %.preheader414.lr.ph.i ], [ %i.amh, %._crit_edge850.i ] ; 14 uses
  %.6853.i = phi ptr [ %.01381.lcssa.i, %.preheader414.lr.ph.i ], [ %.11.lcssa.i, %._crit_edge850.i ] ; 2 uses
  %.11387852.i = phi i32 [ %.01386.lcssa.i, %.preheader414.lr.ph.i ], [ %i.ami, %._crit_edge850.i ]
  br i1 %i.ad, label %.lr.ph705.i, label %.preheader413.i

.preheader404.i:                                  ; preds = %._crit_edge850.i, %.preheader415.i
  %.11387.lcssa.i = phi i32 [ %.01386.lcssa.i, %.preheader415.i ], [ %i.ami, %._crit_edge850.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.01381.lcssa.i, %.preheader415.i ], [ %.11.lcssa.i, %._crit_edge850.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.01380.lcssa.i, %.preheader415.i ], [ %i.amh, %._crit_edge850.i ] ; 3 uses
  %i.ty = or disjoint i32 %.11387.lcssa.i, 3
  %i.tz = icmp slt i32 %i.ty, %4
  br i1 %i.tz, label %.preheader403.lr.ph.i, label %.preheader393.i

.preheader403.lr.ph.i:                            ; preds = %.preheader404.i
  %i.ua = icmp sgt i32 %6, 15
  %.not1801.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.ub = icmp sgt i32 %8, 1                      ; 5 uses
  %i.uc = shl i32 %8, 2
  %i.ud = sext i32 %i.uc to i64                   ; 2 uses
  %i.ue = add i32 %8, -2                          ; 4 uses
  %i.uf = and i32 %i.ue, -2
  %i.ug = add i32 %i.uf, 2                        ; 5 uses
  %i.uh = and i32 %6, -16
  %i.ui = lshr i32 %i.ue, 1
  %i.uj = zext nneg i32 %i.ui to i64              ; 4 uses
  %i.uk = shl nuw nsw i64 %i.uj, 5
  %i.ul = shl nuw nsw i64 %i.uj, 4
  %i.um = add nuw nsw i64 %i.ul, 16               ; 2 uses
  %scevgep1801.i = getelementptr i8, ptr %.1.lcssa.i, i64 %i.um
  %i.un = shl nsw i64 %i.ud, 1
  %i.uo = shl nuw nsw i64 %i.uj, 3
  %i.up = shl nuw nsw i64 %i.uj, 2
  %i.uq = lshr i32 %i.ue, 1                       ; 4 uses
  %i.ur = zext nneg i32 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 6
  %i.ut = add i32 %8, -2                          ; 5 uses
  %i.uu = lshr i32 %i.ut, 1                       ; 2 uses
  %i.uv = add nuw i32 %i.uu, 1                    ; 10 uses
  %i.uw = icmp eq i32 %i.uu, 0
  %unroll_iter2544 = and i32 %i.uv, -2
  %i.ux = and i32 %i.ut, 2
  %lcmp.mod2537.not.not = icmp eq i32 %i.ux, 0
  %lcmp.mod2543 = trunc i32 %i.uv to i1
  %i.uy = icmp eq i32 %i.uq, 0
  %unroll_iter2557 = and i32 %i.uv, -2
  %i.uz = and i32 %i.ut, 2
  %lcmp.mod2550.not.not = icmp eq i32 %i.uz, 0
  %lcmp.mod2556 = trunc i32 %i.uv to i1
  %i.va = icmp eq i32 %i.uq, 0
  %unroll_iter2569 = and i32 %i.uv, -2
  %i.vb = and i32 %i.ut, 2
  %lcmp.mod2563.not.not = icmp eq i32 %i.vb, 0
  %lcmp.mod2568 = trunc i32 %i.uv to i1
  %i.vc = icmp eq i32 %i.uq, 0
  %unroll_iter2579 = and i32 %i.uv, -2
  %i.vd = and i32 %i.ut, 2
  %lcmp.mod2575.not.not = icmp eq i32 %i.vd, 0
  %lcmp.mod2578 = trunc i32 %i.uv to i1
  %xtraiter2583 = and i32 %i.uv, 3                ; 3 uses
  %i.ve = icmp ult i32 %i.ue, 6
  %unroll_iter2588 = and i32 %i.uv, -4
  %lcmp.mod2585.not = icmp eq i32 %xtraiter2583, 0
  %lcmp.mod2587 = icmp ne i32 %xtraiter2583, 0
  br label %.preheader403.i

.preheader413.i:                                  ; preds = %._crit_edge692.i, %.preheader414.i
  %.01628.lcssa.i = phi i32 [ 0, %.preheader414.i ], [ %i.ak, %._crit_edge692.i ] ; 3 uses
  %.01613.lcssa.i = phi ptr [ %.val8, %.preheader414.i ], [ %.21615.lcssa.i, %._crit_edge692.i ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.6853.i, %.preheader414.i ], [ %i.yc, %._crit_edge692.i ] ; 2 uses
  %i.vf = or disjoint i32 %.01628.lcssa.i, 7
  %i.vg = icmp slt i32 %i.vf, %6
  br i1 %i.vg, label %.lr.ph758.i, label %.preheader412.i

.lr.ph705.i:                                      ; preds = %.preheader414.i, %._crit_edge692.i
  %.7704.i = phi ptr [ %i.yc, %._crit_edge692.i ], [ %.6853.i, %.preheader414.i ] ; 17 uses
  %.01613703.i = phi ptr [ %.21615.lcssa.i, %._crit_edge692.i ], [ %.val8, %.preheader414.i ] ; 3 uses
  %.01628702.i = phi i32 [ %i.yd, %._crit_edge692.i ], [ 0, %.preheader414.i ]
  br i1 %.not1806.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph705.i
  %i.vh = load <16 x float>, ptr %.7704.i, align 64, !tbaa !17
  %i.vi = getelementptr inbounds nuw i8, ptr %.7704.i, i64 64
  %i.vj = load <16 x float>, ptr %i.vi, align 64, !tbaa !17
  %i.vk = getelementptr inbounds nuw i8, ptr %.7704.i, i64 128
  %i.vl = load <16 x float>, ptr %i.vk, align 64, !tbaa !17
  %i.vm = getelementptr inbounds nuw i8, ptr %.7704.i, i64 192
  %i.vn = load <16 x float>, ptr %i.vm, align 64, !tbaa !17
  %i.vo = getelementptr inbounds nuw i8, ptr %.7704.i, i64 256
  %i.vp = load <16 x float>, ptr %i.vo, align 64, !tbaa !17
  %i.vq = getelementptr inbounds nuw i8, ptr %.7704.i, i64 320
  %i.vr = load <16 x float>, ptr %i.vq, align 64, !tbaa !17
  %i.vs = getelementptr inbounds nuw i8, ptr %.7704.i, i64 384
  %i.vt = load <16 x float>, ptr %i.vs, align 64, !tbaa !17
  %i.vu = getelementptr inbounds nuw i8, ptr %.7704.i, i64 448
  %i.vv = load <16 x float>, ptr %i.vu, align 64, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph705.i
  %.01680.i = phi nsz <16 x float> [ %i.vv, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01677.i = phi nsz <16 x float> [ %i.vt, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01670.i = phi nsz <16 x float> [ %i.vr, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01667.i = phi nsz <16 x float> [ %i.vp, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01664.i = phi nsz <16 x float> [ %i.vn, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01657.i = phi nsz <16 x float> [ %i.vl, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01654.i = phi nsz <16 x float> [ %i.vj, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  %.01651.i = phi nsz <16 x float> [ %i.vh, %bb.l ], [ zeroinitializer, %.lr.ph705.i ] ; 2 uses
  br i1 %i.ae, label %.lr.ph668.i, label %.preheader409.i

.preheader409.i.loopexit:                         ; preds = %.lr.ph668.i
  %i.vw = getelementptr i8, ptr %.01613703.i, i64 %i.av
  %scevgep628 = getelementptr i8, ptr %i.vw, i64 64
  br label %.preheader409.i

.preheader409.i:                                  ; preds = %.preheader409.i.loopexit, %bb.m
  %.01683.lcssa.i = phi i32 [ 0, %bb.m ], [ %i.aj, %.preheader409.i.loopexit ] ; 2 uses
  %.11681.lcssa.i = phi <16 x float> [ %.01680.i, %bb.m ], [ %i.wv, %.preheader409.i.loopexit ] ; 2 uses
  %.11678.lcssa.i = phi <16 x float> [ %.01677.i, %bb.m ], [ %i.wu, %.preheader409.i.loopexit ] ; 2 uses
  %.11671.lcssa.i = phi <16 x float> [ %.01670.i, %bb.m ], [ %i.wt, %.preheader409.i.loopexit ] ; 2 uses
  %.11668.lcssa.i = phi <16 x float> [ %.01667.i, %bb.m ], [ %i.wr, %.preheader409.i.loopexit ] ; 2 uses
  %.11665.lcssa.i = phi <16 x float> [ %.01664.i, %bb.m ], [ %i.wp, %.preheader409.i.loopexit ] ; 2 uses
  %.11658.lcssa.i = phi <16 x float> [ %.01657.i, %bb.m ], [ %i.wo, %.preheader409.i.loopexit ] ; 2 uses
  %.11655.lcssa.i = phi <16 x float> [ %.01654.i, %bb.m ], [ %i.wm, %.preheader409.i.loopexit ] ; 2 uses
  %.11652.lcssa.i = phi <16 x float> [ %.01651.i, %bb.m ], [ %i.wk, %.preheader409.i.loopexit ] ; 2 uses
  %.01633.lcssa.i = phi ptr [ %.1854.i, %bb.m ], [ %i.ww, %.preheader409.i.loopexit ]
  %.11614.lcssa.i = phi ptr [ %.01613703.i, %bb.m ], [ %scevgep628, %.preheader409.i.loopexit ] ; 2 uses
  %i.vx = icmp slt i32 %.01683.lcssa.i, %8
  br i1 %i.vx, label %.lr.ph691.i, label %._crit_edge692.i

.lr.ph668.i:                                      ; preds = %bb.m, %.lr.ph668.i
  %.11614666.i = phi ptr [ %i.wx, %.lr.ph668.i ], [ %.01613703.i, %bb.m ] ; 2 uses
  %.01633665.i = phi ptr [ %i.ww, %.lr.ph668.i ], [ %.1854.i, %bb.m ] ; 2 uses
  %.11652664.i = phi <16 x float> [ %i.wk, %.lr.ph668.i ], [ %.01651.i, %bb.m ]
  %.11655663.i = phi <16 x float> [ %i.wm, %.lr.ph668.i ], [ %.01654.i, %bb.m ]
  %.11658662.i = phi <16 x float> [ %i.wo, %.lr.ph668.i ], [ %.01657.i, %bb.m ]
  %.11665661.i = phi <16 x float> [ %i.wp, %.lr.ph668.i ], [ %.01664.i, %bb.m ]
  %.11668660.i = phi <16 x float> [ %i.wr, %.lr.ph668.i ], [ %.01667.i, %bb.m ]
  %.11671659.i = phi <16 x float> [ %i.wt, %.lr.ph668.i ], [ %.01670.i, %bb.m ]
  %.11678658.i = phi <16 x float> [ %i.wu, %.lr.ph668.i ], [ %.01677.i, %bb.m ]
  %.11681657.i = phi <16 x float> [ %i.wv, %.lr.ph668.i ], [ %.01680.i, %bb.m ]
  %.01683656.i = phi i32 [ %i.wy, %.lr.ph668.i ], [ 0, %bb.m ]
  %i.vy = load <4 x i64>, ptr %.01633665.i, align 1, !tbaa !17
  %i.vz = load <8 x i64>, ptr %.11614666.i, align 1, !tbaa !17 ; 3 uses
  %i.wa = shufflevector <4 x i64> %i.vy, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.wb = bitcast <8 x i64> %i.wa to <16 x i32>
  %i.wc = shufflevector <16 x i32> %i.wb, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.wd = bitcast <8 x i64> %i.vz to <16 x i32>
  %i.we = shufflevector <16 x i32> %i.wd, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.wf = shufflevector <8 x i64> %i.vz, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.wg = bitcast <8 x i64> %i.wf to <16 x i32>
  %i.wh = shufflevector <16 x i32> %i.wg, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.wi = bitcast <8 x i64> %i.wa to <32 x bfloat> ; 4 uses
  %i.wj = bitcast <8 x i64> %i.vz to <32 x bfloat> ; 2 uses
  %i.wk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11652664.i, <32 x bfloat> nofpclass(nan inf) %i.wi, <32 x bfloat> nofpclass(nan inf) %i.wj) ; 2 uses
  %i.wl = bitcast <16 x i32> %i.we to <32 x bfloat> ; 2 uses
  %i.wm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11655663.i, <32 x bfloat> nofpclass(nan inf) %i.wi, <32 x bfloat> nofpclass(nan inf) %i.wl) ; 2 uses
  %i.wn = bitcast <16 x i32> %i.wc to <32 x bfloat> ; 4 uses
  %i.wo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11658662.i, <32 x bfloat> nofpclass(nan inf) %i.wn, <32 x bfloat> nofpclass(nan inf) %i.wj) ; 2 uses
  %i.wp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11665661.i, <32 x bfloat> nofpclass(nan inf) %i.wn, <32 x bfloat> nofpclass(nan inf) %i.wl) ; 2 uses
  %i.wq = bitcast <8 x i64> %i.wf to <32 x bfloat> ; 2 uses
  %i.wr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11668660.i, <32 x bfloat> nofpclass(nan inf) %i.wi, <32 x bfloat> nofpclass(nan inf) %i.wq) ; 2 uses
  %i.ws = bitcast <16 x i32> %i.wh to <32 x bfloat> ; 2 uses
  %i.wt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11671659.i, <32 x bfloat> nofpclass(nan inf) %i.wi, <32 x bfloat> nofpclass(nan inf) %i.ws) ; 2 uses
  %i.wu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11678658.i, <32 x bfloat> nofpclass(nan inf) %i.wn, <32 x bfloat> nofpclass(nan inf) %i.wq) ; 2 uses
  %i.wv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11681657.i, <32 x bfloat> nofpclass(nan inf) %i.wn, <32 x bfloat> nofpclass(nan inf) %i.ws) ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.01633665.i, i64 32 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.11614666.i, i64 64
  %i.wy = add nuw nsw i32 %.01683656.i, 2         ; 2 uses
  %i.wz = or disjoint i32 %i.wy, 1
  %i.xa = icmp slt i32 %i.wz, %8
  br i1 %i.xa, label %.lr.ph668.i, label %.preheader409.i.loopexit, !llvm.loop !378

.lr.ph691.i:                                      ; preds = %.preheader409.i, %.lr.ph691.i
  %.21615690.i = phi ptr [ %i.xt, %.lr.ph691.i ], [ %.11614.lcssa.i, %.preheader409.i ] ; 2 uses
  %.11634689.i = phi ptr [ %i.xs, %.lr.ph691.i ], [ %.01633.lcssa.i, %.preheader409.i ] ; 2 uses
  %.21653688.i = phi <16 x float> [ %i.xk, %.lr.ph691.i ], [ %.11652.lcssa.i, %.preheader409.i ]
  %.21656687.i = phi <16 x float> [ %i.xl, %.lr.ph691.i ], [ %.11655.lcssa.i, %.preheader409.i ]
  %.21659686.i = phi <16 x float> [ %i.xm, %.lr.ph691.i ], [ %.11658.lcssa.i, %.preheader409.i ]
  %.21666685.i = phi <16 x float> [ %i.xn, %.lr.ph691.i ], [ %.11665.lcssa.i, %.preheader409.i ]
  %.21669684.i = phi <16 x float> [ %i.xo, %.lr.ph691.i ], [ %.11668.lcssa.i, %.preheader409.i ]
  %.21672683.i = phi <16 x float> [ %i.xp, %.lr.ph691.i ], [ %.11671.lcssa.i, %.preheader409.i ]
  %.21679682.i = phi <16 x float> [ %i.xq, %.lr.ph691.i ], [ %.11678.lcssa.i, %.preheader409.i ]
  %.21682681.i = phi <16 x float> [ %i.xr, %.lr.ph691.i ], [ %.11681.lcssa.i, %.preheader409.i ]
  %.11684680.i = phi i32 [ %i.xu, %.lr.ph691.i ], [ %.01683.lcssa.i, %.preheader409.i ]
  %i.xb = load <8 x bfloat>, ptr %.11634689.i, align 1, !tbaa !17
  %i.xc = fpext fast <8 x bfloat> %i.xb to <8 x float> ; 2 uses
  %i.xd = shufflevector <8 x float> %i.xc, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.xe = load <16 x bfloat>, ptr %.21615690.i, align 1, !tbaa !17
  %i.xf = fpext fast <16 x bfloat> %i.xe to <16 x float> ; 5 uses
  %i.xg = shufflevector <8 x float> %i.xc, <8 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.xh = shufflevector <16 x float> %i.xf, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.xi = shufflevector <16 x float> %i.xf, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.xj = shufflevector <16 x float> %i.xf, <16 x float> poison, <16 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0, i32 13, i32 14, i32 15, i32 12, i32 9, i32 10, i32 11, i32 8> ; 2 uses
  %i.xk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xd, <16 x float> nofpclass(nan inf) %i.xf, <16 x float> nofpclass(nan inf) %.21653688.i) ; 2 uses
  %i.xl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xd, <16 x float> nofpclass(nan inf) %i.xh, <16 x float> nofpclass(nan inf) %.21656687.i) ; 2 uses
  %i.xm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xg, <16 x float> nofpclass(nan inf) %i.xf, <16 x float> nofpclass(nan inf) %.21659686.i) ; 2 uses
  %i.xn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xg, <16 x float> nofpclass(nan inf) %i.xh, <16 x float> nofpclass(nan inf) %.21666685.i) ; 2 uses
  %i.xo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xd, <16 x float> nofpclass(nan inf) %i.xi, <16 x float> nofpclass(nan inf) %.21669684.i) ; 2 uses
  %i.xp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xd, <16 x float> nofpclass(nan inf) %i.xj, <16 x float> nofpclass(nan inf) %.21672683.i) ; 2 uses
  %i.xq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xg, <16 x float> nofpclass(nan inf) %i.xi, <16 x float> nofpclass(nan inf) %.21679682.i) ; 2 uses
  %i.xr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.xg, <16 x float> nofpclass(nan inf) %i.xj, <16 x float> nofpclass(nan inf) %.21682681.i) ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.11634689.i, i64 16
  %i.xt = getelementptr inbounds nuw i8, ptr %.21615690.i, i64 32 ; 2 uses
  %i.xu = add nuw nsw i32 %.11684680.i, 1         ; 2 uses
  %exitcond1784.not.i = icmp eq i32 %i.xu, %8
  br i1 %exitcond1784.not.i, label %._crit_edge692.i, label %.lr.ph691.i, !llvm.loop !379

._crit_edge692.i:                                 ; preds = %.lr.ph691.i, %.preheader409.i
  %.21682.lcssa.i = phi <16 x float> [ %.11681.lcssa.i, %.preheader409.i ], [ %i.xr, %.lr.ph691.i ]
  %.21679.lcssa.i = phi <16 x float> [ %.11678.lcssa.i, %.preheader409.i ], [ %i.xq, %.lr.ph691.i ]
  %.21672.lcssa.i = phi <16 x float> [ %.11671.lcssa.i, %.preheader409.i ], [ %i.xp, %.lr.ph691.i ]
  %.21669.lcssa.i = phi <16 x float> [ %.11668.lcssa.i, %.preheader409.i ], [ %i.xo, %.lr.ph691.i ]
  %.21666.lcssa.i = phi <16 x float> [ %.11665.lcssa.i, %.preheader409.i ], [ %i.xn, %.lr.ph691.i ]
  %.21659.lcssa.i = phi <16 x float> [ %.11658.lcssa.i, %.preheader409.i ], [ %i.xm, %.lr.ph691.i ]
  %.21656.lcssa.i = phi <16 x float> [ %.11655.lcssa.i, %.preheader409.i ], [ %i.xl, %.lr.ph691.i ]
  %.21653.lcssa.i = phi <16 x float> [ %.11652.lcssa.i, %.preheader409.i ], [ %i.xk, %.lr.ph691.i ]
  %.21615.lcssa.i = phi ptr [ %.11614.lcssa.i, %.preheader409.i ], [ %i.xt, %.lr.ph691.i ] ; 2 uses
  store <16 x float> %.21653.lcssa.i, ptr %.7704.i, align 64, !tbaa !17
  %i.xv = getelementptr inbounds nuw i8, ptr %.7704.i, i64 64
  store <16 x float> %.21656.lcssa.i, ptr %i.xv, align 64, !tbaa !17
  %i.xw = getelementptr inbounds nuw i8, ptr %.7704.i, i64 128
  store <16 x float> %.21659.lcssa.i, ptr %i.xw, align 64, !tbaa !17
  %i.xx = getelementptr inbounds nuw i8, ptr %.7704.i, i64 192
end_hunk_5
begin_hunk_6_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.41632846.i = phi i32 [ %i.amg, %._crit_edge843.i ], [ %.31631.lcssa.i, %.preheader410.i ]
  br i1 %.not1806.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph849.i
  %i.ajd = load <8 x float>, ptr %.11848.i, align 32, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph849.i
  %.0311.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph849.i ], [ %i.ajd, %bb.t ] ; 3 uses
  br i1 %i.ae, label %.lr.ph833.i.preheader, label %.preheader405.i

.lr.ph833.i.preheader:                            ; preds = %bb.u
  br i1 %i.bb, label %.lr.ph833.i.epil.preheader, label %.lr.ph833.i

.preheader405.loopexit.i.unr-lcssa:               ; preds = %.lr.ph833.i
  br i1 %lcmp.mod2528.not, label %.preheader405.loopexit.i, label %.lr.ph833.i.epil.preheader

.lr.ph833.i.epil.preheader:                       ; preds = %.preheader405.loopexit.i.unr-lcssa, %.lr.ph833.i.preheader
  %.131626831.i.epil.init = phi ptr [ %.121625847.i, %.lr.ph833.i.preheader ], [ %i.alh, %.preheader405.loopexit.i.unr-lcssa ]
  %.01731830.i.epil.init = phi ptr [ %.1854.i, %.lr.ph833.i.preheader ], [ %i.alg, %.preheader405.loopexit.i.unr-lcssa ]
  %.1312828.i.epil.init = phi <8 x float> [ %.0311.i, %.lr.ph833.i.preheader ], [ %i.alf, %.preheader405.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2530)
  br label %.lr.ph833.i.epil

.lr.ph833.i.epil:                                 ; preds = %.lr.ph833.i.epil, %.lr.ph833.i.epil.preheader
  %.131626831.i.epil = phi ptr [ %i.ajl, %.lr.ph833.i.epil ], [ %.131626831.i.epil.init, %.lr.ph833.i.epil.preheader ] ; 2 uses
  %.01731830.i.epil = phi ptr [ %i.ajk, %.lr.ph833.i.epil ], [ %.01731830.i.epil.init, %.lr.ph833.i.epil.preheader ] ; 2 uses
  %.1312828.i.epil = phi <8 x float> [ %i.ajj, %.lr.ph833.i.epil ], [ %.1312828.i.epil.init, %.lr.ph833.i.epil.preheader ]
  %epil.iter2527 = phi i32 [ %epil.iter2527.next, %.lr.ph833.i.epil ], [ 0, %.lr.ph833.i.epil.preheader ]
  %i.aje = load <16 x bfloat>, ptr %.01731830.i.epil, align 1, !tbaa !17
  %i.ajf = load i32, ptr %.131626831.i.epil, align 4, !tbaa !369
  %i.ajg = insertelement <8 x i32> poison, i32 %i.ajf, i64 0
  %i.ajh = shufflevector <8 x i32> %i.ajg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aji = bitcast <8 x i32> %i.ajh to <16 x bfloat>
  %i.ajj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1312828.i.epil, <16 x bfloat> nofpclass(nan inf) %i.aje, <16 x bfloat> nofpclass(nan inf) %i.aji) ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.01731830.i.epil, i64 32
  %i.ajl = getelementptr inbounds nuw i8, ptr %.131626831.i.epil, i64 4
  %epil.iter2527.next = add i32 %epil.iter2527, 1 ; 2 uses
  %epil.iter2527.cmp.not = icmp eq i32 %epil.iter2527.next, %xtraiter2526
  br i1 %epil.iter2527.cmp.not, label %.preheader405.loopexit.i, label %.lr.ph833.i.epil, !llvm.loop !390

.preheader405.loopexit.i:                         ; preds = %.lr.ph833.i.epil, %.preheader405.loopexit.i.unr-lcssa
  %.lcssa2397 = phi <8 x float> [ %i.alf, %.preheader405.loopexit.i.unr-lcssa ], [ %i.ajj, %.lr.ph833.i.epil ]
  %i.ajm = getelementptr i8, ptr %.121625847.i, i64 %i.as
  %scevgep1793.i = getelementptr i8, ptr %i.ajm, i64 4
  br label %.preheader405.i

.preheader405.i:                                  ; preds = %.preheader405.loopexit.i, %bb.u
  %.1312.lcssa.i = phi <8 x float> [ %.0311.i, %bb.u ], [ %.lcssa2397, %.preheader405.loopexit.i ] ; 3 uses
  %.01737.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.aj, %.preheader405.loopexit.i ] ; 5 uses
  %.01731.lcssa.i = phi ptr [ %.1854.i, %bb.u ], [ %indvars.iv.i, %.preheader405.loopexit.i ] ; 3 uses
  %.131626.lcssa.i = phi ptr [ %.121625847.i, %bb.u ], [ %scevgep1793.i, %.preheader405.loopexit.i ] ; 4 uses
  %i.ajn = icmp slt i32 %.01737.lcssa.i, %8
  br i1 %i.ajn, label %.lr.ph842.i.preheader, label %._crit_edge843.i

.lr.ph842.i.preheader:                            ; preds = %.preheader405.i
  %i.ajo = sub i32 %8, %.01737.lcssa.i
  %.neg2659 = add i32 %.01737.lcssa.i, 1
  %xtraiter2533 = and i32 %i.ajo, 1
  %lcmp.mod2534.not = icmp eq i32 %xtraiter2533, 0
  br i1 %lcmp.mod2534.not, label %.lr.ph842.i.prol.loopexit, label %.lr.ph842.i.prol

.lr.ph842.i.prol:                                 ; preds = %.lr.ph842.i.preheader
  %i.ajp = load <8 x bfloat>, ptr %.01731.lcssa.i, align 1, !tbaa !17
  %i.ajq = fpext fast <8 x bfloat> %i.ajp to <8 x float>
  %i.ajr = load i16, ptr %.131626.lcssa.i, align 2, !tbaa !57
  %i.ajs = zext i16 %i.ajr to i32
  %i.ajt = shl nuw i32 %i.ajs, 16
  %i.aju = insertelement <8 x i32> poison, i32 %i.ajt, i64 0
  %i.ajv = bitcast <8 x i32> %i.aju to <8 x float>
  %i.ajw = shufflevector <8 x float> %i.ajv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajq, <8 x float> nofpclass(nan inf) %i.ajw, <8 x float> nofpclass(nan inf) %.1312.lcssa.i) ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.01731.lcssa.i, i64 16
  %i.ajz = getelementptr inbounds nuw i8, ptr %.131626.lcssa.i, i64 2 ; 2 uses
  %i.aka = add nuw nsw i32 %.01737.lcssa.i, 1
  br label %.lr.ph842.i.prol.loopexit

.lr.ph842.i.prol.loopexit:                        ; preds = %.lr.ph842.i.prol, %.lr.ph842.i.preheader
  %.lcssa2399.unr = phi <8 x float> [ poison, %.lr.ph842.i.preheader ], [ %i.ajx, %.lr.ph842.i.prol ]
  %.lcssa2398.unr = phi ptr [ poison, %.lr.ph842.i.preheader ], [ %i.ajz, %.lr.ph842.i.prol ]
  %.141627841.i.unr = phi ptr [ %.131626.lcssa.i, %.lr.ph842.i.preheader ], [ %i.ajz, %.lr.ph842.i.prol ]
  %.11732840.i.unr = phi ptr [ %.01731.lcssa.i, %.lr.ph842.i.preheader ], [ %i.ajy, %.lr.ph842.i.prol ]
  %.11738839.i.unr = phi i32 [ %.01737.lcssa.i, %.lr.ph842.i.preheader ], [ %i.aka, %.lr.ph842.i.prol ]
  %.2313838.i.unr = phi <8 x float> [ %.1312.lcssa.i, %.lr.ph842.i.preheader ], [ %i.ajx, %.lr.ph842.i.prol ]
  %i.akb = icmp eq i32 %8, %.neg2659
  br i1 %i.akb, label %._crit_edge843.i, label %.lr.ph842.i

.lr.ph833.i:                                      ; preds = %.lr.ph833.i.preheader, %.lr.ph833.i
  %.131626831.i = phi ptr [ %i.alh, %.lr.ph833.i ], [ %.121625847.i, %.lr.ph833.i.preheader ] ; 5 uses
  %.01731830.i = phi ptr [ %i.alg, %.lr.ph833.i ], [ %.1854.i, %.lr.ph833.i.preheader ] ; 5 uses
  %.1312828.i = phi <8 x float> [ %i.alf, %.lr.ph833.i ], [ %.0311.i, %.lr.ph833.i.preheader ]
  %niter2532 = phi i32 [ %niter2532.next.3, %.lr.ph833.i ], [ 0, %.lr.ph833.i.preheader ]
  %i.akc = load <16 x bfloat>, ptr %.01731830.i, align 1, !tbaa !17
  %i.akd = load i32, ptr %.131626831.i, align 4, !tbaa !369
  %i.ake = insertelement <8 x i32> poison, i32 %i.akd, i64 0
  %i.akf = shufflevector <8 x i32> %i.ake, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.akg = bitcast <8 x i32> %i.akf to <16 x bfloat>
  %i.akh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1312828.i, <16 x bfloat> nofpclass(nan inf) %i.akc, <16 x bfloat> nofpclass(nan inf) %i.akg)
  %i.aki = getelementptr inbounds nuw i8, ptr %.01731830.i, i64 32
  %i.akj = getelementptr inbounds nuw i8, ptr %.131626831.i, i64 4
  %i.akk = load <16 x bfloat>, ptr %i.aki, align 1, !tbaa !17
  %i.akl = load i32, ptr %i.akj, align 4, !tbaa !369
  %i.akm = insertelement <8 x i32> poison, i32 %i.akl, i64 0
  %i.akn = shufflevector <8 x i32> %i.akm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ako = bitcast <8 x i32> %i.akn to <16 x bfloat>
  %i.akp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.akh, <16 x bfloat> nofpclass(nan inf) %i.akk, <16 x bfloat> nofpclass(nan inf) %i.ako)
  %i.akq = getelementptr inbounds nuw i8, ptr %.01731830.i, i64 64
  %i.akr = getelementptr inbounds nuw i8, ptr %.131626831.i, i64 8
  %i.aks = load <16 x bfloat>, ptr %i.akq, align 1, !tbaa !17
  %i.akt = load i32, ptr %i.akr, align 4, !tbaa !369
  %i.aku = insertelement <8 x i32> poison, i32 %i.akt, i64 0
  %i.akv = shufflevector <8 x i32> %i.aku, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.akw = bitcast <8 x i32> %i.akv to <16 x bfloat>
  %i.akx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.akp, <16 x bfloat> nofpclass(nan inf) %i.aks, <16 x bfloat> nofpclass(nan inf) %i.akw)
  %i.aky = getelementptr inbounds nuw i8, ptr %.01731830.i, i64 96
  %i.akz = getelementptr inbounds nuw i8, ptr %.131626831.i, i64 12
  %i.ala = load <16 x bfloat>, ptr %i.aky, align 1, !tbaa !17
  %i.alb = load i32, ptr %i.akz, align 4, !tbaa !369
  %i.alc = insertelement <8 x i32> poison, i32 %i.alb, i64 0
  %i.ald = shufflevector <8 x i32> %i.alc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ale = bitcast <8 x i32> %i.ald to <16 x bfloat>
  %i.alf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.akx, <16 x bfloat> nofpclass(nan inf) %i.ala, <16 x bfloat> nofpclass(nan inf) %i.ale) ; 3 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.01731830.i, i64 128 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.131626831.i, i64 16 ; 2 uses
  %niter2532.next.3 = add i32 %niter2532, 4       ; 2 uses
  %niter2532.ncmp.3.not = icmp eq i32 %niter2532.next.3, %unroll_iter2531
  br i1 %niter2532.ncmp.3.not, label %.preheader405.loopexit.i.unr-lcssa, label %.lr.ph833.i, !llvm.loop !391

.lr.ph842.i:                                      ; preds = %.lr.ph842.i.prol.loopexit, %.lr.ph842.i
  %.141627841.i = phi ptr [ %i.amd, %.lr.ph842.i ], [ %.141627841.i.unr, %.lr.ph842.i.prol.loopexit ] ; 3 uses
  %.11732840.i = phi ptr [ %i.amc, %.lr.ph842.i ], [ %.11732840.i.unr, %.lr.ph842.i.prol.loopexit ] ; 3 uses
  %.11738839.i = phi i32 [ %i.ame, %.lr.ph842.i ], [ %.11738839.i.unr, %.lr.ph842.i.prol.loopexit ]
  %.2313838.i = phi <8 x float> [ %i.amb, %.lr.ph842.i ], [ %.2313838.i.unr, %.lr.ph842.i.prol.loopexit ]
  %i.ali = load <8 x bfloat>, ptr %.11732840.i, align 1, !tbaa !17
  %i.alj = fpext fast <8 x bfloat> %i.ali to <8 x float>
  %i.alk = load i16, ptr %.141627841.i, align 2, !tbaa !57
  %i.all = zext i16 %i.alk to i32
  %i.alm = shl nuw i32 %i.all, 16
  %i.aln = insertelement <8 x i32> poison, i32 %i.alm, i64 0
  %i.alo = bitcast <8 x i32> %i.aln to <8 x float>
  %i.alp = shufflevector <8 x float> %i.alo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.alq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alj, <8 x float> nofpclass(nan inf) %i.alp, <8 x float> nofpclass(nan inf) %.2313838.i)
  %i.alr = getelementptr inbounds nuw i8, ptr %.11732840.i, i64 16
  %i.als = getelementptr inbounds nuw i8, ptr %.141627841.i, i64 2
  %i.alt = load <8 x bfloat>, ptr %i.alr, align 1, !tbaa !17
  %i.alu = fpext fast <8 x bfloat> %i.alt to <8 x float>
  %i.alv = load i16, ptr %i.als, align 2, !tbaa !57
  %i.alw = zext i16 %i.alv to i32
  %i.alx = shl nuw i32 %i.alw, 16
  %i.aly = insertelement <8 x i32> poison, i32 %i.alx, i64 0
  %i.alz = bitcast <8 x i32> %i.aly to <8 x float>
  %i.ama = shufflevector <8 x float> %i.alz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alu, <8 x float> nofpclass(nan inf) %i.ama, <8 x float> nofpclass(nan inf) %i.alq) ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.11732840.i, i64 32
  %i.amd = getelementptr inbounds nuw i8, ptr %.141627841.i, i64 4 ; 2 uses
  %i.ame = add nuw nsw i32 %.11738839.i, 2        ; 2 uses
  %exitcond1794.not.i.1 = icmp eq i32 %i.ame, %8
  br i1 %exitcond1794.not.i.1, label %._crit_edge843.i, label %.lr.ph842.i, !llvm.loop !392

._crit_edge843.i:                                 ; preds = %.lr.ph842.i.prol.loopexit, %.lr.ph842.i, %.preheader405.i
  %.2313.lcssa.i = phi <8 x float> [ %.1312.lcssa.i, %.preheader405.i ], [ %.lcssa2399.unr, %.lr.ph842.i.prol.loopexit ], [ %i.amb, %.lr.ph842.i ]
  %.141627.lcssa.i = phi ptr [ %.131626.lcssa.i, %.preheader405.i ], [ %.lcssa2398.unr, %.lr.ph842.i.prol.loopexit ], [ %i.amd, %.lr.ph842.i ]
  store <8 x float> %.2313.lcssa.i, ptr %.11848.i, align 32, !tbaa !17
  %i.amf = getelementptr inbounds nuw i8, ptr %.11848.i, i64 32 ; 2 uses
  %i.amg = add nuw nsw i32 %.41632846.i, 1        ; 2 uses
  %exitcond1795.not.i = icmp eq i32 %i.amg, %6
  br i1 %exitcond1795.not.i, label %._crit_edge850.i, label %.lr.ph849.i, !llvm.loop !393

._crit_edge850.i:                                 ; preds = %._crit_edge843.i, %.preheader410.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader410.i ], [ %i.amf, %._crit_edge843.i ] ; 2 uses
  %i.amh = getelementptr inbounds [2 x i8], ptr %.1854.i, i64 %i.ag ; 2 uses
  %i.ami = add nuw nsw i32 %.11387852.i, 8        ; 3 uses
  %i.amj = or disjoint i32 %i.ami, 7
  %i.amk = icmp slt i32 %i.amj, %4
  %scevgep1788.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.ap
  br i1 %i.amk, label %.preheader414.i, label %.preheader404.i, !llvm.loop !394

.preheader403.i:                                  ; preds = %._crit_edge1020.i, %.preheader403.lr.ph.i
  %indvars.iv1802.i = phi ptr [ %scevgep1801.i, %.preheader403.lr.ph.i ], [ %scevgep1803.i, %._crit_edge1020.i ] ; 4 uses
  %.21024.i = phi ptr [ %.1.lcssa.i, %.preheader403.lr.ph.i ], [ %i.bix, %._crit_edge1020.i ] ; 16 uses
  %.121023.i = phi ptr [ %.6.lcssa.i, %.preheader403.lr.ph.i ], [ %.17.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %.213881022.i = phi i32 [ %.11387.lcssa.i, %.preheader403.lr.ph.i ], [ %i.biy, %._crit_edge1020.i ]
  br i1 %i.ua, label %.lr.ph891.i, label %.preheader402.i

.preheader393.i:                                  ; preds = %._crit_edge1020.i, %.preheader404.i
  %.21388.lcssa.i = phi i32 [ %.11387.lcssa.i, %.preheader404.i ], [ %i.biy, %._crit_edge1020.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader404.i ], [ %.17.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader404.i ], [ %i.bix, %._crit_edge1020.i ] ; 3 uses
  %i.aml = or disjoint i32 %.21388.lcssa.i, 1
  %i.amm = icmp slt i32 %i.aml, %4
  br i1 %i.amm, label %.preheader392.lr.ph.i, label %.preheader382.i

.preheader392.lr.ph.i:                            ; preds = %.preheader393.i
  %i.amn = icmp sgt i32 %6, 15
  %.not1796.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.amo = icmp sgt i32 %8, 1                     ; 5 uses
  %i.amp = shl i32 %8, 1
  %i.amq = sext i32 %i.amp to i64                 ; 2 uses
  %i.amr = add i32 %8, -2                         ; 7 uses
  %i.ams = and i32 %i.amr, -2
  %i.amt = add i32 %i.ams, 2                      ; 5 uses
  %i.amu = and i32 %6, -16
  %i.amv = lshr i32 %i.amr, 1
  %i.amw = zext nneg i32 %i.amv to i64            ; 5 uses
  %i.amx = shl nuw nsw i64 %i.amw, 5
  %i.amy = shl nuw nsw i64 %i.amw, 4
  %i.amz = shl nuw nsw i64 %i.amw, 3
  %i.ana = add nuw nsw i64 %i.amz, 8              ; 2 uses
  %scevgep1816.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ana
  %i.anb = shl nsw i64 %i.amq, 1
  %i.anc = shl nuw nsw i64 %i.amw, 2
  %i.and = lshr i32 %i.amr, 1
  %i.ane = zext nneg i32 %i.and to i64
  %i.anf = shl nuw nsw i64 %i.ane, 6
  %i.ang = add nuw nsw i64 %i.amw, 1              ; 10 uses
  %i.anh = add i32 %8, -2                         ; 4 uses
  %i.ani = lshr i32 %i.anh, 1                     ; 4 uses
  %i.anj = add nuw i32 %i.ani, 1                  ; 6 uses
  %i.ank = icmp eq i32 %i.ani, 0
  %unroll_iter2599 = and i32 %i.anj, -2
  %i.anl = and i32 %i.anh, 2
  %lcmp.mod2594.not.not = icmp eq i32 %i.anl, 0
  %lcmp.mod2598 = trunc i32 %i.anj to i1
  %i.anm = icmp eq i32 %i.ani, 0
  %unroll_iter2610 = and i32 %i.anj, -2
  %i.ann = and i32 %i.anh, 2
  %lcmp.mod2605.not.not = icmp eq i32 %i.ann, 0
  %lcmp.mod2609 = trunc i32 %i.anj to i1
  %i.ano = icmp eq i32 %i.ani, 0
  %unroll_iter2621 = and i32 %i.anj, -2
  %i.anp = and i32 %i.anh, 2
  %lcmp.mod2616.not.not = icmp eq i32 %i.anp, 0
  %lcmp.mod2620 = trunc i32 %i.anj to i1
  %min.iters.check1483 = icmp ult i32 %i.amr, 14
  %min.iters.check1485 = icmp ult i32 %i.amr, 62
  %i.anq = and i64 %i.ang, 24
  %n.vec1487 = and i64 %i.ang, 4294967264         ; 5 uses
  %i.anr = trunc nuw i64 %n.vec1487 to i32
  %i.ans = shl i32 %i.anr, 1
  %i.ant = shl nuw nsw i64 %n.vec1487, 3          ; 2 uses
  %cmp.n1528 = icmp eq i64 %i.ang, %n.vec1487
  %min.epilog.iters.check1539 = icmp eq i64 %i.anq, 0
  %n.vec1541 = and i64 %i.ang, 4294967288         ; 4 uses
  %i.anu = trunc nuw i64 %n.vec1541 to i32
  %i.anv = shl i32 %i.anu, 1
  %i.anw = shl nuw nsw i64 %n.vec1541, 3          ; 2 uses
  %cmp.n1562 = icmp eq i64 %i.ang, %n.vec1541
  %min.iters.check1311 = icmp ult i32 %i.amr, 14
  %min.iters.check1313 = icmp ult i32 %i.amr, 126
  %i.anx = and i64 %i.ang, 56
  %n.vec1315 = and i64 %i.ang, 4294967232         ; 6 uses
  %i.any = trunc nuw i64 %n.vec1315 to i32
  %i.anz = shl i32 %i.any, 1
  %i.aoa = shl nuw nsw i64 %n.vec1315, 3
  %i.aob = shl nuw nsw i64 %n.vec1315, 2
  %cmp.n1374 = icmp eq i64 %i.ang, %n.vec1315
  %min.epilog.iters.check1383 = icmp eq i64 %i.anx, 0
  %n.vec1385 = and i64 %i.ang, 4294967288         ; 5 uses
  %i.aoc = trunc nuw i64 %n.vec1385 to i32
  %i.aod = shl i32 %i.aoc, 1
  %i.aoe = shl nuw nsw i64 %n.vec1385, 3
  %i.aof = shl nuw nsw i64 %n.vec1385, 2
  %cmp.n1402 = icmp eq i64 %i.ang, %n.vec1385
  br label %.preheader392.i

.preheader402.i:                                  ; preds = %._crit_edge882.i, %.preheader403.i
  %.01754.lcssa.i = phi i32 [ 0, %.preheader403.i ], [ %i.uh, %._crit_edge882.i ] ; 3 uses
  %.01739.lcssa.i = phi ptr [ %.val8, %.preheader403.i ], [ %.21741.lcssa.i, %._crit_edge882.i ] ; 2 uses
  %.13.lcssa.i = phi ptr [ %.121023.i, %.preheader403.i ], [ %i.asp, %._crit_edge882.i ] ; 2 uses
  %i.aog = or disjoint i32 %.01754.lcssa.i, 7
  %i.aoh = icmp slt i32 %i.aog, %6
  br i1 %i.aoh, label %.lr.ph928.i, label %.preheader401.i

.lr.ph891.i:                                      ; preds = %.preheader403.i, %._crit_edge882.i
  %.13890.i = phi ptr [ %i.asp, %._crit_edge882.i ], [ %.121023.i, %.preheader403.i ] ; 9 uses
  %.01739889.i = phi ptr [ %.21741.lcssa.i, %._crit_edge882.i ], [ %.val8, %.preheader403.i ] ; 4 uses
  %.01754888.i = phi i32 [ %i.asq, %._crit_edge882.i ], [ 0, %.preheader403.i ]
  br i1 %.not1801.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph891.i
  %i.aoi = load <16 x float>, ptr %.13890.i, align 1, !tbaa !17
  %i.aoj = getelementptr inbounds nuw i8, ptr %.13890.i, i64 64
  %i.aok = load <16 x float>, ptr %i.aoj, align 1, !tbaa !17
  %i.aol = getelementptr inbounds nuw i8, ptr %.13890.i, i64 128
  %i.aom = load <16 x float>, ptr %i.aol, align 1, !tbaa !17
  %i.aon = getelementptr inbounds nuw i8, ptr %.13890.i, i64 192
  %i.aoo = load <16 x float>, ptr %i.aon, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph891.i
  %.01774.i = phi nsz <16 x float> [ %i.aoo, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01771.i = phi nsz <16 x float> [ %i.aom, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01768.i = phi nsz <16 x float> [ %i.aok, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01765.i = phi nsz <16 x float> [ %i.aoi, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  br i1 %i.ub, label %.lr.ph866.i.preheader, label %.preheader398.i

.lr.ph866.i.preheader:                            ; preds = %bb.w
  br i1 %i.uw, label %.lr.ph866.i.epil.preheader, label %.lr.ph866.i

.preheader398.i.loopexit.unr-lcssa:               ; preds = %.lr.ph866.i
  br i1 %lcmp.mod2537.not.not, label %.lr.ph866.i.epil.preheader, label %.preheader398.i.loopexit

.lr.ph866.i.epil.preheader:                       ; preds = %.preheader398.i.loopexit.unr-lcssa, %.lr.ph866.i.preheader
  %.11740864.i.epil.init = phi ptr [ %.01739889.i, %.lr.ph866.i.preheader ], [ %i.are, %.preheader398.i.loopexit.unr-lcssa ]
  %.01759863.i.epil.init = phi ptr [ %.21024.i, %.lr.ph866.i.preheader ], [ %i.ard, %.preheader398.i.loopexit.unr-lcssa ] ; 2 uses
  %.11766862.i.epil.init = phi <16 x float> [ %.01765.i, %.lr.ph866.i.preheader ], [ %i.aqw, %.preheader398.i.loopexit.unr-lcssa ]
  %.11769861.i.epil.init = phi <16 x float> [ %.01768.i, %.lr.ph866.i.preheader ], [ %i.aqy, %.preheader398.i.loopexit.unr-lcssa ]
  %.11772860.i.epil.init = phi <16 x float> [ %.01771.i, %.lr.ph866.i.preheader ], [ %i.arb, %.preheader398.i.loopexit.unr-lcssa ]
  %.11775859.i.epil.init = phi <16 x float> [ %.01774.i, %.lr.ph866.i.preheader ], [ %i.arc, %.preheader398.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2543)
  %i.aop = load <4 x i32>, ptr %.01759863.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aoq = load <8 x i64>, ptr %.11740864.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aor = bitcast <8 x i64> %i.aoq to <16 x i32>
  %i.aos = shufflevector <16 x i32> %i.aor, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.aot = bitcast <4 x i32> %i.aop to <8 x bfloat>
  %i.aou = shufflevector <8 x bfloat> %i.aot, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aov = bitcast <8 x i64> %i.aoq to <32 x bfloat> ; 2 uses
  %i.aow = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11766862.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aou, <32 x bfloat> nofpclass(nan inf) %i.aov)
  %i.aox = bitcast <16 x i32> %i.aos to <32 x bfloat> ; 2 uses
  %i.aoy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11769861.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aou, <32 x bfloat> nofpclass(nan inf) %i.aox)
  %i.aoz = bitcast <4 x i32> %i.aop to <8 x bfloat>
  %i.apa = shufflevector <8 x bfloat> %i.aoz, <8 x bfloat> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.apb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11772860.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.apa, <32 x bfloat> nofpclass(nan inf) %i.aov)
  %i.apc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11775859.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.apa, <32 x bfloat> nofpclass(nan inf) %i.aox)
  %i.apd = getelementptr inbounds nuw i8, ptr %.01759863.i.epil.init, i64 16
  br label %.preheader398.i.loopexit

.preheader398.i.loopexit:                         ; preds = %.preheader398.i.loopexit.unr-lcssa, %.lr.ph866.i.epil.preheader
  %.lcssa2298 = phi <16 x float> [ %i.aqw, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aow, %.lr.ph866.i.epil.preheader ]
  %.lcssa2297 = phi <16 x float> [ %i.aqy, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aoy, %.lr.ph866.i.epil.preheader ]
  %.lcssa2296 = phi <16 x float> [ %i.arb, %.preheader398.i.loopexit.unr-lcssa ], [ %i.apb, %.lr.ph866.i.epil.preheader ]
  %.lcssa2295 = phi <16 x float> [ %i.arc, %.preheader398.i.loopexit.unr-lcssa ], [ %i.apc, %.lr.ph866.i.epil.preheader ]
  %.lcssa2294 = phi ptr [ %i.ard, %.preheader398.i.loopexit.unr-lcssa ], [ %i.apd, %.lr.ph866.i.epil.preheader ]
  %i.ape = getelementptr i8, ptr %.01739889.i, i64 %i.us
  %scevgep629 = getelementptr i8, ptr %i.ape, i64 64
  br label %.preheader398.i

.preheader398.i:                                  ; preds = %.preheader398.i.loopexit, %bb.w
  %.01781.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.ug, %.preheader398.i.loopexit ] ; 5 uses
  %.11775.lcssa.i = phi <16 x float> [ %.01774.i, %bb.w ], [ %.lcssa2295, %.preheader398.i.loopexit ] ; 3 uses
  %.11772.lcssa.i = phi <16 x float> [ %.01771.i, %bb.w ], [ %.lcssa2296, %.preheader398.i.loopexit ] ; 3 uses
  %.11769.lcssa.i = phi <16 x float> [ %.01768.i, %bb.w ], [ %.lcssa2297, %.preheader398.i.loopexit ] ; 3 uses
  %.11766.lcssa.i = phi <16 x float> [ %.01765.i, %bb.w ], [ %.lcssa2298, %.preheader398.i.loopexit ] ; 3 uses
  %.01759.lcssa.i = phi ptr [ %.21024.i, %bb.w ], [ %.lcssa2294, %.preheader398.i.loopexit ] ; 3 uses
  %.11740.lcssa.i = phi ptr [ %.01739889.i, %bb.w ], [ %scevgep629, %.preheader398.i.loopexit ] ; 4 uses
  %i.apf = icmp slt i32 %.01781.lcssa.i, %8
  br i1 %i.apf, label %.lr.ph881.i.preheader, label %._crit_edge882.i

.lr.ph881.i.preheader:                            ; preds = %.preheader398.i
  %i.apg = sub i32 %8, %.01781.lcssa.i
  %.neg2660 = add i32 %.01781.lcssa.i, 1
  %xtraiter2546 = and i32 %i.apg, 1
  %lcmp.mod2547.not = icmp eq i32 %xtraiter2546, 0
  br i1 %lcmp.mod2547.not, label %.lr.ph881.i.prol.loopexit, label %.lr.ph881.i.prol

.lr.ph881.i.prol:                                 ; preds = %.lr.ph881.i.preheader
  %i.aph = load i64, ptr %.01759.lcssa.i, align 1, !tbaa !17
  %i.api = insertelement <2 x i64> poison, i64 %i.aph, i64 0
  %i.apj = bitcast <2 x i64> %i.api to <8 x i16>
  %i.apk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.apl = bitcast <8 x i16> %i.apk to <4 x float> ; 2 uses
  %i.apm = shufflevector <4 x float> %i.apl, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.apn = load <16 x bfloat>, ptr %.11740.lcssa.i, align 1, !tbaa !17
  %i.apo = fpext fast <16 x bfloat> %i.apn to <16 x float> ; 3 uses
  %i.app = shufflevector <4 x float> %i.apl, <4 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.apq = shufflevector <16 x float> %i.apo, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.apr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.apm, <16 x float> nofpclass(nan inf) %i.apo, <16 x float> nofpclass(nan inf) %.11766.lcssa.i) ; 2 uses
  %i.aps = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.apm, <16 x float> nofpclass(nan inf) %i.apq, <16 x float> nofpclass(nan inf) %.11769.lcssa.i) ; 2 uses
  %i.apt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.app, <16 x float> nofpclass(nan inf) %i.apo, <16 x float> nofpclass(nan inf) %.11772.lcssa.i) ; 2 uses
  %i.apu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.app, <16 x float> nofpclass(nan inf) %i.apq, <16 x float> nofpclass(nan inf) %.11775.lcssa.i) ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.01759.lcssa.i, i64 8
  %i.apw = getelementptr inbounds nuw i8, ptr %.11740.lcssa.i, i64 32 ; 2 uses
  %i.apx = add nuw nsw i32 %.01781.lcssa.i, 1
  br label %.lr.ph881.i.prol.loopexit

.lr.ph881.i.prol.loopexit:                        ; preds = %.lr.ph881.i.prol, %.lr.ph881.i.preheader
  %.lcssa2303.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apr, %.lr.ph881.i.prol ]
  %.lcssa2302.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.aps, %.lr.ph881.i.prol ]
  %.lcssa2301.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apt, %.lr.ph881.i.prol ]
  %.lcssa2300.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apu, %.lr.ph881.i.prol ]
  %.lcssa2299.unr = phi ptr [ poison, %.lr.ph881.i.preheader ], [ %i.apw, %.lr.ph881.i.prol ]
  %.21741880.i.unr = phi ptr [ %.11740.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apw, %.lr.ph881.i.prol ]
  %.11760879.i.unr = phi ptr [ %.01759.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apv, %.lr.ph881.i.prol ]
  %.21767878.i.unr = phi <16 x float> [ %.11766.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apr, %.lr.ph881.i.prol ]
  %.21770877.i.unr = phi <16 x float> [ %.11769.lcssa.i, %.lr.ph881.i.preheader ], [ %i.aps, %.lr.ph881.i.prol ]
  %.21773876.i.unr = phi <16 x float> [ %.11772.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apt, %.lr.ph881.i.prol ]
  %.21776875.i.unr = phi <16 x float> [ %.11775.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apu, %.lr.ph881.i.prol ]
  %.11782874.i.unr = phi i32 [ %.01781.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apx, %.lr.ph881.i.prol ]
  %i.apy = icmp eq i32 %8, %.neg2660
  br i1 %i.apy, label %._crit_edge882.i, label %.lr.ph881.i

.lr.ph866.i:                                      ; preds = %.lr.ph866.i.preheader, %.lr.ph866.i
  %.11740864.i = phi ptr [ %i.are, %.lr.ph866.i ], [ %.01739889.i, %.lr.ph866.i.preheader ] ; 3 uses
  %.01759863.i = phi ptr [ %i.ard, %.lr.ph866.i ], [ %.21024.i, %.lr.ph866.i.preheader ] ; 3 uses
  %.11766862.i = phi <16 x float> [ %i.aqw, %.lr.ph866.i ], [ %.01765.i, %.lr.ph866.i.preheader ]
  %.11769861.i = phi <16 x float> [ %i.aqy, %.lr.ph866.i ], [ %.01768.i, %.lr.ph866.i.preheader ]
  %.11772860.i = phi <16 x float> [ %i.arb, %.lr.ph866.i ], [ %.01771.i, %.lr.ph866.i.preheader ]
  %.11775859.i = phi <16 x float> [ %i.arc, %.lr.ph866.i ], [ %.01774.i, %.lr.ph866.i.preheader ]
  %niter2545 = phi i32 [ %niter2545.next.1, %.lr.ph866.i ], [ 0, %.lr.ph866.i.preheader ]
  %i.apz = load <4 x i32>, ptr %.01759863.i, align 1, !tbaa !17 ; 2 uses
  %i.aqa = load <8 x i64>, ptr %.11740864.i, align 1, !tbaa !17 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
bb.ae:                                            ; preds = %bb.ad, %.lr.ph1019.i
  %.0351.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1019.i ], [ %i.bfk, %bb.ad ] ; 3 uses
  br i1 %i.ub, label %.lr.ph1003.i.preheader, label %.preheader394.i

.lr.ph1003.i.preheader:                           ; preds = %bb.ae
  br i1 %i.ve, label %.lr.ph1003.i.epil.preheader, label %.lr.ph1003.i

.preheader394.loopexit.i.unr-lcssa:               ; preds = %.lr.ph1003.i
  br i1 %lcmp.mod2585.not, label %.preheader394.loopexit.i, label %.lr.ph1003.i.epil.preheader

.lr.ph1003.i.epil.preheader:                      ; preds = %.preheader394.loopexit.i.unr-lcssa, %.lr.ph1003.i.preheader
  %.017251000.i.epil.init = phi ptr [ %.21024.i, %.lr.ph1003.i.preheader ], [ %i.bhq, %.preheader394.loopexit.i.unr-lcssa ]
  %.131752999.i.epil.init = phi ptr [ %.1217511017.i, %.lr.ph1003.i.preheader ], [ %i.bhr, %.preheader394.loopexit.i.unr-lcssa ]
  %.1352998.i.epil.init = phi <4 x float> [ %.0351.i, %.lr.ph1003.i.preheader ], [ %i.bhp, %.preheader394.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2587)
  br label %.lr.ph1003.i.epil

.lr.ph1003.i.epil:                                ; preds = %.lr.ph1003.i.epil, %.lr.ph1003.i.epil.preheader
  %.017251000.i.epil = phi ptr [ %i.bfr, %.lr.ph1003.i.epil ], [ %.017251000.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.131752999.i.epil = phi ptr [ %i.bfs, %.lr.ph1003.i.epil ], [ %.131752999.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.1352998.i.epil = phi <4 x float> [ %i.bfq, %.lr.ph1003.i.epil ], [ %.1352998.i.epil.init, %.lr.ph1003.i.epil.preheader ]
  %epil.iter2584 = phi i32 [ %epil.iter2584.next, %.lr.ph1003.i.epil ], [ 0, %.lr.ph1003.i.epil.preheader ]
  %i.bfl = load <8 x bfloat>, ptr %.017251000.i.epil, align 1, !tbaa !17
  %i.bfm = load i32, ptr %.131752999.i.epil, align 4, !tbaa !369
  %i.bfn = insertelement <4 x i32> poison, i32 %i.bfm, i64 0
  %i.bfo = bitcast <4 x i32> %i.bfn to <8 x bfloat>
  %i.bfp = shufflevector <8 x bfloat> %i.bfo, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bfq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i.epil, <8 x bfloat> nofpclass(nan inf) %i.bfl, <8 x bfloat> nofpclass(nan inf) %i.bfp) ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %.017251000.i.epil, i64 16
  %i.bfs = getelementptr inbounds nuw i8, ptr %.131752999.i.epil, i64 4
  %epil.iter2584.next = add i32 %epil.iter2584, 1 ; 2 uses
  %epil.iter2584.cmp.not = icmp eq i32 %epil.iter2584.next, %xtraiter2583
  br i1 %epil.iter2584.cmp.not, label %.preheader394.loopexit.i, label %.lr.ph1003.i.epil, !llvm.loop !407

.preheader394.loopexit.i:                         ; preds = %.lr.ph1003.i.epil, %.preheader394.loopexit.i.unr-lcssa
  %.lcssa2335 = phi <4 x float> [ %i.bhp, %.preheader394.loopexit.i.unr-lcssa ], [ %i.bfq, %.lr.ph1003.i.epil ]
  %i.bft = getelementptr i8, ptr %.1217511017.i, i64 %i.up
  %scevgep1806.i = getelementptr i8, ptr %i.bft, i64 4
  br label %.preheader394.i

.preheader394.i:                                  ; preds = %.preheader394.loopexit.i, %bb.ae
  %.1352.lcssa.i = phi <4 x float> [ %.0351.i, %bb.ae ], [ %.lcssa2335, %.preheader394.loopexit.i ] ; 3 uses
  %.131752.lcssa.i = phi ptr [ %.1217511017.i, %bb.ae ], [ %scevgep1806.i, %.preheader394.loopexit.i ] ; 4 uses
  %.01725.lcssa.i = phi ptr [ %.21024.i, %bb.ae ], [ %indvars.iv1802.i, %.preheader394.loopexit.i ] ; 3 uses
  %.01723.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.ug, %.preheader394.loopexit.i ] ; 5 uses
  %i.bfu = icmp slt i32 %.01723.lcssa.i, %8
  br i1 %i.bfu, label %.lr.ph1012.i.preheader, label %._crit_edge1013.i

.lr.ph1012.i.preheader:                           ; preds = %.preheader394.i
  %i.bfv = sub i32 %8, %.01723.lcssa.i
  %.neg2664 = add i32 %.01723.lcssa.i, 1
  %xtraiter2590 = and i32 %i.bfv, 1
  %lcmp.mod2591.not = icmp eq i32 %xtraiter2590, 0
  br i1 %lcmp.mod2591.not, label %.lr.ph1012.i.prol.loopexit, label %.lr.ph1012.i.prol

.lr.ph1012.i.prol:                                ; preds = %.lr.ph1012.i.preheader
  %i.bfw = load i64, ptr %.01725.lcssa.i, align 1, !tbaa !17
  %i.bfx = insertelement <2 x i64> poison, i64 %i.bfw, i64 0
  %i.bfy = bitcast <2 x i64> %i.bfx to <8 x i16>
  %i.bfz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bga = bitcast <8 x i16> %i.bfz to <4 x float>
  %i.bgb = load i16, ptr %.131752.lcssa.i, align 2, !tbaa !57
  %i.bgc = zext i16 %i.bgb to i32
  %i.bgd = shl nuw i32 %i.bgc, 16
  %i.bge = insertelement <4 x i32> poison, i32 %i.bgd, i64 0
  %i.bgf = bitcast <4 x i32> %i.bge to <4 x float>
  %i.bgg = shufflevector <4 x float> %i.bgf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bgh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bga, <4 x float> nofpclass(nan inf) %i.bgg, <4 x float> nofpclass(nan inf) %.1352.lcssa.i) ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.01725.lcssa.i, i64 8
  %i.bgj = getelementptr inbounds nuw i8, ptr %.131752.lcssa.i, i64 2 ; 2 uses
  %i.bgk = add nuw nsw i32 %.01723.lcssa.i, 1
  br label %.lr.ph1012.i.prol.loopexit

.lr.ph1012.i.prol.loopexit:                       ; preds = %.lr.ph1012.i.prol, %.lr.ph1012.i.preheader
  %.lcssa2337.unr = phi <4 x float> [ poison, %.lr.ph1012.i.preheader ], [ %i.bgh, %.lr.ph1012.i.prol ]
  %.lcssa2336.unr = phi ptr [ poison, %.lr.ph1012.i.preheader ], [ %i.bgj, %.lr.ph1012.i.prol ]
  %.117241011.i.unr = phi i32 [ %.01723.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgk, %.lr.ph1012.i.prol ]
  %.117261010.i.unr = phi ptr [ %.01725.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgi, %.lr.ph1012.i.prol ]
  %.1417531009.i.unr = phi ptr [ %.131752.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgj, %.lr.ph1012.i.prol ]
  %.23531008.i.unr = phi <4 x float> [ %.1352.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bgh, %.lr.ph1012.i.prol ]
  %i.bgl = icmp eq i32 %8, %.neg2664
  br i1 %i.bgl, label %._crit_edge1013.i, label %.lr.ph1012.i

.lr.ph1003.i:                                     ; preds = %.lr.ph1003.i.preheader, %.lr.ph1003.i
  %.017251000.i = phi ptr [ %i.bhq, %.lr.ph1003.i ], [ %.21024.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.131752999.i = phi ptr [ %i.bhr, %.lr.ph1003.i ], [ %.1217511017.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.1352998.i = phi <4 x float> [ %i.bhp, %.lr.ph1003.i ], [ %.0351.i, %.lr.ph1003.i.preheader ]
  %niter2589 = phi i32 [ %niter2589.next.3, %.lr.ph1003.i ], [ 0, %.lr.ph1003.i.preheader ]
  %i.bgm = load <8 x bfloat>, ptr %.017251000.i, align 1, !tbaa !17
  %i.bgn = load i32, ptr %.131752999.i, align 4, !tbaa !369
  %i.bgo = insertelement <4 x i32> poison, i32 %i.bgn, i64 0
  %i.bgp = bitcast <4 x i32> %i.bgo to <8 x bfloat>
  %i.bgq = shufflevector <8 x bfloat> %i.bgp, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i, <8 x bfloat> nofpclass(nan inf) %i.bgm, <8 x bfloat> nofpclass(nan inf) %i.bgq)
  %i.bgs = getelementptr inbounds nuw i8, ptr %.017251000.i, i64 16
  %i.bgt = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 4
  %i.bgu = load <8 x bfloat>, ptr %i.bgs, align 1, !tbaa !17
  %i.bgv = load i32, ptr %i.bgt, align 4, !tbaa !369
  %i.bgw = insertelement <4 x i32> poison, i32 %i.bgv, i64 0
  %i.bgx = bitcast <4 x i32> %i.bgw to <8 x bfloat>
  %i.bgy = shufflevector <8 x bfloat> %i.bgx, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bgr, <8 x bfloat> nofpclass(nan inf) %i.bgu, <8 x bfloat> nofpclass(nan inf) %i.bgy)
  %i.bha = getelementptr inbounds nuw i8, ptr %.017251000.i, i64 32
  %i.bhb = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 8
  %i.bhc = load <8 x bfloat>, ptr %i.bha, align 1, !tbaa !17
  %i.bhd = load i32, ptr %i.bhb, align 4, !tbaa !369
  %i.bhe = insertelement <4 x i32> poison, i32 %i.bhd, i64 0
  %i.bhf = bitcast <4 x i32> %i.bhe to <8 x bfloat>
  %i.bhg = shufflevector <8 x bfloat> %i.bhf, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bgz, <8 x bfloat> nofpclass(nan inf) %i.bhc, <8 x bfloat> nofpclass(nan inf) %i.bhg)
  %i.bhi = getelementptr inbounds nuw i8, ptr %.017251000.i, i64 48
  %i.bhj = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 12
  %i.bhk = load <8 x bfloat>, ptr %i.bhi, align 1, !tbaa !17
  %i.bhl = load i32, ptr %i.bhj, align 4, !tbaa !369
  %i.bhm = insertelement <4 x i32> poison, i32 %i.bhl, i64 0
  %i.bhn = bitcast <4 x i32> %i.bhm to <8 x bfloat>
  %i.bho = shufflevector <8 x bfloat> %i.bhn, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bhp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bhh, <8 x bfloat> nofpclass(nan inf) %i.bhk, <8 x bfloat> nofpclass(nan inf) %i.bho) ; 3 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %.017251000.i, i64 64 ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 16 ; 2 uses
  %niter2589.next.3 = add i32 %niter2589, 4       ; 2 uses
  %niter2589.ncmp.3.not = icmp eq i32 %niter2589.next.3, %unroll_iter2588
  br i1 %niter2589.ncmp.3.not, label %.preheader394.loopexit.i.unr-lcssa, label %.lr.ph1003.i, !llvm.loop !408

.lr.ph1012.i:                                     ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i
  %.117241011.i = phi i32 [ %i.biu, %.lr.ph1012.i ], [ %.117241011.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %.117261010.i = phi ptr [ %i.bis, %.lr.ph1012.i ], [ %.117261010.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.1417531009.i = phi ptr [ %i.bit, %.lr.ph1012.i ], [ %.1417531009.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.23531008.i = phi <4 x float> [ %i.bir, %.lr.ph1012.i ], [ %.23531008.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %i.bhs = load i64, ptr %.117261010.i, align 1, !tbaa !17
  %i.bht = insertelement <2 x i64> poison, i64 %i.bhs, i64 0
  %i.bhu = bitcast <2 x i64> %i.bht to <8 x i16>
  %i.bhv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bhu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhw = bitcast <8 x i16> %i.bhv to <4 x float>
  %i.bhx = load i16, ptr %.1417531009.i, align 2, !tbaa !57
  %i.bhy = zext i16 %i.bhx to i32
  %i.bhz = shl nuw i32 %i.bhy, 16
  %i.bia = insertelement <4 x i32> poison, i32 %i.bhz, i64 0
  %i.bib = bitcast <4 x i32> %i.bia to <4 x float>
  %i.bic = shufflevector <4 x float> %i.bib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bid = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhw, <4 x float> nofpclass(nan inf) %i.bic, <4 x float> nofpclass(nan inf) %.23531008.i)
  %i.bie = getelementptr inbounds nuw i8, ptr %.117261010.i, i64 8
  %i.bif = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 2
  %i.big = load i64, ptr %i.bie, align 1, !tbaa !17
  %i.bih = insertelement <2 x i64> poison, i64 %i.big, i64 0
  %i.bii = bitcast <2 x i64> %i.bih to <8 x i16>
  %i.bij = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bii, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bik = bitcast <8 x i16> %i.bij to <4 x float>
  %i.bil = load i16, ptr %i.bif, align 2, !tbaa !57
  %i.bim = zext i16 %i.bil to i32
  %i.bin = shl nuw i32 %i.bim, 16
  %i.bio = insertelement <4 x i32> poison, i32 %i.bin, i64 0
  %i.bip = bitcast <4 x i32> %i.bio to <4 x float>
  %i.biq = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bir = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bik, <4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bid) ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %.117261010.i, i64 16
  %i.bit = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 4 ; 2 uses
  %i.biu = add nuw nsw i32 %.117241011.i, 2       ; 2 uses
  %exitcond1807.not.i.1 = icmp eq i32 %i.biu, %8
  br i1 %exitcond1807.not.i.1, label %._crit_edge1013.i, label %.lr.ph1012.i, !llvm.loop !409

._crit_edge1013.i:                                ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i, %.preheader394.i
  %.2353.lcssa.i = phi <4 x float> [ %.1352.lcssa.i, %.preheader394.i ], [ %.lcssa2337.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bir, %.lr.ph1012.i ]
  %.141753.lcssa.i = phi ptr [ %.131752.lcssa.i, %.preheader394.i ], [ %.lcssa2336.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bit, %.lr.ph1012.i ]
  store <4 x float> %.2353.lcssa.i, ptr %.171018.i, align 16, !tbaa !17
  %i.biv = getelementptr inbounds nuw i8, ptr %.171018.i, i64 16 ; 2 uses
  %i.biw = add nuw nsw i32 %.417581016.i, 1       ; 2 uses
  %exitcond1808.not.i = icmp eq i32 %i.biw, %6
  br i1 %exitcond1808.not.i, label %._crit_edge1020.i, label %.lr.ph1019.i, !llvm.loop !410

._crit_edge1020.i:                                ; preds = %._crit_edge1013.i, %.preheader399.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader399.i ], [ %i.biv, %._crit_edge1013.i ] ; 2 uses
  %i.bix = getelementptr inbounds [2 x i8], ptr %.21024.i, i64 %i.ud ; 2 uses
  %i.biy = add nuw nsw i32 %.213881022.i, 4       ; 3 uses
  %i.biz = or disjoint i32 %i.biy, 3
  %i.bja = icmp slt i32 %i.biz, %4
  %scevgep1803.i = getelementptr i8, ptr %indvars.iv1802.i, i64 %i.un
  br i1 %i.bja, label %.preheader403.i, label %.preheader393.i, !llvm.loop !411

.preheader392.i:                                  ; preds = %._crit_edge1178.i, %.preheader392.lr.ph.i
  %indvars.iv1817.i = phi ptr [ %scevgep1816.i, %.preheader392.lr.ph.i ], [ %scevgep1818.i, %._crit_edge1178.i ] ; 3 uses
  %.31182.i = phi ptr [ %.2.lcssa.i, %.preheader392.lr.ph.i ], [ %i.cvh, %._crit_edge1178.i ] ; 26 uses
  %.181181.i = phi ptr [ %.12.lcssa.i, %.preheader392.lr.ph.i ], [ %.23.lcssa.i, %._crit_edge1178.i ] ; 2 uses
  %.313891180.i = phi i32 [ %.21388.lcssa.i, %.preheader392.lr.ph.i ], [ %i.cvi, %._crit_edge1178.i ]
  br i1 %i.amn, label %.lr.ph1053.i, label %.preheader391.i

.preheader382.i:                                  ; preds = %._crit_edge1178.i, %.preheader393.i
  %.31389.lcssa.i = phi i32 [ %.21388.lcssa.i, %.preheader393.i ], [ %i.cvi, %._crit_edge1178.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader393.i ], [ %.23.lcssa.i, %._crit_edge1178.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader393.i ], [ %i.cvh, %._crit_edge1178.i ] ; 2 uses
  %i.bjb = icmp slt i32 %.31389.lcssa.i, %4
  br i1 %i.bjb, label %.preheader381.lr.ph.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit

.preheader381.lr.ph.i:                            ; preds = %.preheader382.i
  %i.bjc = icmp sgt i32 %6, 15
  %.not1791.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.bjd = icmp sgt i32 %8, 1                     ; 5 uses
  %i.bje = sext i32 %8 to i64                     ; 2 uses
  %i.bjf = add i32 %8, -2                         ; 7 uses
  %i.bjg = and i32 %i.bjf, -2
  %i.bjh = add i32 %i.bjg, 2                      ; 5 uses
  %i.bji = and i32 %6, -16
  %i.bjj = lshr i32 %i.bjf, 1
  %i.bjk = zext nneg i32 %i.bjj to i64            ; 5 uses
  %i.bjl = shl nuw nsw i64 %i.bjk, 5
  %i.bjm = shl nuw nsw i64 %i.bjk, 4
  %i.bjn = shl nuw nsw i64 %i.bjk, 3
  %i.bjo = shl nuw nsw i64 %i.bjk, 2              ; 2 uses
  %i.bjp = lshr i32 %i.bjf, 1
  %i.bjq = zext nneg i32 %i.bjp to i64
  %i.bjr = shl nuw nsw i64 %i.bjq, 6
  %i.bjs = getelementptr i8, ptr %.3.lcssa.i, i64 %i.bjo
  %scevgep632 = getelementptr i8, ptr %i.bjs, i64 4
  %i.bjt = shl nsw i64 %i.bje, 1
  %i.bju = add nuw nsw i64 %i.bjk, 1              ; 10 uses
  %i.bjv = add i32 %8, -2                         ; 4 uses
  %i.bjw = lshr i32 %i.bjv, 1
  %i.bjx = add nuw i32 %i.bjw, 1                  ; 6 uses
  %xtraiter2625 = and i32 %i.bjx, 3               ; 3 uses
  %i.bjy = icmp ult i32 %i.bjv, 6
  %unroll_iter2631 = and i32 %i.bjx, -4
  %lcmp.mod2627.not = icmp eq i32 %xtraiter2625, 0
  %lcmp.mod2630 = icmp ne i32 %xtraiter2625, 0
  %xtraiter2635 = and i32 %i.bjx, 3               ; 3 uses
  %i.bjz = icmp ult i32 %i.bjv, 6
  %unroll_iter2641 = and i32 %i.bjx, -4
  %lcmp.mod2637.not = icmp eq i32 %xtraiter2635, 0
  %lcmp.mod2640 = icmp ne i32 %xtraiter2635, 0
  %xtraiter2645 = and i32 %i.bjx, 3               ; 3 uses
  %i.bka = icmp ult i32 %i.bjv, 6
  %unroll_iter2651 = and i32 %i.bjx, -4
  %lcmp.mod2647.not = icmp eq i32 %xtraiter2645, 0
  %lcmp.mod2650 = icmp ne i32 %xtraiter2645, 0
  %min.iters.check1951 = icmp ult i32 %i.bjf, 14
  %min.iters.check1953 = icmp ult i32 %i.bjf, 126
  %i.bkb = and i64 %i.bju, 56
  %n.vec1955 = and i64 %i.bju, 4294967232         ; 6 uses
  %i.bkc = trunc nuw i64 %n.vec1955 to i32
  %i.bkd = shl i32 %i.bkc, 1
  %i.bke = shl nuw nsw i64 %n.vec1955, 2
  %i.bkf = shl nuw nsw i64 %n.vec1955, 3
  %cmp.n2014 = icmp eq i64 %i.bju, %n.vec1955
  %min.epilog.iters.check2023 = icmp eq i64 %i.bkb, 0
  %n.vec2025 = and i64 %i.bju, 4294967288         ; 5 uses
  %i.bkg = trunc nuw i64 %n.vec2025 to i32
  %i.bkh = shl i32 %i.bkg, 1
  %i.bki = shl nuw nsw i64 %n.vec2025, 2
  %i.bkj = shl nuw nsw i64 %n.vec2025, 3
  %cmp.n2042 = icmp eq i64 %i.bju, %n.vec2025
  %min.iters.check1708 = icmp ult i32 %i.bjf, 14
  %min.iters.check1710 = icmp ult i32 %i.bjf, 126
  %i.bkk = and i64 %i.bju, 56
  %n.vec1712 = and i64 %i.bju, 4294967232         ; 5 uses
  %i.bkl = trunc nuw i64 %n.vec1712 to i32
  %i.bkm = shl i32 %i.bkl, 1
  %i.bkn = shl nuw nsw i64 %n.vec1712, 2          ; 2 uses
  %cmp.n1756 = icmp eq i64 %i.bju, %n.vec1712
  %min.epilog.iters.check1764 = icmp eq i64 %i.bkk, 0
  %n.vec1766 = and i64 %i.bju, 4294967288         ; 4 uses
  %i.bko = trunc nuw i64 %n.vec1766 to i32
  %i.bkp = shl i32 %i.bko, 1
  %i.bkq = shl nuw nsw i64 %n.vec1766, 2          ; 2 uses
  %cmp.n1780 = icmp eq i64 %i.bju, %n.vec1766
  br label %.preheader381.i

.preheader391.i:                                  ; preds = %._crit_edge1046.i, %.preheader392.i
  %.01706.lcssa.i = phi ptr [ %.val8, %.preheader392.i ], [ %.21708.lcssa.i, %._crit_edge1046.i ] ; 2 uses
  %.01701.lcssa.i = phi i32 [ 0, %.preheader392.i ], [ %i.amu, %._crit_edge1046.i ] ; 3 uses
  %.19.lcssa.i = phi ptr [ %.181181.i, %.preheader392.i ], [ %i.boc, %._crit_edge1046.i ] ; 2 uses
  %i.bkr = or disjoint i32 %.01701.lcssa.i, 7
  %i.bks = icmp slt i32 %i.bkr, %6
  br i1 %i.bks, label %.lr.ph1082.i, label %.preheader390.i

.lr.ph1053.i:                                     ; preds = %.preheader392.i, %._crit_edge1046.i
  %.191052.i = phi ptr [ %i.boc, %._crit_edge1046.i ], [ %.181181.i, %.preheader392.i ] ; 5 uses
  %.017011051.i = phi i32 [ %i.bod, %._crit_edge1046.i ], [ 0, %.preheader392.i ]
  %.017061050.i = phi ptr [ %.21708.lcssa.i, %._crit_edge1046.i ], [ %.val8, %.preheader392.i ] ; 4 uses
  br i1 %.not1796.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph1053.i
  %i.bkt = load <16 x float>, ptr %.191052.i, align 1, !tbaa !17
  %i.bku = getelementptr inbounds nuw i8, ptr %.191052.i, i64 64
  %i.bkv = load <16 x float>, ptr %i.bku, align 1, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph1053.i
  %.01698.i = phi nsz <16 x float> [ %i.bkt, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  %.01695.i = phi nsz <16 x float> [ %i.bkv, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  br i1 %i.amo, label %.lr.ph1034.i.preheader, label %.preheader387.i

.lr.ph1034.i.preheader:                           ; preds = %bb.ag
  br i1 %i.ank, label %.lr.ph1034.i.epil.preheader, label %.lr.ph1034.i

.preheader387.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1034.i
  br i1 %lcmp.mod2594.not.not, label %.lr.ph1034.i.epil.preheader, label %.preheader387.i.loopexit

.lr.ph1034.i.epil.preheader:                      ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.preheader
  %.016931031.i.epil.init = phi ptr [ %.31182.i, %.lr.ph1034.i.preheader ], [ %i.bna, %.preheader387.i.loopexit.unr-lcssa ] ; 2 uses
  %.116961030.i.epil.init = phi <16 x float> [ %.01695.i, %.lr.ph1034.i.preheader ], [ %i.bmz, %.preheader387.i.loopexit.unr-lcssa ]
  %.116991029.i.epil.init = phi <16 x float> [ %.01698.i, %.lr.ph1034.i.preheader ], [ %i.bmx, %.preheader387.i.loopexit.unr-lcssa ]
  %.117071028.i.epil.init = phi ptr [ %.017061050.i, %.lr.ph1034.i.preheader ], [ %i.bnb, %.preheader387.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2598)
  %i.bkw = load double, ptr %.016931031.i.epil.init, align 8, !tbaa !367
  %i.bkx = insertelement <8 x double> poison, double %i.bkw, i64 0
  %i.bky = bitcast <8 x double> %i.bkx to <8 x i64>
  %i.bkz = shufflevector <8 x i64> %i.bky, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bla = load <8 x i64>, ptr %.117071028.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.blb = bitcast <8 x i64> %i.bla to <16 x i32>
  %i.blc = shufflevector <16 x i32> %i.blb, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bld = bitcast <8 x i64> %i.bkz to <32 x bfloat> ; 2 uses
  %i.ble = bitcast <8 x i64> %i.bla to <32 x bfloat>
  %i.blf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116991029.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bld, <32 x bfloat> nofpclass(nan inf) %i.ble)
  %i.blg = bitcast <16 x i32> %i.blc to <32 x bfloat>
  %i.blh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116961030.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bld, <32 x bfloat> nofpclass(nan inf) %i.blg)
  %i.bli = getelementptr inbounds nuw i8, ptr %.016931031.i.epil.init, i64 8
  br label %.preheader387.i.loopexit

.preheader387.i.loopexit:                         ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.epil.preheader
  %.lcssa2215 = phi <16 x float> [ %i.bmx, %.preheader387.i.loopexit.unr-lcssa ], [ %i.blf, %.lr.ph1034.i.epil.preheader ]
  %.lcssa2214 = phi <16 x float> [ %i.bmz, %.preheader387.i.loopexit.unr-lcssa ], [ %i.blh, %.lr.ph1034.i.epil.preheader ]
  %.lcssa2213 = phi ptr [ %i.bna, %.preheader387.i.loopexit.unr-lcssa ], [ %i.bli, %.lr.ph1034.i.epil.preheader ]
  %i.blj = getelementptr i8, ptr %.017061050.i, i64 %i.anf
  %scevgep630 = getelementptr i8, ptr %i.blj, i64 64
  br label %.preheader387.i

.preheader387.i:                                  ; preds = %.preheader387.i.loopexit, %bb.ag
  %.11707.lcssa.i = phi ptr [ %.017061050.i, %bb.ag ], [ %scevgep630, %.preheader387.i.loopexit ] ; 4 uses
  %.11699.lcssa.i = phi <16 x float> [ %.01698.i, %bb.ag ], [ %.lcssa2215, %.preheader387.i.loopexit ] ; 3 uses
  %.11696.lcssa.i = phi <16 x float> [ %.01695.i, %bb.ag ], [ %.lcssa2214, %.preheader387.i.loopexit ] ; 3 uses
  %.01693.lcssa.i = phi ptr [ %.31182.i, %bb.ag ], [ %.lcssa2213, %.preheader387.i.loopexit ] ; 3 uses
  %.01691.lcssa.i = phi i32 [ 0, %bb.ag ], [ %i.amt, %.preheader387.i.loopexit ] ; 5 uses
  %i.blk = icmp slt i32 %.01691.lcssa.i, %8
  br i1 %i.blk, label %.lr.ph1045.i.preheader, label %._crit_edge1046.i

.lr.ph1045.i.preheader:                           ; preds = %.preheader387.i
  %i.bll = sub i32 %8, %.01691.lcssa.i
  %.neg2665 = add i32 %.01691.lcssa.i, 1
  %xtraiter2601 = and i32 %i.bll, 1
  %lcmp.mod2602.not = icmp eq i32 %xtraiter2601, 0
  br i1 %lcmp.mod2602.not, label %.lr.ph1045.i.prol.loopexit, label %.lr.ph1045.i.prol

.lr.ph1045.i.prol:                                ; preds = %.lr.ph1045.i.preheader
  %i.blm = load i32, ptr %.01693.lcssa.i, align 4, !tbaa !369
  %i.bln = insertelement <8 x i32> poison, i32 %i.blm, i64 0
  %i.blo = shufflevector <8 x i32> %i.bln, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.blp = bitcast <8 x i32> %i.blo to <16 x bfloat>
  %i.blq = fpext fast <16 x bfloat> %i.blp to <16 x float> ; 2 uses
  %i.blr = load <16 x bfloat>, ptr %.11707.lcssa.i, align 1, !tbaa !17
  %i.bls = fpext fast <16 x bfloat> %i.blr to <16 x float> ; 2 uses
  %i.blt = shufflevector <16 x float> %i.bls, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.blu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.blq, <16 x float> nofpclass(nan inf) %i.bls, <16 x float> nofpclass(nan inf) %.11699.lcssa.i) ; 2 uses
  %i.blv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.blq, <16 x float> nofpclass(nan inf) %i.blt, <16 x float> nofpclass(nan inf) %.11696.lcssa.i) ; 2 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %.01693.lcssa.i, i64 4
  %i.blx = getelementptr inbounds nuw i8, ptr %.11707.lcssa.i, i64 32 ; 2 uses
  %i.bly = add nuw nsw i32 %.01691.lcssa.i, 1
  br label %.lr.ph1045.i.prol.loopexit

.lr.ph1045.i.prol.loopexit:                       ; preds = %.lr.ph1045.i.prol, %.lr.ph1045.i.preheader
  %.lcssa2218.unr = phi <16 x float> [ poison, %.lr.ph1045.i.preheader ], [ %i.blu, %.lr.ph1045.i.prol ]
  %.lcssa2217.unr = phi <16 x float> [ poison, %.lr.ph1045.i.preheader ], [ %i.blv, %.lr.ph1045.i.prol ]
  %.lcssa2216.unr = phi ptr [ poison, %.lr.ph1045.i.preheader ], [ %i.blx, %.lr.ph1045.i.prol ]
  %.116921044.i.unr = phi i32 [ %.01691.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.bly, %.lr.ph1045.i.prol ]
  %.116941043.i.unr = phi ptr [ %.01693.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blw, %.lr.ph1045.i.prol ]
  %.216971042.i.unr = phi <16 x float> [ %.11696.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blv, %.lr.ph1045.i.prol ]
  %.217001041.i.unr = phi <16 x float> [ %.11699.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blu, %.lr.ph1045.i.prol ]
  %.217081040.i.unr = phi ptr [ %.11707.lcssa.i, %.lr.ph1045.i.preheader ], [ %i.blx, %.lr.ph1045.i.prol ]
  %i.blz = icmp eq i32 %8, %.neg2665
  br i1 %i.blz, label %._crit_edge1046.i, label %.lr.ph1045.i

.lr.ph1034.i:                                     ; preds = %.lr.ph1034.i.preheader, %.lr.ph1034.i
  %.016931031.i = phi ptr [ %i.bna, %.lr.ph1034.i ], [ %.31182.i, %.lr.ph1034.i.preheader ] ; 3 uses
  %.116961030.i = phi <16 x float> [ %i.bmz, %.lr.ph1034.i ], [ %.01695.i, %.lr.ph1034.i.preheader ]
  %.116991029.i = phi <16 x float> [ %i.bmx, %.lr.ph1034.i ], [ %.01698.i, %.lr.ph1034.i.preheader ]
  %.117071028.i = phi ptr [ %i.bnb, %.lr.ph1034.i ], [ %.017061050.i, %.lr.ph1034.i.preheader ] ; 3 uses
  %niter2600 = phi i32 [ %niter2600.next.1, %.lr.ph1034.i ], [ 0, %.lr.ph1034.i.preheader ]
  %i.bma = load double, ptr %.016931031.i, align 8, !tbaa !367
  %i.bmb = insertelement <8 x double> poison, double %i.bma, i64 0
  %i.bmc = bitcast <8 x double> %i.bmb to <8 x i64>
  %i.bmd = shufflevector <8 x i64> %i.bmc, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bme = load <8 x i64>, ptr %.117071028.i, align 1, !tbaa !17 ; 2 uses
  %i.bmf = bitcast <8 x i64> %i.bme to <16 x i32>
  %i.bmg = shufflevector <16 x i32> %i.bmf, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bmh = bitcast <8 x i64> %i.bmd to <32 x bfloat> ; 2 uses
  %i.bmi = bitcast <8 x i64> %i.bme to <32 x bfloat>
  %i.bmj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116991029.i, <32 x bfloat> nofpclass(nan inf) %i.bmh, <32 x bfloat> nofpclass(nan inf) %i.bmi)
  %i.bmk = bitcast <16 x i32> %i.bmg to <32 x bfloat>
  %i.bml = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116961030.i, <32 x bfloat> nofpclass(nan inf) %i.bmh, <32 x bfloat> nofpclass(nan inf) %i.bmk)
  %i.bmm = getelementptr inbounds nuw i8, ptr %.016931031.i, i64 8
  %i.bmn = getelementptr inbounds nuw i8, ptr %.117071028.i, i64 64
  %i.bmo = load double, ptr %i.bmm, align 8, !tbaa !367
  %i.bmp = insertelement <8 x double> poison, double %i.bmo, i64 0
  %i.bmq = bitcast <8 x double> %i.bmp to <8 x i64>
  %i.bmr = shufflevector <8 x i64> %i.bmq, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bms = load <8 x i64>, ptr %i.bmn, align 1, !tbaa !17 ; 2 uses
  %i.bmt = bitcast <8 x i64> %i.bms to <16 x i32>
  %i.bmu = shufflevector <16 x i32> %i.bmt, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bmv = bitcast <8 x i64> %i.bmr to <32 x bfloat> ; 2 uses
  %i.bmw = bitcast <8 x i64> %i.bms to <32 x bfloat>
  %i.bmx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.bmj, <32 x bfloat> nofpclass(nan inf) %i.bmv, <32 x bfloat> nofpclass(nan inf) %i.bmw) ; 3 uses
  %i.bmy = bitcast <16 x i32> %i.bmu to <32 x bfloat>
  %i.bmz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.bml, <32 x bfloat> nofpclass(nan inf) %i.bmv, <32 x bfloat> nofpclass(nan inf) %i.bmy) ; 3 uses
end_hunk_7
