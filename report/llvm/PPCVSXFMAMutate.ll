Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCVSXFMAMutate?download=true
inline.NumInlined: 751
inline.NumDeleted: 499
begin_hunk_0_@_ZN12_GLOBAL__N_115PPCVSXFMAMutate20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.wg = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.wh = inttoptr i64 %i.wg to ptr
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !463
  %i.wk = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i to i32
  %i.wl = lshr i32 %i.wk, 1
  %i.wm = and i32 %i.wl, 3
  %i.wn = or i32 %i.wm, %i.wj
  %i.wo = load i32, ptr %i.fn, align 8, !tbaa !463
  %i.wp = or i32 %i.wo, 2
  %.not7.i.i.i = icmp ugt i32 %i.wn, %i.wp
  br i1 %.not7.i.i.i, label %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !467
  br label %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit.i

_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit.i: ; preds = %bb.ap, %bb.ao, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit279.i
  %i.ws = phi ptr [ %i.wr, %bb.ap ], [ null, %bb.ao ], [ null, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit279.i ]
  %i.wt = icmp slt i32 %i.jb, 0
  %i.wu = load ptr, ptr %i.an, align 8
  %i.wv = getelementptr inbounds nuw [16 x i8], ptr %i.wu, i64 %i.qv
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = zext nneg i32 %i.jb to i64
  %i.wy = load ptr, ptr %i.ao, align 8
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %i.wx
  %.0.in.i.i.i = select i1 %i.wt, ptr %i.ww, ptr %i.wz
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !495 ; 4 uses
  %.not.i.i281.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i281.i, label %._crit_edge.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit.i
  %i.xa = load i32, ptr %.0.i.i.i, align 8
  %i.xb = icmp slt i32 %i.xa, 0
  br i1 %i.xb, label %.preheader.i.i.i, label %.lr.ph399.i.preheader

.lr.ph399.i.preheader:                            ; preds = %bb.ar, %bb.aq
  %.sroa.0308.0398.i.ph = phi ptr [ %.0.i.i.i, %bb.aq ], [ %storemerge.i.i.i.i, %bb.ar ]
  br label %.lr.ph399.i

.preheader.i.i.i:                                 ; preds = %bb.aq, %bb.ar
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.ar ], [ %.0.i.i.i, %bb.aq ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !452 ; 4 uses
  %.not.i.i.i283.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i283.i, label %._crit_edge.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.i.i.i
  %i.xc = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.xd = icmp slt i32 %i.xc, 0
  br i1 %i.xd, label %.preheader.i.i.i, label %.lr.ph399.i.preheader, !llvm.loop !496

._crit_edge.i:                                    ; preds = %.preheader.i.i.i, %bb.ax, %_ZNK4llvm9LiveRange11getVNInfoAtENS_9SlotIndexE.exit.i
  %i.xe = load ptr, ptr %i.s, align 8, !tbaa !314
  tail call void @_ZN4llvm13LiveIntervals14removeIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %i.xe, i32 %i.qd)
  %i.xf = load ptr, ptr %i.s, align 8, !tbaa !314 ; 5 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 136 ; 3 uses
  %i.xh = and i32 %i.qd, 2147483647               ; 4 uses
  %i.xi = add nuw i32 %i.xh, 1
  %i.xj = zext i32 %i.xi to i64                   ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 144 ; 3 uses
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i284.i = icmp ugt i32 %i.xl, %i.xh
  br i1 %.not.i.i.i284.i, label %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i, label %bb.as

