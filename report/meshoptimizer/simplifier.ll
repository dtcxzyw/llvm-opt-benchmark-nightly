Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %.0334815 = phi i1 [ true, %.lr.ph816 ], [ false, %bb.hg ]
  %.5814 = phi i64 [ %.0339.lcssa, %.lr.ph816 ], [ %.134.i576, %bb.hg ] ; 3 uses
  %.3692812 = phi float [ %.2691, %.lr.ph816 ], [ %i.cxw, %bb.hg ] ; 3 uses
  %.5702811 = phi float [ %.2699.lcssa, %.lr.ph816 ], [ %.1.i577, %bb.hg ]
  %i.cwm = fmul float %.5702811, 1.500000e+00     ; 2 uses
  %i.cwn = fcmp olt float %i.cwm, %i.bff
  %i.cwo = select i1 %i.cwn, float %i.cwm, float %i.bff ; 4 uses
  switch i64 %.0343, label %.lr.ph807 [
    i64 0, label %.lr.ph.i572.preheader
    i64 1, label %.lr.ph807.epil.preheader
  ]

.lr.ph.i572.preheader.loopexit.unr-lcssa:         ; preds = %.lr.ph807
  br i1 %lcmp.mod1373.not, label %.lr.ph.i572.preheader, label %.lr.ph807.epil.preheader

.lr.ph807.epil.preheader:                         ; preds = %bb.hd, %.lr.ph.i572.preheader.loopexit.unr-lcssa
  %.0332805.epil.init = phi i64 [ 0, %bb.hd ], [ %i.cxu, %.lr.ph.i572.preheader.loopexit.unr-lcssa ]
  %.0333804.epil.init = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i572.preheader.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1375)
  %i.cwp = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332805.epil.init
  %i.cwq = load float, ptr %i.cwp, align 4, !tbaa !44 ; 3 uses
  %i.cwr = fcmp ule float %i.cwq, %.0333804.epil.init
  %i.cws = fcmp ugt float %i.cwq, %i.cwo
  %or.cond431.epil = select i1 %i.cwr, i1 true, i1 %i.cws
  %.1.epil = select i1 %or.cond431.epil, float %.0333804.epil.init, float %i.cwq
  br label %.lr.ph.i572.preheader

.lr.ph.i572.preheader:                            ; preds = %.lr.ph807.epil.preheader, %.lr.ph.i572.preheader.loopexit.unr-lcssa, %bb.hd
  %.0333.lcssa = phi float [ 0.000000e+00, %bb.hd ], [ %.1.1, %.lr.ph.i572.preheader.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph807.epil.preheader ] ; 2 uses
  br label %.lr.ph.i572

.lr.ph.i572:                                      ; preds = %.lr.ph.i572.preheader, %bb.hf
  %.038.i573 = phi i64 [ %i.cxi, %bb.hf ], [ 0, %.lr.ph.i572.preheader ] ; 2 uses
  %.03237.i574 = phi float [ %.1.i577, %bb.hf ], [ f0x7F7FFFFF, %.lr.ph.i572.preheader ] ; 3 uses
  %.03336.i575 = phi i64 [ %.134.i576, %bb.hf ], [ 0, %.lr.ph.i572.preheader ] ; 3 uses
  %i.cwt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i573 ; 2 uses
  %i.cwu = load i32, ptr %i.cwt, align 4, !tbaa !28 ; 2 uses
  %i.cwv = zext i32 %i.cwu to i64
  %i.cww = getelementptr inbounds nuw [4 x i8], ptr %.0345, i64 %i.cwv
  %i.cwx = load i32, ptr %i.cww, align 4, !tbaa !28
  %i.cwy = zext i32 %i.cwx to i64
  %i.cwz = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %i.cwy
  %i.cxa = load float, ptr %i.cwz, align 4, !tbaa !44 ; 3 uses
  %i.cxb = fcmp ogt float %i.cxa, %i.cwo
  br i1 %i.cxb, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %.lr.ph.i572
  %i.cxc = getelementptr i8, ptr %i.cwt, i64 4
  %i.cxd = fcmp ogt float %.03237.i574, %i.cxa
  %..032.i581 = select i1 %i.cxd, float %i.cxa, float %.03237.i574
  %i.cxe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i575 ; 2 uses
  %i.cxf = getelementptr i8, ptr %i.cxe, i64 4
  %i.cxg = load <2 x i32>, ptr %i.cxc, align 4, !tbaa !28
  store i32 %i.cwu, ptr %i.cxe, align 4, !tbaa !28
  store <2 x i32> %i.cxg, ptr %i.cxf, align 4, !tbaa !28
  %i.cxh = add i64 %.03336.i575, 3
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.lr.ph.i572
  %.134.i576 = phi i64 [ %i.cxh, %bb.he ], [ %.03336.i575, %.lr.ph.i572 ] ; 5 uses
  %.1.i577 = phi float [ %..032.i581, %bb.he ], [ %.03237.i574, %.lr.ph.i572 ] ; 3 uses
  %i.cxi = add i64 %.038.i573, 3                  ; 2 uses
  %i.cxj = icmp ult i64 %i.cxi, %.5814
  br i1 %i.cxj, label %.lr.ph.i572, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582: ; preds = %bb.hf
  %i.cxk = icmp ne i64 %.134.i576, %.5814
  %or.cond = or i1 %.0334815, %i.cxk
  br i1 %or.cond, label %bb.hg, label %.critedge

.lr.ph807:                                        ; preds = %bb.hd, %.lr.ph807
  %.0332805 = phi i64 [ %i.cxu, %.lr.ph807 ], [ 0, %bb.hd ] ; 3 uses
  %.0333804 = phi float [ %.1.1, %.lr.ph807 ], [ 0.000000e+00, %bb.hd ] ; 2 uses
  %niter1377 = phi i64 [ %niter1377.next.1, %.lr.ph807 ], [ 0, %bb.hd ]
  %i.cxl = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332805
  %i.cxm = load float, ptr %i.cxl, align 4, !tbaa !44 ; 3 uses
  %i.cxn = fcmp ule float %i.cxm, %.0333804
  %i.cxo = fcmp ugt float %i.cxm, %i.cwo
  %or.cond431 = select i1 %i.cxn, i1 true, i1 %i.cxo
  %.1 = select i1 %or.cond431, float %.0333804, float %i.cxm ; 2 uses
  %i.cxp = getelementptr inbounds nuw [4 x i8], ptr %.0344, i64 %.0332805
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxp, i64 4
  %i.cxr = load float, ptr %i.cxq, align 4, !tbaa !44 ; 3 uses
  %i.cxs = fcmp ule float %i.cxr, %.1
  %i.cxt = fcmp ugt float %i.cxr, %i.cwo
  %or.cond431.1 = select i1 %i.cxs, i1 true, i1 %i.cxt
  %.1.1 = select i1 %or.cond431.1, float %.1, float %i.cxr ; 3 uses
  %i.cxu = add nuw nsw i64 %.0332805, 2           ; 2 uses
  %niter1377.next.1 = add nuw nsw i64 %niter1377, 2 ; 2 uses
  %niter1377.ncmp.1 = icmp eq i64 %niter1377.next.1, %unroll_iter1376
  br i1 %niter1377.ncmp.1, label %.lr.ph.i572.preheader.loopexit.unr-lcssa, label %.lr.ph807, !llvm.loop !113

