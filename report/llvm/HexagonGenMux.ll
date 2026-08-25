Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonGenMux?download=true
inline.NumInlined: 1185
inline.NumDeleted: 659
begin_hunk_0_@_ZN12_GLOBAL__N_113HexagonGenMux20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
bb.an:                                            ; preds = %.lr.ph.i.i174.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !210
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6lookupEPKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6lookupEPKS2_.exit.i: ; preds = %bb.am, %bb.an, %bb.al, %bb.ak
  %i.vv = phi i32 [ %i.vu, %bb.an ], [ 0, %bb.ak ], [ 0, %bb.al ], [ 0, %bb.am ] ; 3 uses
  %i.vw = load ptr, ptr %9, align 8, !tbaa !310, !noalias !313 ; 5 uses
  %i.vx = load ptr, ptr %i.bc, align 8, !tbaa !322, !noalias !313 ; 2 uses
  %i.vy = load i32, ptr %i.bd, align 4, !tbaa !323, !noalias !313 ; 6 uses
  %i.vz = icmp eq i32 %i.vy, 0
  br i1 %i.vz, label %.loopexit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6lookupEPKS2_.exit.i
  %i.wa = add i32 %i.vy, -1                       ; 2 uses
  %i.wb = mul i32 %i.tv, 37
  %.03.i.i.i.i.i = and i32 %i.wa, %i.wb           ; 3 uses
  %i.wc = zext i32 %.03.i.i.i.i.i to i64          ; 2 uses
  %i.wd = lshr i64 %i.wc, 5
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !210, !noalias !324
  %i.wg = and i32 %.03.i.i.i.i.i, 31
  %i.wh = lshr i32 %i.wf, %i.wg
  %i.wi = trunc i32 %i.wh to i1
  br i1 %i.wi, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !212

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.wj = add nuw i32 %.04.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.wj, %i.wa            ; 3 uses
  %i.wk = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.wl = lshr i64 %i.wk, 5
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !210, !noalias !324
  %i.wo = and i32 %.0.i.i.i.i.i, 31
  %i.wp = lshr i32 %i.wn, %i.wo
  %i.wq = trunc i32 %i.wp to i1
  br i1 %i.wq, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !216

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ao, %bb.ap
  %i.wr = phi i64 [ %i.wk, %bb.ap ], [ %i.wc, %bb.ao ]
  %.04.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.ap ], [ %.03.i.i.i.i.i, %bb.ao ]
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %i.wr ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !210, !noalias !324
  %i.wu = icmp eq i32 %i.tv, %i.wt
  br i1 %i.wu, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i, label %bb.ap, !prof !215

.loopexit.i.i.i:                                  ; preds = %bb.ap, %bb.ao, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6lookupEPKS2_.exit.i
  %i.wv = zext i32 %i.vy to i64                   ; 2 uses
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %i.wv
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre410.i.a = zext i32 %i.vy to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre410.i.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i ], [ %i.wv, %.loopexit.i.i.i ] ; 3 uses
  %.lcssa.sink.i.i.i = phi ptr [ %i.ws, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.loopexit.i ], [ %i.ww, %.loopexit.i.i.i ] ; 5 uses
  %i.wx = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.wy = call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo16isPredicatedTrueEj(ptr noundef nonnull align 8 dereferenceable(440) %i.wx, i32 noundef %i.tr) #20
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %.pre-phi.i
  %.not339.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.wz
  br i1 %.not339.i, label %.critedge.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i
  %i.xa = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 4
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !325
  %.not150.i = icmp eq i32 %i.xb, %i.un
  br i1 %.not150.i, label %.critedge.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %.lcssa.sink.i.i.i)
  %.val2.i176.i = load ptr, ptr %9, align 8, !tbaa !310, !noalias !328 ; 2 uses
  %.val.i178.i = load i32, ptr %i.bd, align 4, !tbaa !323, !noalias !19 ; 2 uses
  %i.xc = zext i32 %.val.i178.i to i64            ; 2 uses
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %.val2.i176.i, i64 %i.xc
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ar, %bb.aq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i
  %.pre-phi411.i = phi i64 [ %i.xc, %bb.ar ], [ %.pre-phi.i, %bb.aq ], [ %.pre-phi.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i ]
  %.val2.i179.i = phi ptr [ %.val2.i176.i, %bb.ar ], [ %i.vw, %bb.aq ], [ %i.vw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i ] ; 4 uses
  %.val.i181.i = phi i32 [ %.val.i178.i, %bb.ar ], [ %i.vy, %bb.aq ], [ %i.vy, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i ] ; 4 uses
  %.sroa.0311.0.i = phi ptr [ %i.xd, %bb.ar ], [ %.lcssa.sink.i.i.i, %bb.aq ], [ %.lcssa.sink.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit.i ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %.val2.i179.i, i64 %.pre-phi411.i
  %i.xf = icmp eq ptr %.sroa.0311.0.i, %i.xe
  br i1 %i.xf, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %.critedge.i
  %i.xg = load ptr, ptr %i.bc, align 8, !tbaa !322, !noalias !331 ; 3 uses
  %i.xh = icmp eq i32 %.val.i181.i, 0
  br i1 %i.xh, label %.loopexit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.xi = add i32 %.val.i181.i, -1                ; 2 uses
  %i.xj = mul i32 %i.tv, 37
  %.05.i.i.i.i.i = and i32 %i.xi, %i.xj           ; 3 uses
  %i.xk = zext i32 %.05.i.i.i.i.i to i64          ; 2 uses
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %.val2.i179.i, i64 %i.xk ; 2 uses
  %i.xm = lshr i64 %i.xk, 5
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !210, !noalias !340
  %i.xp = and i32 %.05.i.i.i.i.i, 31
  %i.xq = lshr i32 %i.xo, %i.xp
  %i.xr = trunc i32 %i.xq to i1
  br i1 %i.xr, label %.lr.ph.i.i.i.i184.i, label %.loopexit.i.i.i.i, !prof !212

bb.au:                                            ; preds = %.lr.ph.i.i.i.i184.i
  %i.xs = add nuw i32 %.06.i.i.i.i.i, 1
  %.0.i.i.i.i185.i = and i32 %i.xs, %i.xi         ; 3 uses
  %i.xt = zext i32 %.0.i.i.i.i185.i to i64        ; 2 uses
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %.val2.i179.i, i64 %i.xt ; 2 uses
  %i.xv = lshr i64 %i.xt, 5
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !210, !noalias !340
  %i.xy = and i32 %.0.i.i.i.i185.i, 31
  %i.xz = lshr i32 %i.xx, %i.xy
  %i.ya = trunc i32 %i.xz to i1
  br i1 %i.ya, label %.lr.ph.i.i.i.i184.i, label %.loopexit.i.i.i.i, !prof !216, !llvm.loop !341

.lr.ph.i.i.i.i184.i:                              ; preds = %bb.at, %bb.au
  %i.yb = phi ptr [ %i.xu, %bb.au ], [ %i.xl, %bb.at ] ; 2 uses
  %.06.i.i.i.i.i = phi i32 [ %.0.i.i.i.i185.i, %bb.au ], [ %.05.i.i.i.i.i, %bb.at ]
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !210, !noalias !340
  %i.yd = icmp eq i32 %i.tv, %i.yc
  br i1 %i.yd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbEOjDpOT_.exit.i, label %bb.au, !prof !215

.loopexit.i.i.i.i:                                ; preds = %bb.au, %bb.at, %bb.as
  %.lcssa11.sink.i.ph.i.i.i.i = phi ptr [ %i.xl, %bb.at ], [ null, %bb.as ], [ %i.xu, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  store ptr %.lcssa11.sink.i.ph.i.i.i.i, ptr %i.a, align 8, !tbaa !342, !noalias !340
  %.val6.i.i.i.i.i = load i32, ptr %i.be, align 8, !tbaa !343, !noalias !340 ; 2 uses
  %i.ye = shl i32 %.val6.i.i.i.i.i, 2
  %i.yf = add i32 %i.ye, 4
  %i.yg = mul i32 %.val.i181.i, 3
  %.not.i.i.i.i182.i = icmp ult i32 %i.yf, %i.yg
  br i1 %.not.i.i.i.i182.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i.i.i.i, label %bb.av, !prof !215

bb.av:                                            ; preds = %.loopexit.i.i.i.i
  %i.yh = shl i32 %.val.i181.i, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %9, i32 noundef %i.yh), !noalias !340
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %9, i32 %i.tv, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i.i183.i = load ptr, ptr %i.a, align 8, !tbaa !342, !noalias !340
  %.val4.i.pre.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !322, !noalias !340
  %.val5.i.pre.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !310, !noalias !340
  %.val.i.i.i.i.i.pre.i = load i32, ptr %i.be, align 8, !tbaa !343, !noalias !340
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i.i.i.i: ; preds = %bb.av, %.loopexit.i.i.i.i
  %.val.i.i.i.i.i.i = phi i32 [ %.val.i.i.i.i.i.pre.i, %bb.av ], [ %.val6.i.i.i.i.i, %.loopexit.i.i.i.i ]
  %.val5.i.i.i.i.i = phi ptr [ %.val5.i.pre.i.i.i.i, %bb.av ], [ %.val2.i179.i, %.loopexit.i.i.i.i ]
  %.val4.i.i.i.i.i = phi ptr [ %.val4.i.pre.i.i.i.i, %bb.av ], [ %i.xg, %.loopexit.i.i.i.i ]
  %i.yi = phi ptr [ %.pre.i.i.i.i183.i, %bb.av ], [ %.lcssa11.sink.i.ph.i.i.i.i, %.loopexit.i.i.i.i ] ; 6 uses
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = ptrtoint ptr %.val5.i.i.i.i.i to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 4                 ; 2 uses
  %i.yn = trunc i64 %i.ym to i32
  %i.yo = and i32 %i.yn, 31
  %i.yp = shl nuw i32 1, %i.yo
  %i.yq = lshr i64 %i.ym, 5
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i.i.i, i64 %i.yq ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !210, !noalias !340
  %i.yt = or i32 %i.yp, %i.ys
  store i32 %i.yt, ptr %i.yr, align 4, !tbaa !210, !noalias !340
  %i.yu = add i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.yu, ptr %i.be, align 8, !tbaa !343, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  store i32 %i.tv, ptr %i.yi, align 4, !tbaa !210, !noalias !340
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store i32 0, ptr %i.yv, align 4, !noalias !340
  store i32 -1, ptr %i.yw, align 4, !tbaa !344, !noalias !340
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  store i32 -1, ptr %i.yx, align 4, !tbaa !345, !noalias !340
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbEOjDpOT_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbEOjDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i184.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.yi, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i.i.i.i ], [ %i.yb, %.lr.ph.i.i.i.i184.i ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 4
  store i32 %i.un, ptr %i.yy, align 4, !tbaa !325
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbEOjDpOT_.exit.i, %.critedge.i
  %.sroa.0311.1.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJEEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbEOjDpOT_.exit.i ], [ %.sroa.0311.0.i, %.critedge.i ] ; 5 uses
  br i1 %i.wy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0311.1.i, i64 8
  store i32 %i.vv, ptr %i.yz, align 4, !tbaa !344
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.0311.1.i, i64 12
  store i32 %i.vv, ptr %i.za, align 4, !tbaa !345
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0311.1.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !344
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.zb = phi i32 [ %.pre.i, %bb.ay ], [ %i.vv, %bb.ax ] ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.0311.1.i, i64 8
  %i.zd = icmp eq i32 %i.zb, -1
  br i1 %i.zd, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ze = getelementptr inbounds nuw i8, ptr %.sroa.0311.1.i, i64 12 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !345 ; 3 uses
  %i.zg = icmp eq i32 %i.zf, -1
  br i1 %i.zg, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %16 = call i32 @llvm.umin.i32(i32 %i.zf, i32 %i.zb) ; 5 uses
  %17 = call i32 @llvm.umax.i32(i32 %i.zb, i32 %i.zf) ; 7 uses
  %i.zh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 120), align 8, !tbaa !346
  %spec.select333.i = call i32 @llvm.usub.sat.i32(i32 %17, i32 %i.zh) ; 2 uses
  %i.zi = icmp ult i32 %spec.select333.i, %17
  br i1 %i.zi, label %.lr.ph.i, label %.critedge349.loopexit.i