._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i: ; preds = %._crit_edge.i
  %.pre.i.i.i = load ptr, ptr %i.xg, align 8, !tbaa !21
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.xm = zext nneg i32 %i.xl to i64              ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xf, i64 152 ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !455 ; 2 uses
  %i.xp = sub nuw nsw i64 %i.xj, %i.xm            ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xf, i64 148
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !45
  %.not.i.i.i.i.i.not.i.i.i.i = icmp ult i32 %i.xh, %i.xr
  br i1 %.not.i.i.i.i.i.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, label %bb.at, !prof !46

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.xg, ptr noundef nonnull %i.xn, i64 noundef %i.xj, i64 noundef 8) #15
  %.pre.i.i.i.i.i.i285.i = load i32, ptr %i.xk, align 8, !tbaa !42 ; 2 uses
  %.pre.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i285.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.xm, %bb.as ], [ %.pre.i.i.i.i.i.i, %bb.at ]
  %i.xs = phi i32 [ %i.xl, %bb.as ], [ %.pre.i.i.i.i.i.i285.i, %bb.at ]
  %i.xt = load ptr, ptr %i.xg, align 8, !tbaa !21 ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %.pre-phi.i.i.i.i.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.xp, 3
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.xw = and i32 %i.qd, 2147483647
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = sub nsw i64 %i.xx, %i.xm
  %i.xz = and i64 %i.xy, 2305843009213693951      ; 2 uses
  %i.ya = add nuw nsw i64 %i.xz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.xz, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i
  %n.vec = and i64 %i.ya, 4611686018427387900     ; 3 uses
  %i.yb = shl i64 %n.vec, 3
  %i.yc = getelementptr i8, ptr %i.xu, i64 %i.yb
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.xo, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.yd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.xu, i64 %i.yd ; 2 uses
  %i.ye = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !454
  store <2 x ptr> %broadcast.splat, ptr %i.ye, align 8, !tbaa !454
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.yf = icmp eq i64 %index.next, %n.vec
  br i1 %i.yf, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ya, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.xu, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i ], [ %i.yc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.xo, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !454
  %i.yg = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yg, %i.xv
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !498

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.yh = trunc nuw i64 %i.xp to i32
  %i.yi = add i32 %i.xs, %i.yh
  store i32 %i.yi, ptr %i.xk, align 8, !tbaa !42
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i
  %i.yj = phi ptr [ %.pre.i.i.i, %._ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE4growENS_8RegisterE.exit_crit_edge.i.i.i ], [ %i.xt, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ]
  %i.yk = zext nneg i32 %i.xh to i64
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yk
  %i.ym = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %i.qd) #15 ; 2 uses
  store ptr %i.ym, ptr %i.yl, align 8, !tbaa !454
  %i.yn = tail call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.xf, ptr noundef nonnull align 8 dereferenceable(120) %i.ym) #15 ; 0 uses
  br i1 %i.gt, label %.loopexit.i, label %bb.ay

.lr.ph399.i:                                      ; preds = %.lr.ph399.i.preheader, %bb.ax
  %.sroa.0308.0398.i = phi ptr [ %storemerge.i.i.i, %bb.ax ], [ %.sroa.0308.0398.i.ph, %.lr.ph399.i.preheader ] ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.0308.0398.i, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !499
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph399.i
  %.pn.i.i.i = phi ptr [ %.sroa.0308.0398.i, %.lr.ph399.i ], [ %storemerge.i.i.i, %bb.av ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !452 ; 4 uses
  %.not.i.i286.i = icmp eq ptr %storemerge.i.i.i, null ; 2 uses
  br i1 %.not.i.i286.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.yq = load i32, ptr %storemerge.i.i.i, align 8
  %i.yr = icmp slt i32 %i.yq, 0
  br i1 %i.yr, label %bb.au, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.i, !llvm.loop !496

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.i: ; preds = %bb.av, %bb.au
  %i.ys = icmp eq ptr %i.yp, %i.gc
  br i1 %i.ys, label %bb.ax, label %bb.aw, !llvm.loop !501

bb.aw:                                            ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.i
  tail call void @_ZN4llvm14MachineOperand12substVirtRegENS_8RegisterEjRKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0308.0398.i, i32 %i.qd, i32 noundef %i.qm, ptr noundef nonnull align 8 dereferenceable(316) %i.ak) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb1ELb1ELb1ELb0EEppEv.exit.i
  br i1 %.not.i.i286.i, label %._crit_edge.i, label %.lr.ph399.i