bb.hg:                                            ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582
  %i.cxv = fcmp olt float %.3692812, %.0333.lcssa
  %i.cxw = select i1 %i.cxv, float %.0333.lcssa, float %.3692812 ; 2 uses
  %i.cxx = icmp ule i64 %.134.i576, %11
  %i.cxy = fcmp ugt float %.1.i577, %i.bff
  %or.cond718 = select i1 %i.cxx, i1 true, i1 %i.cxy
  br i1 %or.cond718, label %.critedge, label %bb.hd

.critedge:                                        ; preds = %bb.hg, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread
  %.3692.lcssa = phi float [ %.2691, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.3692812, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582 ], [ %i.cxw, %bb.hg ]
  %.5.lcssa = phi i64 [ %.0339.lcssa, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread ], [ %.5814, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit582 ], [ %.134.i576, %bb.hg ] ; 12 uses
  %i.cxz = and i32 %13, 536870912
  %.not408 = icmp eq i32 %i.cxz, 0
  br i1 %.not408, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %bb.hh

bb.hh:                                            ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr align 1 %i.bey, i8 0, i64 %.0703, i1 false)
  %.not836 = icmp eq i64 %.5.lcssa, 0
  br i1 %.not836, label %._crit_edge824, label %.lr.ph823.preheader

.lr.ph823.preheader:                              ; preds = %bb.hh
  %xtraiter1378 = and i64 %.5.lcssa, 1
  %i.cya = icmp eq i64 %.5.lcssa, 1
  br i1 %i.cya, label %.lr.ph823.epil.preheader, label %.lr.ph823.preheader.new

.lr.ph823.preheader.new:                          ; preds = %.lr.ph823.preheader
  %unroll_iter1382 = and i64 %.5.lcssa, -2
  br label %.lr.ph823

._crit_edge824.loopexit.unr-lcssa:                ; preds = %.lr.ph823
  %lcmp.mod1380.not = icmp eq i64 %xtraiter1378, 0
  br i1 %lcmp.mod1380.not, label %._crit_edge824, label %.lr.ph823.epil.preheader

.lr.ph823.epil.preheader:                         ; preds = %._crit_edge824.loopexit.unr-lcssa, %.lr.ph823.preheader
  %.0331821.epil.init = phi i64 [ 0, %.lr.ph823.preheader ], [ %i.dls, %._crit_edge824.loopexit.unr-lcssa ]
  %lcmp.mod1381 = trunc i64 %.5.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1381)
  %i.cyb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331821.epil.init
  %i.cyc = load i32, ptr %i.cyb, align 4, !tbaa !28
  %i.cyd = zext i32 %i.cyc to i64                 ; 2 uses
  %i.cye = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.cyd
  store i8 1, ptr %i.cye, align 1, !tbaa !29
  %i.cyf = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.cyd
  %i.cyg = load i32, ptr %i.cyf, align 4, !tbaa !28
  %i.cyh = zext i32 %i.cyg to i64
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.cyh
  store i8 1, ptr %i.cyi, align 1, !tbaa !29
  br label %._crit_edge824

._crit_edge824:                                   ; preds = %.lr.ph823.epil.preheader, %._crit_edge824.loopexit.unr-lcssa, %bb.hh
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.5.lcssa, i64 noundef %.0703, ptr noundef %i.iv)
  br i1 %.not88.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.i583

.lr.ph.i583:                                      ; preds = %._crit_edge824
  %.not70.i = icmp eq ptr %.0346, null
  br label %bb.hi

bb.hi:                                            ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, %.lr.ph.i583
  %.06245.i = phi i64 [ 0, %.lr.ph.i583 ], [ %i.dla, %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i ] ; 13 uses
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.bey, i64 %.06245.i
  %i.cyk = load i8, ptr %i.cyj, align 1, !tbaa !29
  %.not.i585 = icmp eq i8 %i.cyk, 0
  br i1 %.not.i585, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.06245.i
  %i.cym = load i8, ptr %i.cyl, align 1, !tbaa !29
  switch i8 %i.cym, label %bb.hk [
    i8 4, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 2, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
    i8 1, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  ]

bb.hk:                                            ; preds = %bb.hj
  %i.cyn = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.06245.i
  %i.cyo = load i32, ptr %i.cyn, align 4, !tbaa !28
  %i.cyp = zext i32 %i.cyo to i64                 ; 2 uses
  %.not67.i = icmp eq i64 %.06245.i, %i.cyp
  br i1 %.not67.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.cyq = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.cyp
  %i.cyr = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.06245.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cyr, ptr noundef nonnull align 4 dereferenceable(12) %i.cyq, i64 12, i1 false), !tbaa.struct !142
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.hm:                                            ; preds = %bb.hk
  %i.cys = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.06245.i ; 4 uses
  %i.cyt = getelementptr inbounds nuw [44 x i8], ptr %i.adt, i64 %.06245.i ; 11 uses
  %.sroa.814.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 8
  %.sroa.1819.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 12
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 16
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 20
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 24
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 28
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 32
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 36
  %.sroa.33.0.copyload.i = load float, ptr %.sroa.33.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.011.0.copyload.i = load float, ptr %i.cyt, align 4, !tbaa !44 ; 3 uses
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.38.0.copyload.i = load float, ptr %.sroa.38.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.43.0.copyload.i = load float, ptr %.sroa.43.0..sroa_idx.i, align 4, !tbaa !44 ; 3 uses
  %.sroa.48.0.copyload.i = load float, ptr %.sroa.48.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cyt, i64 40
  %.sroa.50.0.copyload.i = load float, ptr %.sroa.50.0..sroa_idx.i, align 4, !tbaa !44 ; 4 uses
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cys, i64 4 ; 2 uses
  %i.cyv = load <2 x float>, ptr %i.cys, align 4, !tbaa !44 ; 3 uses
  %18 = load float, ptr %i.cyu, align 4, !tbaa !50 ; 6 uses
  %i.cyw = getelementptr inbounds nuw i8, ptr %i.cys, i64 8 ; 2 uses
  %19 = load float, ptr %i.cyw, align 4, !tbaa !46 ; 8 uses
  %i.cyx = fmul float %.sroa.50.0.copyload.i, f0x38D1B717 ; 6 uses
  %i.cyy = extractelement <2 x float> %i.cyv, i64 0 ; 7 uses
  %i.cyz = fmul float %i.cyy, %i.cyx
  %i.cza = fsub float %.sroa.33.0.copyload.i, %i.cyz ; 2 uses
  %20 = fmul float %i.cyx, %18
  %i.czb = load <2 x float>, ptr %.sroa.1819.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.23.0.copyload.i = load float, ptr %.sroa.23.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %i.czc = shufflevector <2 x float> %i.czb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.czd = insertelement <4 x float> %i.czc, float %.sroa.38.0.copyload.i, i64 0
  %i.cze = insertelement <4 x float> %i.czd, float %.sroa.011.0.copyload.i, i64 3 ; 2 uses
  %21 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %20, i64 0
  %i.czf = insertelement <4 x float> %21, float %i.cyx, i64 3 ; 2 uses
  %i.czg = fsub <4 x float> %i.cze, %i.czf
  %i.czh = fadd <4 x float> %i.cze, %i.czf
  %i.czi = shufflevector <4 x float> %i.czg, <4 x float> %i.czh, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %22 = fmul float %i.cyx, %19
  %i.czj = load <2 x float>, ptr %.sroa.814.0..sroa_idx.i, align 4, !tbaa !44 ; 2 uses
  %.sroa.13.0.copyload.i = load float, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !44
  %i.czk = shufflevector <2 x float> %i.czj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %23 = insertelement <4 x float> %i.czk, float %.sroa.28.0.copyload.i, i64 0
  %i.czl = insertelement <4 x float> %23, float %.sroa.43.0.copyload.i, i64 3 ; 2 uses
  %i.czm = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cyx, i64 1
  %i.czn = insertelement <4 x float> %i.czm, float %22, i64 3
  %24 = shufflevector <4 x float> %i.czn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.czo = fadd <4 x float> %i.czl, %24
  %i.czp = fsub <4 x float> %i.czl, %24
  %i.czq = shufflevector <4 x float> %i.czo, <4 x float> %i.czp, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.czr = fadd float %.sroa.50.0.copyload.i, %i.cyx ; 4 uses
  %i.czs = shufflevector <4 x float> %i.czq, <4 x float> %i.czi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %.not403, label %bb.hs, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.czt = trunc nuw i64 %.06245.i to i32
  %i.czu = shufflevector <4 x float> %i.czq, <4 x float> %i.czi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.czv = insertelement <8 x float> poison, float %i.czr, i64 0
  %i.czw = shufflevector <8 x float> %i.czv, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.ho

