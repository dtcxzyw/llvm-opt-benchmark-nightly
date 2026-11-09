Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocPBQP?download=true
inline.NumInlined: 4997
inline.NumDeleted: 2695
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12_GLOBAL__N_112Interference5applyERN4llvm4PBQP8RegAlloc11PBQPRAGraphE:_ZNSt6vectorISt5tupleIJPN4llvm12LiveIntervalEmjEESaIS4_EED2Ev.exit
  br i1 %i.uy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.uw, align 8, !tbaa !411
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  store i32 0, ptr %i.va, align 4, !tbaa !412
  %i.vb = load ptr, ptr %i.uv, align 8, !tbaa !47
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #26, !inline_history !901
  %i.ve = load ptr, ptr %i.uv, align 8, !tbaa !47
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vg = load ptr, ptr %i.vf, align 8
  call void %i.vg(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #26, !inline_history !901
  br label %_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.vh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i.i5.i = icmp eq i8 %i.vh, 0
  br i1 %.not.i.i.i.i5.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vi = add nsw i32 %i.uz, -1
  store i32 %i.vi, ptr %i.uw, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.bf:                                            ; preds = %bb.bd
  %i.vj = atomicrmw volatile add ptr %i.uw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i59 = phi i32 [ %i.uz, %bb.be ], [ %i.vj, %bb.bf ]
  %i.vk = icmp eq i32 %.0.i.i.i.i.i.i59, 1
  br i1 %i.vk, label %bb.bg, label %_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !413

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uv) #26
  br label %_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58, %bb.bc, %_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE9EdgeEntry7connectERS4_j.exit
  %i.vl = load ptr, ptr %i.bl, align 8, !tbaa !504 ; 2 uses
  %.not.i60 = icmp eq ptr %i.vl, null
  br i1 %.not.i60, label %_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE29addEdgeBypassingCostAllocatorISt10shared_ptrIKNS0_8MDMatrixINS2_14MatrixMetadataEEEEEEjjjT_.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !511, !nonnull !93, !align !158 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 176
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !119
  %i.vp = getelementptr inbounds nuw [48 x i8], ptr %i.vo, i64 %i.si ; 3 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 20
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !128 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 128
  %i.vt = zext i32 %i.vr to i64
  %i.vu = load ptr, ptr %i.vs, align 8, !tbaa !107 ; 2 uses
  %i.vv = getelementptr inbounds nuw [88 x i8], ptr %i.vu, i64 %i.vt ; 3 uses
  %i.vw = load ptr, ptr %i.vp, align 8, !tbaa !131 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 24 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !128
  %i.wa = icmp eq i32 %i.vr, %i.vz                ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 20
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = load i32, ptr %i.vx, align 8
  %.sink16.i.i.i.i = select i1 %i.wa, i32 %i.wd, i32 %i.wc
  %.sink.i.i.i.i = select i1 %i.wa, i64 16, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.vv, i64 24 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !521
  %i.wg = add i32 %i.wf, %.sink16.i.i.i.i
  store i32 %i.wg, ptr %i.we, align 8, !tbaa !521
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.sink.i.i.i.i
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !523
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vv, i64 20 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !524
  %.not.i.i.i7.i = icmp eq i32 %i.wk, 0
  br i1 %.not.i.i.i7.i, label %_ZN4llvm4PBQP8RegAlloc18RegAllocSolverImpl19handleReconnectEdgeEjj.exit.i.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %bb.bh
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !427
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.lr.ph.i.i.i.i61
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i61 ], [ %indvars.iv.next.i.i.i.i, %bb.bi ] ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 %indvars.iv.i.i.i.i
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !525, !range !92, !noundef !93
  %i.wp = zext nneg i8 %i.wo to i32
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !128
  %i.ws = add i32 %i.wr, %i.wp
  store i32 %i.ws, ptr %i.wq, align 4, !tbaa !128
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.wt = load i32, ptr %i.wj, align 4, !tbaa !524
  %i.wu = zext i32 %i.wt to i64
  %i.wv = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.wu
  br i1 %i.wv, label %bb.bi, label %_ZN4llvm4PBQP8RegAlloc18RegAllocSolverImpl19handleReconnectEdgeEjj.exit.i.i, !llvm.loop !16