.lr.ph.i:                                         ; preds = %bb.bb
  %i.zj = and i32 %i.un, 63
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = shl nuw i64 1, %i.zk                    ; 2 uses
  %i.zm = lshr i32 %i.un, 6
  %i.zn = zext nneg i32 %i.zm to i64              ; 2 uses
  %i.zo = load ptr, ptr %8, align 8, !tbaa !285, !noalias !352
  %i.zp = load ptr, ptr %i.at, align 8, !tbaa !293, !noalias !352 ; 2 uses
  %i.zq = load i32, ptr %i.au, align 4, !tbaa !294, !noalias !352 ; 2 uses
  %i.zr = icmp eq i32 %i.zq, 0
  %i.zs = add i32 %i.zq, -1                       ; 2 uses
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.zn
  br label %bb.bd

bb.bc:                                            ; preds = %.split, %_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread, %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit.i
  %i.zu = add nuw i32 %storemerge365.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.zu, %17
  br i1 %exitcond.not.i, label %.critedge349.loopexit.i, label %bb.bd, !llvm.loop !359

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i
  %storemerge365.i = phi i32 [ %spec.select333.i, %.lr.ph.i ], [ %i.zu, %bb.bc ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  br i1 %i.zr, label %_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.zv = mul i32 %storemerge365.i, 37
  %.03.i.i16 = and i32 %i.zs, %i.zv               ; 3 uses
  %i.zw = zext i32 %.03.i.i16 to i64              ; 2 uses
  %i.zx = lshr i64 %i.zw, 5
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.zx
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !210, !noalias !360
  %i.aaa = and i32 %.03.i.i16, 31
  %i.aab = lshr i32 %i.zz, %i.aaa
  %i.aac = trunc i32 %i.aab to i1
  br i1 %i.aac, label %.lr.ph.i.i18, label %_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread, !prof !212

bb.bf:                                            ; preds = %.lr.ph.i.i18
  %i.aad = add nuw i32 %.04.i.i19, 1
  %.0.i.i20 = and i32 %i.aad, %i.zs               ; 3 uses
  %i.aae = zext i32 %.0.i.i20 to i64              ; 2 uses
  %i.aaf = lshr i64 %i.aae, 5
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !210, !noalias !360
  %i.aai = and i32 %.0.i.i20, 31
  %i.aaj = lshr i32 %i.aah, %i.aai
  %i.aak = trunc i32 %i.aaj to i1
  br i1 %i.aak, label %.lr.ph.i.i18, label %_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread, !prof !216

.lr.ph.i.i18:                                     ; preds = %bb.be, %bb.bf
  %i.aal = phi i64 [ %i.aae, %bb.bf ], [ %i.zw, %bb.be ]
  %.04.i.i19 = phi i32 [ %.0.i.i20, %bb.bf ], [ %.03.i.i16, %bb.be ]
  %i.aam = getelementptr inbounds nuw [152 x i8], ptr %i.zo, i64 %i.aal ; 7 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !210, !noalias !360
  %i.aao = icmp eq i32 %storemerge365.i, %i.aan
  br i1 %i.aao, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i21, label %bb.bf, !prof !215

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i21: ; preds = %.lr.ph.i.i18
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 8 ; 2 uses
  store ptr %i.bh, ptr %11, align 8, !tbaa !21, !alias.scope !360
  store i32 0, ptr %i.br, align 8, !tbaa !183, !alias.scope !360
  store i32 6, ptr %i.bs, align 4, !tbaa !182, !alias.scope !360
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !183 ; 5 uses
  %.not.i.i.i.i.i22 = icmp eq i32 %i.aar, 0
  %i.aas = icmp eq ptr %11, %i.aap                ; 2 uses
  %or.cond.i.i.i.i23 = or i1 %i.aas, %.not.i.i.i.i.i22
  br i1 %or.cond.i.i.i.i23, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i21
  %i.aat = icmp ugt i32 %i.aar, 6
  br i1 %i.aat, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i38, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i24

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i38:   ; preds = %bb.bg
  %i.aau = zext i32 %i.aar to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull %i.bh, i64 noundef %i.aau, i64 noundef 8) #20
  %.pre.i.i.i.i39 = load i32, ptr %i.aaq, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i.i40 = icmp eq i32 %.pre.i.i.i.i39, 0
  br i1 %.not.i.i.i.i.i.i40, label %.sink.split.i.i.i.i.i26, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i41

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i41: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i38
  %.pre.i.i.i42 = load ptr, ptr %11, align 8, !tbaa !21, !alias.scope !360
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i24

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i24: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i41, %bb.bg
  %i.aav = phi ptr [ %.pre.i.i.i42, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i41 ], [ %i.bh, %bb.bg ]
  %i.aaw = phi i32 [ %.pre.i.i.i.i39, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i41 ], [ %i.aar, %bb.bg ]
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = load ptr, ptr %i.aap, align 8, !tbaa !21
  %gepdiff.i.i.i.i.i25 = shl nuw nsw i64 %i.aax, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aav, ptr align 8 %i.aay, i64 %gepdiff.i.i.i.i.i25, i1 false)
  br label %.sink.split.i.i.i.i.i26