bb.ay:                                            ; preds = %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i
  %i.yt = load ptr, ptr %i.aq, align 8, !tbaa !502, !noalias !503 ; 2 uses
  %.not384400.i = icmp eq ptr %i.yt, null
  br i1 %.not384400.i, label %.loopexit.i, label %.lr.ph404.preheader.i

.lr.ph404.preheader.i:                            ; preds = %bb.ay
  %i.yu = load ptr, ptr %i.ap, align 8, !tbaa !506, !noalias !503
  %i.yv = zext nneg i32 %i.gs to i64
  %i.yw = getelementptr inbounds nuw [24 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !507, !noalias !503 ; 2 uses
  %i.yz = lshr i32 %i.yy, 12
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %i.yt, i64 %i.za
  %i.zc = and i32 %i.yy, 4095
  br label %.lr.ph404.i

.lr.ph404.i:                                      ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i, %.lr.ph404.preheader.i
  %.sroa.5301.0402.i = phi ptr [ %i.aai, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i ], [ %i.zb, %.lr.ph404.preheader.i ] ; 2 uses
  %.sroa.9.0401.i = phi i32 [ %i.aal, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i ], [ %i.zc, %.lr.ph404.preheader.i ] ; 3 uses
  %i.zd = load ptr, ptr %i.s, align 8, !tbaa !314 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 408 ; 2 uses
  %i.zf = zext i32 %.sroa.9.0401.i to i64         ; 2 uses
  %i.zg = load ptr, ptr %i.ze, align 8, !tbaa !21
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zf
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !509 ; 2 uses
  %.not.i287.i = icmp eq ptr %i.zi, null
  br i1 %.not.i287.i, label %bb.az, label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i

bb.az:                                            ; preds = %.lr.ph404.i
  %i.zj = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17 ; 12 uses
  %i.zk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseSegmentSetForPhysRegsE, i64 120), align 8, !tbaa !321, !range !18, !noundef !19
  %i.zl = trunc nuw i8 %i.zk to i1
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store ptr %i.zm, ptr %i.zj, align 8, !tbaa !21
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store i32 0, ptr %i.zn, align 8, !tbaa !42
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 12
  store i32 2, ptr %i.zo, align 4, !tbaa !45
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zj, i64 64
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zj, i64 80
  store ptr %i.zq, ptr %i.zp, align 8, !tbaa !21
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zj, i64 72
  store i32 0, ptr %i.zr, align 8, !tbaa !42
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zj, i64 76
  store i32 2, ptr %i.zs, align 4, !tbaa !45
  br i1 %i.zl, label %bb.ba, label %_ZN4llvm9LiveRangeC2Eb.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.zt = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17, !noalias !511 ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.zt, i8 0, i64 32, i1 false), !noalias !511
  store ptr %i.zu, ptr %i.zv, align 8, !tbaa !514, !noalias !511
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 32
  store ptr %i.zu, ptr %i.zw, align 16, !tbaa !515, !noalias !511
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 40
  store i64 0, ptr %i.zx, align 8, !tbaa !516, !noalias !511
  br label %_ZN4llvm9LiveRangeC2Eb.exit.i.i

_ZN4llvm9LiveRangeC2Eb.exit.i.i:                  ; preds = %bb.ba, %bb.az
  %storemerge.i.i289.i = phi ptr [ %i.zt, %bb.ba ], [ null, %bb.az ]
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zj, i64 96
  store ptr %storemerge.i.i289.i, ptr %i.zy, align 8, !tbaa !517
  %2 = load ptr, ptr %i.ze, align 8, !tbaa !21
  %3 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.zf
  store ptr %i.zj, ptr %3, align 8, !tbaa !509
  tail call void @_ZN4llvm13LiveIntervals19computeRegUnitRangeERNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(424) %i.zd, ptr noundef nonnull align 8 dereferenceable(104) %i.zj, i32 noundef %.sroa.9.0401.i) #15
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !314
  br label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i