_ZN4llvm4PBQP8RegAlloc18RegAllocSolverImpl19handleReconnectEdgeEjj.exit.i.i: ; preds = %bb.bi, %bb.bh
  %i.ww = load i32, ptr %i.vy, align 8, !tbaa !128
  %i.wx = zext i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [88 x i8], ptr %i.vu, i64 %i.wx ; 3 uses
  %i.wz = load i32, ptr %i.vx, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 24 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 8, !tbaa !521
  %i.xc = add i32 %i.xb, %i.wz
  store i32 %i.xc, ptr %i.xa, align 8, !tbaa !521
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !523
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wy, i64 20 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !524
  %.not.i.i6.i.i = icmp eq i32 %i.xg, 0
  br i1 %.not.i.i6.i.i, label %_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE29addEdgeBypassingCostAllocatorISt10shared_ptrIKNS0_8MDMatrixINS2_14MatrixMetadataEEEEEEjjjT_.exit, label %.lr.ph.i.i7.i.i

.lr.ph.i.i7.i.i:                                  ; preds = %_ZN4llvm4PBQP8RegAlloc18RegAllocSolverImpl19handleReconnectEdgeEjj.exit.i.i
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !427
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i7.i.i
  %indvars.iv.i.i8.i.i = phi i64 [ 0, %.lr.ph.i.i7.i.i ], [ %indvars.iv.next.i.i9.i.i, %bb.bj ] ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 %indvars.iv.i.i8.i.i
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !525, !range !92, !noundef !93
  %i.xl = zext nneg i8 %i.xk to i32
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv.i.i8.i.i ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !128
  %i.xo = add i32 %i.xn, %i.xl
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !128
  %indvars.iv.next.i.i9.i.i = add nuw nsw i64 %indvars.iv.i.i8.i.i, 1 ; 2 uses
  %i.xp = load i32, ptr %i.xf, align 4, !tbaa !524
  %i.xq = zext i32 %i.xp to i64
  %i.xr = icmp samesign ult i64 %indvars.iv.next.i.i9.i.i, %i.xq
  br i1 %i.xr, label %bb.bj, label %_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE29addEdgeBypassingCostAllocatorISt10shared_ptrIKNS0_8MDMatrixINS2_14MatrixMetadataEEEEEEjjjT_.exit, !llvm.loop !16

_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE29addEdgeBypassingCostAllocatorISt10shared_ptrIKNS0_8MDMatrixINS2_14MatrixMetadataEEEEEEjjjT_.exit: ; preds = %bb.bj, %_ZNSt12__shared_ptrIKN4llvm4PBQP8MDMatrixINS1_8RegAlloc14MatrixMetadataEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN4llvm4PBQP8RegAlloc18RegAllocSolverImpl19handleReconnectEdgeEjj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i.i.i.i, label %bb.cf, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm4PBQP5GraphINS0_8RegAlloc18RegAllocSolverImplEE29addEdgeBypassingCostAllocatorISt10shared_ptrIKNS0_8MDMatrixINS2_14MatrixMetadataEEEEEEjjjT_.exit
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ql, i64 8 ; 4 uses
  %i.xt = load atomic i64, ptr %i.xs acquire, align 8 ; 2 uses
  %i.xu = icmp eq i64 %i.xt, 4294967297
  %i.xv = trunc i64 %i.xt to i32                  ; 2 uses
  br i1 %i.xu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.xs, align 8, !tbaa !411
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  store i32 0, ptr %i.xw, align 4, !tbaa !412
  %i.xx = load ptr, ptr %i.ql, align 8, !tbaa !47
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = load ptr, ptr %i.xy, align 8
  call void %i.xz(ptr noundef nonnull align 8 dereferenceable(16) %i.ql) #26, !inline_history !902
  %i.ya = load ptr, ptr %i.ql, align 8, !tbaa !47
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(16) %i.ql) #26, !inline_history !902
  br label %bb.cf