.sink.split.i.i.i.i.i26:                          ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i24, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i38
  store i32 %i.aar, ptr %i.br, align 8, !tbaa !183, !alias.scope !360
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27

_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27:            ; preds = %.sink.split.i.i.i.i.i26, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i21
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aam, i64 72
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !184
  store i32 %i.aba, ptr %i.bt, align 8, !tbaa !184, !alias.scope !360
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aam, i64 80
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !21, !alias.scope !360
  store i32 0, ptr %i.bu, align 8, !tbaa !183, !alias.scope !360
  store i32 6, ptr %i.bv, align 4, !tbaa !182, !alias.scope !360
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aam, i64 88 ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !183 ; 5 uses
  %.not.i.i.i3.i.i28 = icmp eq i32 %i.abd, 0
  %or.cond.i.i4.i.i29 = or i1 %i.aas, %.not.i.i.i3.i.i28
  br i1 %or.cond.i.i4.i.i29, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27
  %i.abe = icmp ugt i32 %i.abd, 6
  br i1 %i.abe, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i33, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i30

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i33:  ; preds = %bb.bh
  %i.abf = zext i32 %i.abd to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.bf, ptr noundef nonnull %i.bg, i64 noundef %i.abf, i64 noundef 8) #20
  %.pre.i.i9.i.i34 = load i32, ptr %i.abc, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i10.i.i35 = icmp eq i32 %.pre.i.i9.i.i34, 0
  br i1 %.not.i.i.i.i10.i.i35, label %.sink.split.i.i.i7.i.i32, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i36

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i36: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i33
  %.pre.i12.i.i37 = load ptr, ptr %i.bf, align 8, !tbaa !21, !alias.scope !360
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i30

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i30: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i36, %bb.bh
  %i.abg = phi ptr [ %.pre.i12.i.i37, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i36 ], [ %i.bg, %bb.bh ]
  %i.abh = phi i32 [ %.pre.i.i9.i.i34, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i36 ], [ %i.abd, %bb.bh ]
  %i.abi = zext i32 %i.abh to i64
  %i.abj = load ptr, ptr %i.abb, align 8, !tbaa !21
  %gepdiff.i.i.i6.i.i31 = shl nuw nsw i64 %i.abi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abg, ptr align 8 %i.abj, i64 %gepdiff.i.i.i6.i.i31, i1 false)
  br label %.sink.split.i.i.i7.i.i32

.sink.split.i.i.i7.i.i32:                         ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i30, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i33
  store i32 %i.abd, ptr %i.bu, align 8, !tbaa !183, !alias.scope !360
  %.pre161.pre = load ptr, ptr %i.bf, align 8, !tbaa !21
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43

_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread:        ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bh, i8 0, i64 128, i1 false), !alias.scope !360
  %i.abk = load i64, ptr %i.zt, align 8, !tbaa !28
  %i.abl = and i64 %i.abk, %i.zl
  %.not340.i266 = icmp eq i64 %i.abl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.not340.i266, label %bb.bc, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43: ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27, %.sink.split.i.i.i7.i.i32
  %.pre161 = phi ptr [ %.pre161.pre, %.sink.split.i.i.i7.i.i32 ], [ %i.bg, %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i27 ] ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aam, i64 144
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !184
  store i32 %i.abn, ptr %i.bw, align 8, !tbaa !184, !alias.scope !360
  %.pre160 = load ptr, ptr %11, align 8, !tbaa !21 ; 2 uses
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.pre160, i64 %i.zn
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !28
  %i.abq = and i64 %i.abp, %i.zl
  %.not340.i = icmp eq i64 %i.abq, 0              ; 2 uses
  %i.abr = icmp eq ptr %.pre161, %i.bg
  br i1 %i.abr, label %_ZN4llvm9BitVectorD2Ev.exit.i187.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43
  call void @free(ptr noundef %.pre161) #20
  %.pre403.i = load ptr, ptr %11, align 8, !tbaa !21
  br label %_ZN4llvm9BitVectorD2Ev.exit.i187.i

_ZN4llvm9BitVectorD2Ev.exit.i187.i:               ; preds = %bb.bi, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43
  %i.abs = phi ptr [ %.pre403.i, %bb.bi ], [ %.pre160, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit43 ] ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.bh
  br i1 %i.abt, label %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit.i, label %.split

.split:                                           ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i187.i
  call void @free(ptr noundef %i.abs) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.not340.i, label %bb.bc, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i

_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit.i: ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br i1 %.not340.i, label %bb.bc, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i

.critedge349.loopexit.i:                          ; preds = %bb.bc, %bb.bb
  %i.abu = load ptr, ptr %i.cv, align 8, !tbaa !191 ; 4 uses
  %.not341.i = icmp eq i32 %16, 0
  br i1 %.not341.i, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %.critedge349.loopexit.i
  %i.abv = zext i32 %16 to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i, %.preheader.i.preheader.i
  %.020.i.i = phi i64 [ %i.abx, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i ], [ %i.abv, %.preheader.i.preheader.i ]
  %i.abw = phi ptr [ %i.aci, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i ], [ %i.abu, %.preheader.i.preheader.i ] ; 5 uses
  %i.abx = add nsw i64 %.020.i.i, -1              ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i190.i = load i64, ptr %i.abw, align 8
  %i.aby = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i190.i, 4
  %.not.i.i.i.i191.i = icmp eq i64 %i.aby, 0
  br i1 %.not.i.i.i.i191.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i: ; preds = %.preheader.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 44
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !302
  %i.acb = and i32 %i.aca, 8
  %.not34.i.i.i.i195.i = icmp eq i32 %i.acb, 0
  br i1 %.not34.i.i.i.i195.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i
  %.sroa.0.05.i.i.i.i197.i = phi ptr [ %i.acd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i ], [ %i.abw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i ]
  %i.acc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i197.i, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !191 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 44
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !302
  %i.acg = and i32 %i.acf, 8
  %.not3.i.i.i.i198.i = icmp eq i32 %i.acg, 0
  br i1 %.not3.i.i.i.i198.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i, !llvm.loop !303

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i, %.preheader.i.i
  %.sroa.0.1.i.i.i.i193.i = phi ptr [ %i.abw, %.preheader.i.i ], [ %i.abw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i194.i ], [ %i.acd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i196.i ]
  %i.ach = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i193.i, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !191 ; 2 uses
  %.not6.i.i = icmp eq i64 %i.abx, 0
  br i1 %.not6.i.i, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %.preheader.i.i, !llvm.loop !361

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i, %.critedge349.loopexit.i
  %.sroa.0290.0.i = phi ptr [ %i.abu, %.critedge349.loopexit.i ], [ %i.aci, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i192.i ] ; 3 uses
  %.not342.i = icmp eq i32 %17, 0
  br i1 %.not342.i, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i, label %.preheader.i218.preheader.i

.preheader.i218.preheader.i:                      ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %i.acj = zext i32 %17 to i64
  br label %.preheader.i218.i

