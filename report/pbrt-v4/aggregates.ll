Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregates?download=true
inline.NumInlined: 3981
inline.NumDeleted: 1006
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EE:bb.a
  store i64 %i.io, ptr %gep527.1, align 8, !tbaa !52
  %i.ip = or disjoint i64 %.0155522, 2            ; 2 uses
  %i.iq = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !128
  %i.is = shl i64 %i.ir, 32
  %i.it = ashr exact i64 %i.is, 29
  %i.iu = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.it
  %gep527.2 = getelementptr [8 x i8], ptr %invariant.gep526, i64 %i.ip
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !52
  store i64 %i.iv, ptr %gep527.2, align 8, !tbaa !52
  %i.iw = or disjoint i64 %.0155522, 3            ; 2 uses
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.hc, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !128
  %i.iz = shl i64 %i.iy, 32
  %i.ja = ashr exact i64 %i.iz, 29
  %i.jb = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.ja
  %gep527.3 = getelementptr [8 x i8], ptr %invariant.gep526, i64 %i.iw
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !52
  store i64 %i.jc, ptr %gep527.3, align 8, !tbaa !52
  %i.jd = add nuw i64 %.0155522, 4                ; 2 uses
  %niter694.next.3 = add nuw i64 %niter694, 4     ; 2 uses
  %niter694.ncmp.3 = icmp eq i64 %niter694.next.3, %unroll_iter693
  br i1 %niter694.ncmp.3, label %.critedge165.loopexit.unr-lcssa, label %bb.h, !llvm.loop !269

bb.i:                                             ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.je = lshr i64 %i.u, 1                        ; 8 uses
  %i.jf = trunc i64 %i.je to i32                  ; 2 uses
  store i32 %i.jf, ptr %i.c, align 4, !tbaa !53
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !25
  switch i32 %i.jh, label %bb.ar [
    i32 2, label %bb.j
    i32 3, label %.thread
  ]

bb.j:                                             ; preds = %bb.i
  switch i32 %.0.i, label %bb.k [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit190.thread438
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit190.thread438: ; preds = %bb.j
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192

bb.k:                                             ; preds = %bb.j
  br label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192:        ; preds = %bb.j, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit190.thread438, %bb.k
  %.0.i189.sroa.speculated436 = phi float [ %.sroa.15.0.lcssa, %bb.k ], [ %.sroa.03.0.vec.extract.i.i.i169, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit190.thread438 ], [ %.sroa.03.4.vec.extract.i.i.i170, %bb.j ]
  %.0.i191.sroa.speculated = phi float [ %.sroa.34.0.lcssa, %bb.k ], [ %.sroa.22.0.vec.extract, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit190.thread438 ], [ %.sroa.22.4.vec.extract385, %bb.j ]
  %i.ji = fadd float %.0.i189.sroa.speculated436, %.0.i191.sroa.speculated
  %i.jj = fmul float %i.ji, 5.000000e-01          ; 4 uses
  br i1 %.not477, label %"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_2EvT_SN_SN_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192, %bb.s
  %.054.i.i = phi ptr [ %.1.i.i, %bb.s ], [ %i.v, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192 ] ; 7 uses
  %.01553.i.i = phi ptr [ %i.kt, %bb.s ], [ %i.t, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit192 ] ; 3 uses
  switch i32 %.0.i, label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i" [
    i32 0, label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i"
    i32 1, label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i"
  ]