bb.ho:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, %bb.hn
  %.sroa.33.0.i = phi float [ %i.cza, %bb.hn ], [ %i.dbl, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %.0.i = phi i32 [ %i.czt, %bb.hn ], [ %i.dbp, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.czx = phi <8 x float> [ %i.czu, %bb.hn ], [ %i.dbm, %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i ]
  %i.czy = zext i32 %.0.i to i64                  ; 3 uses
  %i.czz = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.czy ; 5 uses
  %i.daa = mul i64 %.0330, %i.czy
  %i.dab = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.daa
  %i.dac = getelementptr inbounds nuw i8, ptr %i.czz, i64 16
  %i.dad = getelementptr inbounds nuw i8, ptr %i.czz, i64 24
  %i.dae = load float, ptr %i.dad, align 4, !tbaa !51
  %i.daf = call float @llvm.fmuladd.f32(float %i.dae, float %i.czr, float %.sroa.33.0.i)
  %i.dag = getelementptr inbounds nuw i8, ptr %i.czz, i64 28
  %i.dah = load <4 x float>, ptr %i.czz, align 4, !tbaa !44 ; 2 uses
  %i.dai = load <2 x float>, ptr %i.dac, align 4, !tbaa !44 ; 2 uses
  %i.daj = load <2 x float>, ptr %i.dag, align 4, !tbaa !44
  %i.dak = shufflevector <2 x float> %i.dai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dal = shufflevector <4 x float> %i.dak, <4 x float> %i.dah, <8 x i32> <i32 1, i32 6, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dam = shufflevector <2 x float> %i.daj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dan = shufflevector <8 x float> %i.dal, <8 x float> %i.dam, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 8, i32 poison, i32 poison, i32 poison>
  %i.dao = shufflevector <2 x float> %i.dai, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dap = shufflevector <8 x float> %i.dan, <8 x float> %i.dao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.daq = shufflevector <4 x float> %i.dah, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dar = shufflevector <8 x float> %i.dap, <8 x float> %i.daq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 11, i32 8>
  %i.das = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dar, <8 x float> %i.czw, <8 x float> %i.czx)
  %i.dat = getelementptr inbounds nuw i8, ptr %i.czz, i64 40
  %i.dau = load float, ptr %i.dat, align 4, !tbaa !48 ; 2 uses
  %i.dav = fcmp oeq float %i.dau, 0.000000e+00
  %i.daw = fdiv float %i.czr, %i.dau
  %i.dax = select i1 %i.dav, float 0.000000e+00, float %i.daw ; 2 uses
  %i.day = insertelement <8 x float> poison, float %i.dax, i64 0
  %i.daz = shufflevector <8 x float> %i.day, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hp, %bb.ho
  %.087.i.i = phi i64 [ 0, %bb.ho ], [ %i.dbn, %bb.hp ] ; 2 uses
  %i.dba = phi float [ %i.daf, %bb.ho ], [ %i.dbl, %bb.hp ]
  %i.dbb = phi <8 x float> [ %i.das, %bb.ho ], [ %i.dbm, %bb.hp ]
  %i.dbc = getelementptr inbounds nuw [16 x i8], ptr %i.dab, i64 %.087.i.i
  %i.dbd = load <4 x float>, ptr %i.dbc, align 4, !tbaa !44 ; 3 uses
  %i.dbe = fneg <4 x float> %i.dbd                ; 2 uses
  %i.dbf = shufflevector <4 x float> %i.dbe, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 1, i32 0>
  %i.dbg = shufflevector <4 x float> %i.dbd, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0>
  %i.dbh = fmul <8 x float> %i.dbg, %i.dbf
  %i.dbi = extractelement <4 x float> %i.dbe, i64 3
  %i.dbj = extractelement <4 x float> %i.dbd, i64 0
  %i.dbk = fmul float %i.dbj, %i.dbi
  %i.dbl = call float @llvm.fmuladd.f32(float %i.dbk, float %i.dax, float %i.dba) ; 4 uses
  %i.dbm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dbh, <8 x float> %i.daz, <8 x float> %i.dbb) ; 4 uses
  %i.dbn = add nuw i64 %.087.i.i, 1               ; 2 uses
  %exitcond.not.i.i588 = icmp eq i64 %i.dbn, %.0330
  br i1 %exitcond.not.i.i588, label %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i, label %bb.hp, !llvm.loop !114

_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i: ; preds = %bb.hp
  %i.dbo = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.czy
  %i.dbp = load i32, ptr %i.dbo, align 4, !tbaa !28 ; 2 uses
  %i.dbq = zext i32 %i.dbp to i64
  %.not69.i = icmp eq i64 %.06245.i, %i.dbq
  br i1 %.not69.i, label %bb.hq, label %bb.ho, !llvm.loop !115