.preheader.i218.i:                                ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i, %.preheader.i218.preheader.i
  %.020.i220.i = phi i64 [ %i.acl, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i ], [ %i.acj, %.preheader.i218.preheader.i ]
  %i.ack = phi ptr [ %i.acw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i ], [ %i.abu, %.preheader.i218.preheader.i ] ; 5 uses
  %i.acl = add nsw i64 %.020.i220.i, -1           ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i221.i = load i64, ptr %i.ack, align 8
  %i.acm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i221.i, 4
  %.not.i.i.i.i222.i = icmp eq i64 %i.acm, 0
  br i1 %.not.i.i.i.i222.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i: ; preds = %.preheader.i218.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 44
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !302
  %i.acp = and i32 %i.aco, 8
  %.not34.i.i.i.i227.i = icmp eq i32 %i.acp, 0
  br i1 %.not34.i.i.i.i227.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i
  %.sroa.0.05.i.i.i.i229.i = phi ptr [ %i.acr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i ], [ %i.ack, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i ]
  %i.acq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i229.i, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !191 ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 44
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !302
  %i.acu = and i32 %i.act, 8
  %.not3.i.i.i.i230.i = icmp eq i32 %i.acu, 0
  br i1 %.not3.i.i.i.i230.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i, !llvm.loop !303

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i, %.preheader.i218.i
  %.sroa.0.1.i.i.i.i224.i = phi ptr [ %i.ack, %.preheader.i218.i ], [ %i.ack, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i226.i ], [ %i.acr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i228.i ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i224.i, i64 8
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !191 ; 2 uses
  %.not6.i225.i = icmp eq i64 %i.acl, 0
  br i1 %.not6.i225.i, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i, label %.preheader.i218.i, !llvm.loop !361

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.sroa.0289.0.i = phi ptr [ %i.abu, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ %i.acw, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i223.i ] ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.0290.0.i, i64 32
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !261 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 64 ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.sroa.0289.0.i, i64 32
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !261 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 64 ; 3 uses
  %i.add = load i32, ptr %i.acz, align 8
  %i.ade = and i32 %i.add, 255
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acy, i64 68
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !250
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i
  %.sroa.0288.0.i = phi i32 [ %i.adh, %bb.bj ], [ 0, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit231.i ] ; 2 uses
  %i.adi = load i32, ptr %i.adc, align 8
  %i.adj = and i32 %i.adi, 255
  %i.adk = icmp eq i32 %i.adj, 0
  br i1 %i.adk, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adb, i64 68
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !250
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.0287.0.i = phi i32 [ %i.adm, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %i.adn = and i32 %i.un, 63
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = shl nuw i64 1, %i.ado
  %i.adq = lshr i32 %i.un, 6
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = and i32 %i.tv, 63
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = shl nuw i64 1, %i.adt                  ; 2 uses
  %i.adv = lshr i32 %i.tv, 6
  %i.adw = zext nneg i32 %i.adv to i64            ; 2 uses
  %i.adx = and i32 %.sroa.0288.0.i, 63
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = lshr i32 %.sroa.0288.0.i, 6
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = and i32 %.sroa.0287.0.i, 63
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = lshr i32 %.sroa.0287.0.i, 6
  %i.aee = zext nneg i32 %i.aed to i64
  %i.aef = load ptr, ptr %8, align 8
  %i.aeg = load ptr, ptr %i.at, align 8           ; 2 uses
  %i.aeh = load i32, ptr %i.au, align 4           ; 2 uses
  %i.aei = icmp eq i32 %i.aeh, 0
  %i.aej = add i32 %i.aeh, -1                     ; 2 uses
  %storemerge152.i312 = add nuw i32 %16, 1        ; 2 uses
  %i.aek = icmp ult i32 %storemerge152.i312, %17
  br i1 %i.aek, label %.lr.ph317, label %._crit_edge

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i
  %storemerge152.i = add nuw i32 %storemerge152.i316, 1 ; 2 uses
  %i.ael = icmp ult i32 %storemerge152.i, %17
  br i1 %i.ael, label %.lr.ph317, label %._crit_edge, !llvm.loop !362

.lr.ph317:                                        ; preds = %bb.bm, %bb.bn
  %storemerge152.i316 = phi i32 [ %storemerge152.i, %bb.bn ], [ %storemerge152.i312, %bb.bm ] ; 3 uses
  %.0129.i315 = phi i8 [ %.2131.i, %bb.bn ], [ 1, %bb.bm ] ; 4 uses
  %.0133.i314 = phi i8 [ %.2135.i, %bb.bn ], [ 1, %bb.bm ] ; 4 uses
  %.0137.i313 = phi i1 [ %.1138.i, %bb.bn ], [ false, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  br i1 %i.aei, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph317
  %i.aem = mul i32 %storemerge152.i316, 37
  %.03.i.i = and i32 %i.aej, %i.aem               ; 3 uses
  %i.aen = zext i32 %.03.i.i to i64               ; 2 uses
  %i.aeo = lshr i64 %i.aen, 5
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.aeo
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !210, !noalias !363
  %i.aer = and i32 %.03.i.i, 31
  %i.aes = lshr i32 %i.aeq, %i.aer
  %i.aet = trunc i32 %i.aes to i1
  br i1 %i.aet, label %.lr.ph.i.i11, label %.loopexit.i, !prof !212

bb.bp:                                            ; preds = %.lr.ph.i.i11
  %i.aeu = add nuw i32 %.04.i.i, 1
  %.0.i.i = and i32 %i.aeu, %i.aej                ; 3 uses
  %i.aev = zext i32 %.0.i.i to i64                ; 2 uses
  %i.aew = lshr i64 %i.aev, 5
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !210, !noalias !363
  %i.aez = and i32 %.0.i.i, 31
  %i.afa = lshr i32 %i.aey, %i.aez
  %i.afb = trunc i32 %i.afa to i1
  br i1 %i.afb, label %.lr.ph.i.i11, label %.loopexit.i, !prof !216

.lr.ph.i.i11:                                     ; preds = %bb.bo, %bb.bp
  %i.afc = phi i64 [ %i.aev, %bb.bp ], [ %i.aen, %bb.bo ]
  %.04.i.i = phi i32 [ %.0.i.i, %bb.bp ], [ %.03.i.i, %bb.bo ]
  %i.afd = getelementptr inbounds nuw [152 x i8], ptr %i.aef, i64 %i.afc ; 7 uses
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !210, !noalias !363
  %i.aff = icmp eq i32 %storemerge152.i316, %i.afe
  br i1 %i.aff, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i, label %bb.bp, !prof !215

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i: ; preds = %.lr.ph.i.i11
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afd, i64 8 ; 2 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !21, !alias.scope !363
  store i32 0, ptr %i.bx, align 8, !tbaa !183, !alias.scope !363
  store i32 6, ptr %i.by, align 4, !tbaa !182, !alias.scope !363
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afd, i64 16 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 8, !tbaa !183 ; 5 uses
  %.not.i.i.i.i.i12 = icmp eq i32 %i.afi, 0
  %i.afj = icmp eq ptr %12, %i.afg                ; 2 uses
  %or.cond.i.i.i.i = or i1 %i.afj, %.not.i.i.i.i.i12
  br i1 %or.cond.i.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i
  %i.afk = icmp ugt i32 %i.afi, 6
  br i1 %i.afk, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i:     ; preds = %bb.bq
  %i.afl = zext i32 %i.afi to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %12, ptr noundef nonnull %i.bk, i64 noundef %i.afl, i64 noundef 8) #20
  %.pre.i.i.i.i14 = load i32, ptr %i.afh, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq i32 %.pre.i.i.i.i14, 0
  br i1 %.not.i.i.i.i.i.i15, label %.sink.split.i.i.i.i.i13, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !21, !alias.scope !363
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i, %bb.bq
  %i.afm = phi ptr [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.bk, %bb.bq ]
  %i.afn = phi i32 [ %.pre.i.i.i.i14, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i.i ], [ %i.afi, %bb.bq ]
  %i.afo = zext i32 %i.afn to i64
  %i.afp = load ptr, ptr %i.afg, align 8, !tbaa !21
  %gepdiff.i.i.i.i.i = shl nuw nsw i64 %i.afo, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afm, ptr align 8 %i.afp, i64 %gepdiff.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i13

.sink.split.i.i.i.i.i13:                          ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i.i
  store i32 %i.afi, ptr %i.bx, align 8, !tbaa !183, !alias.scope !363
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i.i:              ; preds = %.sink.split.i.i.i.i.i13, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6doFindIjEEPKS9_RKT_.exit.i
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afd, i64 72
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !184
  store i32 %i.afr, ptr %i.bz, align 8, !tbaa !184, !alias.scope !363
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afd, i64 80
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !21, !alias.scope !363
  store i32 0, ptr %i.ca, align 8, !tbaa !183, !alias.scope !363
  store i32 6, ptr %i.cb, align 4, !tbaa !182, !alias.scope !363
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afd, i64 88 ; 2 uses
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !183 ; 5 uses
  %.not.i.i.i3.i.i = icmp eq i32 %i.afu, 0
  %or.cond.i.i4.i.i = or i1 %i.afj, %.not.i.i.i3.i.i
  br i1 %or.cond.i.i4.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i
  %i.afv = icmp ugt i32 %i.afu, 6
  br i1 %i.afv, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i:    ; preds = %bb.br
  %i.afw = zext i32 %i.afu to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.bi, ptr noundef nonnull %i.bj, i64 noundef %i.afw, i64 noundef 8) #20
  %.pre.i.i9.i.i = load i32, ptr %i.aft, align 8, !tbaa !183 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %.pre.i.i9.i.i, 0
  br i1 %.not.i.i.i.i10.i.i, label %.sink.split.i.i.i7.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i
  %.pre.i12.i.i = load ptr, ptr %i.bi, align 8, !tbaa !21, !alias.scope !363
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i, %bb.br
  %i.afx = phi ptr [ %.pre.i12.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i ], [ %i.bj, %bb.br ]
  %i.afy = phi i32 [ %.pre.i.i9.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i11.i.i ], [ %i.afu, %bb.br ]
  %i.afz = zext i32 %i.afy to i64
  %i.aga = load ptr, ptr %i.afs, align 8, !tbaa !21
  %gepdiff.i.i.i6.i.i = shl nuw nsw i64 %i.afz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afx, ptr align 8 %i.aga, i64 %gepdiff.i.i.i6.i.i, i1 false)
  br label %.sink.split.i.i.i7.i.i