bb.bm:                                            ; preds = %bb.bk
  %i.yd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !121
  %.not.i.i.i42.i = icmp eq i8 %i.yd, 0
  br i1 %.not.i.i.i42.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ye = add nsw i32 %i.xv, -1
  store i32 %i.ye, ptr %i.xs, align 8, !tbaa !128
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.yf = atomicrmw volatile add ptr %i.xs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i = phi i32 [ %i.xv, %bb.bn ], [ %i.yf, %bb.bo ]
  %i.yg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.yg, label %bb.bp, label %bb.cf, !prof !413

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ql) #26
  br label %bb.cf

_ZN4llvm4PBQP6MatrixC2Ejjf.exit.i:                ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_4PBQP8RegAlloc16AllowedRegVectorES7_ESt10shared_ptrIKNS3_8MDMatrixINS4_14MatrixMetadataEEEENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SE_EEEES8_SE_SG_SJ_E4findERKS8_.exit.i
  %i.yh = load i32, ptr %i.oi, align 8, !tbaa !408
  %i.yi = add i32 %i.yh, 1                        ; 2 uses
  %i.yj = load i32, ptr %i.ol, align 8, !tbaa !408
  %i.yk = add i32 %i.yj, 1                        ; 3 uses
  %i.yl = mul i32 %i.yk, %i.yi
  %i.ym = zext i32 %i.yl to i64
  %i.yn = shl nuw nsw i64 %i.ym, 2                ; 2 uses
  %i.yo = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.yn) #25, !noalias !950 ; 5 uses
  %i.yp = ptrtoaddr ptr %i.yo to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yo, i8 0, i64 %i.yn, i1 false), !noalias !950
  %i.yq = load i32, ptr %i.oi, align 8, !tbaa !408 ; 2 uses
  %.not23.i = icmp eq i32 %i.yq, 0
  br i1 %.not23.i, label %bb.cc, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %_ZN4llvm4PBQP6MatrixC2Ejjf.exit.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 2 uses
  %i.yt = load i32, ptr %i.ol, align 8, !tbaa !408 ; 2 uses
  %i.yu = icmp eq i32 %i.yt, 0
  br i1 %i.yu, label %bb.cc, label %.lr.ph26.split.i.preheader

.lr.ph26.split.i.preheader:                       ; preds = %.lr.ph26.i
  %invariant.op = add i64 3, %i.yp
  br label %.lr.ph26.split.i

._crit_edge27.i:                                  ; preds = %._crit_edge.i
  br i1 %.140.lcssa.i, label %bb.br, label %bb.cc

.lr.ph26.split.i:                                 ; preds = %.lr.ph26.split.i.preheader, %._crit_edge.i
  %i.yv = phi i32 [ %i.abh, %._crit_edge.i ], [ %i.yq, %.lr.ph26.split.i.preheader ] ; 4 uses
  %i.yw = phi i32 [ %i.abi, %._crit_edge.i ], [ %i.yt, %.lr.ph26.split.i.preheader ] ; 12 uses
  %i.yx = phi i32 [ %i.abj, %._crit_edge.i ], [ 1, %.lr.ph26.split.i.preheader ]
  %.03825.i = phi i32 [ %.pre-phi35.i, %._crit_edge.i ], [ 0, %.lr.ph26.split.i.preheader ] ; 3 uses
  %.03924.i = phi i1 [ %.140.lcssa.i, %._crit_edge.i ], [ false, %.lr.ph26.split.i.preheader ] ; 6 uses
  %i.yy = zext i32 %.03825.i to i64
  %i.yz = load ptr, ptr %i.yr, align 8, !tbaa !400
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yy
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.za, align 4, !tbaa !128
  %.sroa.0.0.copyload.i.fr.i = freeze i32 %.sroa.0.0.copyload.i.i ; 7 uses
  %.not4120.i = icmp eq i32 %i.yx, 0
  br i1 %.not4120.i, label %.lr.ph26.split.._crit_edge_crit_edge.i, label %.lr.ph.i