"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i": ; preds = %.lr.ph.i.i, %bb.l
  %.11637.us.i.i = phi ptr [ %i.jq, %bb.l ], [ %.01553.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.11637.us.i.i, i64 8
  %.sroa.0.0.vec.extract.i.i.i.us.i.i = load float, ptr %i.jk, align 8, !tbaa !56
  %i.jl = fmul float %.sroa.0.0.vec.extract.i.i.i.us.i.i, 5.000000e-01
  %i.jm = getelementptr inbounds nuw i8, ptr %.11637.us.i.i, i64 20
  %.sroa.0.0.vec.extract.i25.i.i.us.i.i = load float, ptr %i.jm, align 4, !tbaa !56
  %i.jn = fmul float %.sroa.0.0.vec.extract.i25.i.i.us.i.i, 5.000000e-01
  %i.jo = fadd float %i.jl, %i.jn
  %i.jp = fcmp olt float %i.jo, %i.jj
  br i1 %i.jp, label %bb.l, label %.preheader.i.i

bb.l:                                             ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i"
  %i.jq = getelementptr inbounds nuw i8, ptr %.11637.us.i.i, i64 32 ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %.054.i.i
  br i1 %i.jr, label %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i", !llvm.loop !270

"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i": ; preds = %.lr.ph.i.i, %bb.m
  %.11637.us42.i.i = phi ptr [ %i.jy, %bb.m ], [ %.01553.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.11637.us42.i.i, i64 12
  %.sroa.0.4.vec.extract.i.i.i.us.i.i = load float, ptr %i.js, align 4, !tbaa !56
  %i.jt = fmul float %.sroa.0.4.vec.extract.i.i.i.us.i.i, 5.000000e-01
  %i.ju = getelementptr inbounds nuw i8, ptr %.11637.us42.i.i, i64 24
  %.sroa.0.4.vec.extract.i26.i.i.us.i.i = load float, ptr %i.ju, align 4, !tbaa !56
  %i.jv = fmul float %.sroa.0.4.vec.extract.i26.i.i.us.i.i, 5.000000e-01
  %i.jw = fadd float %i.jt, %i.jv
  %i.jx = fcmp olt float %i.jw, %i.jj
  br i1 %i.jx, label %bb.m, label %.preheader.i.i

bb.m:                                             ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i"
  %i.jy = getelementptr inbounds nuw i8, ptr %.11637.us42.i.i, i64 32 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %.054.i.i
  br i1 %i.jz, label %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i", !llvm.loop !270

"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i": ; preds = %.lr.ph.i.i, %bb.n
  %.11637.i.i = phi ptr [ %i.ke, %bb.n ], [ %.01553.i.i, %.lr.ph.i.i ] ; 4 uses
  %.sroa.222.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.11637.i.i, i64 16
  %.sroa.222.0.copyload.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i, align 8, !tbaa !56
  %i.ka = fmul float %.sroa.222.0.copyload.i.i.i.i, 5.000000e-01
  %.sroa.212.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.11637.i.i, i64 28
  %.sroa.212.0.copyload.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i, align 4, !tbaa !56
  %i.kb = fmul float %.sroa.212.0.copyload.i.i.i.i, 5.000000e-01
  %i.kc = fadd float %i.ka, %i.kb
  %i.kd = fcmp olt float %i.kc, %i.jj
  br i1 %i.kd, label %bb.n, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i", %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i", %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i"
  %.us-phi.i.i = phi ptr [ %.11637.us.i.i, %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us.i.i" ], [ %.11637.i.i, %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i" ], [ %.11637.us42.i.i, %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.us47.i.i" ] ; 5 uses
  br label %bb.o

bb.n:                                             ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i"
  %i.ke = getelementptr inbounds nuw i8, ptr %.11637.i.i, i64 32 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %.054.i.i
  br i1 %i.kf, label %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit.i.i", !llvm.loop !270

bb.o:                                             ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i", %.preheader.i.i
  %.0.pn.i.i = phi ptr [ %.1.i.i, %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i" ], [ %.054.i.i, %.preheader.i.i ] ; 5 uses
  %.1.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i, i64 -32 ; 7 uses
  %i.kg = icmp eq ptr %.us-phi.i.i, %.1.i.i
  br i1 %i.kg, label %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kh = getelementptr inbounds i8, ptr %.0.pn.i.i, i64 -24
  %.sroa.021.0.copyload.i.i21.i.i = load <2 x float>, ptr %i.kh, align 8, !tbaa !56 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i22.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i21.i.i, i64 0
  %i.ki = fmul float %.sroa.0.0.vec.extract.i.i.i22.i.i, 5.000000e-01
  %i.kj = getelementptr inbounds i8, ptr %.0.pn.i.i, i64 -12
  %.sroa.011.0.copyload.i.i23.i.i = load <2 x float>, ptr %i.kj, align 4, !tbaa !56 ; 2 uses
  %.sroa.0.0.vec.extract.i25.i.i24.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i23.i.i, i64 0
  %i.kk = fmul float %.sroa.0.0.vec.extract.i25.i.i24.i.i, 5.000000e-01
  %i.kl = fadd float %i.ki, %i.kk
  switch i32 %.0.i, label %bb.r [
    i32 0, label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i"
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.km = shufflevector <2 x float> %.sroa.021.0.copyload.i.i21.i.i, <2 x float> %.sroa.011.0.copyload.i.i23.i.i, <2 x i32> <i32 1, i32 3>
  %i.kn = fmul <2 x float> %i.km, splat (float 5.000000e-01) ; 2 uses
  %shift = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop645 = fadd <2 x float> %i.kn, %shift
  %i.ko = extractelement <2 x float> %foldExtExtBinop645, i64 0
  br label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i"

bb.r:                                             ; preds = %bb.p
  %.sroa.222.0..sroa_idx.i.i28.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i, i64 -16
  %.sroa.222.0.copyload.i.i29.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i28.i.i, align 8, !tbaa !56
  %i.kp = fmul float %.sroa.222.0.copyload.i.i29.i.i, 5.000000e-01
  %.sroa.212.0..sroa_idx.i.i30.i.i = getelementptr inbounds i8, ptr %.0.pn.i.i, i64 -4
  %.sroa.212.0.copyload.i.i31.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i30.i.i, align 4, !tbaa !56
  %i.kq = fmul float %.sroa.212.0.copyload.i.i31.i.i, 5.000000e-01
  %i.kr = fadd float %i.kp, %i.kq
  br label %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i"

"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i": ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.sroa.speculated.i27.i.i = phi float [ %i.kr, %bb.r ], [ %i.ko, %bb.q ], [ %i.kl, %bb.p ]
  %i.ks = fcmp olt float %.0.i.sroa.speculated.i27.i.i, %i.jj
  br i1 %i.ks, label %bb.s, label %bb.o, !llvm.loop !271

bb.s:                                             ; preds = %"_ZZN4pbrt12BVHAggregate14buildRecursiveERNS_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS2_4spanINS_12BVHPrimitiveEEEPSt6atomicIiESE_RSt6vectorINS_9PrimitiveESaISG_EEENK3$_1clERKSA_.exit32.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.us-phi.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.kt = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 32 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %.1.i.i
  br i1 %i.ku, label %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", label %.lr.ph.i.i, !llvm.loop !272

"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit": ; preds = %bb.s, %bb.m, %bb.l, %bb.n, %bb.o
  %.11635.i.i = phi ptr [ %.054.i.i, %bb.n ], [ %.us-phi.i.i, %bb.o ], [ %.054.i.i, %bb.l ], [ %.054.i.i, %bb.m ], [ %.1.i.i, %bb.s ] ; 3 uses
  %i.kv = ptrtoint ptr %.11635.i.i to i64
  %i.kw = ptrtoint ptr %i.t to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = lshr exact i64 %i.kx, 5                 ; 2 uses
  %i.kz = trunc i64 %i.ky to i32
  store i32 %i.kz, ptr %i.c, align 4, !tbaa !53
  %.not159 = icmp eq ptr %.11635.i.i, %i.t
  %.not160 = icmp eq ptr %.11635.i.i, %i.v
  %or.cond443 = or i1 %.not159, %.not160
  br i1 %or.cond443, label %.thread, label %"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_2EvT_SN_SN_T0_.exit"

.thread:                                          ; preds = %"_ZSt9partitionIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_1ET_SN_SN_T0_.exit", %bb.i
  store i32 %i.jf, ptr %i.c, align 4, !tbaa !53
  %sext = shl i64 %i.je, 32
  %i.la = ashr exact i64 %sext, 27                ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.t, i64 %i.la ; 4 uses
  %i.lc = icmp eq i64 %i.la, %.idx444
  %or.cond.i193 = or i1 %.not477, %i.lc
  br i1 %or.cond.i193, label %"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_2EvT_SN_SN_T0_.exit", label %bb.t

bb.t:                                             ; preds = %.thread
  %i.ld = ptrtoint ptr %i.t to i64
  %i.le = icmp ugt i64 %i.u, 3
  br i1 %i.le, label %.lr.ph.preheader.i, label %._crit_edge.i.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.lf = tail call range(i64 5, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.lg = shl nuw nsw i64 %i.lf, 1
  %i.lh = xor i64 %i.lg, 126
  br label %.lr.ph.i

.lr.ph.i.i194:                                    ; preds = %"_ZSt27__unguarded_partition_pivotIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEET_SR_SR_T0_.exit.i.i"
  %i.li = icmp eq i64 %i.mf, 0
  br i1 %i.li, label %.lr.ph.i._crit_edge.i, label %.lr.ph.i, !llvm.loop !273

.lr.ph.i._crit_edge.i:                            ; preds = %.lr.ph.i.i194
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 3 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = sub i64 %i.lk, %i.pj
  %i.lm = ashr exact i64 %i.ll, 5                 ; 4 uses
  %i.ln = icmp slt i64 %i.lm, 2
  br i1 %i.ln, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i", label %bb.u

bb.u:                                             ; preds = %.lr.ph.i._crit_edge.i
  %i.lo = add nsw i64 %i.lm, -2
  %i.lp = lshr i64 %i.lo, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.013.i.i.i.i = phi i64 [ %i.lp, %bb.u ], [ %i.lr, %bb.v ] ; 4 uses
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %.0..i.i, i64 %.013.i.i.i.i
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i.i, i64 noundef %.013.i.i.i.i, i64 noundef %i.lm, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %i.lq, i32 %.0.i)
  %.not.i.i.i.i = icmp eq i64 %.013.i.i.i.i, 0
  %i.lr = add nsw i64 %.013.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i", label %bb.v, !llvm.loop !274

"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i": ; preds = %bb.v, %.lr.ph.i._crit_edge.i
  %i.ls = icmp ult ptr %i.lj, %..021.i.i
  br i1 %i.ls, label %.lr.ph.i.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_SR_T0_.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i", %bb.x
  %.014.i.i.i = phi ptr [ %i.mc, %bb.x ], [ %i.lj, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i" ] ; 7 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %.sroa.021.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.lt, align 8, !tbaa !56 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 20
  %.sroa.011.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.lu, align 4, !tbaa !56 ; 2 uses
  switch i32 %.0.i, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.222.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 16
  %.sroa.222.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 28
  %.sroa.212.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.in.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink1.i.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.i.i.i.i = fmul float %.sink2.in.i.i.i.i, 5.000000e-01
  %i.lv = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i, 5.000000e-01
  %i.lw = fadd float %i.lv, %.sink2.i.i.i.i
  %i.lx = getelementptr inbounds nuw i8, ptr %.0..i.i, i64 %.sink1.i.i.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.0..i.i, i64 %.sink.i.i.i.i
  %.sink.in.i.i.i.i.i = load float, ptr %i.lx, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i = load float, ptr %i.ly, align 4, !tbaa !56
  %.sink.i.i.i.i.i = fmul float %.sink.in.i.i.i.i.i, 5.000000e-01
  %i.lz = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i, 5.000000e-01
  %i.ma = fadd float %.sink.i.i.i.i.i, %i.lz
  %i.mb = fcmp olt float %i.lw, %i.ma
  br i1 %i.mb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0..i.i, i64 32, i1 false)
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i.i, i64 noundef 0, i64 noundef %i.lm, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %17, i32 %.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i"
  %i.mc = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 32 ; 2 uses
  %i.md = icmp ult ptr %i.mc, %..021.i.i
  br i1 %i.md, label %.lr.ph.i.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_SR_T0_.exit.i.i", !llvm.loop !275

"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_SR_T0_.exit.i.i": ; preds = %bb.x, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_2EEEvT_SR_RT0_.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %.0..i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0..i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lb, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lb, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_2EvT_SN_SN_T0_.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.i194, %.lr.ph.preheader.i
  %.02369.i24.i = phi i64 [ %i.mf, %.lr.ph.i.i194 ], [ %i.lh, %.lr.ph.preheader.i ]
  %.02170.i23.i = phi ptr [ %..021.i.i, %.lr.ph.i.i194 ], [ %i.v, %.lr.ph.preheader.i ] ; 3 uses
  %.071.i22.i = phi ptr [ %.0..i.i, %.lr.ph.i.i194 ], [ %i.t, %.lr.ph.preheader.i ] ; 29 uses
  %i.me = phi i64 [ %i.pk, %.lr.ph.i.i194 ], [ %.idx444, %.lr.ph.preheader.i ]
  %i.mf = add nsw i64 %.02369.i24.i, -1           ; 2 uses
  %i.mg = lshr i64 %i.me, 6
  %i.mh = getelementptr inbounds nuw [32 x i8], ptr %.071.i22.i, i64 %i.mg ; 14 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.071.i22.i, i64 32 ; 5 uses
  %i.mj = getelementptr inbounds i8, ptr %.02170.i23.i, i64 -32 ; 12 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.071.i22.i, i64 40
  %.sroa.021.0.copyload.i.i.i.i.i.i.i = load <2 x float>, ptr %i.mk, align 8, !tbaa !56 ; 6 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.071.i22.i, i64 52
  %.sroa.011.0.copyload.i.i.i.i.i.i.i = load <2 x float>, ptr %i.ml, align 4, !tbaa !56 ; 6 uses
  switch i32 %.0.i, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.222.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22.i, i64 48
  %.sroa.222.0.copyload.i.i.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22.i, i64 60
  %.sroa.212.0.copyload.i.i.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i ]
  %.sink2.in.i.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i ]
  %.sink1.i.i.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i ]
  %.sink.i.i.i26.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i.i ]
  %.sink2.i.i.i.i.i = fmul float %.sink2.in.i.i.i.i.i, 5.000000e-01
  %i.mm = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i.i, 5.000000e-01
  %i.mn = fadd float %i.mm, %.sink2.i.i.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.sink1.i.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 %.sink.i.i.i26.i.i
  %.sink.in.i.i.i.i.i.i = load float, ptr %i.mo, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i.i = load float, ptr %i.mp, align 4, !tbaa !56
  %.sink.i.i.i.i.i.i = fmul float %.sink.in.i.i.i.i.i.i, 5.000000e-01
  %i.mq = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i.i, 5.000000e-01
  %i.mr = fadd float %.sink.i.i.i.i.i.i, %i.mq
  %i.ms = fcmp olt float %i.mn, %i.mr
  br i1 %i.ms, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit.i.i.i.i"
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.sroa.021.0.copyload.i.i.i26.i.i.i.i = load <2 x float>, ptr %i.mt, align 8, !tbaa !56 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mh, i64 20
  %.sroa.011.0.copyload.i.i.i27.i.i.i.i = load <2 x float>, ptr %i.mu, align 4, !tbaa !56 ; 2 uses
  switch i32 %.0.i, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i: ; preds = %bb.y
  %.sroa.0.0.vec.extract.i.i.i.i40.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i26.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i41.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i27.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit47.i.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i: ; preds = %bb.y
  %.sroa.0.4.vec.extract.i.i.i.i29.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i26.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i30.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i27.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit47.i.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i: ; preds = %bb.y
  %.sroa.222.0..sroa_idx.i.i.i43.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %.sroa.222.0.copyload.i.i.i44.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i43.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i45.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.mh, i64 28
  %.sroa.212.0.copyload.i.i.i46.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i45.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit47.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit47.i.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i31.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i41.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i30.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i46.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i ]
  %.sink2.in.i32.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i40.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i29.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i44.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i ]
  %.sink1.i33.i.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i ]
  %.sink.i34.i.i.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i.i ]
  %.sink2.i35.i.i.i.i = fmul float %.sink2.in.i32.i.i.i.i, 5.000000e-01
  %i.mv = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i31.i.i.i.i, 5.000000e-01
  %i.mw = fadd float %i.mv, %.sink2.i35.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sink1.i33.i.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mj, i64 %.sink.i34.i.i.i.i
  %.sink.in.i.i36.i.i.i.i = load float, ptr %i.mx, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i37.i.i.i.i = load float, ptr %i.my, align 4, !tbaa !56
  %.sink.i.i38.i.i.i.i = fmul float %.sink.in.i.i36.i.i.i.i, 5.000000e-01
  %i.mz = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i37.i.i.i.i, 5.000000e-01
  %i.na = fadd float %.sink.i.i38.i.i.i.i, %i.mz
  %i.nb = fcmp olt float %i.mw, %i.na
  br i1 %i.nb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_2EclIPSD_SQ_EEbT_T0_.exit47.i.i.i.i"