.sink.split.i.i.i7.i.i:                           ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i5.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i8.i.i
  store i32 %i.afu, ptr %i.ca, align 8, !tbaa !183, !alias.scope !363
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i.i.i7.i.i, %_ZN4llvm9BitVectorC2ERKS0_.exit.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afd, i64 144
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !184
  store i32 %i.agc, ptr %i.cc, align 8, !tbaa !184, !alias.scope !363
  %.pre162 = load ptr, ptr %12, align 8, !tbaa !21
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit

.loopexit.i:                                      ; preds = %bb.bp, %bb.bo, %.lr.ph317
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bk, i8 0, i64 128, i1 false), !alias.scope !363
  store ptr %i.bk, ptr %12, align 8, !tbaa !21, !alias.scope !363
  store i32 0, ptr %i.bx, align 8, !tbaa !183, !alias.scope !363
  store i32 6, ptr %i.by, align 4, !tbaa !182, !alias.scope !363
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !21, !alias.scope !363
  store i32 6, ptr %i.cb, align 4, !tbaa !182, !alias.scope !363
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit: ; preds = %bb.bs, %.loopexit.i
  %i.agd = phi ptr [ %.pre162, %bb.bs ], [ %i.bk, %.loopexit.i ] ; 5 uses
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.adr
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !28
  %i.agg = and i64 %i.agf, %i.adp
  %.not343.i = icmp eq i64 %i.agg, 0
  br i1 %.not343.i, label %bb.bt, label %._crit_edge404.i

._crit_edge404.i:                                 ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit
  %.pre405.i = load ptr, ptr %i.bi, align 8, !tbaa !21
  br label %bb.bz

bb.bt:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux10DefUseInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6lookupERKj.exit
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.adw
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !28
  %i.agj = and i64 %i.agi, %i.adu
  %.not344.i = icmp eq i64 %i.agj, 0
  %.pre406.i = load ptr, ptr %i.bi, align 8, !tbaa !21 ; 5 uses
  br i1 %.not344.i, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %.pre406.i, i64 %i.adw
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !28
  %i.agm = and i64 %i.agl, %i.adu
  %.not345.i = icmp eq i64 %i.agm, 0
  br i1 %.not345.i, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.agn = trunc i8 %.0129.i315 to i1
  br i1 %i.agn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.aea
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !28
  %i.agq = xor i64 %i.agp, -1
  %i.agr = lshr i64 %i.agq, %i.ady
  %i.ags = trunc i64 %i.agr to i8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.1130.i = phi i8 [ 0, %bb.bv ], [ %i.ags, %bb.bw ] ; 2 uses
  %i.agt = trunc i8 %.0133.i314 to i1
  br i1 %i.agt, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.aee
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !28
  %i.agw = xor i64 %i.agv, -1
  %i.agx = lshr i64 %i.agw, %i.aec
  %i.agy = trunc i64 %i.agx to i8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bu, %bb.bt, %._crit_edge404.i
  %i.agz = phi ptr [ %.pre405.i, %._crit_edge404.i ], [ %.pre406.i, %bb.bu ], [ %.pre406.i, %bb.bt ], [ %.pre406.i, %bb.bx ], [ %.pre406.i, %bb.by ] ; 2 uses
  %.1138.i = phi i1 [ true, %._crit_edge404.i ], [ true, %bb.bu ], [ true, %bb.bt ], [ %.0137.i313, %bb.bx ], [ %.0137.i313, %bb.by ] ; 3 uses
  %.2135.i = phi i8 [ %.0133.i314, %._crit_edge404.i ], [ %.0133.i314, %bb.bu ], [ %.0133.i314, %bb.bt ], [ 0, %bb.bx ], [ %i.agy, %bb.by ] ; 3 uses
  %.2131.i = phi i8 [ %.0129.i315, %._crit_edge404.i ], [ %.0129.i315, %bb.bu ], [ %.0129.i315, %bb.bt ], [ %.1130.i, %bb.bx ], [ %.1130.i, %bb.by ] ; 3 uses
  %cond2.i = phi i1 [ false, %._crit_edge404.i ], [ false, %bb.bu ], [ false, %bb.bt ], [ true, %bb.bx ], [ true, %bb.by ]
  %i.aha = icmp eq ptr %i.agz, %i.bj
  br i1 %i.aha, label %_ZN4llvm9BitVectorD2Ev.exit.i232.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @free(ptr noundef %i.agz) #20
  %.pre407.i = load ptr, ptr %12, align 8, !tbaa !21
  br label %_ZN4llvm9BitVectorD2Ev.exit.i232.i

_ZN4llvm9BitVectorD2Ev.exit.i232.i:               ; preds = %bb.ca, %bb.bz
  %i.ahb = phi ptr [ %.pre407.i, %bb.ca ], [ %i.agd, %bb.bz ] ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.bk
  br i1 %i.ahc, label %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit.i232.i
  call void @free(ptr noundef %i.ahb) #20
  br label %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i

_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i: ; preds = %bb.cb, %_ZN4llvm9BitVectorD2Ev.exit.i232.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br i1 %cond2.i, label %bb.bn, label %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge, !llvm.loop !362

_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge: ; preds = %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i
  br label %._crit_edge, !llvm.loop !362

