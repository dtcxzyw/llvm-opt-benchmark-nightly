Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeLayout?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm10codelayout19computeExtTspLayoutENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE:bb.a
  %i.vd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i157.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i159.i.i = icmp eq ptr %i.vc, %i.uk
  br i1 %.not.i.i.i.i.i.i.i159.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26.i.i.i.i160.i.i, label %.lr.ph.i.i.i.i.i.i.i156.i.i, !llvm.loop !6

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26.i.i.i.i160.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i156.i.i, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i152.i.i
  %.0.lcssa.i.i.i.i.i.i.i161.i.i = phi ptr [ %i.va, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i.i152.i.i ], [ %i.vd, %.lr.ph.i.i.i.i.i.i.i156.i.i ]
  %i.ve = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161.i.i, i64 16
  %.not.i27.i.i.i.i162.i.i = icmp eq ptr %.val.i.i.i.i151.i.i, null
  br i1 %.not.i27.i.i.i.i162.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i163.i.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26.i.i.i.i160.i.i
  %i.vf = load ptr, ptr %i.ul, align 8, !tbaa !114
  %i.vg = ptrtoint ptr %i.vf to i64
  %i.vh = sub i64 %i.vg, %i.uq
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i151.i.i, i64 noundef %i.vh) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i163.i.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i163.i.i: ; preds = %bb.ch, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26.i.i.i.i160.i.i
  store ptr %i.va, ptr %i.ui, align 8, !tbaa !134
  store ptr %i.ve, ptr %i.uj, align 8, !tbaa !133
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.va, i64 %i.uy
  store ptr %i.vi, ptr %i.ul, align 8, !tbaa !114
  br label %_ZN12_GLOBAL__N_19ChainEdge10appendJumpEPNS_5JumpTE.exit.i.i

_ZN12_GLOBAL__N_19ChainEdge10appendJumpEPNS_5JumpTE.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16ChainTEPNS1_9ChainEdgeEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i.i163.i.i, %bb.ce, %_ZNSt6vectorIPN12_GLOBAL__N_15JumpTESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.br
  %i.vj = getelementptr inbounds nuw i8, ptr %.sroa.03.055.i.i, i64 8 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.vj, %.val69.i.i
  br i1 %.not36.i.i, label %._crit_edge58.i.i, label %bb.bo

_ZN12_GLOBAL__N_110ExtTSPImplC2EN4llvm8ArrayRefImEES3_NS2_INS1_10codelayout9EdgeCountEEE.exit: ; preds = %._crit_edge62.i.i, %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %.val44.i.i = load ptr, ptr %i.c, align 8, !tbaa !85, !noalias !298 ; 3 uses
  %.val41.i.i = load ptr, ptr %i.mf, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %.not6367.i.i = icmp eq ptr %.val44.i.i, %.val41.i.i
  br i1 %.not6367.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %_ZN12_GLOBAL__N_110ExtTSPImplC2EN4llvm8ArrayRefImEES3_NS2_INS1_10codelayout9EdgeCountEEE.exit
  %i.vk = load ptr, ptr %i.a, align 8, !tbaa !71, !noalias !298
  %i.vl = load ptr, ptr %i.b, align 8, !noalias !298
  br label %bb.ci

._crit_edge.i.i10:                                ; preds = %bb.cl
  %.val43.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !85, !noalias !298 ; 3 uses
  %.val40.pre.i.i = load ptr, ptr %i.mf, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %.not6472.i.i = icmp eq ptr %.val43.pre.i.i, %.val40.pre.i.i
  br i1 %.not6472.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i, label %.lr.ph75.i.i

bb.ci:                                            ; preds = %bb.cl, %.lr.ph.i.i8
  %.sroa.061.068.i.i = phi ptr [ %.val44.i.i, %.lr.ph.i.i8 ], [ %i.wh, %bb.cl ] ; 4 uses
  %i.vm = load i64, ptr %.sroa.061.068.i.i, align 8, !tbaa !116, !noalias !298
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.vk, i64 %i.vm ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !90, !noalias !298
  %i.vq = load ptr, ptr %i.vn, align 8, !tbaa !81, !noalias !298 ; 2 uses
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs
  %i.vu = icmp eq i64 %i.vt, 8
  br i1 %i.vu, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.vv = load i64, ptr %i.vq, align 8, !tbaa !42, !noalias !298 ; 3 uses
  %i.vw = getelementptr inbounds nuw [24 x i8], ptr %i.vl, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !90, !noalias !298
  %i.vz = load ptr, ptr %i.vw, align 8, !tbaa !81, !noalias !298
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = icmp ne i64 %i.wc, 8
  %.not38.i.i = icmp eq i64 %i.vv, 0
  %or.cond62.i.i = or i1 %.not38.i.i, %i.wd
  br i1 %or.cond62.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.we = getelementptr inbounds nuw [112 x i8], ptr %.val44.i.i, i64 %i.vv ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.061.068.i.i, i64 48
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !299, !noalias !298
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 56
  store ptr %.sroa.061.068.i.i, ptr %i.wg, align 8, !tbaa !300, !noalias !298
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.061.068.i.i, i64 112 ; 2 uses
  %.not63.i.i9 = icmp eq ptr %i.wh, %.val41.i.i
  br i1 %.not63.i.i9, label %._crit_edge.i.i10, label %bb.ci

._crit_edge76.i.i:                                ; preds = %bb.cn
  %.val42.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %.val.pre.i.i = load ptr, ptr %i.mf, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %.not6579.i.i = icmp eq ptr %.val42.pre.i.i, %.val.pre.i.i
  br i1 %.not6579.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i, label %.lr.ph82.i.i

.lr.ph75.i.i:                                     ; preds = %._crit_edge.i.i10, %bb.cn
  %.sroa.059.073.i.i = phi ptr [ %i.wx, %bb.cn ], [ %.val43.pre.i.i, %._crit_edge.i.i10 ] ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.059.073.i.i, i64 48
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !299, !noalias !298 ; 3 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph75.i.i
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.059.073.i.i, i64 56 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !300, !noalias !298 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %bb.cn, label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %bb.cm
  %.not84.i.i = icmp eq ptr %i.wj, %.sroa.059.073.i.i
  br i1 %.not84.i.i, label %._crit_edge71.thread.i.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %.preheader66.i.i, %.lr.ph70.i.i
  %.03369.i.i = phi ptr [ %i.wp, %.lr.ph70.i.i ], [ %i.wj, %.preheader66.i.i ]
  %i.wo = getelementptr inbounds nuw i8, ptr %.03369.i.i, i64 48
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !299, !noalias !298 ; 4 uses
  %i.wq = icmp ne ptr %i.wp, null
  %i.wr = icmp ne ptr %i.wp, %.sroa.059.073.i.i
  %i.ws = and i1 %i.wq, %i.wr
  br i1 %i.ws, label %.lr.ph70.i.i, label %._crit_edge71.i.i, !llvm.loop !240

._crit_edge71.i.i:                                ; preds = %.lr.ph70.i.i
  %i.wt = icmp eq ptr %i.wp, null
  br i1 %i.wt, label %bb.cn, label %._crit_edge71.thread.i.i

._crit_edge71.thread.i.i:                         ; preds = %._crit_edge71.i.i, %.preheader66.i.i
  %i.wu = load i64, ptr %i.wm, align 8, !tbaa !116, !noalias !298
  %i.wv = getelementptr inbounds nuw [112 x i8], ptr %.val43.pre.i.i, i64 %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 48
  store ptr null, ptr %i.ww, align 8, !tbaa !299, !noalias !298
  store ptr null, ptr %i.wl, align 8, !tbaa !300, !noalias !298
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge71.thread.i.i, %._crit_edge71.i.i, %bb.cm, %.lr.ph75.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.059.073.i.i, i64 112 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.wx, %.val40.pre.i.i
  br i1 %.not64.i.i, label %._crit_edge76.i.i, label %.lr.ph75.i.i