end_hunk_0
begin_hunk_1_@_ZN4pbrt11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEE3GetEv:bb.a
  call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = and i64 %i.d, 4294967295
  %i.p = urem i64 %i.o, %i.n
  %i.q = trunc nuw i64 %i.p to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.r = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32
  switch i32 %i.r, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader: ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i32 1, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.x, ptr %i.b, align 8, !tbaa !54
  %i.y = icmp ugt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  %.sroa.02.0.copyload = load i64, ptr %1, align 8
  %.rhs.trunc = trunc nuw i64 %i.x to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader
  call void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef 72, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(8) @.str.89, ptr noundef nonnull align 1 dereferenceable(17) @.str.90, ptr noundef nonnull align 1 dereferenceable(8) @.str.89, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.90, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  unreachable

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12shared_mutex11lock_sharedEv.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 2 uses
  %.02546 = phi i32 [ %i.q, %.lr.ph ], [ %.4, %_ZNSt12shared_mutex11lock_sharedEv.exit ] ; 3 uses
  %indvars58 = trunc i64 %indvars.iv to i32       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.z = zext i32 %.02546 to i64                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !315, !range !146, !noundef !147
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, label %bb.f

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit: ; preds = %bb.e
  %.sroa.03.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ae = icmp eq i64 %.sroa.03.0.copyload, %.sroa.02.0.copyload
  br i1 %i.ae, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32 ; 0 uses
  %i.ag = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32
  %i.ah = icmp eq i32 %i.ag, 35
  br i1 %i.ah, label %bb.g, label %_ZNSt12shared_mutex4lockEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #31
  unreachable