.lr.ph26.split.._crit_edge_crit_edge.i:           ; preds = %.lr.ph26.split.i
  %.pre34.i = add i32 %.03825.i, 1
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph26.split.i
  %i.zb = add i32 %.sroa.0.0.copyload.i.fr.i, -1
  %i.zc = icmp ult i32 %i.zb, 1073741823
  %i.zd = add i32 %.03825.i, 1                    ; 5 uses
  %i.ze = mul i32 %i.zd, %i.yk
  %i.zf = zext i32 %i.ze to i64                   ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.zf ; 8 uses
  br i1 %i.zc, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.zh = load ptr, ptr %i.ys, align 8, !tbaa !400 ; 5 uses
  %i.zi = add i32 %i.yw, -1
  %i.zj = zext i32 %i.zi to i64
  %i.zk = add nuw nsw i64 %i.zj, 1                ; 2 uses
  %or.cond = icmp ult i32 %i.yw, 40
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i
  %i.zl = ptrtoaddr ptr %i.zh to i64
  %i.zm = shl nuw nsw i64 %i.zf, 2
  %i.zn = sub i64 %i.zm, %i.zl
  %i.zo = add i64 %i.zn, %invariant.op
  %diff.check = icmp ult i64 %i.zo, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zk, 8589934588              ; 4 uses
  %i.zp = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.0.copyload.i.fr.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <4 x i1> poison, i1 %.03924.i, i64 0
  %broadcast.splat277 = shufflevector <4 x i1> %broadcast.splatinsert276, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue283, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue283 ] ; 6 uses
  %vec.phi = phi <4 x i1> [ %broadcast.splat277, %vector.ph ], [ %i.aal, %pred.store.continue283 ]
  %i.zq = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aak, %pred.store.continue283 ]
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %index
  %wide.load = load <4 x i32>, ptr %i.zr, align 4, !tbaa !128
  %wide.load.fr = freeze <4 x i32> %wide.load
  %i.zs = icmp eq <4 x i32> %broadcast.splat, %wide.load.fr ; 6 uses
  %i.zt = extractelement <4 x i1> %i.zs, i64 0
  br i1 %i.zt, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.zu = and i64 %index, 4294967292
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store float +inf, ptr %i.zw, align 4, !tbaa !145
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.zx = extractelement <4 x i1> %i.zs, i64 1
  br i1 %i.zx, label %pred.store.if278, label %pred.store.continue279

pred.store.if278:                                 ; preds = %pred.store.continue
  %i.zy = and i64 %index, 4294967292
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store float +inf, ptr %i.aaa, align 4, !tbaa !145
  br label %pred.store.continue279

pred.store.continue279:                           ; preds = %pred.store.if278, %pred.store.continue
  %i.aab = extractelement <4 x i1> %i.zs, i64 2
  br i1 %i.aab, label %pred.store.if280, label %pred.store.continue281

pred.store.if280:                                 ; preds = %pred.store.continue279
  %i.aac = and i64 %index, 4294967292
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 12
  store float +inf, ptr %i.aae, align 4, !tbaa !145
  br label %pred.store.continue281

pred.store.continue281:                           ; preds = %pred.store.if280, %pred.store.continue279
  %i.aaf = extractelement <4 x i1> %i.zs, i64 3
  br i1 %i.aaf, label %pred.store.if282, label %pred.store.continue283

pred.store.if282:                                 ; preds = %pred.store.continue281
  %i.aag = add nuw nsw i64 %index, 4
  %i.aah = and i64 %i.aag, 4294967292
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.aah
  store float +inf, ptr %i.aai, align 4, !tbaa !145
  br label %pred.store.continue283

pred.store.continue283:                           ; preds = %pred.store.if282, %pred.store.continue281
  %i.aaj = bitcast <4 x i1> %i.zs to i4
  %.not285 = icmp eq i4 %i.aaj, 0                 ; 2 uses
  %i.aak = select i1 %.not285, <4 x i1> %i.zq, <4 x i1> %i.zs ; 2 uses
  %i.aal = select i1 %.not285, <4 x i1> %vec.phi, <4 x i1> splat (i1 true) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aam = icmp eq i64 %index.next, %n.vec
  br i1 %i.aam, label %middle.block, label %vector.body, !llvm.loop !905