.lr.ph82.i.i:                                     ; preds = %._crit_edge76.i.i, %.loopexit.i.i
  %.sroa.057.080.i.i = phi ptr [ %i.xk, %.loopexit.i.i ], [ %.val42.pre.i.i, %._crit_edge76.i.i ] ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.057.080.i.i, i64 56
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !300, !noalias !298
  %i.xa = icmp ne ptr %i.wz, null
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.057.080.i.i, i64 48
  %i.xc = load ptr, ptr %i.xb, align 8, !noalias !298 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.xc, null
  %or.cond.i.i = select i1 %i.xa, i1 true, i1 %.not.i.i11
  br i1 %or.cond.i.i, label %.loopexit.i.i, label %.lr.ph78.i.i

.lr.ph78.i.i:                                     ; preds = %.lr.ph82.i.i
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.057.080.i.i, i64 32
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph78.i.i
  %i.xe = phi ptr [ %i.xc, %.lr.ph78.i.i ], [ %i.xj, %bb.co ] ; 2 uses
  %i.xf = load ptr, ptr %i.xd, align 8, !tbaa !122, !noalias !298
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 32
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !122, !noalias !298
  call fastcc void @_ZN12_GLOBAL__N_110ExtTSPImpl11mergeChainsEPNS_6ChainTES2_mNS_10MergeTypeTE(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef %i.xf, ptr noundef %i.xh, i64 noundef 0, i32 noundef 0), !noalias !298
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 48
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !299, !noalias !298 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.xj, null
  br i1 %.not37.i.i, label %.loopexit.i.i, label %bb.co, !llvm.loop !241

.loopexit.i.i:                                    ; preds = %bb.co, %.lr.ph82.i.i
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.057.080.i.i, i64 112 ; 2 uses
  %.not65.i.i = icmp eq ptr %i.xk, %.val.pre.i.i
  br i1 %.not65.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i, label %.lr.ph82.i.i

_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i: ; preds = %.loopexit.i.i, %._crit_edge76.i.i, %._crit_edge.i.i10, %_ZN12_GLOBAL__N_110ExtTSPImplC2EN4llvm8ArrayRefImEES3_NS2_INS1_10codelayout9EdgeCountEEE.exit
  %i.xl = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %.val275.i.i = load ptr, ptr %i.g, align 8, !tbaa !288, !noalias !298 ; 2 uses
  %.val37276.i.i = load ptr, ptr %i.xl, align 8, !tbaa !115, !noalias !298 ; 2 uses
  %i.xm = ptrtoint ptr %.val37276.i.i to i64
  %i.xn = ptrtoint ptr %.val275.i.i to i64
  %i.xo = sub i64 %i.xm, %i.xn
  %i.xp = icmp ugt i64 %i.xo, 8
  br i1 %i.xp, label %.preheader.lr.ph.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i

.preheader.lr.ph.i.i:                             ; preds = %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i
  %i.xq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.xs = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.xu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.xx = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.yc = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ey, %.preheader.lr.ph.i.i
  %.val37278.i.i = phi ptr [ %.val37276.i.i, %.preheader.lr.ph.i.i ], [ %.val37.i.i, %bb.ey ]
  %.val277.i.i = phi ptr [ %.val275.i.i, %.preheader.lr.ph.i.i ], [ %.val.i6.i, %bb.ey ]
  br label %.lr.ph268.i.i

._crit_edge269.i.i:                               ; preds = %._crit_edge.i5.i
  %i.yj = fcmp ugt double %.sroa.0166.1.lcssa.i.i, 1.000000e-08
  br i1 %i.yj, label %bb.ey, label %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i

.lr.ph268.i.i:                                    ; preds = %._crit_edge.i5.i, %.preheader.i.i
  %.028267.i.i = phi ptr [ null, %.preheader.i.i ], [ %.129.lcssa.i.i, %._crit_edge.i5.i ] ; 2 uses
  %.031266.i.i = phi ptr [ null, %.preheader.i.i ], [ %.132.lcssa.i.i, %._crit_edge.i5.i ] ; 2 uses
  %.sroa.0165.0265.i.i = phi ptr [ %.val277.i.i, %.preheader.i.i ], [ %i.ys, %._crit_edge.i5.i ] ; 2 uses
  %.sroa.0166.0264.i.i = phi double [ -1.000000e+00, %.preheader.i.i ], [ %.sroa.0166.1.lcssa.i.i, %._crit_edge.i5.i ] ; 2 uses
  %.sroa.7.0263.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.7.1.lcssa.i.i, %._crit_edge.i5.i ] ; 2 uses
  %.sroa.9.0262.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.sroa.9.1.lcssa.i.i, %._crit_edge.i5.i ] ; 2 uses
  %i.yk = load ptr, ptr %.sroa.0165.0265.i.i, align 8, !tbaa !121, !noalias !298 ; 14 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 56 ; 2 uses
  %.val42.i1.i = load ptr, ptr %i.yl, align 8, !tbaa !112, !noalias !298 ; 2 uses
  %i.ym = getelementptr i8, ptr %i.yk, i64 64     ; 2 uses
  %.val41.i2.i = load ptr, ptr %i.ym, align 8, !tbaa !112, !noalias !298 ; 2 uses
  %.not214250.i.i = icmp eq ptr %.val42.i1.i, %.val41.i2.i
  br i1 %.not214250.i.i, label %._crit_edge.i5.i, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.lr.ph268.i.i
  %i.yn = getelementptr i8, ptr %i.yk, i64 32     ; 10 uses
  %i.yo = getelementptr i8, ptr %i.yk, i64 40     ; 10 uses
  %i.yp = getelementptr i8, ptr %i.yk, i64 16
  %i.yq = getelementptr i8, ptr %i.yk, i64 24
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 8 uses
  br label %bb.cp