_ZNSt12shared_mutex4lockEv.exit:                  ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit

bb.h:                                             ; preds = %_ZNSt12shared_mutex4lockEv.exit
  call void @_ZSt25__throw_bad_function_callv() #31
  unreachable

_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit: ; preds = %_ZNSt12shared_mutex4lockEv.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.an = call ptr %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.ak), !inline_history !311
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !66  ; 4 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !315, !range !146, !noundef !147
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33

.preheader:                                       ; preds = %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %.rhs.trunc36 = trunc nuw i64 %i.ax to i32
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.127 = phi i32 [ %i.az, %bb.k ], [ %indvars58, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.2, %bb.k ], [ %.02546, %.preheader ]
  %i.ay = add i32 %.1, %.127                      ; 3 uses
  %i.az = add nuw nsw i32 %.127, 1
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  %.not = icmp ugt i64 %i.ax, %i.ba
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = urem i32 %i.ay, %.rhs.trunc36           ; 2 uses
  %.pre = zext i32 %i.bb to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre, %bb.j ], [ %i.ba, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %i.ay, %bb.i ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !315, !range !146, !noundef !147
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33, !llvm.loop !312

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33: ; preds = %bb.k, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit
  %.pre-phi59 = phi i64 [ %i.z, %_ZNKSt8functionIFN4pstd3pmr21polymorphic_allocatorISt4byteEEvEEclEv.exit ], [ %.pre-phi, %bb.k ]
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.pre-phi59 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %1, align 8, !tbaa !54
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !119
  store i8 1, ptr %i.bh, align 8, !tbaa !315
  br label %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit
  %i.bj = add i32 %.02546, %indvars58             ; 3 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 3 uses
  %i.bk = zext i32 %i.bj to i64
  %.not31 = icmp ugt i64 %i.x, %i.bk
  br i1 %.not31, label %_ZNSt12shared_mutex11lock_sharedEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = urem i32 %i.bj, %.rhs.trunc
  br label %_ZNSt12shared_mutex11lock_sharedEv.exit

_ZNSt12shared_mutex11lock_sharedEv.exit:          ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %i.bl, %bb.m ], [ %i.bj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bm = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.x, ptr %i.b, align 8, !tbaa !54
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge, label %bb.e, !llvm.loop !313

_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit32: ; preds = %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33
  %.pn = phi ptr [ %i.bg, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit33 ], [ %i.aa, %_ZN4pstd8optionalIN4pbrt11ThreadLocalINS_3pmr21polymorphic_allocatorISt4byteEEE5EntryEEptEv.exit ]
  %i.bn = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %0) #32 ; 0 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt11nth_elementIPN4pbrt12BVHPrimitiveEZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanIS1_EEPSt6atomicIiESG_RSt6vectorINS0_9PrimitiveESaISI_EEE3$_3EvT_SN_SN_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #11 {