._crit_edge:                                      ; preds = %bb.bn, %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge, %bb.bm
  %.2139.i = phi i1 [ %.1138.i, %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge ], [ false, %bb.bm ], [ %.1138.i, %bb.bn ]
  %.3136.i = phi i8 [ %.2135.i, %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge ], [ 1, %bb.bm ], [ %.2135.i, %bb.bn ]
  %.3132.i = phi i8 [ %.2131.i, %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit233.i._crit_edge ], [ 1, %bb.bm ], [ %.2131.i, %bb.bn ]
  br i1 %.2139.i, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge
  %i.ahd = trunc i8 %.3136.i to i1
  %i.ahe = trunc i8 %.3132.i to i1                ; 2 uses
  %or.cond.i = select i1 %i.ahd, i1 true, i1 %i.ahe
  br i1 %or.cond.i, label %bb.cd, label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.ahf = load i32, ptr %i.zc, align 4, !tbaa !344
  %i.ahg = icmp eq i32 %16, %i.ahf
  %i.ahh = select i1 %i.ahg, ptr %i.acz, ptr %i.adc
  %i.ahi = load i32, ptr %i.ze, align 4, !tbaa !345
  %i.ahj = icmp eq i32 %16, %i.ahi
  %i.ahk = select i1 %i.ahj, ptr %i.acz, ptr %i.adc
  %i.ahl = select i1 %i.ahe, ptr %.sroa.0289.0.i, ptr %.sroa.0290.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store ptr %i.ahl, ptr %13, align 8
  store i32 %i.tv, ptr %i.bl, align 8, !tbaa !366
  store i32 %i.un, ptr %i.bm, align 4, !tbaa !371
  store ptr %i.ahh, ptr %i.bn, align 8, !tbaa !372
  store ptr %i.ahk, ptr %i.bo, align 8, !tbaa !373
  store ptr %.sroa.0290.0.i, ptr %i.bp, align 8, !tbaa !374
  store ptr %.sroa.0289.0.i, ptr %i.bq, align 8, !tbaa !375
  %i.ahm = load i32, ptr %i.ba, align 8, !tbaa !183 ; 2 uses
  %i.ahn = load i32, ptr %i.bb, align 4, !tbaa !182
  %.not.i234.i = icmp ult i32 %i.ahm, %i.ahn
  br i1 %.not.i234.i, label %bb.cf, label %bb.ce, !prof !215

bb.ce:                                            ; preds = %bb.cd
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull readonly align 8 dereferenceable(48) %13)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE9push_backERKS3_.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.aho = zext i32 %i.ahm to i64
  %.val.i235.i = load ptr, ptr %10, align 8, !tbaa !21
  %i.ahp = getelementptr inbounds nuw [48 x i8], ptr %.val.i235.i, i64 %i.aho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ahp, ptr noundef nonnull readonly align 8 dereferenceable(48) %13, i64 48, i1 false)
  %i.ahq = load i32, ptr %i.ba, align 8, !tbaa !183
  %i.ahr = add i32 %i.ahq, 1
  store i32 %i.ahr, ptr %i.ba, align 8, !tbaa !183
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE9push_backERKS3_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE9push_backERKS3_.exit.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i

_ZNK12_GLOBAL__N_113HexagonGenMux14isCondTransferEj.exit.i: ; preds = %_ZN12_GLOBAL__N_113HexagonGenMux10DefUseInfoD2Ev.exit.i, %_ZN4llvm9BitVectorD2Ev.exit.i187.i.thread, %.split, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE9push_backERKS3_.exit.i, %bb.cc, %._crit_edge, %bb.ba, %bb.az, %_ZNK12_GLOBAL__N_113HexagonGenMux9isRegPairEj.exit.thread.i, %_ZNK12_GLOBAL__N_113HexagonGenMux9isRegPairEj.exit.i, %_ZN4llvm23early_inc_iterator_implINS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEEdeEv.exit.i
  %.not335.i = icmp eq ptr %i.tp, %i.cw
  br i1 %.not335.i, label %._crit_edge.i, label %.lr.ph368.i

._crit_edge374.i.loopexit:                        ; preds = %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i
  %i.ahs = or i1 %.010131, %.1.i
  br label %._crit_edge374.i