._crit_edge.i5.i:                                 ; preds = %bb.ex, %.lr.ph268.i.i
  %.sroa.9.1.lcssa.i.i = phi i32 [ %.sroa.9.0262.i.i, %.lr.ph268.i.i ], [ %.sroa.9.4.i.i, %bb.ex ] ; 2 uses
  %.sroa.7.1.lcssa.i.i = phi i64 [ %.sroa.7.0263.i.i, %.lr.ph268.i.i ], [ %.sroa.7.4.i.i, %bb.ex ] ; 2 uses
  %.sroa.0166.1.lcssa.i.i = phi double [ %.sroa.0166.0264.i.i, %.lr.ph268.i.i ], [ %.sroa.0166.4.i.i, %bb.ex ] ; 2 uses
  %.132.lcssa.i.i = phi ptr [ %.031266.i.i, %.lr.ph268.i.i ], [ %.536.i.i, %bb.ex ] ; 2 uses
  %.129.lcssa.i.i = phi ptr [ %.028267.i.i, %.lr.ph268.i.i ], [ %.5.i.i, %bb.ex ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.0165.0265.i.i, i64 8 ; 2 uses
  %.not213.i.i = icmp eq ptr %i.ys, %.val37278.i.i
  br i1 %.not213.i.i, label %._crit_edge269.i.i, label %.lr.ph268.i.i

bb.cp:                                            ; preds = %bb.ex, %.lr.ph.i3.i
  %.129256.i.i = phi ptr [ %.028267.i.i, %.lr.ph.i3.i ], [ %.5.i.i, %bb.ex ] ; 7 uses
  %.132255.i.i = phi ptr [ %.031266.i.i, %.lr.ph.i3.i ], [ %.536.i.i, %bb.ex ] ; 7 uses
  %.sroa.0163.0254.i.i = phi ptr [ %.val42.i1.i, %.lr.ph.i3.i ], [ %i.aht, %bb.ex ] ; 5 uses
  %.sroa.0166.1253.i.i = phi double [ %.sroa.0166.0264.i.i, %.lr.ph.i3.i ], [ %.sroa.0166.4.i.i, %bb.ex ] ; 8 uses
  %.sroa.7.1252.i.i = phi i64 [ %.sroa.7.0263.i.i, %.lr.ph.i3.i ], [ %.sroa.7.4.i.i, %bb.ex ] ; 6 uses
  %.sroa.9.1251.i.i = phi i32 [ %.sroa.9.0262.i.i, %.lr.ph.i3.i ], [ %.sroa.9.4.i.i, %bb.ex ] ; 6 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0163.0254.i.i, i64 8
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !135, !noalias !298 ; 14 uses
  %.val52.i.i26 = load ptr, ptr %i.yu, align 8, !tbaa !126, !noalias !298 ; 2 uses
  %i.yv = getelementptr i8, ptr %i.yu, i64 8
  %.val53.i.i27 = load ptr, ptr %i.yv, align 8, !tbaa !127, !noalias !298
  %i.yw = icmp eq ptr %.val52.i.i26, %.val53.i.i27
  br i1 %i.yw, label %bb.ex, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val56.i.i = load ptr, ptr %i.yn, align 8, !tbaa !37, !noalias !298 ; 3 uses
  %.val57.i.i = load ptr, ptr %i.yo, align 8, !tbaa !136, !noalias !298 ; 2 uses
  %i.yx = ptrtoint ptr %.val57.i.i to i64
  %i.yy = ptrtoint ptr %.val56.i.i to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %i.za = ashr exact i64 %i.yz, 3
  %i.zb = load ptr, ptr %.sroa.0163.0254.i.i, align 8, !tbaa !121, !noalias !298 ; 4 uses
  %i.zc = getelementptr i8, ptr %i.zb, i64 32     ; 12 uses
  %.val54.i.i28 = load ptr, ptr %i.zc, align 8, !tbaa !37, !noalias !298 ; 3 uses
  %i.zd = getelementptr i8, ptr %i.zb, i64 40     ; 6 uses
  %.val55.i.i = load ptr, ptr %i.zd, align 8, !tbaa !136, !noalias !298 ; 2 uses
  %i.ze = ptrtoint ptr %.val55.i.i to i64
  %i.zf = ptrtoint ptr %.val54.i.i28 to i64
  %i.zg = sub i64 %i.ze, %i.zf
  %i.zh = ashr exact i64 %i.zg, 3
  %i.zi = add nsw i64 %i.zh, %i.za
  %i.zj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL12MaxChainSize, i64 120), align 8, !tbaa !142, !noalias !298
  %i.zk = zext i32 %i.zj to i64
  %.not.i4.i = icmp ult i64 %i.zi, %i.zk
  br i1 %.not.i4.i, label %bb.cr, label %bb.ex

bb.cr:                                            ; preds = %bb.cq
  %.val60.i.i29 = load double, ptr %i.yp, align 8, !tbaa !150, !noalias !298
  %.val61.i.i30 = load i64, ptr %i.yq, align 8, !tbaa !151, !noalias !298
  %i.zl = getelementptr i8, ptr %i.zb, i64 16
  %.val58.i.i = load double, ptr %i.zl, align 8, !tbaa !150, !noalias !298
  %i.zm = getelementptr i8, ptr %i.zb, i64 24
  %.val59.i.i = load i64, ptr %i.zm, align 8, !tbaa !151, !noalias !298
  %i.zn = insertelement <2 x i64> poison, i64 %.val59.i.i, i64 0
  %i.zo = insertelement <2 x i64> %i.zn, i64 %.val61.i.i30, i64 1
  %i.zp = uitofp <2 x i64> %i.zo to <2 x double>
  %i.zq = insertelement <2 x double> poison, double %.val58.i.i, i64 0
  %i.zr = insertelement <2 x double> %i.zq, double %.val60.i.i29, i64 1
  %i.zs = fdiv <2 x double> %i.zr, %i.zp          ; 4 uses
  %i.zt = extractelement <2 x double> %i.zs, i64 0
  %i.zu = extractelement <2 x double> %i.zs, i64 1
  %i.zv = fcmp olt double %i.zt, %i.zu
  %i.zw = insertelement <2 x i1> poison, i1 %i.zv, i64 0
  %i.zx = shufflevector <2 x i1> %i.zw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zy = shufflevector <2 x double> %i.zs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.zz = select <2 x i1> %i.zx, <2 x double> %i.zs, <2 x double> %i.zy ; 2 uses
  %i.aaa = extractelement <2 x double> %i.zz, i64 0
  %i.aab = extractelement <2 x double> %i.zz, i64 1
  %i.aac = fdiv double %i.aab, %i.aaa
  %i.aad = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaxMergeDensityRatio, i64 120), align 8, !tbaa !156, !noalias !298
  %i.aae = fcmp ogt double %i.aac, %i.aad
  br i1 %i.aae, label %bb.ex, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.aaf = icmp eq ptr %i.yk, %.val52.i.i26       ; 2 uses
  %.in.in.v.i.i.i.i = select i1 %i.aaf, i64 112, i64 113
  %.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.in.in.v.i.i.i.i
  %.in.i.i.i.i = load i8, ptr %.in.in.i.i.i.i, align 1, !tbaa !86, !range !30, !noalias !301, !noundef !31
  %i.aag = trunc nuw i8 %.in.i.i.i.i to i1
  br i1 %i.aag, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %.v.i.i.i.i = select i1 %i.aaf, i64 64, i64 88
  %i.aah = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.v.i.i.i.i ; 3 uses
  %.sroa.0184.0.copyload.i.i = load double, ptr %i.aah, align 8, !tbaa !157, !noalias !298
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %.sroa.18.0.copyload.i.i = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !tbaa !42, !noalias !298
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !298
  br label %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i

bb.cu:                                            ; preds = %bb.cs
  %.val47.i.i.i = load ptr, ptr %i.yl, align 8, !tbaa !112, !noalias !301 ; 2 uses
  %.val48.i.i.i = load ptr, ptr %i.ym, align 8, !tbaa !112, !noalias !301 ; 2 uses
  %.not47.i.i.i.i = icmp eq ptr %.val47.i.i.i, %.val48.i.i.i
  br i1 %.not47.i.i.i.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cu, %bb.cv
  %.sroa.01.08.i.i.i.i = phi ptr [ %i.aaj, %bb.cv ], [ %.val47.i.i.i, %bb.cu ] ; 3 uses
  %i.aai = load ptr, ptr %.sroa.01.08.i.i.i.i, align 8, !tbaa !121, !noalias !301
  %.not.i.i.i.i31 = icmp eq ptr %i.aai, %i.yk
  br i1 %.not.i.i.i.i31, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 16 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aaj, %.val48.i.i.i
  br i1 %.not4.i.i.i.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i.i.i.i, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8, !noalias !301 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.aal, null
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 16
  %spec.select.i68.i.i = select i1 %.not.i.i.i36, ptr null, ptr %i.aam
  br label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i: ; preds = %bb.cv, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.i.i.i, %bb.cu
  %i.aan = phi ptr [ %spec.select.i68.i.i, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.i.i.i ], [ null, %bb.cu ], [ null, %bb.cv ] ; 8 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  store ptr %.val56.i.i, ptr %9, align 8, !tbaa !110, !alias.scope !303, !noalias !302
  store ptr %.val57.i.i, ptr %i.xq, align 8, !tbaa !110, !alias.scope !303, !noalias !302
  store ptr %.val54.i.i28, ptr %i.xr, align 8, !tbaa !110, !alias.scope !303, !noalias !302
  store ptr %.val55.i.i, ptr %i.xs, align 8, !tbaa !110, !alias.scope !303, !noalias !302
  %i.aap = load <2 x ptr>, ptr @_ZN12_GLOBAL__N_19EmptyListE, align 16, !tbaa !110, !noalias !304
  store <2 x ptr> %i.aap, ptr %i.xt, align 8, !tbaa !110, !alias.scope !303, !noalias !302
  %.val18.val.i.i.i.i = load ptr, ptr %.val56.i.i, align 8, !tbaa !85, !noalias !305
  %.val18.val.val.i.i.i.i = load i64, ptr %.val18.val.i.i.i.i, align 8, !tbaa !116, !noalias !305
  %i.aaq = icmp eq i64 %.val18.val.val.i.i.i.i, 0
  br i1 %i.aaq, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i
  %.val17.val.i.i.i.i = load ptr, ptr %.val54.i.i28, align 8, !tbaa !85, !noalias !305
  %.val17.val.val.i.i.i.i = load i64, ptr %.val17.val.i.i.i.i, align 8, !tbaa !116, !noalias !305
  %i.aar = icmp eq i64 %.val17.val.val.i.i.i.i, 0
  br i1 %i.aar, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i.i.i, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i