bb.a:
  %4 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %6 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %7 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %8 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %9 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %10 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %11 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %12 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %13 = alloca %"struct.pbrt::BVHPrimitive", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %"_ZSt13__introselectIPN4pbrt12BVHPrimitiveElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_T1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = icmp sgt i64 %i.e, 96
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = lshr exact i64 %i.e, 5
  %i.h = tail call range(i64 5, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %"_ZSt27__unguarded_partition_pivotIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEET_SR_SR_T0_.exit.i"
  %i.k = icmp eq i64 %i.ah, 0
  br i1 %i.k, label %.lr.ph.i._crit_edge, label %.lr.ph, !llvm.loop !316

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.dl
  %i.o = ashr exact i64 %i.n, 5                   ; 4 uses
  %i.p = icmp slt i64 %i.o, 2
  br i1 %i.p, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i._crit_edge
  %i.q = add nsw i64 %i.o, -2
  %i.r = lshr i64 %i.q, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013.i.i.i = phi i64 [ %i.r, %bb.c ], [ %i.t, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.0..i, i64 %.013.i.i.i
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i, i64 noundef %.013.i.i.i, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %i.s, i32 %3)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.t = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", label %bb.d, !llvm.loop !317

"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i": ; preds = %bb.d, %.lr.ph.i._crit_edge
  %i.u = icmp ult ptr %i.l, %..021.i
  br i1 %i.u, label %.lr.ph.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i", %bb.f
  %.014.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.l, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i" ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %.sroa.021.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.v, align 8, !tbaa !56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 20
  %.sroa.011.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.w, align 4, !tbaa !56 ; 2 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.0.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i:   ; preds = %.lr.ph.i.i
  %.sroa.222.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16
  %.sroa.222.0.copyload.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 28
  %.sroa.212.0.copyload.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink2.in.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink1.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink.i.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i ]
  %.sink2.i.i.i = fmul float %.sink2.in.i.i.i, 5.000000e-01
  %i.x = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i, 5.000000e-01
  %i.y = fadd float %i.x, %.sink2.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0..i, i64 %.sink1.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0..i, i64 %.sink.i.i.i
  %.sink.in.i.i.i.i = load float, ptr %i.z, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i = load float, ptr %i.aa, align 4, !tbaa !56
  %.sink.i.i.i.i = fmul float %.sink.in.i.i.i.i, 5.000000e-01
  %i.ab = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i, 5.000000e-01
  %i.ac = fadd float %.sink.i.i.i.i, %i.ab
  %i.ad = fcmp olt float %i.y, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0..i, i64 32, i1 false)
  tail call fastcc void @"_ZSt13__adjust_heapIPN4pbrt12BVHPrimitiveElS1_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_T0_SS_T1_T2_"(ptr noundef nonnull %.0..i, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull byval(%"struct.pbrt::BVHPrimitive") align 8 %13, i32 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %..021.i
  br i1 %i.af, label %.lr.ph.i.i, label %"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i", !llvm.loop !318

"_ZSt13__heap_selectIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_.exit.i": ; preds = %bb.f, %"_ZSt11__make_heapIPN4pbrt12BVHPrimitiveEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_RT0_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %.0..i, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0..i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %"_ZSt13__introselectIPN4pbrt12BVHPrimitiveElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_12BVHAggregate14buildRecursiveERNS0_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS8_4spanIS1_EEPSt6atomicIiESJ_RSt6vectorINS0_9PrimitiveESaISL_EEE3$_3EEEvT_SR_SR_T0_T1_.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %.02369.i24 = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader ]
  %.02170.i23 = phi ptr [ %..021.i, %.lr.ph.i ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.071.i22 = phi ptr [ %.0..i, %.lr.ph.i ], [ %0, %.lr.ph.preheader ] ; 29 uses
  %i.ag = phi i64 [ %i.dm, %.lr.ph.i ], [ %i.e, %.lr.ph.preheader ]
  %i.ah = add nsw i64 %.02369.i24, -1             ; 2 uses
  %i.ai = lshr i64 %i.ag, 6
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.071.i22, i64 %i.ai ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.071.i22, i64 32 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.02170.i23, i64 -32 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.071.i22, i64 40
  %.sroa.021.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.am, align 8, !tbaa !56 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.071.i22, i64 52
  %.sroa.011.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %i.an, align 4, !tbaa !56 ; 6 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i: ; preds = %.lr.ph
  %.sroa.222.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22, i64 48
  %.sroa.222.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.071.i22, i64 60
  %.sroa.212.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.212.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.in.i.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ %.sroa.222.0.copyload.i.i.i.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink1.i.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink.i.i.i26.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i.i.i.i ]
  %.sink2.i.i.i.i = fmul float %.sink2.in.i.i.i.i, 5.000000e-01
  %i.ao = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i.i.i.i, 5.000000e-01
  %i.ap = fadd float %i.ao, %.sink2.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink1.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink.i.i.i26.i
  %.sink.in.i.i.i.i.i = load float, ptr %i.aq, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i = load float, ptr %i.ar, align 4, !tbaa !56
  %.sink.i.i.i.i.i = fmul float %.sink.in.i.i.i.i.i, 5.000000e-01
  %i.as = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i.i.i.i, 5.000000e-01
  %i.at = fadd float %.sink.i.i.i.i.i, %i.as
  %i.au = fcmp olt float %i.ap, %i.at
  br i1 %i.au, label %bb.g, label %bb.l

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.021.0.copyload.i.i.i26.i.i.i = load <2 x float>, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %.sroa.011.0.copyload.i.i.i27.i.i.i = load <2 x float>, ptr %i.aw, align 4, !tbaa !56 ; 2 uses
  switch i32 %3, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i [
    i32 0, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i
    i32 1, label %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i
  ]

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i: ; preds = %bb.g
  %.sroa.0.0.vec.extract.i.i.i.i40.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i26.i.i.i, i64 0
  %.sroa.0.0.vec.extract.i25.i.i.i41.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i27.i.i.i, i64 0
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit47.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i: ; preds = %bb.g
  %.sroa.0.4.vec.extract.i.i.i.i29.i.i.i = extractelement <2 x float> %.sroa.021.0.copyload.i.i.i26.i.i.i, i64 1
  %.sroa.0.4.vec.extract.i26.i.i.i30.i.i.i = extractelement <2 x float> %.sroa.011.0.copyload.i.i.i27.i.i.i, i64 1
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit47.i.i.i"