._crit_edge374.i:                                 ; preds = %._crit_edge374.i.loopexit, %._crit_edge.i, %_ZN12_GLOBAL__N_113HexagonGenMux9buildMapsERN4llvm17MachineBasicBlockERNS1_8DenseMapIPNS1_12MachineInstrEjNS1_12DenseMapInfoIS6_vEENS1_6detail12DenseMapPairIS6_jEEEERNS4_IjNS0_10DefUseInfoENS7_IjvEENSA_IjSE_EEEE.exit.i
  %.0.lcssa.i = phi i1 [ %.010131, %._crit_edge.i ], [ %.010131, %_ZN12_GLOBAL__N_113HexagonGenMux9buildMapsERN4llvm17MachineBasicBlockERNS1_8DenseMapIPNS1_12MachineInstrEjNS1_12DenseMapInfoIS6_vEENS1_6detail12DenseMapPairIS6_jEEEERNS4_IjNS0_10DefUseInfoENS7_IjvEENSA_IjSE_EEEE.exit.i ], [ %i.ahs, %._crit_edge374.i.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.aht = load ptr, ptr %i.p, align 8, !tbaa !165 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !21
  store i32 0, ptr %i.cj, align 8, !tbaa !183
  store i32 6, ptr %i.ck, align 4, !tbaa !182
  store ptr %i.aht, ptr %15, align 8, !tbaa !376
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 44
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !379 ; 4 uses
  store i32 %i.ahv, ptr %i.cl, align 8, !tbaa !184
  %i.ahw = add i32 %i.ahv, 63                     ; 2 uses
  %i.ahx = lshr i32 %i.ahw, 6                     ; 3 uses
  %i.ahy = zext nneg i32 %i.ahx to i64            ; 2 uses
  %i.ahz = icmp eq i32 %i.ahx, 0
  br i1 %i.ahz, label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge374.i
  %.not.i.i.i.i.i.i.i236.i = icmp ugt i32 %i.ahw, 447
  br i1 %.not.i.i.i.i.i.i.i236.i, label %bb.ch, label %.sink.split.i.i.i.i.i, !prof !380

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.ch, ptr noundef nonnull %i.ci, i64 noundef %i.ahy, i64 noundef 8) #20
  %.pre.i.i.i.i.i239.i = load i32, ptr %i.cj, align 8, !tbaa !183 ; 2 uses
  %.pre.i.i.i.i240.i = zext i32 %.pre.i.i.i.i.i239.i to i64
  %.pre4.pre.i.pre.i.i.i = load i32, ptr %i.cl, align 8, !tbaa !184
  %.pre.i241.i = load ptr, ptr %i.ch, align 8, !tbaa !21
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.ch, %bb.cg
  %i.aia = phi ptr [ %i.ci, %bb.cg ], [ %.pre.i241.i, %bb.ch ] ; 2 uses
  %.pre4.pre.i.i.i.i = phi i32 [ %i.ahv, %bb.cg ], [ %.pre4.pre.i.pre.i.i.i, %bb.ch ]
  %.pre-phi.i.i.i.i.i = phi i64 [ 0, %bb.cg ], [ %.pre.i.i.i.i240.i, %bb.ch ]
  %i.aib = phi i32 [ 0, %bb.cg ], [ %.pre.i.i.i.i.i239.i, %bb.ch ]
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %.pre-phi.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i237.i = shl nuw nsw i64 %i.ahy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aic, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i237.i, i1 false), !tbaa !28
  %i.aid = add i32 %i.aib, %i.ahx                 ; 2 uses
  store i32 %i.aid, ptr %i.cj, align 8, !tbaa !183
  %i.aie = zext i32 %i.aid to i64
  br label %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %._crit_edge374.i
  %i.aif = phi ptr [ %i.ci, %._crit_edge374.i ], [ %i.aia, %.sink.split.i.i.i.i.i ]
  %i.aig = phi i64 [ 0, %._crit_edge374.i ], [ %i.aie, %.sink.split.i.i.i.i.i ]
  %i.aih = phi i32 [ %i.ahv, %._crit_edge374.i ], [ %.pre4.pre.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %i.aii = and i32 %i.aih, 63                     ; 2 uses
  %.not.i.i.i.i.i238.i = icmp eq i32 %i.aii, 0
  br i1 %.not.i.i.i.i.i238.i, label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i
  %i.aij = zext nneg i32 %i.aii to i64
  %i.aik = shl nsw i64 -1, %i.aij
  %i.ail = xor i64 %i.aik, -1
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aif, i64 %i.aig
  %i.ain = getelementptr inbounds i8, ptr %i.aim, i64 -8 ; 2 uses
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !28
  %i.aip = and i64 %i.aio, %i.ail
  store i64 %i.aip, ptr %i.ain, align 8, !tbaa !28
  br label %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i

_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i: ; preds = %bb.ci, %_ZN4llvm15SmallVectorImplImE6resizeEmm.exit.i.i.i.i
  call void @_ZN4llvm12LiveRegUnits11addLiveOutsERKNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0101.0132) #20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8
  %i.aiq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.air = inttoptr i64 %i.aiq to ptr             ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.air) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.air, align 8
  %i.ais = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i242.i = icmp eq i64 %i.ais, 0
  br i1 %.not.i.i.i.i.i.i.i242.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.air, i64 44
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !302
  %i.aiv = and i32 %i.aiu, 4
  %.not45.i.i.i.i.i.i.i.i = icmp eq i32 %i.aiv, 0
  br i1 %.not45.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi ptr [ %i.aix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ], [ %i.air, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i.i, align 8
  %i.aiw = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i.i, -8
  %i.aix = inttoptr i64 %i.aiw to ptr             ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 44
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !302
  %i.aja = and i32 %i.aiz, 4
  %.not4.i.i.i.i.i.i.i.i = icmp eq i32 %i.aja, 0
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !381

_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i, %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi ptr [ %i.air, %_ZN4llvm12LiveRegUnitsC2ERKNS_18TargetRegisterInfoE.exit.i ], [ %i.air, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i.i ], [ %i.aix, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not336380.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i.i, %i.cw
  br i1 %.not336380.i, label %._crit_edge383.i.a, label %.lr.ph382.i.a

.lr.ph373.i:                                      ; preds = %._crit_edge.i, %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i
  %.0371.i = phi i1 [ %.1.i, %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i ], [ false, %._crit_edge.i ] ; 4 uses
  %.0128370.i = phi ptr [ %i.alf, %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i ], [ %.val.pre.i, %._crit_edge.i ] ; 9 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %.0128370.i, i64 16 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !372
  %i.ajd = getelementptr inbounds nuw i8, ptr %.0128370.i, i64 24 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !373 ; 2 uses
  %.val168.i = load i32, ptr %i.ajc, align 8
  %.val169.i = load i32, ptr %i.aje, align 8
  %i.ajf = getelementptr i8, ptr %i.aje, i64 16
  %.val170.i = load i64, ptr %i.ajf, align 8
  %i.ajg = and i32 %.val168.i, 255
  %i.ajh = icmp eq i32 %i.ajg, 0
  %i.aji = and i32 %.val169.i, 255                ; 2 uses
  %i.ajj = icmp eq i32 %i.aji, 0                  ; 2 uses
  br i1 %i.ajh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph373.i
  %.neg.i = select i1 %i.ajj, i64 -1236, i64 -1238
  br label %select.unfold.i

bb.ck:                                            ; preds = %.lr.ph373.i
  br i1 %i.ajj, label %select.unfold.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ajk = icmp eq i32 %i.aji, 1
  %i.ajl = add i64 %.val170.i, 128
  %i.ajm = icmp ult i64 %i.ajl, 256
  %or.cond.i.i = select i1 %i.ajk, i1 %i.ajm, i1 false
  br i1 %or.cond.i.i, label %select.unfold.i, label %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i

select.unfold.i:                                  ; preds = %bb.cl, %bb.ck, %bb.cj
  %.0.i247.ph.neg.i = phi i64 [ %.neg.i, %bb.cj ], [ -1239, %bb.ck ], [ -1237, %bb.cl ]
  %i.ajn = load ptr, ptr %.0128370.i, align 8, !tbaa !382 ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !383 ; 4 uses
  %.not147.i = icmp eq ptr %i.ajp, null
  br i1 %.not147.i, label %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i, label %bb.cm

bb.cm:                                            ; preds = %select.unfold.i
  %i.ajq = getelementptr inbounds nuw i8, ptr %.0128370.i, i64 32 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !374
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !383
  %.not148.i = icmp eq ptr %i.ajt, null
  br i1 %.not148.i, label %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aju = getelementptr inbounds nuw i8, ptr %.0128370.i, i64 40 ; 2 uses
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !375
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !383
  %.not149.i = icmp eq ptr %i.ajx, null
  br i1 %.not149.i, label %_ZNK12_GLOBAL__N_113HexagonGenMux12getMuxOpcodeERKN4llvm14MachineOperandES4_.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ajy = call ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %i.ajp, ptr nonnull %i.ajn) #20
  %.sroa.021.0.copyload.i = load ptr, ptr %.0128370.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %i.ajy, ptr %14, align 8, !tbaa !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  %i.ajz = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !238
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_:bb.a
  %i.q = mul i32 %i.p, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.q, %bb.b ], [ %i.y, %bb.c ]
  %.0.i13 = and i32 %.pn.i, %i.e                  ; 3 uses
  %i.r = zext i32 %.0.i13 to i64                  ; 2 uses
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !210
  %i.v = and i32 %.0.i13, 31                      ; 2 uses
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  %i.y = add i32 %.0.i13, 1
  br i1 %i.x, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !464

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val9, i64 %i.s ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.val11, i64 %i.r ; 2 uses
  store i32 %i.p, ptr %i.aa, align 4, !tbaa !210
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, i64 12, i1 false), !tbaa.struct !458
  %i.ad = shl nuw i32 1, %i.v
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !210
  %i.af = or i32 %i.ae, %i.ad
  store i32 %i.af, ptr %i.z, align 4, !tbaa !210
  %i.ag = add i32 %.0.i24, -1
  %i.ah = and i32 %i.ag, %.0.i24                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !465

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph28, !llvm.loop !466

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !323
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ai = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %.val, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val12 = load i32, ptr %i.aj, align 8, !tbaa !343
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.val12, ptr %i.ak, align 8, !tbaa !343
  %i.al = icmp eq i32 %i.ai, 0
  br i1 %i.al, label %_ZN4llvm8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !310
  %i.an = zext i32 %i.ai to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 4) #20
  store i32 0, ptr %i.b, align 4, !tbaa !323
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit

_ZN4llvm8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjN12_GLOBAL__N_113HexagonGenMux11CondsetInfoENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113HexagonGenMux7MuxInfoELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #11 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::HexagonGenMux::MuxInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !183
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 48) #20
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !183
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !183
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare ptr @_ZN4llvm17MachineBasicBlock12findDebugLocENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360), ptr) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !467, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !467, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #6

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #6