_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i.i.i: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !302
  br label %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i

_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i: ; preds = %bb.cw, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread.i.i.i
  %i.aas = call fastcc noundef double @_ZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nonnull readonly %i.aao, ptr readonly %i.aan), !noalias !305
  %i.aat = load double, ptr %i.yr, align 8, !tbaa !158, !noalias !302
  %i.aau = fsub double %i.aas, %i.aat             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !302
  %i.aav = fcmp ogt double %i.aau, 1.000000e-08
  br i1 %i.aav, label %bb.cx, label %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i

bb.cx:                                            ; preds = %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i
  br label %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i

_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i: ; preds = %bb.cx, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i.i.i
  %.sroa.0184.0.i.i = phi double [ %i.aau, %bb.cx ], [ -1.000000e+00, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i.i.i ], [ -1.000000e+00, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i.i.i ] ; 2 uses
  %.val59.i.i.i = load ptr, ptr %i.zc, align 8, !tbaa !110, !noalias !298
  %i.aaw = load ptr, ptr %.val59.i.i.i, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 88
  %.val40.i.i.i = load ptr, ptr %i.aax, align 8, !tbaa !120, !noalias !298 ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aaw, i64 96
  %.val38.i.i.i = load ptr, ptr %i.aay, align 8, !tbaa !120, !noalias !298 ; 2 uses
  %.not107110.i.i.i = icmp eq ptr %.val40.i.i.i, %.val38.i.i.i
  br i1 %.not107110.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i32

._crit_edge.i.i.i:                                ; preds = %bb.dk, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i
  %.sroa.24.3.i.i = phi i64 [ 0, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ], [ %.sroa.24.2.i.i, %bb.dk ] ; 2 uses
  %.sroa.18.3.i.i = phi i64 [ 0, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ], [ %.sroa.18.2.i.i, %bb.dk ] ; 2 uses
  %.sroa.0184.3.i.i = phi double [ %.sroa.0184.0.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ], [ %.sroa.0184.2.i.i, %bb.dk ] ; 2 uses
  %.val60.i.i.i = load ptr, ptr %i.zd, align 8, !tbaa !110, !noalias !298
  %i.aaz = getelementptr inbounds i8, ptr %.val60.i.i.i, i64 -8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !85, !noalias !298 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 64
  %.val39.i.i.i = load ptr, ptr %i.abb, align 8, !tbaa !120, !noalias !298 ; 2 uses
  %i.abc = getelementptr i8, ptr %i.aba, i64 72
  %.val.i.i.i33 = load ptr, ptr %i.abc, align 8, !tbaa !120, !noalias !298 ; 2 uses
  %.not108112.i.i.i = icmp eq ptr %.val39.i.i.i, %.val.i.i.i33
  br i1 %.not108112.i.i.i, label %._crit_edge116.i.i.i, label %.lr.ph115.i.i.i

.lr.ph.i.i.i32:                                   ; preds = %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i, %bb.dk
  %.sroa.24.1.i.i = phi i64 [ %.sroa.24.2.i.i, %bb.dk ], [ 0, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ] ; 6 uses
  %.sroa.18.1.i.i = phi i64 [ %.sroa.18.2.i.i, %bb.dk ], [ 0, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ] ; 6 uses
  %.sroa.0184.1.i.i = phi double [ %.sroa.0184.2.i.i, %bb.dk ], [ %.sroa.0184.0.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ] ; 7 uses
  %.sroa.099.0111.i.i.i = phi ptr [ %i.acs, %bb.dk ], [ %.val40.i.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm10codelayout19computeExtTspLayoutENS_8ArrayRefImEES2_NS1_INS0_9EdgeCountEEE:bb.a
  %.sroa.24.12.1.i.i = phi i64 [ %.sroa.24.16.insert.ext.1.i.i, %bb.ej ], [ %.sroa.24.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.1.i.i ], [ %.sroa.24.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.1.i.i ] ; 2 uses
  %.sroa.18.12.1.i.i = phi i64 [ %.0119.i.i.i, %bb.ej ], [ %.sroa.18.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.1.i.i ], [ %.sroa.18.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.1.i.i ] ; 2 uses
  %.sroa.0184.12.1.i.i = phi double [ %i.agc, %bb.ej ], [ %.sroa.0184.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.1.i.i ], [ %.sroa.0184.12.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.1.i.i ] ; 3 uses
  %i.agh = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i35, align 4, !tbaa !160, !noalias !298 ; 2 uses
  %.val11.i.2.i.i = load ptr, ptr %i.zc, align 8, !tbaa !110, !noalias !298 ; 6 uses
  %.val12.i.2.i.i = load ptr, ptr %i.zd, align 8, !tbaa !110, !noalias !298 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !314
  %.val.i.i74.2.i.i = load ptr, ptr %i.yn, align 8, !tbaa !110, !noalias !314 ; 7 uses
  %.val12.i.i75.2.i.i = load ptr, ptr %i.yo, align 8, !tbaa !110, !noalias !314 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.agi = getelementptr inbounds [8 x i8], ptr %.val.i.i74.2.i.i, i64 %.0119.i.i.i ; 6 uses
  switch i32 %i.agh, label %bb.ea [
    i32 0, label %bb.en
    i32 1, label %bb.em
    i32 2, label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i
    i32 3, label %bb.el
    i32 4, label %bb.ek
  ]

bb.ek:                                            ; preds = %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i

bb.el:                                            ; preds = %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i

bb.em:                                            ; preds = %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i
  %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i.2.i.i = load ptr, ptr @_ZN12_GLOBAL__N_19EmptyListE, align 16, !tbaa !110, !noalias !319
  %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i.2.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19EmptyListE, i64 8), align 8, !tbaa !110, !noalias !319
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i

bb.en:                                            ; preds = %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i
  %_ZN12_GLOBAL__N_19EmptyListE.val46.i.i.i84.2.i.i = load ptr, ptr @_ZN12_GLOBAL__N_19EmptyListE, align 16, !tbaa !110, !noalias !319
  %_ZN12_GLOBAL__N_19EmptyListE.val52.i.i.i85.2.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19EmptyListE, i64 8), align 8, !tbaa !110, !noalias !319
  br label %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i