bb.hq:                                            ; preds = %_ZN7meshoptL23quadricReduceAttributesERNS_7QuadricERKS0_PKNS_11QuadricGradEm.exit.i
  br i1 %.not70.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.dbr = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %.06245.i ; 4 uses
  %.sroa.08.0.copyload.i = load float, ptr %i.dbr, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.i589 = getelementptr inbounds nuw i8, ptr %i.dbr, i64 4
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i589, align 4, !tbaa !44
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dbr, i64 8
  %.sroa.69.0.copyload.i = load float, ptr %.sroa.69.0..sroa_idx.i, align 4, !tbaa !44
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dbr, i64 12
  %.sroa.710.0.copyload.i = load float, ptr %.sroa.710.0..sroa_idx.i, align 4, !tbaa !44
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hm
  %.sroa.33.1.i = phi float [ %i.cza, %bb.hm ], [ %i.dbl, %bb.hq ], [ %i.dbl, %bb.hr ] ; 4 uses
  %.sroa.08.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.08.0.copyload.i, %bb.hr ] ; 2 uses
  %.sroa.5.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.5.0.copyload.i, %bb.hr ]
  %.sroa.69.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.69.0.copyload.i, %bb.hr ]
  %.sroa.710.0.i = phi float [ 0.000000e+00, %bb.hm ], [ 0.000000e+00, %bb.hq ], [ %.sroa.710.0.copyload.i, %bb.hr ]
  %i.dbs = phi <8 x float> [ %i.czs, %bb.hm ], [ %i.dbm, %bb.hq ], [ %i.dbm, %bb.hr ] ; 9 uses
  %i.dbt = fneg float %.sroa.33.1.i
  %i.dbu = extractelement <8 x float> %i.dbs, i64 4
  %i.dbv = fneg float %i.dbu
  %i.dbw = extractelement <8 x float> %i.dbs, i64 3
  %i.dbx = fneg float %i.dbw
  %i.dby = fmul float %i.czr, f0x358637BD         ; 4 uses
  %i.dbz = extractelement <8 x float> %i.dbs, i64 6
  %i.dca = extractelement <8 x float> %i.dbs, i64 7 ; 4 uses
  %i.dcb = fdiv float %i.dbz, %i.dca              ; 4 uses
  %i.dcc = fneg <8 x float> %i.dbs                ; 2 uses
  %i.dcd = shufflevector <8 x float> %i.dcc, <8 x float> poison, <2 x i32> <i32 5, i32 6>
  %i.dce = insertelement <2 x float> poison, float %i.dcb, i64 0
  %i.dcf = shufflevector <2 x float> %i.dce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dcg = shufflevector <8 x float> %i.dbs, <8 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dcd, <2 x float> %i.dcf, <2 x float> %i.dcg) ; 3 uses
  %i.dci = extractelement <2 x float> %i.dch, i64 1 ; 3 uses
  %i.dcj = fneg float %i.dcb
  %i.dck = call float @llvm.fmuladd.f32(float %i.dcb, float %.sroa.33.1.i, float %i.dbv) ; 3 uses
  %i.dcl = fdiv float %i.dck, %i.dci
  %i.dcm = fneg float %.sroa.710.0.i
  %i.dcn = fdiv float %.sroa.08.0.i, %i.dca       ; 3 uses
  %i.dco = shufflevector <2 x float> %i.dch, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.dcp = shufflevector <8 x float> %i.dco, <8 x float> %i.dbs, <2 x i32> <i32 0, i32 13>
  %i.dcq = shufflevector <8 x float> %i.dco, <8 x float> %i.dbs, <2 x i32> <i32 1, i32 15>
  %i.dcr = fdiv <2 x float> %i.dcp, %i.dcq        ; 4 uses
  %i.dcs = extractelement <2 x float> %i.dcr, i64 1 ; 2 uses
  %i.dct = fneg float %i.dcs
  %i.dcu = call float @llvm.fmuladd.f32(float %i.dcs, float %.sroa.33.1.i, float %i.dbx)
  %i.dcv = extractelement <2 x float> %i.dcr, i64 0
  %i.dcw = fneg float %i.dcv                      ; 2 uses
  %i.dcx = call float @llvm.fmuladd.f32(float %i.dcw, float %i.dck, float %i.dcu) ; 2 uses
  %i.dcy = fneg float %.sroa.08.0.i               ; 3 uses
  %i.dcz = call float @llvm.fmuladd.f32(float %i.dcy, float %i.dcb, float %.sroa.5.0.i) ; 2 uses
  %i.dda = shufflevector <8 x float> %i.dcc, <8 x float> poison, <2 x i32> <i32 poison, i32 5>
  %i.ddb = insertelement <2 x float> %i.dda, float %i.dcy, i64 0
  %i.ddc = shufflevector <2 x float> %i.dcr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ddd = shufflevector <8 x float> %i.dbs, <8 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.dde = insertelement <2 x float> %i.ddd, float %.sroa.69.0.i, i64 0
  %i.ddf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddb, <2 x float> %i.ddc, <2 x float> %i.dde)
  %i.ddg = shufflevector <2 x float> %i.dch, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ddh = insertelement <2 x float> %i.ddg, float %i.dcz, i64 0
  %i.ddi = fneg <2 x float> %i.ddh                ; 2 uses
  %i.ddj = shufflevector <2 x float> %i.dcr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ddk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ddi, <2 x float> %i.ddj, <2 x float> %i.ddf) ; 2 uses
  %i.ddl = extractelement <2 x float> %i.ddk, i64 1 ; 3 uses
  %i.ddm = fdiv float %i.dcx, %i.ddl
  %i.ddn = fdiv float %i.dcz, %i.dci              ; 2 uses
  %i.ddo = extractelement <2 x float> %i.ddk, i64 0 ; 2 uses
  %i.ddp = fdiv float %i.ddo, %i.ddl              ; 2 uses
  %i.ddq = call float @llvm.fmuladd.f32(float %i.dcy, float %i.dcn, float 0.000000e+00)
  %i.ddr = extractelement <2 x float> %i.ddi, i64 0
  %i.dds = call float @llvm.fmuladd.f32(float %i.ddr, float %i.ddn, float %i.ddq)
  %i.ddt = fneg float %i.ddo
  %i.ddu = call float @llvm.fmuladd.f32(float %i.ddt, float %i.ddp, float %i.dds) ; 2 uses
  %i.ddv = fneg float %i.dcn
  %i.ddw = call float @llvm.fmuladd.f32(float %i.dcn, float %.sroa.33.1.i, float %i.dcm)
  %i.ddx = fneg float %i.ddn                      ; 2 uses
  %i.ddy = call float @llvm.fmuladd.f32(float %i.ddx, float %i.dck, float %i.ddw)
  %i.ddz = fneg float %i.ddp                      ; 2 uses
  %i.dea = call float @llvm.fmuladd.f32(float %i.ddz, float %i.dcx, float %i.ddy)
  %i.deb = call float @llvm.fabs.f32(float %i.ddu)
  %i.dec = fcmp ogt float %i.deb, %i.dby
  %i.ded = fdiv float %i.dea, %i.ddu
  %i.dee = select i1 %i.dec, float %i.ded, float 0.000000e+00 ; 3 uses
  %i.def = fdiv float %i.dbt, %i.dca
  %i.deg = call float @llvm.fmuladd.f32(float %i.ddz, float %i.dee, float %i.ddm) ; 8 uses
  %i.deh = call float @llvm.fmuladd.f32(float %i.dcw, float %i.deg, float %i.dcl)
  %i.dei = call float @llvm.fmuladd.f32(float %i.ddx, float %i.dee, float %i.deh) ; 7 uses
  %i.dej = call float @llvm.fmuladd.f32(float %i.dcj, float %i.dei, float %i.def)
  %i.dek = call float @llvm.fmuladd.f32(float %i.dct, float %i.deg, float %i.dej)
  %i.del = call float @llvm.fmuladd.f32(float %i.ddv, float %i.dee, float %i.dek) ; 6 uses
  %i.dem = call float @llvm.fabs.f32(float %i.dca)
  %i.den = fcmp ogt float %i.dem, %i.dby
  %i.deo = call float @llvm.fabs.f32(float %i.dci)
  %i.dep = fcmp ogt float %i.deo, %i.dby
  %or.cond.i.i = select i1 %i.den, i1 %i.dep, i1 false
  %i.deq = call float @llvm.fabs.f32(float %i.ddl)
  %i.der = fcmp ogt float %i.deq, %i.dby
  %i.des = select i1 %or.cond.i.i, i1 %i.der, i1 false
  br i1 %i.des, label %bb.ht, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