_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i: ; preds = %_ZN4llvm9LiveRangeC2Eb.exit.i.i, %.lr.ph404.i
  %i.zz = phi ptr [ %i.zd, %.lr.ph404.i ], [ %.pre.i, %_ZN4llvm9LiveRangeC2Eb.exit.i.i ]
  %.0.i288.i = phi ptr [ %i.zi, %.lr.ph404.i ], [ %i.zj, %_ZN4llvm9LiveRangeC2Eb.exit.i.i ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !390
  %i.aac = load i32, ptr %i.ar, align 8, !tbaa !519
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 128
  %i.aae = zext i32 %i.aac to i64
  %i.aaf = load ptr, ptr %i.aad, align 8, !tbaa !21
  %i.aag = getelementptr inbounds nuw [16 x i8], ptr %i.aaf, i64 %i.aae
  %.sroa.0.0.copyload.i.i290.i = load i64, ptr %i.aag, align 8, !tbaa !452
  %i.aah = tail call noundef ptr @_ZN4llvm9LiveRange13extendInBlockENS_9SlotIndexES1_(ptr noundef nonnull align 8 dereferenceable(104) %.0.i288.i, i64 %.sroa.0.0.copyload.i.i290.i, i64 %i.vz) #15 ; 0 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.5301.0402.i, i64 2
  %i.aaj = load i16, ptr %.sroa.5301.0402.i, align 2, !tbaa !520 ; 2 uses
  %i.aak = sext i16 %i.aaj to i32
  %i.aal = add i32 %.sroa.9.0401.i, %i.aak
  %.not.i.i292.i = icmp eq i16 %i.aaj, 0
  br i1 %.not.i.i292.i, label %.loopexit.i, label %.lr.ph404.i

.loopexit.i:                                      ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit.i, %bb.ay, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i
  tail call void @_ZN4llvm9LiveRange11removeValNoEPNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i276.i, ptr noundef %i.ws) #15
  %i.aam = load ptr, ptr %i.s, align 8, !tbaa !314
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !390
  tail call void @_ZN4llvm11SlotIndexes26removeMachineInstrFromMapsERNS_12MachineInstrEb(ptr noundef nonnull align 8 dereferenceable(416) %i.aao, ptr noundef nonnull align 8 dereferenceable(80) %i.gc, i1 noundef zeroext false) #15
  %i.aap = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.gc) #15 ; 0 uses
  br label %.critedge160.i

.critedge160.i:                                   ; preds = %bb.t, %bb.s, %.lr.ph.i, %.loopexit.i, %bb.ah, %_ZNK4llvm9LiveRange6liveAtENS_9SlotIndexE.exit.i, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit257.i, %bb.ac, %bb.ab, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit222.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %bb.r, %bb.q, %_ZNK4llvm12MachineInstr10isFullCopyEv.exit.i, %bb.o, %bb.n, %bb.m, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread459.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.i, %._crit_edge.i.i, %bb.k, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i, %bb.e
  %.7.i = phi i1 [ %.0407.i, %bb.e ], [ %.0407.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.i ], [ %.0407.i, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread459.i ], [ %.0407.i, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i ], [ %.0407.i, %bb.m ], [ %.0407.i, %_ZNK4llvm12MachineInstr10isFullCopyEv.exit.i ], [ %.0407.i, %bb.ah ], [ %.0407.i, %bb.q ], [ %.0407.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ], [ true, %.loopexit.i ], [ %.0407.i, %bb.n ], [ %.0407.i, %bb.o ], [ %.0407.i, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit257.i ], [ %.0407.i, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit222.i ], [ %.0407.i, %_ZNK4llvm9LiveRange6liveAtENS_9SlotIndexE.exit.i ], [ %.0407.i, %bb.ac ], [ %.0407.i, %bb.r ], [ %.0407.i, %bb.ab ], [ %.0407.i, %._crit_edge.i.i ], [ %.0407.i, %bb.k ], [ %.0407.i, %.lr.ph.i ], [ %.0407.i, %bb.s ], [ %.0407.i, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0359.0408.i) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i294.i = load i64, ptr %.sroa.0359.0408.i, align 8
  %i.aaq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i294.i, 4
  %.not.i.i.i295.i = icmp eq i64 %i.aaq, 0
  br i1 %.not.i.i.i295.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i: ; preds = %.critedge160.i
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0359.0408.i, i64 44
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !428
  %i.aat = and i32 %i.aas, 8
  %.not34.i.i.i.i = icmp eq i32 %i.aat, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.aav, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i ], [ %.sroa.0359.0408.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i ]
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !380 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 44
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !428
  %i.aay = and i32 %i.aax, 8
  %.not3.i.i.i299.i = icmp eq i32 %i.aay, 0
  br i1 %.not3.i.i.i299.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i, !llvm.loop !521

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i, %.critedge160.i
  %.sroa.0.1.i.i.i296.i = phi ptr [ %.sroa.0359.0408.i, %.critedge160.i ], [ %.sroa.0359.0408.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i297.i ], [ %i.aav, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i298.i ]
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i296.i, i64 8
  %.sroa.0359.0.i = load ptr, ptr %i.aaz, align 8, !tbaa !380 ; 2 uses
  %.not373.i = icmp eq ptr %.sroa.0359.0.i, %i.am
  br i1 %.not373.i, label %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit, label %bb.e, !llvm.loop !522