_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i: ; preds = %bb.g
  %.sroa.222.0..sroa_idx.i.i.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.222.0.copyload.i.i.i44.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i43.i.i.i, align 8, !tbaa !56
  %.sroa.212.0..sroa_idx.i.i.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  %.sroa.212.0.copyload.i.i.i46.i.i.i = load float, ptr %.sroa.212.0..sroa_idx.i.i.i45.i.i.i, align 4, !tbaa !56
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit47.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit47.i.i.i": ; preds = %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i
  %.sroa.0.0.vec.extract.i25.i.i.sink.i31.i.i.i = phi float [ %.sroa.0.0.vec.extract.i25.i.i.i41.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i ], [ %.sroa.0.4.vec.extract.i26.i.i.i30.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i ], [ %.sroa.212.0.copyload.i.i.i46.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i ]
  %.sink2.in.i32.i.i.i = phi float [ %.sroa.0.0.vec.extract.i.i.i.i40.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i ], [ %.sroa.0.4.vec.extract.i.i.i.i29.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i ], [ %.sroa.222.0.copyload.i.i.i44.i.i.i, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i ]
  %.sink1.i33.i.i.i = phi i64 [ 8, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i ], [ 12, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i ], [ 16, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i ]
  %.sink.i34.i.i.i = phi i64 [ 20, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread.i.i39.i.i.i ], [ 24, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.thread12.i.i28.i.i.i ], [ 28, %_ZN4pbrt6Tuple3INS_6Point3EfEixEi.exit.i.i42.i.i.i ]
  %.sink2.i35.i.i.i = fmul float %.sink2.in.i32.i.i.i, 5.000000e-01
  %i.ax = fmul float %.sroa.0.0.vec.extract.i25.i.i.sink.i31.i.i.i, 5.000000e-01
  %i.ay = fadd float %i.ax, %.sink2.i35.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink1.i33.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink.i34.i.i.i
  %.sink.in.i.i36.i.i.i = load float, ptr %i.az, align 4, !tbaa !56
  %.sroa.0.0.vec.extract.i25.i1510.sink.i.i37.i.i.i = load float, ptr %i.ba, align 4, !tbaa !56
  %.sink.i.i38.i.i.i = fmul float %.sink.in.i.i36.i.i.i, 5.000000e-01
  %i.bb = fmul float %.sroa.0.0.vec.extract.i25.i1510.sink.i.i37.i.i.i, 5.000000e-01
  %i.bc = fadd float %.sink.i.i38.i.i.i, %i.bb
  %i.bd = fcmp olt float %i.ay, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4pbrt12BVHAggregate14buildRecursiveERNS2_11ThreadLocalIN4pstd3pmr21polymorphic_allocatorISt4byteEEEENS5_4spanINS2_12BVHPrimitiveEEEPSt6atomicIiESH_RSt6vectorINS2_9PrimitiveESaISJ_EEE3$_3EclIPSD_SQ_EEbT_T0_.exit47.i.i.i"
end_hunk_1