bb.ht:                                            ; preds = %bb.hs
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.06245.i ; 2 uses
  %i.deu = load i32, ptr %i.det, align 4, !tbaa !28 ; 3 uses
  %i.dev = zext i32 %i.deu to i64
  %i.dew = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dev
  %i.dex = add nuw nsw i64 %.06245.i, 1
  %i.dey = and i64 %i.dex, 4294967295
  %i.dez = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.dey ; 2 uses
  %i.dfa = load i32, ptr %i.dez, align 4, !tbaa !28 ; 2 uses
  %i.dfb = sub i32 %i.dfa, %i.deu
  %i.dfc = zext i32 %i.dfb to i64
  %.not.i.i590 = icmp eq i32 %i.dfa, %i.deu
  br i1 %.not.i.i590, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i591

.lr.ph.i.i591:                                    ; preds = %bb.ht, %.lr.ph.i.i591
  %.02.i.i = phi float [ %i.dgk, %.lr.ph.i.i591 ], [ 0.000000e+00, %bb.ht ] ; 2 uses
  %.0521.i.i = phi i64 [ %i.dgl, %.lr.ph.i.i591 ], [ 0, %bb.ht ] ; 2 uses
  %i.dfd = getelementptr inbounds nuw [8 x i8], ptr %i.dew, i64 %.0521.i.i ; 2 uses
  %i.dfe = load i32, ptr %i.dfd, align 4, !tbaa !39
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfd, i64 4
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !40
  %i.dfh = zext i32 %i.dfe to i64
  %i.dfi = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dfh ; 3 uses
  %i.dfj = zext i32 %i.dfg to i64
  %i.dfk = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dfj ; 3 uses
  %i.dfl = load float, ptr %i.dfi, align 4, !tbaa !49
  %i.dfm = fsub float %i.dfl, %i.cyy              ; 2 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfi, i64 4
  %i.dfo = load float, ptr %i.dfn, align 4, !tbaa !50
  %i.dfp = fsub float %i.dfo, %18                 ; 2 uses
  %i.dfq = fmul float %i.dfp, %i.dfp
  %i.dfr = call float @llvm.fmuladd.f32(float %i.dfm, float %i.dfm, float %i.dfq)
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfi, i64 8
  %i.dft = load float, ptr %i.dfs, align 4, !tbaa !46
  %i.dfu = fsub float %i.dft, %19                 ; 2 uses
  %i.dfv = call float @llvm.fmuladd.f32(float %i.dfu, float %i.dfu, float %i.dfr) ; 2 uses
  %i.dfw = load float, ptr %i.dfk, align 4, !tbaa !49
  %i.dfx = fsub float %i.dfw, %i.cyy              ; 2 uses
  %i.dfy = getelementptr inbounds nuw i8, ptr %i.dfk, i64 4
  %i.dfz = load float, ptr %i.dfy, align 4, !tbaa !50
  %i.dga = fsub float %i.dfz, %18                 ; 2 uses
  %i.dgb = fmul float %i.dga, %i.dga
  %i.dgc = call float @llvm.fmuladd.f32(float %i.dfx, float %i.dfx, float %i.dgb)
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.dfk, i64 8
  %i.dge = load float, ptr %i.dgd, align 4, !tbaa !46
  %i.dgf = fsub float %i.dge, %19                 ; 2 uses
  %i.dgg = call float @llvm.fmuladd.f32(float %i.dgf, float %i.dgf, float %i.dgc) ; 2 uses
  %i.dgh = fcmp olt float %.02.i.i, %i.dfv
  %i.dgi = select i1 %i.dgh, float %i.dfv, float %.02.i.i ; 2 uses
  %i.dgj = fcmp olt float %i.dgi, %i.dgg
  %i.dgk = select i1 %i.dgj, float %i.dgg, float %i.dgi ; 2 uses
  %i.dgl = add nuw nsw i64 %.0521.i.i, 1          ; 2 uses
  %exitcond.not.i74.i = icmp eq i64 %i.dgl, %i.dfc
  br i1 %exitcond.not.i74.i, label %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, label %.lr.ph.i.i591, !llvm.loop !116

_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i: ; preds = %.lr.ph.i.i591, %bb.ht
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.ht ], [ %i.dgk, %.lr.ph.i.i591 ]
  %i.dgm = call noundef float @sqrtf(float noundef %.0.lcssa.i.i) #14 ; 2 uses
  %i.dgn = fsub float %i.del, %i.cyy              ; 2 uses
  %i.dgo = fsub float %i.dei, %18                 ; 2 uses
  %i.dgp = fmul float %i.dgo, %i.dgo
  %i.dgq = call float @llvm.fmuladd.f32(float %i.dgn, float %i.dgn, float %i.dgp)
  %i.dgr = fsub float %i.deg, %19                 ; 2 uses
  %i.dgs = call float @llvm.fmuladd.f32(float %i.dgr, float %i.dgr, float %i.dgq)
  %i.dgt = fmul float %i.dgm, %i.dgm
  %i.dgu = fcmp ogt float %i.dgs, %i.dgt
  br i1 %i.dgu, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hu

bb.hu:                                            ; preds = %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i
  %i.dgv = load i32, ptr %i.det, align 4, !tbaa !28 ; 3 uses
  %i.dgw = zext i32 %i.dgv to i64
  %i.dgx = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dgw
  %i.dgy = load i32, ptr %i.dez, align 4, !tbaa !28 ; 2 uses
  %i.dgz = sub i32 %i.dgy, %i.dgv
  %i.dha = zext i32 %i.dgz to i64
  %.not1.not.i.i592 = icmp eq i32 %i.dgy, %i.dgv
  br i1 %.not1.not.i.i592, label %.loopexit.i593, label %.lr.ph.i75.i.preheader