_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %spec.select = select i1 %.7.i, i1 true, i1 %.01130
  br label %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit.thread

_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit.thread: ; preds = %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit, %.lr.ph
  %i.aba = phi i1 [ %.01130, %.lr.ph ], [ %spec.select, %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.ac
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit.thread, %bb.d, %bb.b, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK4llvm4Pass11getAnalysisINS_24LiveIntervalsWrapperPassEEERT_v.exit ], [ false, %bb.d ], [ %i.aba, %_ZN12_GLOBAL__N_115PPCVSXFMAMutate12processBlockERN4llvm17MachineBasicBlockE.exit.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(161)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKvLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #15
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !42
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !42
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !42
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #6

declare noundef i32 @_ZN4llvm3PPC18getAltVSXFMAOpcodeEj(i32 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520), i32, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32), i32) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN4llvm14MachineOperand12substVirtRegENS_8RegisterEjRKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32), i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13LiveIntervals14removeIntervalENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = and i32 %1, 2147483647
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !454  ; 8 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12LiveInterval14clearSubRangesEv(ptr noundef nonnull align 8 dereferenceable(120) %i.f) #15
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !517  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EESt14default_deleteIS7_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EEEclEPS7_.exit.i.i.i

_ZNKSt14default_deleteISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EEEclEPS7_.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !523
  tail call void @_ZNSt8_Rb_treeIN4llvm9LiveRange7SegmentES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 48) #18
  br label %_ZNSt10unique_ptrISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EESt14default_deleteIS7_EED2Ev.exit.i.i

_ZNSt10unique_ptrISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EESt14default_deleteIS7_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EEEclEPS7_.exit.i.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN4llvm11SmallVectorIPNS_6VNInfoELj2EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EESt14default_deleteIS7_EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.m) #15
  br label %_ZN4llvm11SmallVectorIPNS_6VNInfoELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_6VNInfoELj2EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt10unique_ptrISt3setIN4llvm9LiveRange7SegmentESt4lessIS3_ESaIS3_EESt14default_deleteIS7_EED2Ev.exit.i.i
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvm12LiveIntervalD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_6VNInfoELj2EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.p) #15
  br label %_ZN4llvm12LiveIntervalD2Ev.exit

_ZN4llvm12LiveIntervalD2Ev.exit:                  ; preds = %_ZN4llvm11SmallVectorIPNS_6VNInfoELj2EED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 120) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12LiveIntervalD2Ev.exit, %bb.a
  store ptr null, ptr %i.e, align 8, !tbaa !454
  ret void
}

declare noundef ptr @_ZN4llvm9LiveRange13extendInBlockENS_9SlotIndexES1_(ptr noundef nonnull align 8 dereferenceable(104), i64, i64) local_unnamed_addr #6

declare void @_ZN4llvm9LiveRange11removeValNoEPNS_6VNInfoE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #6

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