declare void @__once_proxy() #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468, !nonnull !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !470, !nonnull !19, !align !157
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !471
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #20, !inline_history !474
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_HexagonGenMux.cpp() #16 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL11MinPredDist, i32 noundef 0, i32 noundef 0) #20
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 120), align 8, !tbaa !346
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZL11MinPredDist, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11MinPredDist, ptr nonnull align 1 dereferenceable(26) @.str, i64 25) #20
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 10), align 2
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 120), align 8, !tbaa !346
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 140), align 4, !tbaa !467
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 136), align 8, !tbaa !475
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 32), align 8, !tbaa !26
  store i64 84, ptr getelementptr inbounds nuw (i8, ptr @_ZL11MinPredDist, i64 40), align 8, !tbaa !28
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL11MinPredDist) #20
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZL11MinPredDist, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{null}
!14 = !{!15, !17, i64 16}
!15 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !17, i64 16}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!12, !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!31, !12, i64 32}
!31 = !{!"_ZTSN4llvm8PassInfoE", !32, i64 0, !32, i64 16, !12, i64 32, !17, i64 40, !17, i64 41, !12, i64 48}
!32 = !{!"_ZTSN4llvm9StringRefE", !27, i64 0, !29, i64 8}
!33 = !{!31, !17, i64 40}
!34 = !{!31, !17, i64 41}
!35 = !{!31, !12, i64 48}
!36 = !{!37, !38, i64 8}
!37 = !{!"_ZTSN4llvm4PassE", !38, i64 8, !12, i64 16, !39, i64 24}
!38 = !{!"p1 _ZTSN4llvm16AnalysisResolverE", !12, i64 0}
!39 = !{!"_ZTSN4llvm8PassKindE", !6, i64 0}
!40 = !{!37, !12, i64 16}
!41 = !{!37, !39, i64 24}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSN4llvm15MachineFunctionE", !44, i64 0, !45, i64 8, !46, i64 16, !47, i64 24, !48, i64 32, !49, i64 40, !50, i64 48, !51, i64 56, !52, i64 64, !53, i64 72, !54, i64 80, !55, i64 88, !5, i64 112, !5, i64 116, !60, i64 120, !70, i64 200, !72, i64 208, !78, i64 288, !80, i64 296, !5, i64 312, !88, i64 316, !17, i64 317, !17, i64 318, !17, i64 319, !89, i64 320, !92, i64 328, !99, i64 336, !104, i64 360, !104, i64 384, !109, i64 408, !114, i64 432, !117, i64 456, !119, i64 480, !121, i64 504, !17, i64 528, !17, i64 529, !17, i64 530, !17, i64 531, !17, i64 532, !17, i64 533, !17, i64 534, !5, i64 536, !126, i64 540, !127, i64 544, !129, i64 568, !134, i64 592, !134, i64 616, !138, i64 640, !139, i64 648, !140, i64 656, !141, i64 664, !143, i64 688, !145, i64 712, !5, i64 856, !150, i64 864, !155, i64 1040, !17, i64 1064}
!44 = !{!"p1 _ZTSN4llvm8FunctionE", !12, i64 0}
!45 = !{!"p1 _ZTSN4llvm13TargetMachineE", !12, i64 0}
!46 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !12, i64 0}
!47 = !{!"p1 _ZTSN4llvm9MCContextE", !12, i64 0}
!48 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !12, i64 0}
!49 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !12, i64 0}
!50 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !12, i64 0}
!51 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !12, i64 0}
!52 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !12, i64 0}
!53 = !{!"p1 _ZTSN4llvm9MCSectionE", !12, i64 0}
!54 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !12, i64 0}
!55 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !16, i64 0}
!60 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !27, i64 0, !29, i64 8, !61, i64 16, !66, i64 64}
!61 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !62, i64 0, !65, i64 16}
!62 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !63, i64 0}
!63 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !64, i64 0}
!64 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !22, i64 0}
!65 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!66 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !67, i64 0}
!67 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !68, i64 0}
!68 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !69, i64 0}
!69 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !22, i64 0}
!70 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !71, i64 0}
!71 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !12, i64 0}
!72 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !73, i64 0}
!73 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !74, i64 0, !77, i64 16}
!74 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !75, i64 0}
!75 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !76, i64 0}
!76 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !22, i64 0}
!77 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !6, i64 0}
!78 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !79, i64 0}
!79 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !12, i64 0}
!80 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !81, i64 0}
!81 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !82, i64 0}
!82 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !83, i64 0}
!83 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !84, i64 0}
!84 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !85, i64 0}
!85 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !86, i64 0}
!86 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !87, i64 0, !87, i64 8}
!87 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !12, i64 0}
!88 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!89 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !90, i64 0}
!90 = !{!"_ZTSSt6bitsetILm12EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Base_bitsetILm1EE", !29, i64 0}
!92 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !94, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !96, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !97, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !98, i64 0}
!98 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !12, i64 0}
!99 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !100, i64 0}
!100 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !103, i64 0, !103, i64 8, !103, i64 16}
!103 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !12, i64 0}
!104 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !105, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!108 = !{!"p2 _ZTSN4llvm8MCSymbolE", !16, i64 0}
!109 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !12, i64 0}
!114 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !115, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!115 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !12, i64 0}
!116 = !{!"p1 int", !12, i64 0}
!117 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !118, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!118 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !12, i64 0}
!119 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !120, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!120 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !12, i64 0}
!121 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p1 _ZTSSt4pairIPN4llvm8MCSymbolEPNS0_6MDNodeEE", !12, i64 0}
!126 = !{!"_ZTSN4llvm17BasicBlockSectionE", !6, i64 0}
!127 = !{!"_ZTSN4llvm8DenseMapINS_10UniqueBBIDENS_11SmallVectorIjLj12EEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEEE", !128, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!128 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10UniqueBBIDENS_11SmallVectorIjLj12EEEEE", !12, i64 0}
!129 = !{!"_ZTSSt6vectorIPKN4llvm11GlobalValueESaIS3_EE", !130, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE12_Vector_implE", !132, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm11GlobalValueESaIS3_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!133 = !{!"p2 _ZTSN4llvm11GlobalValueE", !16, i64 0}
!134 = !{!"_ZTSSt6vectorIjSaIjEE", !135, i64 0}
!135 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !136, i64 0}
!136 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !137, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!138 = !{!"_ZTSN4llvm13EHPersonalityE", !6, i64 0}
!139 = !{!"p1 _ZTSN4llvm15MachineFunction8DelegateE", !12, i64 0}
!140 = !{!"p1 _ZTSN4llvm19GISelChangeObserverE", !12, i64 0}
!141 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !142, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!142 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction12CallSiteInfoEEE", !12, i64 0}
!143 = !{!"_ZTSN4llvm8DenseMapIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !144, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!144 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_12MachineInstrENS_15MachineFunction16CalledGlobalInfoEEE", !12, i64 0}
!145 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction15VariableDbgInfoELj4EEE", !146, i64 0, !149, i64 16}
!146 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction15VariableDbgInfoEEE", !147, i64 0}
!147 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction15VariableDbgInfoELb1EEE", !148, i64 0}
!148 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction15VariableDbgInfoEvEE", !22, i64 0}
!149 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction15VariableDbgInfoELj4EEE", !6, i64 0}
!150 = !{!"_ZTSN4llvm11SmallVectorINS_15MachineFunction17DebugSubstitutionELj8EEE", !151, i64 0, !154, i64 16}
!151 = !{!"_ZTSN4llvm15SmallVectorImplINS_15MachineFunction17DebugSubstitutionEEE", !152, i64 0}
!152 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15MachineFunction17DebugSubstitutionELb1EEE", !153, i64 0}
!153 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15MachineFunction17DebugSubstitutionEvEE", !22, i64 0}
!154 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15MachineFunction17DebugSubstitutionELj8EEE", !6, i64 0}
!155 = !{!"_ZTSN4llvm8DenseMapIjNS_15MachineFunction19DebugPHIRegallocPosENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !156, i64 0, !116, i64 8, !5, i64 16, !5, i64 20}
!156 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjNS_15MachineFunction19DebugPHIRegallocPosEEE", !12, i64 0}
!157 = !{i64 8}
!158 = !{!43, !46, i64 16}
!159 = !{!160, !163, i64 56}
!160 = !{!"_ZTSN12_GLOBAL__N_113HexagonGenMuxE", !161, i64 0, !163, i64 56, !164, i64 64}
!161 = !{!"_ZTSN4llvm19MachineFunctionPassE", !162, i64 0, !89, i64 32, !89, i64 40, !89, i64 48}
!162 = !{!"_ZTSN4llvm12FunctionPassE", !37, i64 0}
!163 = !{!"p1 _ZTSN4llvm16HexagonInstrInfoE", !12, i64 0}
!164 = !{!"p1 _ZTSN4llvm19HexagonRegisterInfoE", !12, i64 0}
!165 = !{!160, !164, i64 64}
!166 = !{!86, !87, i64 8}
!167 = !{!168, !5, i64 16}
!168 = !{!"_ZTSN4llvm14MCRegisterInfoE", !169, i64 8, !5, i64 16, !170, i64 20, !170, i64 24, !171, i64 32, !5, i64 40, !5, i64 44, !172, i64 48, !172, i64 56, !173, i64 64, !27, i64 72, !27, i64 80, !172, i64 88, !5, i64 96, !172, i64 104, !116, i64 112, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !174, i64 136, !174, i64 144, !174, i64 152, !174, i64 160, !175, i64 168, !175, i64 192, !177, i64 216}
!169 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !12, i64 0}
!170 = !{!"_ZTSN4llvm10MCRegisterE", !5, i64 0}
end_hunk_1