_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i: ; preds = %bb.en, %bb.em, %bb.el, %bb.ek, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i
  %.sink17.i.i.i.2.i.i = phi ptr [ %i.agi, %bb.ek ], [ %.val11.i.2.i.i, %bb.el ], [ %.val.i.i74.2.i.i, %bb.en ], [ %.val11.i.2.i.i, %bb.em ], [ %.val.i.i74.2.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ] ; 2 uses
  %.8.val.sink.i.i.i.2.i.i = phi ptr [ %.val12.i.i75.2.i.i, %bb.ek ], [ %.val12.i.2.i.i, %bb.el ], [ %.val12.i.i75.2.i.i, %bb.en ], [ %.val12.i.2.i.i, %bb.em ], [ %i.agi, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ]
  %.0.val.sink.i.i.i.2.i.i = phi ptr [ %.val.i.i74.2.i.i, %bb.ek ], [ %i.agi, %bb.el ], [ %.val11.i.2.i.i, %bb.en ], [ %.val.i.i74.2.i.i, %bb.em ], [ %.val11.i.2.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ]
  %.sink.i.i.i.2.i.i = phi ptr [ %i.agi, %bb.ek ], [ %.val12.i.i75.2.i.i, %bb.el ], [ %.val12.i.2.i.i, %bb.en ], [ %.val12.i.i75.2.i.i, %bb.em ], [ %.val12.i.2.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ]
  %.0.val1.sink.i.i.i.2.i.i = phi ptr [ %.val11.i.2.i.i, %bb.ek ], [ %.val.i.i74.2.i.i, %bb.el ], [ %_ZN12_GLOBAL__N_19EmptyListE.val46.i.i.i84.2.i.i, %bb.en ], [ %_ZN12_GLOBAL__N_19EmptyListE.val.i.i.i.2.i.i, %bb.em ], [ %i.agi, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ]
  %.8.val3.sink.i.i.i.2.i.i = phi ptr [ %.val12.i.2.i.i, %bb.ek ], [ %i.agi, %bb.el ], [ %_ZN12_GLOBAL__N_19EmptyListE.val52.i.i.i85.2.i.i, %bb.en ], [ %_ZN12_GLOBAL__N_19EmptyListE.val51.i.i.i.2.i.i, %bb.em ], [ %.val12.i.i75.2.i.i, %_ZN12_GLOBAL__N_110MergeGainT16updateIfLessThanERKS0_.exit.i81.1.i.i ]
  store ptr %.sink17.i.i.i.2.i.i, ptr %8, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  store ptr %.8.val.sink.i.i.i.2.i.i, ptr %i.ye, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  store ptr %.0.val.sink.i.i.i.2.i.i, ptr %i.yf, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  store ptr %.sink.i.i.i.2.i.i, ptr %i.yg, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  store ptr %.0.val1.sink.i.i.i.2.i.i, ptr %i.yh, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  store ptr %.8.val3.sink.i.i.i.2.i.i, ptr %i.yi, align 8, !tbaa !110, !alias.scope !318, !noalias !314
  %.val18.val.i.i76.2.i.i = load ptr, ptr %.val.i.i74.2.i.i, align 8, !tbaa !85, !noalias !314
  %.val18.val.val.i.i77.2.i.i = load i64, ptr %.val18.val.i.i76.2.i.i, align 8, !tbaa !116, !noalias !314
  %i.agj = icmp eq i64 %.val18.val.val.i.i77.2.i.i, 0
  br i1 %i.agj, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i
  %.val17.val.i.i78.2.i.i = load ptr, ptr %.val11.i.2.i.i, align 8, !tbaa !85, !noalias !314
  %.val17.val.val.i.i79.2.i.i = load i64, ptr %.val17.val.i.i78.2.i.i, align 8, !tbaa !116, !noalias !314
  %i.agk = icmp eq i64 %.val17.val.val.i.i79.2.i.i, 0
  br i1 %i.agk, label %bb.ep, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i

bb.ep:                                            ; preds = %bb.eo, %_ZN12_GLOBAL__N_110mergeNodesERKSt6vectorIPNS_5NodeTESaIS2_EES6_mNS_10MergeTypeTE.exit.i.i.2.i.i
  %.val19.val.i.i.2.i.i = load ptr, ptr %.sink17.i.i.i.2.i.i, align 8, !tbaa !85, !noalias !314
  %.val20.i.i.2.i.i = load i64, ptr %.val19.val.i.i.2.i.i, align 8, !tbaa !116, !noalias !314
  %i.agl = icmp eq i64 %.val20.i.i.2.i.i, 0
  br i1 %i.agl, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i, label %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i

_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !314
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i

_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i: ; preds = %bb.ep, %bb.eo
  %i.agm = call fastcc noundef double @_ZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull readonly %i.aao, ptr readonly %i.aan), !noalias !314
  %i.agn = load double, ptr %i.yr, align 8, !tbaa !158, !noalias !314
  %i.ago = fsub double %i.agm, %i.agn             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !314
  %i.agp = fcmp ogt double %i.ago, 1.000000e-08
  %i.agq = fadd double %.sroa.0184.12.1.i.i, 1.000000e-08
  %i.agr = fcmp ogt double %i.ago, %i.agq
  %i.ags = select i1 %i.agp, i1 %i.agr, i1 false
  br i1 %i.ags, label %bb.eq, label %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i

bb.eq:                                            ; preds = %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i
  %.sroa.24.16.insert.ext.2.i.i = zext nneg i32 %i.agh to i64
  br label %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i

_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i: ; preds = %bb.eq, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i, %bb.dz, %_ZNSt6vectorIN12_GLOBAL__N_110MergeTypeTESaIS1_EED2Ev.exit81.i.i.i
  %.sroa.24.13.i.i = phi i64 [ %.sroa.24.8.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110MergeTypeTESaIS1_EED2Ev.exit81.i.i.i ], [ %.sroa.24.8.i.i, %bb.dz ], [ %.sroa.24.16.insert.ext.2.i.i, %bb.eq ], [ %.sroa.24.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i ], [ %.sroa.24.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i ]
  %.sroa.18.13.i.i = phi i64 [ %.sroa.18.8.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110MergeTypeTESaIS1_EED2Ev.exit81.i.i.i ], [ %.sroa.18.8.i.i, %bb.dz ], [ %.0119.i.i.i, %bb.eq ], [ %.sroa.18.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i ], [ %.sroa.18.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i ]
  %.sroa.0184.13.i.i = phi double [ %.sroa.0184.8.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110MergeTypeTESaIS1_EED2Ev.exit81.i.i.i ], [ %.sroa.0184.8.i.i, %bb.dz ], [ %i.ago, %bb.eq ], [ %.sroa.0184.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.i80.2.i.i ], [ %.sroa.0184.12.1.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16computeMergeGainEPKNS_6ChainTES3_RKNS_12MergedJumpsTEmNS_10MergeTypeTE.exit.thread.i83.2.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef 12) #23, !noalias !298
  %.val49.i.pre.i.i = load ptr, ptr %i.yn, align 8, !tbaa !37, !noalias !298
  %.val50.i.pre.i.i = load ptr, ptr %i.yo, align 8, !tbaa !136, !noalias !298
  br label %_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i

_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i: ; preds = %.lr.ph.i78.i.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i
  %.val50.i.i.i = phi ptr [ %.val50.i.pre.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i ], [ %.val50.i283.i.i, %.lr.ph.i78.i.i.i ] ; 2 uses
  %.val49.i.i.i = phi ptr [ %.val49.i.pre.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i ], [ %.val49.i281.i.i, %.lr.ph.i78.i.i.i ] ; 2 uses
  %.sroa.24.9.i.i = phi i64 [ %.sroa.24.13.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i ], [ %.sroa.24.8.i.i, %.lr.ph.i78.i.i.i ] ; 2 uses
  %.sroa.18.9.i.i = phi i64 [ %.sroa.18.13.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i ], [ %.sroa.18.8.i.i, %.lr.ph.i78.i.i.i ] ; 2 uses
  %.sroa.0184.9.i.i = phi double [ %.sroa.0184.13.i.i, %_ZZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeEENKUlmRKSt6vectorINS_10MergeTypeTESaIS6_EEE_clEmSA_.exit.i.i ], [ %.sroa.0184.8.i.i, %.lr.ph.i78.i.i.i ] ; 2 uses
  %i.agt = add nuw i64 %.0119.i.i.i, 1            ; 2 uses
  %i.agu = ptrtoint ptr %.val50.i.i.i to i64
  %i.agv = ptrtoint ptr %.val49.i.i.i to i64
  %i.agw = sub i64 %i.agu, %i.agv
  %i.agx = ashr exact i64 %i.agw, 3
  %i.agy = icmp ult i64 %i.agt, %i.agx
  br i1 %i.agy, label %.lr.ph121.i.i.i, label %.loopexit.i.i.i, !llvm.loop !264