.lr.ph.i75.i.preheader:                           ; preds = %bb.hu
  %i.dhb = shufflevector <2 x float> %i.cyv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dhc = insertelement <4 x float> %i.dhb, float %19, i64 2
  %i.dhd = insertelement <4 x float> %i.dhc, float %i.dei, i64 3 ; 2 uses
  %i.dhe = insertelement <4 x float> %i.dhd, float %i.deg, i64 3
  %i.dhf = shufflevector <4 x float> %i.dhe, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  br label %.lr.ph.i75.i

bb.hv:                                            ; preds = %.lr.ph.i75.i
  %i.dhg = add nuw nsw i64 %.0252.i.i, 1          ; 2 uses
  %exitcond.not.i76.i = icmp eq i64 %i.dhg, %i.dha
  br i1 %exitcond.not.i76.i, label %.loopexit.i593, label %.lr.ph.i75.i, !llvm.loop !117

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.preheader, %bb.hv
  %.0252.i.i = phi i64 [ %i.dhg, %bb.hv ], [ 0, %.lr.ph.i75.i.preheader ] ; 2 uses
  %i.dhh = getelementptr inbounds nuw [8 x i8], ptr %i.dgx, i64 %.0252.i.i ; 2 uses
  %i.dhi = load i32, ptr %i.dhh, align 4, !tbaa !39
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhh, i64 4
  %i.dhk = load i32, ptr %i.dhj, align 4, !tbaa !40
  %i.dhl = zext i32 %i.dhi to i64
  %i.dhm = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dhl
  %i.dhn = zext i32 %i.dhk to i64
  %i.dho = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %i.dhn
  %i.dhp = load <3 x float>, ptr %i.dho, align 4, !tbaa !44
  %i.dhq = shufflevector <3 x float> %i.dhp, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dhr = load <3 x float>, ptr %i.dhm, align 4, !tbaa !44 ; 3 uses
  %i.dhs = shufflevector <3 x float> %i.dhr, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.dht = fsub <4 x float> %i.dhq, %i.dhs        ; 5 uses
  %i.dhu = extractelement <3 x float> %i.dhr, i64 0
  %i.dhv = fsub float %i.del, %i.dhu              ; 2 uses
  %i.dhw = fsub <4 x float> %i.dhd, %i.dhs        ; 2 uses
  %i.dhx = shufflevector <3 x float> %i.dhr, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dhy = fsub <4 x float> %i.dhf, %i.dhx        ; 2 uses
  %i.dhz = fneg <4 x float> %i.dhw
  %i.dia = shufflevector <4 x float> %i.dht, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.dib = fmul <4 x float> %i.dia, %i.dhz
  %i.dic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dht, <4 x float> %i.dhy, <4 x float> %i.dib) ; 4 uses
  %i.did = extractelement <4 x float> %i.dhy, i64 3
  %i.die = fneg float %i.did
  %i.dif = extractelement <4 x float> %i.dht, i64 0 ; 2 uses
  %i.dig = fmul float %i.dif, %i.die
  %i.dih = extractelement <4 x float> %i.dht, i64 2
  %i.dii = call float @llvm.fmuladd.f32(float %i.dih, float %i.dhv, float %i.dig) ; 3 uses
  %i.dij = fneg float %i.dhv
  %i.dik = extractelement <4 x float> %i.dht, i64 1
  %i.dil = fmul float %i.dik, %i.dij
  %i.dim = extractelement <4 x float> %i.dhw, i64 3
  %i.din = call float @llvm.fmuladd.f32(float %i.dif, float %i.dim, float %i.dil) ; 3 uses
  %i.dio = extractelement <4 x float> %i.dic, i64 2 ; 3 uses
  %i.dip = fmul float %i.dio, %i.dii
  %i.diq = extractelement <4 x float> %i.dic, i64 1 ; 3 uses
  %i.dir = extractelement <4 x float> %i.dic, i64 3 ; 3 uses
  %i.dis = call float @llvm.fmuladd.f32(float %i.diq, float %i.dir, float %i.dip)
  %i.dit = extractelement <4 x float> %i.dic, i64 0 ; 3 uses
  %i.diu = call float @llvm.fmuladd.f32(float %i.dit, float %i.din, float %i.dis)
  %i.div = fmul float %i.dio, %i.dio
  %i.diw = call float @llvm.fmuladd.f32(float %i.diq, float %i.diq, float %i.div)
  %i.dix = call float @llvm.fmuladd.f32(float %i.dit, float %i.dit, float %i.diw)
  %i.diy = fmul float %i.dii, %i.dii
  %i.diz = call float @llvm.fmuladd.f32(float %i.dir, float %i.dir, float %i.diy)
  %i.dja = call float @llvm.fmuladd.f32(float %i.din, float %i.din, float %i.diz)
  %i.djb = fmul float %i.dix, %i.dja
  %i.djc = call float @sqrtf(float noundef %i.djb) #14
  %i.djd = fmul float %i.djc, 2.500000e-01
  %i.dje = fcmp ugt float %i.diu, %i.djd
  br i1 %i.dje, label %bb.hv, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