middle.block:                                     ; preds = %pred.store.continue283
  %i.aan = call i1 @llvm.experimental.vector.extract.last.active.v4i1(<4 x i1> %i.aal, <4 x i1> %i.aak, i1 %.03924.i) ; 2 uses
  %cmp.n = icmp eq i64 %i.zk, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.03722.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i ], [ %i.zp, %middle.block ] ; 4 uses
  %.14021.us.i.ph = phi i1 [ %.03924.i, %vector.memcheck ], [ %.03924.i, %.lr.ph.split.us.i ], [ %i.aan, %middle.block ] ; 2 uses
  %i.aao = sub i32 %i.yw, %.03722.us.i.ph
  %.neg = add i32 %.03722.us.i.ph, 1
  %xtraiter = and i32 %i.aao, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.i.ph
  %.sroa.0.0.copyload.i45.us.i.prol = load i32, ptr %i.aap, align 4, !tbaa !128
  %i.aaq = icmp eq i32 %.sroa.0.0.copyload.i.fr.i, %.sroa.0.0.copyload.i45.us.i.prol
  %i.aar = or disjoint i64 %indvars.iv.i.ph, 1    ; 2 uses
  br i1 %i.aaq, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.prol, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.prol: ; preds = %scalar.ph.prol
  %i.aas = and i64 %i.aar, 4294967293
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.aas
  store float +inf, ptr %i.aat, align 4, !tbaa !145
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.prol, %scalar.ph.prol
  %.2.us.i.prol = phi i1 [ true, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.prol ], [ %.14021.us.i.ph, %scalar.ph.prol ] ; 2 uses
  %i.aau = add i32 %.03722.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol, %scalar.ph.preheader
  %.2.us.i.lcssa.unr = phi i1 [ poison, %scalar.ph.preheader ], [ %.2.us.i.prol, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %i.aar, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol ]
  %.03722.us.i.unr = phi i32 [ %.03722.us.i.ph, %scalar.ph.preheader ], [ %i.aau, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol ]
  %.14021.us.i.unr = phi i1 [ %.14021.us.i.ph, %scalar.ph.preheader ], [ %.2.us.i.prol, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.prol ]
  %i.aav = icmp eq i32 %i.yw, %.neg
  br i1 %i.aav, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1
  %indvars.iv.i = phi i64 [ %i.abd, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03722.us.i = phi i32 [ %i.abg, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %.03722.us.i.unr, %scalar.ph.prol.loopexit ]
  %.14021.us.i = phi i1 [ %.2.us.i.1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %.14021.us.i.unr, %scalar.ph.prol.loopexit ]
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i45.us.i = load i32, ptr %i.aaw, align 4, !tbaa !128
  %i.aax = icmp eq i32 %.sroa.0.0.copyload.i.fr.i, %.sroa.0.0.copyload.i45.us.i
  %i.aay = add nuw nsw i64 %indvars.iv.i, 1       ; 2 uses
  br i1 %i.aax, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i: ; preds = %scalar.ph
  %i.aaz = and i64 %i.aay, 4294967295
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.aaz
  store float +inf, ptr %i.aba, align 4, !tbaa !145
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i: ; preds = %scalar.ph, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i
  %.2.us.i = phi i1 [ true, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i ], [ %.14021.us.i, %scalar.ph ]
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.aay
  %.sroa.0.0.copyload.i45.us.i.1 = load i32, ptr %i.abb, align 4, !tbaa !128
  %i.abc = icmp eq i32 %.sroa.0.0.copyload.i.fr.i, %.sroa.0.0.copyload.i45.us.i.1
  %i.abd = add nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  br i1 %i.abc, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.1, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.1: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i
  %i.abe = and i64 %i.abd, 4294967295
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.abe
  store float +inf, ptr %i.abf, align 4, !tbaa !145
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i
  %.2.us.i.1 = phi i1 [ true, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.us.i.1 ], [ %.2.us.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i ] ; 2 uses
  %i.abg = add i32 %.03722.us.i, 2                ; 2 uses
  %.not41.us.i.1 = icmp eq i32 %i.abg, %i.yw
  br i1 %.not41.us.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !906

._crit_edge.loopexit.i:                           ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i
  %.pre.i50 = load i32, ptr %i.oi, align 8, !tbaa !408
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1, %middle.block, %._crit_edge.loopexit.i, %.lr.ph26.split.._crit_edge_crit_edge.i
  %.pre-phi35.i = phi i32 [ %.pre34.i, %.lr.ph26.split.._crit_edge_crit_edge.i ], [ %i.zd, %._crit_edge.loopexit.i ], [ %i.zd, %middle.block ], [ %i.zd, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %i.zd, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.abh = phi i32 [ %i.yv, %.lr.ph26.split.._crit_edge_crit_edge.i ], [ %.pre.i50, %._crit_edge.loopexit.i ], [ %i.yv, %middle.block ], [ %i.yv, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %i.yv, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.abi = phi i32 [ %i.yw, %.lr.ph26.split.._crit_edge_crit_edge.i ], [ %i.abu, %._crit_edge.loopexit.i ], [ %i.yw, %middle.block ], [ %i.yw, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %i.yw, %scalar.ph.prol.loopexit ]
  %i.abj = phi i32 [ 0, %.lr.ph26.split.._crit_edge_crit_edge.i ], [ %i.abu, %._crit_edge.loopexit.i ], [ %i.yw, %middle.block ], [ %i.yw, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ], [ %i.yw, %scalar.ph.prol.loopexit ]
  %.140.lcssa.i = phi i1 [ %.03924.i, %.lr.ph26.split.._crit_edge_crit_edge.i ], [ %.2.i, %._crit_edge.loopexit.i ], [ %i.aan, %middle.block ], [ %.2.us.i.lcssa.unr, %scalar.ph.prol.loopexit ], [ %.2.us.i.1, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.us.i.1 ] ; 2 uses
  %.not.i49 = icmp eq i32 %.pre-phi35.i, %i.abh
  br i1 %.not.i49, label %._crit_edge27.i, label %.lr.ph26.split.i, !llvm.loop !907

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i
  %.03722.i = phi i32 [ %i.abu, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.14021.i = phi i1 [ %.2.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i ], [ %.03924.i, %.lr.ph.i ] ; 2 uses
  %i.abk = zext i32 %.03722.i to i64
  %i.abl = load ptr, ptr %i.ys, align 8, !tbaa !400
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.abl, i64 %i.abk
  %.sroa.0.0.copyload.i45.i = load i32, ptr %i.abm, align 4, !tbaa !128 ; 3 uses
  %i.abn = icmp eq i32 %.sroa.0.0.copyload.i.fr.i, %.sroa.0.0.copyload.i45.i
  br i1 %i.abn, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.split.i
  %i.abo = add i32 %.sroa.0.0.copyload.i45.i, -1
  %i.abp = icmp ult i32 %i.abo, 1073741823
  br i1 %i.abp, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.bq
  %i.abq = call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.oe, i32 %.sroa.0.0.copyload.i.fr.i, i32 %.sroa.0.0.copyload.i45.i) #26
  br i1 %i.abq, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %.lr.ph.split.i
  %i.abr = add i32 %.03722.i, 1
  %i.abs = zext i32 %i.abr to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %i.abs
  store float +inf, ptr %i.abt, align 4, !tbaa !145
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread14.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %bb.bq
  %.2.i = phi i1 [ true, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i ], [ %.14021.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i ], [ %.14021.i, %bb.bq ] ; 2 uses
  %i.abu = add i32 %.03722.i, 1                   ; 4 uses
  %i.abv = load i32, ptr %i.ol, align 8, !tbaa !408
  %.not41.i = icmp eq i32 %i.abu, %i.abv
  br i1 %.not41.i, label %._crit_edge.loopexit.i, label %.lr.ph.split.i, !llvm.loop !908

bb.br:                                            ; preds = %._crit_edge27.i
  store i32 %i.yi, ptr %6, align 8, !tbaa !140
  store i32 %i.yk, ptr %i.bm, align 4, !tbaa !141
  %i.abw = ptrtoint ptr %i.yo to i64
  store i64 %i.abw, ptr %i.bn, align 8, !tbaa !146
end_hunk_0