.loopexit.i.i.i:                                  ; preds = %_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i, %._crit_edge116.i.i.i
  %.sroa.24.7.i.i = phi i64 [ %.sroa.24.6.i.i, %._crit_edge116.i.i.i ], [ %.sroa.24.9.i.i, %_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i ] ; 3 uses
  %.sroa.18.7.i.i = phi i64 [ %.sroa.18.6.i.i, %._crit_edge116.i.i.i ], [ %.sroa.18.9.i.i, %_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i ] ; 4 uses
  %.sroa.0184.7.i.i = phi double [ %.sroa.0184.6.i.i, %._crit_edge116.i.i.i ], [ %.sroa.0184.9.i.i, %_ZNK12_GLOBAL__N_15NodeT11isSuccessorEPKS0_.exit.i.i.i ] ; 4 uses
  %i.agz = load ptr, ptr %i.yu, align 8, !tbaa !126, !noalias !301
  %i.aha = icmp eq ptr %i.yk, %i.agz
  %.sroa.24.0.extract.trunc194.i.i = trunc nuw i64 %.sroa.24.7.i.i to i32 ; 2 uses
  br i1 %i.aha, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.loopexit.i.i.i
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  store double %.sroa.0184.7.i.i, ptr %i.ahb, align 8, !noalias !298
  %.sroa.18.0..sroa_idx189.i.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 72
  store i64 %.sroa.18.7.i.i, ptr %.sroa.18.0..sroa_idx189.i.i, align 8, !noalias !298
  %.sroa.24.0..sroa_idx192.i.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 80
  store i32 %.sroa.24.0.extract.trunc194.i.i, ptr %.sroa.24.0..sroa_idx192.i.i, align 8, !noalias !298
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.yu, i64 112
  store i8 1, ptr %i.ahc, align 8, !tbaa !131, !noalias !301
  br label %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i

bb.es:                                            ; preds = %.loopexit.i.i.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.yu, i64 88
  store double %.sroa.0184.7.i.i, ptr %i.ahd, align 8, !noalias !298
  %.sroa.18.0..sroa_idx187.i.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 96
  store i64 %.sroa.18.7.i.i, ptr %.sroa.18.0..sroa_idx187.i.i, align 8, !noalias !298
  %.sroa.24.0..sroa_idx191.i.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 104
  store i32 %.sroa.24.0.extract.trunc194.i.i, ptr %.sroa.24.0..sroa_idx191.i.i, align 8, !noalias !298
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.yu, i64 113
  store i8 1, ptr %i.ahe, align 1, !tbaa !132, !noalias !301
  br label %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i

_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i: ; preds = %bb.es, %bb.er, %bb.ct
  %.sroa.24.10.i.i = phi i64 [ %.sroa.24.0.copyload.i.i, %bb.ct ], [ %.sroa.24.7.i.i, %bb.es ], [ %.sroa.24.7.i.i, %bb.er ]
  %.sroa.18.10.i.i = phi i64 [ %.sroa.18.0.copyload.i.i, %bb.ct ], [ %.sroa.18.7.i.i, %bb.es ], [ %.sroa.18.7.i.i, %bb.er ]
  %.sroa.0184.10.i.i = phi double [ %.sroa.0184.0.copyload.i.i, %bb.ct ], [ %.sroa.0184.7.i.i, %bb.es ], [ %.sroa.0184.7.i.i, %bb.er ] ; 5 uses
  %i.ahf = fcmp ugt double %.sroa.0184.10.i.i, 1.000000e-08
  br i1 %i.ahf, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i
  %i.ahg = fcmp ogt double %.sroa.0184.10.i.i, 1.000000e-08
  %i.ahh = fadd double %.sroa.0166.1253.i.i, 1.000000e-08
  %i.ahi = fcmp ogt double %.sroa.0184.10.i.i, %i.ahh
  %i.ahj = select i1 %i.ahg, i1 %i.ahi, i1 false
  br i1 %i.ahj, label %._crit_edge285.i.i, label %bb.eu

._crit_edge285.i.i:                               ; preds = %bb.et
  %.pre.i.i = load ptr, ptr %.sroa.0163.0254.i.i, align 8, !tbaa !121, !noalias !298
  br label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.ahk = fsub double %.sroa.0184.10.i.i, %.sroa.0166.1253.i.i
  %i.ahl = tail call noundef double @llvm.fabs.f64(double %i.ahk)
  %i.ahm = fcmp olt double %i.ahl, 1.000000e-08
  br i1 %i.ahm, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.ahn = load ptr, ptr %.sroa.0163.0254.i.i, align 8, !tbaa !121, !noalias !298 ; 2 uses
  %.val64.i.i = load i64, ptr %i.yk, align 8, !tbaa !42, !noalias !320 ; 2 uses
  %.val65.i.i34 = load i64, ptr %i.ahn, align 8, !tbaa !42, !noalias !320
  %.132.val.i.i = load i64, ptr %.132255.i.i, align 8, !tbaa !42, !noalias !321 ; 2 uses
  %.129.val.i.i = load i64, ptr %.129256.i.i, align 8, !tbaa !42, !noalias !321
  %i.aho = icmp ult i64 %.val64.i.i, %.132.val.i.i
  %i.ahp = icmp uge i64 %.132.val.i.i, %.val64.i.i
  %i.ahq = icmp ult i64 %.val65.i.i34, %.129.val.i.i
  %spec.select.i69.i.i = select i1 %i.ahp, i1 %i.ahq, i1 false
  %i.ahr = select i1 %i.aho, i1 true, i1 %spec.select.i69.i.i
  br i1 %i.ahr, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %._crit_edge285.i.i
  %i.ahs = phi ptr [ %.pre.i.i, %._crit_edge285.i.i ], [ %i.ahn, %bb.ev ]
  %.sroa.24.16.extract.trunc.i.i = trunc i64 %.sroa.24.10.i.i to i32
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i, %bb.cr, %bb.cq, %bb.cp
  %.sroa.9.4.i.i = phi i32 [ %.sroa.9.1251.i.i, %bb.cp ], [ %.sroa.9.1251.i.i, %bb.cq ], [ %.sroa.9.1251.i.i, %bb.cr ], [ %.sroa.24.16.extract.trunc.i.i, %bb.ew ], [ %.sroa.9.1251.i.i, %bb.ev ], [ %.sroa.9.1251.i.i, %bb.eu ], [ %.sroa.9.1251.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i ] ; 2 uses
  %.sroa.7.4.i.i = phi i64 [ %.sroa.7.1252.i.i, %bb.cp ], [ %.sroa.7.1252.i.i, %bb.cq ], [ %.sroa.7.1252.i.i, %bb.cr ], [ %.sroa.18.10.i.i, %bb.ew ], [ %.sroa.7.1252.i.i, %bb.ev ], [ %.sroa.7.1252.i.i, %bb.eu ], [ %.sroa.7.1252.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i ] ; 2 uses
  %.sroa.0166.4.i.i = phi double [ %.sroa.0166.1253.i.i, %bb.cp ], [ %.sroa.0166.1253.i.i, %bb.cq ], [ %.sroa.0166.1253.i.i, %bb.cr ], [ %.sroa.0184.10.i.i, %bb.ew ], [ %.sroa.0166.1253.i.i, %bb.ev ], [ %.sroa.0166.1253.i.i, %bb.eu ], [ %.sroa.0166.1253.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i ] ; 2 uses
  %.536.i.i = phi ptr [ %.132255.i.i, %bb.cp ], [ %.132255.i.i, %bb.cq ], [ %.132255.i.i, %bb.cr ], [ %i.yk, %bb.ew ], [ %.132255.i.i, %bb.ev ], [ %.132255.i.i, %bb.eu ], [ %.132255.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i ] ; 2 uses
  %.5.i.i = phi ptr [ %.129256.i.i, %bb.cp ], [ %.129256.i.i, %bb.cq ], [ %.129256.i.i, %bb.cr ], [ %i.ahs, %bb.ew ], [ %.129256.i.i, %bb.ev ], [ %.129256.i.i, %bb.eu ], [ %.129256.i.i, %_ZNK12_GLOBAL__N_110ExtTSPImpl16getBestMergeGainEPNS_6ChainTES2_PNS_9ChainEdgeE.exit.i.i ] ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.0163.0254.i.i, i64 16 ; 2 uses
  %.not214.i.i = icmp eq ptr %i.aht, %.val41.i2.i
  br i1 %.not214.i.i, label %._crit_edge.i5.i, label %bb.cp