.loopexit.i593:                                   ; preds = %bb.hv, %bb.hu
  %i.djf = fcmp oeq float %.sroa.50.0.copyload.i, 0.000000e+00
  %i.djg = fdiv float 1.000000e+00, %.sroa.50.0.copyload.i
  %i.djh = select i1 %i.djf, float 0.000000e+00, float %i.djg ; 2 uses
  %i.dji = extractelement <2 x float> %i.czb, i64 0
  %i.djj = call float @llvm.fmuladd.f32(float %i.dji, float %i.dei, float %.sroa.33.0.copyload.i)
  %i.djk = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %i.deg, float %.sroa.38.0.copyload.i)
  %i.djl = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.del, float %.sroa.43.0.copyload.i)
  %i.djm = fmul float %i.djj, 2.000000e+00
  %i.djn = insertelement <4 x float> poison, float %.sroa.48.0.copyload.i, i64 0
  %i.djo = insertelement <4 x float> %i.djn, float %i.djk, i64 1
  %i.djp = insertelement <4 x float> %i.djo, float %i.djl, i64 2
  %i.djq = insertelement <4 x float> %i.djp, float %.sroa.33.0.copyload.i, i64 3
  %i.djr = fmul <4 x float> %i.djq, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.djs = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.del, float %i.djm)
  %i.djt = insertelement <4 x float> poison, float %i.djs, i64 0
  %i.dju = shufflevector <4 x float> %i.djt, <4 x float> %i.czk, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.djv = shufflevector <4 x float> %i.dju, <4 x float> %i.czc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.djw = insertelement <4 x float> poison, float %i.del, i64 0
  %i.djx = insertelement <4 x float> %i.djw, float %i.dei, i64 1
  %i.djy = insertelement <4 x float> %i.djx, float %i.deg, i64 2
  %i.djz = shufflevector <2 x float> %i.cyv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dka = shufflevector <4 x float> %i.djy, <4 x float> %i.djz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dkb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.djv, <4 x float> %i.dka, <4 x float> %i.djr) ; 4 uses
  %i.dkc = extractelement <4 x float> %i.dkb, i64 0
  %i.dkd = extractelement <4 x float> %i.dkb, i64 1
  %i.dke = call float @llvm.fmuladd.f32(float %i.dkd, float %i.dei, float %i.dkc)
  %i.dkf = extractelement <4 x float> %i.dkb, i64 2
  %i.dkg = call noundef float @llvm.fmuladd.f32(float %i.dkf, float %i.deg, float %i.dke)
  %i.dkh = call float @llvm.fabs.f32(float %i.dkg)
  %i.dki = fmul float %i.djh, %i.dkh
  %i.dkj = call float @llvm.fmuladd.f32(float %.sroa.28.0.copyload.i, float %19, float %.sroa.38.0.copyload.i)
  %i.dkk = call float @llvm.fmuladd.f32(float %.sroa.23.0.copyload.i, float %i.cyy, float %.sroa.43.0.copyload.i)
  %i.dkl = extractelement <4 x float> %i.dkb, i64 3
  %i.dkm = fmul float %i.dkl, 2.000000e+00
  %i.dkn = fmul float %i.dkj, 2.000000e+00
  %i.dko = fmul float %i.dkk, 2.000000e+00
  %i.dkp = call float @llvm.fmuladd.f32(float %.sroa.011.0.copyload.i, float %i.cyy, float %i.dkm)
  %i.dkq = extractelement <2 x float> %i.czj, i64 0
  %i.dkr = call float @llvm.fmuladd.f32(float %i.dkq, float %18, float %i.dkn)
  %i.dks = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %19, float %i.dko)
  %i.dkt = call float @llvm.fmuladd.f32(float %i.dkp, float %i.cyy, float %.sroa.48.0.copyload.i)
  %i.dku = call float @llvm.fmuladd.f32(float %i.dkr, float %18, float %i.dkt)
  %i.dkv = call noundef float @llvm.fmuladd.f32(float %i.dks, float %19, float %i.dku)
  %i.dkw = call float @llvm.fabs.f32(float %i.dkv)
  %i.dkx = fmul float %i.djh, %i.dkw
  %i.dky = call float @llvm.fmuladd.f32(float %i.dkx, float 1.500000e+00, float f0x358637BD)
  %i.dkz = fcmp ogt float %i.dki, %i.dky
  br i1 %i.dkz, label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i, label %bb.hw

bb.hw:                                            ; preds = %.loopexit.i593
  store float %i.del, ptr %i.cys, align 4, !tbaa !44
  store float %i.dei, ptr %i.cyu, align 4, !tbaa !44
  store float %i.deg, ptr %i.cyw, align 4, !tbaa !44
  br label %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i

_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i: ; preds = %.lr.ph.i75.i, %bb.hw, %.loopexit.i593, %_ZN7meshoptL21getNeighborhoodRadiusERKNS_13EdgeAdjacencyEPKNS_7Vector3Ej.exit.i, %bb.hs, %bb.hl, %bb.hj, %bb.hj, %bb.hj, %bb.hi
  %i.dla = add nuw i64 %.06245.i, 1               ; 2 uses
  %exitcond.not.i586 = icmp eq i64 %i.dla, %.0703
  br i1 %exitcond.not.i586, label %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, label %bb.hi, !llvm.loop !118

.lr.ph823:                                        ; preds = %.lr.ph823, %.lr.ph823.preheader.new
  %.0331821 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %i.dls, %.lr.ph823 ] ; 3 uses
  %niter1383 = phi i64 [ 0, %.lr.ph823.preheader.new ], [ %niter1383.next.1, %.lr.ph823 ]
  %i.dlb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331821
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !28
  %i.dld = zext i32 %i.dlc to i64                 ; 2 uses
  %i.dle = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.dld
  store i8 1, ptr %i.dle, align 1, !tbaa !29
  %i.dlf = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dld
  %i.dlg = load i32, ptr %i.dlf, align 4, !tbaa !28
  %i.dlh = zext i32 %i.dlg to i64
  %i.dli = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.dlh
  store i8 1, ptr %i.dli, align 1, !tbaa !29
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0331821
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 4
  %i.dll = load i32, ptr %i.dlk, align 4, !tbaa !28
  %i.dlm = zext i32 %i.dll to i64                 ; 2 uses
  %i.dln = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.dlm
  store i8 1, ptr %i.dln, align 1, !tbaa !29
  %i.dlo = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.dlm
  %i.dlp = load i32, ptr %i.dlo, align 4, !tbaa !28
  %i.dlq = zext i32 %i.dlp to i64
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.dlq
  store i8 1, ptr %i.dlr, align 1, !tbaa !29
  %i.dls = add nuw i64 %.0331821, 2               ; 2 uses
  %niter1383.next.1 = add nuw i64 %niter1383, 2   ; 2 uses
  %niter1383.ncmp.1 = icmp eq i64 %niter1383.next.1, %unroll_iter1382
  br i1 %niter1383.ncmp.1, label %._crit_edge824.loopexit.unr-lcssa, label %.lr.ph823, !llvm.loop !119

_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit: ; preds = %_ZN7meshoptL16hasTriangleFlipsERKNS_13EdgeAdjacencyEPKNS_7Vector3EjRS4_.exit.i
  br i1 %.not403, label %.lr.ph.i595, label %.lr.ph91.i

.lr.ph.i595:                                      ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit
  %i.dlt = lshr i64 %5, 2
  %.not54.i596 = icmp eq ptr %.0379, null
  %.not55.i = icmp eq ptr %10, null
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dlw = load float, ptr %i.b, align 4
  %i.dlx = load float, ptr %i.dlu, align 4
  %i.dly = load float, ptr %i.dlv, align 4
  br label %.lr.ph.split.us.i597

.lr.ph.split.us.i597:                             ; preds = %bb.ie, %.lr.ph.i595
  %.05060.us.i = phi i64 [ %i.dmz, %bb.ie ], [ 0, %.lr.ph.i595 ] ; 6 uses
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.bey, i64 %.05060.us.i
  %i.dma = load i8, ptr %i.dlz, align 1, !tbaa !29
  %.not.us.i = icmp eq i8 %i.dma, 0
  br i1 %.not.us.i, label %bb.ie, label %bb.hx