bb.ey:                                            ; preds = %._crit_edge269.i.i
  call fastcc void @_ZN12_GLOBAL__N_110ExtTSPImpl11mergeChainsEPNS_6ChainTES2_mNS_10MergeTypeTE(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef %.132.lcssa.i.i, ptr noundef %.129.lcssa.i.i, i64 noundef %.sroa.7.1.lcssa.i.i, i32 noundef %.sroa.9.1.lcssa.i.i), !noalias !298
  %.val.i6.i = load ptr, ptr %i.g, align 8, !tbaa !288, !noalias !298 ; 2 uses
  %.val37.i.i = load ptr, ptr %i.xl, align 8, !tbaa !115, !noalias !298 ; 2 uses
  %i.ahu = ptrtoint ptr %.val37.i.i to i64
  %i.ahv = ptrtoint ptr %.val.i6.i to i64
  %i.ahw = sub i64 %i.ahu, %i.ahv
  %i.ahx = icmp ugt i64 %i.ahw, 8
  br i1 %i.ahx, label %.preheader.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i

_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i: ; preds = %bb.ey, %._crit_edge269.i.i, %_ZN12_GLOBAL__N_110ExtTSPImpl16mergeForcedPairsEv.exit.i
  %i.ahy = load i64, ptr %10, align 8, !tbaa !278, !noalias !298 ; 2 uses
  %.not46.i.i = icmp eq i64 %i.ahy, 0
  br i1 %.not46.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i, label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i, %._crit_edge.i11.i
  %i.ahz = phi i64 [ %i.aij, %._crit_edge.i11.i ], [ %i.ahy, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i ]
  %.02242.i.i = phi i64 [ %i.aik, %._crit_edge.i11.i ], [ 0, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i ] ; 5 uses
  %i.aia = load ptr, ptr %i.a, align 8, !tbaa !71, !noalias !298
  %i.aib = getelementptr inbounds nuw [24 x i8], ptr %i.aia, i64 %.02242.i.i ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !90, !noalias !298 ; 2 uses
  %i.aie = load ptr, ptr %i.aib, align 8, !tbaa !81, !noalias !298 ; 2 uses
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = ptrtoint ptr %i.aie to i64
  %i.aih = sub i64 %i.aif, %i.aig                 ; 2 uses
  %.not47.i.i12 = icmp eq ptr %i.aid, %i.aie
  br i1 %.not47.i.i12, label %._crit_edge.i11.i, label %.lr.ph.preheader.i.i13

.lr.ph.preheader.i.i13:                           ; preds = %.lr.ph44.i.i
  %i.aii = ashr exact i64 %i.aih, 3
  br label %.lr.ph.i7.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.fe
  %.pre.i10.i = load i64, ptr %10, align 8, !tbaa !278, !noalias !298
  br label %._crit_edge.i11.i

._crit_edge.i11.i:                                ; preds = %._crit_edge.loopexit.i.i, %.lr.ph44.i.i
  %i.aij = phi i64 [ %.pre.i10.i, %._crit_edge.loopexit.i.i ], [ %i.ahz, %.lr.ph44.i.i ] ; 2 uses
  %i.aik = add nuw i64 %.02242.i.i, 1             ; 2 uses
  %i.ail = icmp ult i64 %i.aik, %i.aij
  br i1 %i.ail, label %.lr.ph44.i.i, label %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i, !llvm.loop !269

.lr.ph.i7.i:                                      ; preds = %bb.fe, %.lr.ph.preheader.i.i13
  %.041.i.i = phi i64 [ %i.ajr, %bb.fe ], [ 0, %.lr.ph.preheader.i.i13 ] ; 2 uses
  %i.aim = load ptr, ptr %i.a, align 8, !tbaa !71, !noalias !298
  %i.ain = getelementptr inbounds nuw [24 x i8], ptr %i.aim, i64 %.02242.i.i
  %i.aio = xor i64 %.041.i.i, -1
  %i.aip = load ptr, ptr %i.ain, align 8, !tbaa !81, !noalias !298
  %i.aiq = getelementptr i8, ptr %i.aip, i64 %i.aih
  %i.air = getelementptr [8 x i8], ptr %i.aiq, i64 %i.aio
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !42, !noalias !298 ; 2 uses
  %.val26.i.i = load ptr, ptr %i.c, align 8, !tbaa !72, !noalias !298 ; 2 uses
  %i.ait = getelementptr inbounds nuw [112 x i8], ptr %.val26.i.i, i64 %.02242.i.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 32
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !122, !noalias !298 ; 4 uses
  %i.aiw = getelementptr inbounds nuw [112 x i8], ptr %.val26.i.i, i64 %i.ais
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 32
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !122, !noalias !298 ; 4 uses
  %.not.i8.i = icmp eq ptr %i.aiv, %i.aiy
  br i1 %.not.i8.i, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.i7.i
  %i.aiz = getelementptr i8, ptr %i.aiy, i64 32
  %.val27.i.i = load ptr, ptr %i.aiz, align 8, !tbaa !37, !noalias !298 ; 3 uses
  %.val27.val.i.i = load ptr, ptr %.val27.i.i, align 8, !tbaa !85, !noalias !298
  %.val27.val.val.i.i = load i64, ptr %.val27.val.i.i, align 8, !tbaa !116, !noalias !298 ; 2 uses
  %i.aja = icmp eq i64 %.val27.val.val.i.i, 0
  br i1 %i.aja, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ajb = getelementptr i8, ptr %i.aiv, i64 40
  %.val29.i.i = load ptr, ptr %i.ajb, align 8, !tbaa !110, !noalias !298 ; 3 uses
  %i.ajc = getelementptr inbounds i8, ptr %.val29.i.i, i64 -8
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !85, !noalias !298
  %i.aje = load i64, ptr %i.ajd, align 8, !tbaa !116, !noalias !298
  %i.ajf = icmp eq i64 %i.aje, %.02242.i.i
  %i.ajg = icmp eq i64 %.val27.val.val.i.i, %i.ais
  %or.cond.i9.i = and i1 %i.ajg, %i.ajf
  br i1 %or.cond.i9.i, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %.val32.i.i = load ptr, ptr %i.ajh, align 8, !tbaa !110, !noalias !298 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.val32.i.i, %.val29.i.i
  br i1 %.not23.i.i.i, label %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i, label %.lr.ph.i.i12.i

.lr.ph.i.i12.i:                                   ; preds = %bb.fb, %.lr.ph.i.i12.i
  %.sroa.01.04.i.i.i = phi ptr [ %i.ajl, %.lr.ph.i.i12.i ], [ %.val32.i.i, %bb.fb ] ; 2 uses
  %i.aji = load ptr, ptr %.sroa.01.04.i.i.i, align 8, !tbaa !85, !noalias !298
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajk = load i64, ptr %i.ajj, align 8, !tbaa !106, !noalias !298
  %.not.i.i13.i = icmp eq i64 %i.ajk, 0           ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i.i, i64 8 ; 2 uses
  %.not2.i.i.i = icmp ne ptr %i.ajl, %.val29.i.i
  %or.cond.not = select i1 %.not.i.i13.i, i1 %.not2.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i12.i, label %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i

_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i:      ; preds = %.lr.ph.i.i12.i, %bb.fb
  %.not2.lcssa.i.i.i = phi i1 [ true, %bb.fb ], [ %.not.i.i13.i, %.lr.ph.i.i12.i ] ; 2 uses
  %i.ajm = getelementptr i8, ptr %i.aiy, i64 40
  %.val31.i.i = load ptr, ptr %i.ajm, align 8, !tbaa !110, !noalias !298 ; 2 uses
  %.not23.i34.i.i = icmp eq ptr %.val27.i.i, %.val31.i.i
  br i1 %.not23.i34.i.i, label %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.thr_comm.i.i, label %.lr.ph.i35.i.i

bb.fc:                                            ; preds = %.lr.ph.i35.i.i
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i36.i.i, i64 8 ; 2 uses
  %.not2.i39.i.i = icmp eq ptr %i.ajn, %.val31.i.i
  br i1 %.not2.i39.i.i, label %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.thr_comm.i.i, label %.lr.ph.i35.i.i

.lr.ph.i35.i.i:                                   ; preds = %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i, %bb.fc
  %.sroa.01.04.i36.i.i = phi ptr [ %i.ajn, %bb.fc ], [ %.val27.i.i, %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i ] ; 2 uses
  %i.ajo = load ptr, ptr %.sroa.01.04.i36.i.i, align 8, !tbaa !85, !noalias !298
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 24
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !106, !noalias !298
  %.not.i37.i.i = icmp eq i64 %i.ajq, 0
  br i1 %.not.i37.i.i, label %bb.fc, label %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.i.i

_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.thr_comm.i.i: ; preds = %bb.fc, %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit.i.i
  br i1 %.not2.lcssa.i.i.i, label %bb.fd, label %bb.fe

_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.i.i:    ; preds = %.lr.ph.i35.i.i
  br i1 %.not2.lcssa.i.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.i.i, %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.thr_comm.i.i
  call fastcc void @_ZN12_GLOBAL__N_110ExtTSPImpl11mergeChainsEPNS_6ChainTES2_mNS_10MergeTypeTE(ptr noundef nonnull align 8 dereferenceable(176) %10, ptr noundef nonnull %i.aiv, ptr noundef nonnull %i.aiy, i64 noundef 0, i32 noundef 0), !noalias !298
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.i.i, %_ZNK12_GLOBAL__N_16ChainT6isColdEv.exit40.thr_comm.i.i, %bb.fa, %bb.ez, %.lr.ph.i7.i
  %i.ajr = add nuw i64 %.041.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ajr, %i.aii
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i7.i, !llvm.loop !270

_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i: ; preds = %._crit_edge.i11.i, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeChainPairsEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.val13.i.i = load ptr, ptr %i.e, align 8, !tbaa !121, !noalias !323 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %.val.i14.i = load ptr, ptr %i.ajs, align 8, !tbaa !121, !noalias !323 ; 2 uses
  %.not49.i.i14 = icmp eq ptr %.val13.i.i, %.val.i14.i
  br i1 %.not49.i.i14, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i, label %.lr.ph.i15.i

._crit_edge.i18.i:                                ; preds = %_ZNSt6vectorIPKN12_GLOBAL__N_16ChainTESaIS3_EE9push_backEOS3_.exit.i.i
  %i.ajt = ptrtoint ptr %.sroa.13.1.i.i to i64    ; 4 uses
  %.not.i.i.i19.i = icmp eq ptr %.sroa.042.1.i.i, %.sroa.8.1.i.i
  br i1 %.not.i.i.i19.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge.i18.i
  %i.aju = ptrtoint ptr %.sroa.8.1.i.i to i64
  %i.ajv = ptrtoint ptr %.sroa.042.1.i.i to i64
  %i.ajw = sub i64 %i.aju, %i.ajv                 ; 2 uses
  %i.ajx = ashr exact i64 %i.ajw, 3
  %i.ajy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ajx, i1 true)
  %i.ajz = shl nuw nsw i64 %i.ajy, 1
  %i.aka = xor i64 %i.ajz, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EEEvT_SG_T0_T1_(ptr %.sroa.042.1.i.i, ptr %.sroa.8.1.i.i, i64 noundef %i.aka), !noalias !323
  %i.akb = icmp sgt i64 %i.ajw, 128
  br i1 %i.akb, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.akc = getelementptr inbounds nuw i8, ptr %.sroa.042.1.i.i, i64 128 ; 3 uses
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EEEvT_SG_T0_(ptr %.sroa.042.1.i.i, ptr nonnull %i.akc), !noalias !323
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.akc, %.sroa.8.1.i.i
  br i1 %.not6.i.i.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i22:                             ; preds = %bb.fg, %.lr.ph.i.i.i.i.i.i22
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.akd, %.lr.ph.i.i.i.i.i.i22 ], [ %i.akc, %bb.fg ] ; 2 uses
  tail call fastcc void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EEEvT_T0_(ptr nonnull %.sroa.0.07.i.i.i.i.i.i), !noalias !323
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.akd, %.sroa.8.1.i.i
  br i1 %.not.i.i.i.i.i.i23, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i22, !llvm.loop !273

bb.fh:                                            ; preds = %bb.ff
  tail call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EEEvT_SG_T0_(ptr %.sroa.042.1.i.i, ptr %.sroa.8.1.i.i), !noalias !323
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i22, %bb.fh, %bb.fg, %._crit_edge.i18.i, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i
  %.not.i.i91.i.i = phi i1 [ true, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i ], [ false, %bb.fh ], [ true, %._crit_edge.i18.i ], [ false, %bb.fg ], [ false, %.lr.ph.i.i.i.i.i.i22 ]
  %.sroa.13.0.lcssa90.i.i = phi i64 [ 0, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i ], [ %i.ajt, %bb.fh ], [ %i.ajt, %._crit_edge.i18.i ], [ %i.ajt, %bb.fg ], [ %i.ajt, %.lr.ph.i.i.i.i.i.i22 ]
  %.sroa.8.0.lcssa89.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i ], [ %.sroa.8.1.i.i, %bb.fh ], [ %.sroa.042.1.i.i, %._crit_edge.i18.i ], [ %.sroa.8.1.i.i, %bb.fg ], [ %.sroa.8.1.i.i, %.lr.ph.i.i.i.i.i.i22 ]
  %.sroa.042.0.lcssa88.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_110ExtTSPImpl15mergeColdChainsEv.exit.i ], [ %.sroa.042.1.i.i, %bb.fh ], [ %.sroa.042.1.i.i, %._crit_edge.i18.i ], [ %.sroa.042.1.i.i, %bb.fg ], [ %.sroa.042.1.i.i, %.lr.ph.i.i.i.i.i.i22 ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !323
  %i.ake = load i64, ptr %10, align 8, !tbaa !278, !noalias !323 ; 4 uses
  %i.akf = icmp ugt i64 %i.ake, 1152921504606846975
  br i1 %i.akf, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #24, !noalias !323
  unreachable

bb.fj:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN12_GLOBAL__N_16ChainTESt6vectorIS5_SaIS5_EEEEZNS2_10ExtTSPImpl12concatChainsEvEUlS5_S5_E_EvT_SD_T0_.exit.i.i
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not83.i.i = icmp eq i64 %i.ake, 0
  br i1 %.not83.i.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit.i.i, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i: ; preds = %bb.fj
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aki = shl nuw nsw i64 %i.ake, 3
  %i.akj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aki) #25, !noalias !323 ; 4 uses
  store ptr %i.akj, ptr %0, align 8, !tbaa !81, !alias.scope !323
  store ptr %i.akj, ptr %i.akh, align 8, !tbaa !90, !alias.scope !323
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.akj, i64 %i.ake ; 2 uses
  store ptr %i.akk, ptr %i.akg, align 8, !tbaa !79, !alias.scope !323
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit.i.i

_ZNSt6vectorImSaImEE7reserveEm.exit.i.i:          ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i, %bb.fj
  %.promoted6173.i.i = phi ptr [ null, %bb.fj ], [ %i.akk, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i ]
  %.promoted68.i.i = phi ptr [ null, %bb.fj ], [ %i.akj, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i.i ] ; 2 uses
  br i1 %.not.i.i91.i.i, label %._crit_edge65.i.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit.i.i
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_1