bb.hx:                                            ; preds = %.lr.ph.split.us.i597
  br i1 %.not54.i596, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.dmb = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.05060.us.i
  %i.dmc = load i32, ptr %i.dmb, align 4, !tbaa !28
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.dmd = trunc i64 %.05060.us.i to i32
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.dme = phi i32 [ %i.dmc, %bb.hy ], [ %i.dmd, %bb.hz ] ; 2 uses
  br i1 %.not55.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.dmf = zext i32 %i.dme to i64
  %i.dmg = getelementptr inbounds nuw i8, ptr %10, i64 %i.dmf
  %i.dmh = load i8, ptr %i.dmg, align 1, !tbaa !29
  %i.dmi = and i8 %i.dmh, 1
  %.not56.us.i = icmp eq i8 %i.dmi, 0
  br i1 %.not56.us.i, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.05060.us.i
  %i.dmk = load i8, ptr %i.dmj, align 1, !tbaa !29
  %.not57.us.i = icmp eq i8 %i.dmk, 4
  br i1 %.not57.us.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.dml = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.05060.us.i ; 3 uses
  %i.dmm = zext i32 %i.dme to i64
  %i.dmn = mul i64 %i.dlt, %i.dmm
  %i.dmo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dmn ; 3 uses
  %i.dmp = load float, ptr %i.dml, align 4, !tbaa !49
  %i.dmq = call float @llvm.fmuladd.f32(float %i.dmp, float %i.zf, float %i.dlw)
  store float %i.dmq, ptr %i.dmo, align 4, !tbaa !44
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dml, i64 4
  %i.dms = load float, ptr %i.dmr, align 4, !tbaa !50
  %i.dmt = call float @llvm.fmuladd.f32(float %i.dms, float %i.zf, float %i.dlx)
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmo, i64 4
  store float %i.dmt, ptr %i.dmu, align 4, !tbaa !44
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dml, i64 8
  %i.dmw = load float, ptr %i.dmv, align 4, !tbaa !46
  %i.dmx = call float @llvm.fmuladd.f32(float %i.dmw, float %i.zf, float %i.dly)
  %i.dmy = getelementptr inbounds nuw i8, ptr %i.dmo, i64 8
  store float %i.dmx, ptr %i.dmy, align 4, !tbaa !44
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib, %.lr.ph.split.us.i597
  %i.dmz = add nuw i64 %.05060.us.i, 1            ; 2 uses
  %exitcond79.not.i = icmp eq i64 %i.dmz, %.0703
  br i1 %exitcond79.not.i, label %_ZN7meshoptL16finalizeVerticesEPfmS0_mPKfmmPKNS_7Vector3ES2_PKjS7_fS2_PKhS9_S9_.exit, label %.lr.ph.split.us.i597, !llvm.loop !120

.lr.ph91.i:                                       ; preds = %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit, %.loopexit75.i
  %.090.i599 = phi i64 [ %i.dph, %.loopexit75.i ], [ 0, %_ZN7meshoptL14solvePositionsEPNS_7Vector3EmPKNS_7QuadricEPKNS_11QuadricGradES4_S7_mPKjS9_RKNS_13EdgeAdjacencyEPKhSE_.exit ] ; 12 uses
  %i.dna = getelementptr inbounds nuw i8, ptr %i.bey, i64 %.090.i599
  %i.dnb = load i8, ptr %i.dna, align 1, !tbaa !29
  %.not.i600 = icmp eq i8 %i.dnb, 0
  br i1 %.not.i600, label %.loopexit75.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph91.i
  %i.dnc = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.090.i599
  %i.dnd = load i32, ptr %i.dnc, align 4, !tbaa !28
  %i.dne = zext i32 %i.dnd to i64
  %.not71.i = icmp eq i64 %.090.i599, %i.dne
  br i1 %.not71.i, label %.preheader.i603, label %.loopexit75.i

.preheader.i603:                                  ; preds = %bb.if
  %i.dnf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.090.i599
  %i.dng = trunc nuw i64 %.090.i599 to i32        ; 3 uses
  %i.dnh = getelementptr inbounds nuw [12 x i8], ptr %i.zc, i64 %.090.i599 ; 3 uses
  %i.dni = getelementptr inbounds nuw i8, ptr %i.dnh, i64 4
  %i.dnj = getelementptr inbounds nuw i8, ptr %i.dnh, i64 8
  %.065.in78.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %.090.i599
  %i.dnk = mul i64 %.090.i599, %.0330
  %invariant.gep88.i = getelementptr [4 x i8], ptr %.0352, i64 %i.dnk
  br label %bb.ig

bb.ig:                                            ; preds = %bb.im, %.preheader.i603
  %.06787.i = phi i64 [ 0, %.preheader.i603 ], [ %i.dpg, %bb.im ] ; 5 uses
  %i.dnl = load i8, ptr %i.dnf, align 1, !tbaa !29
  %i.dnm = icmp eq i8 %i.dnl, 3
  br i1 %i.dnm, label %bb.ih, label %.loopexit.i604

bb.ih:                                            ; preds = %bb.ig
  %invariant.gep.i = getelementptr [4 x i8], ptr %.0352, i64 %.06787.i
  %.06579.i = load i32, ptr %.065.in78.i, align 4, !tbaa !28 ; 2 uses
  %i.dnn = zext i32 %.06579.i to i64              ; 2 uses
  %.not7280.i = icmp eq i64 %.090.i599, %i.dnn
  br i1 %.not7280.i, label %.loopexit.i604, label %.lr.ph.i607

.lr.ph.i607:                                      ; preds = %bb.ih
  %gep89.i = getelementptr [4 x i8], ptr %invariant.gep88.i, i64 %.06787.i
  %i.dno = load float, ptr %gep89.i, align 4, !tbaa !44
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ik, %.lr.ph.i607
  %i.dnp = phi i64 [ %i.dnn, %.lr.ph.i607 ], [ %i.dob, %bb.ik ] ; 3 uses
  %.06582.i = phi i32 [ %.06579.i, %.lr.ph.i607 ], [ %.065.i, %bb.ik ]
  %.06681.i = phi i32 [ %i.dng, %.lr.ph.i607 ], [ %.1.i610, %bb.ik ] ; 3 uses
  %i.dnq = mul i64 %i.dnp, %.0330
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dnq
  %i.dnr = load float, ptr %gep.i, align 4, !tbaa !44
  %i.dns = fcmp une float %i.dnr, %i.dno
  %.not74.i = icmp eq i32 %.06681.i, -1
  %or.cond.i608 = select i1 %i.dns, i1 true, i1 %.not74.i
  br i1 %or.cond.i608, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.dnt = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dnp
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.dnt, i64 40
  %i.dnv = load float, ptr %i.dnu, align 4, !tbaa !48
  %i.dnw = zext i32 %.06681.i to i64
  %i.dnx = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.dnw
  %i.dny = getelementptr inbounds nuw i8, ptr %i.dnx, i64 40
  %i.dnz = load float, ptr %i.dny, align 4, !tbaa !48
  %i.doa = fcmp ogt float %i.dnv, %i.dnz
  %spec.select.i609 = select i1 %i.doa, i32 %.06582.i, i32 %.06681.i
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.1.i610 = phi i32 [ -1, %bb.ii ], [ %spec.select.i609, %bb.ij ] ; 2 uses
  %.065.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.dnp
  %.065.i = load i32, ptr %.065.in.i, align 4, !tbaa !28 ; 2 uses
  %i.dob = zext i32 %.065.i to i64                ; 2 uses
  %.not72.i = icmp eq i64 %.090.i599, %i.dob
  br i1 %.not72.i, label %.loopexit.i604, label %bb.ii, !llvm.loop !121

.loopexit.i604:                                   ; preds = %bb.ik, %bb.ih, %bb.ig
  %.2.i605 = phi i32 [ -1, %bb.ig ], [ %i.dng, %bb.ih ], [ %.1.i610, %bb.ik ] ; 2 uses
end_hunk_0
