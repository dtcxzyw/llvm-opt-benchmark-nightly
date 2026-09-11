Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCVSXSwapRemoval?download=true
inline.NumInlined: 1035
inline.NumDeleted: 479
begin_hunk_0_@_ZN12_GLOBAL__N_117PPCVSXSwapRemoval20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.bts = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i64.i, i64 8
  %i.btt = load i32, ptr %i.bts, align 4, !tbaa !74
  %i.btu = sext i32 %i.btt to i64
  %.val41.i = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.btv = getelementptr inbounds nuw [16 x i8], ptr %.val41.i, i64 %i.btu
  %i.btw = getelementptr inbounds nuw i8, ptr %i.btv, i64 12 ; 2 uses
  %i.btx = load i16, ptr %i.btw, align 4
  %i.bty = or i16 %i.btx, 1024
  store i16 %i.bty, ptr %i.btw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.dp:                                            ; preds = %bb.dk
  %i.btz = and i16 %i.ble, 16
  %.not31.i = icmp eq i16 %i.btz, 0
  %i.bua = and i16 %i.ble, 448
  %.not32.i = icmp eq i16 %i.bua, 0
  %or.cond85.i = or i1 %.not31.i, %.not32.i
  br i1 %or.cond85.i, label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bub = load ptr, ptr %i.bj, align 8, !tbaa !523 ; 3 uses
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !79, !noalias !552 ; 3 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bub, i64 8
  %i.bue = load ptr, ptr %i.bud, align 8, !tbaa !80, !noalias !552 ; 2 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bub, i64 20
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !81, !noalias !552 ; 4 uses
  %i.buh = icmp eq i32 %i.bug, 0
  br i1 %i.buh, label %.loopexit.i.i.i.i66.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bui = getelementptr inbounds nuw i8, ptr %i.blc, i64 8
  %i.buj = add i32 %i.bug, -1                     ; 2 uses
  %i.buk = load i32, ptr %i.bui, align 4, !tbaa !74, !noalias !553 ; 2 uses
  %i.bul = mul i32 %i.buk, 37
  %.017.i.i.i.i.i65.i = and i32 %i.bul, %i.buj    ; 3 uses
  %i.bum = zext i32 %.017.i.i.i.i.i65.i to i64    ; 2 uses
  %i.bun = lshr i64 %i.bum, 5
  %i.buo = getelementptr inbounds nuw [4 x i8], ptr %i.bue, i64 %i.bun
  %i.bup = load i32, ptr %i.buo, align 4, !tbaa !74, !noalias !553
  %i.buq = and i32 %.017.i.i.i.i.i65.i, 31
  %i.bur = lshr i32 %i.bup, %i.buq
  %i.bus = trunc i32 %i.bur to i1
  br i1 %i.bus, label %.lr.ph.i.i.i.i.i69.i, label %.loopexit.i.i.i.i66.i, !prof !82

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i69.i
  %i.but = add nuw i32 %.018.i.i.i.i.i70.i, 1
  %.0.i.i.i.i.i71.i = and i32 %i.but, %i.buj      ; 3 uses
  %i.buu = zext i32 %.0.i.i.i.i.i71.i to i64      ; 2 uses
  %i.buv = lshr i64 %i.buu, 5
  %i.buw = getelementptr inbounds nuw [4 x i8], ptr %i.bue, i64 %i.buv
  %i.bux = load i32, ptr %i.buw, align 4, !tbaa !74, !noalias !553
  %i.buy = and i32 %.0.i.i.i.i.i71.i, 31
  %i.buz = lshr i32 %i.bux, %i.buy
  %i.bva = trunc i32 %i.buz to i1
  br i1 %i.bva, label %.lr.ph.i.i.i.i.i69.i, label %.loopexit.i.i.i.i66.i, !prof !83

.lr.ph.i.i.i.i.i69.i:                             ; preds = %bb.dr, %bb.ds
  %i.bvb = phi i64 [ %i.buu, %bb.ds ], [ %i.bum, %bb.dr ]
  %.018.i.i.i.i.i70.i = phi i32 [ %.0.i.i.i.i.i71.i, %bb.ds ], [ %.017.i.i.i.i.i65.i, %bb.dr ]
  %i.bvc = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %i.bvb ; 2 uses
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !74, !noalias !553
  %i.bve = icmp eq i32 %i.buk, %i.bvd
  br i1 %i.bve, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiPNS_18EquivalenceClassesIiE7ECValueENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E4findERKi.exit.loopexit.i.i72.i, label %bb.ds, !prof !85

.loopexit.i.i.i.i66.i:                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.bvf = zext i32 %i.bug to i64                 ; 2 uses
  %i.bvg = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %i.bvf
  br label %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit74.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIiPNS_18EquivalenceClassesIiE7ECValueENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E4findERKi.exit.loopexit.i.i72.i: ; preds = %.lr.ph.i.i.i.i.i69.i
  %.pre.i.i73.i = zext i32 %i.bug to i64
  br label %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit74.i

_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit74.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiPNS_18EquivalenceClassesIiE7ECValueENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E4findERKi.exit.loopexit.i.i72.i, %.loopexit.i.i.i.i66.i
  %.pre-phi.i.i67.i = phi i64 [ %.pre.i.i73.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiPNS_18EquivalenceClassesIiE7ECValueENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E4findERKi.exit.loopexit.i.i72.i ], [ %i.bvf, %.loopexit.i.i.i.i66.i ]
  %.lcssa.sink.i.i.i.i68.i = phi ptr [ %i.bvc, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIiPNS_18EquivalenceClassesIiE7ECValueENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E4findERKi.exit.loopexit.i.i72.i ], [ %i.bvg, %.loopexit.i.i.i.i66.i ] ; 2 uses
  %i.bvh = getelementptr inbounds nuw [16 x i8], ptr %i.buc, i64 %.pre-phi.i.i67.i
  %i.bvi = icmp ne ptr %.lcssa.sink.i.i.i.i68.i, %i.bvh
  call void @llvm.assume(i1 %i.bvi)
  %i.bvj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i68.i, i64 8
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !96
  %i.bvl = call noundef ptr @_ZNK4llvm18EquivalenceClassesIiE7ECValue9getLeaderEv(ptr noundef nonnull align 8 dereferenceable(20) %i.bvk)
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 16
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !74
  %i.bvo = sext i32 %i.bvn to i64
  %.val37.i = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.bvp = getelementptr inbounds nuw [16 x i8], ptr %.val37.i, i64 %i.bvo
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 12
  %i.bvr = load i16, ptr %i.bvq, align 4
  %i.bvs = and i16 %i.bvr, 512
  %.not33.i = icmp eq i16 %i.bvs, 0
  br i1 %.not33.i, label %bb.dt, label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.dt:                                            ; preds = %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit74.i
  %i.bvt = sext i32 %.0102.i to i64
  %i.bvu = getelementptr inbounds nuw [16 x i8], ptr %.val37.i, i64 %i.bvt ; 2 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 12
  %i.bvw = load i16, ptr %i.bvv, align 4
  %i.bvx = lshr i16 %i.bvw, 6
  %i.bvy = and i16 %i.bvx, 7
  %i.bvz = load ptr, ptr %i.bvu, align 8, !tbaa !538 ; 16 uses
  switch i16 %i.bvy, label %bb.du [
    i16 5, label %bb.dv
    i16 6, label %bb.eb
    i16 7, label %bb.ee
  ]

bb.du:                                            ; preds = %bb.dt
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 52
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !525
  switch i32 %i.bwb, label %bb.dw [
    i32 2530, label %bb.dy
    i32 2532, label %bb.dx
    i32 2985, label %bb.dz
    i32 2537, label %.thread97.i.i
  ]

bb.dw:                                            ; preds = %bb.dv
  unreachable

bb.dx:                                            ; preds = %bb.dv
  br label %bb.dy

.thread97.i.i:                                    ; preds = %bb.dv
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bvz, i64 32
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !526 ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bwd, i64 48
  %i.bwf = load i64, ptr %i.bwe, align 8, !tbaa !73
  %.06099.i.i = trunc i64 %i.bwf to i32
  %i.bwg = and i32 %.06099.i.i, 3
  %i.bwh = xor i32 %i.bwg, 2
  br label %bb.ea

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.0.ph.i.i = phi i32 [ 16, %bb.dv ], [ 8, %bb.dx ] ; 2 uses
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bvz, i64 32
  %i.bwj = load ptr, ptr %i.bwi, align 8, !tbaa !526 ; 2 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwj, i64 48
  %i.bwl = load i64, ptr %i.bwk, align 8, !tbaa !73
  %.060.i.i = trunc i64 %i.bwl to i32
  %i.bwm = lshr exact i32 %.0.ph.i.i, 1
  %i.bwn = add i32 %i.bwm, %.060.i.i
  %i.bwo = add nsw i32 %.0.ph.i.i, -1
  %i.bwp = and i32 %i.bwn, %i.bwo
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dv
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bvz, i64 32
  %i.bwr = load ptr, ptr %i.bwq, align 8, !tbaa !526
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwr, i64 80 ; 2 uses
  %i.bwt = load i64, ptr %i.bws, align 8, !tbaa !73
  %i.bwu = and i64 %i.bwt, 3
  %i.bwv = xor i64 %i.bwu, 2
  store i64 %i.bwv, ptr %i.bws, align 8, !tbaa !73
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.ea:                                            ; preds = %bb.dy, %.thread97.i.i
  %i.bww = phi ptr [ %i.bwd, %.thread97.i.i ], [ %i.bwj, %bb.dy ]
  %i.bwx = phi i32 [ %i.bwh, %.thread97.i.i ], [ %i.bwp, %bb.dy ]
  %i.bwy = zext nneg i32 %i.bwx to i64
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bww, i64 48
  store i64 %i.bwy, ptr %i.bwz, align 8, !tbaa !73
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.eb:                                            ; preds = %bb.dt
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 32 ; 5 uses
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !526
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 112 ; 2 uses
  %i.bxd = load i64, ptr %i.bxc, align 8, !tbaa !73 ; 3 uses
  %i.bxe = trunc i64 %i.bxd to i32
  switch i32 %i.bxe, label %bb.ed [
    i32 3, label %bb.ec
    i32 0, label %bb.ec
  ]

bb.ec:                                            ; preds = %bb.eb, %bb.eb
  %i.bxf = sub i64 3, %i.bxd
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.061.i.i = phi i64 [ %i.bxf, %bb.ec ], [ %i.bxd, %bb.eb ]
  %i.bxg = and i64 %.061.i.i, 4294967295
  store i64 %i.bxg, ptr %i.bxc, align 8, !tbaa !73
  %i.bxh = load ptr, ptr %i.bxa, align 8, !tbaa !526 ; 3 uses
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 32
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxh, i64 36
  %i.bxk = load i32, ptr %i.bxj, align 4, !tbaa !73
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxh, i64 68
  %i.bxm = load i32, ptr %i.bxl, align 4, !tbaa !73
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bxi, i32 %i.bxm) #14
  %i.bxn = load ptr, ptr %i.bxa, align 8, !tbaa !526
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxn, i64 64
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.bxo, i32 %i.bxk) #14
  %i.bxp = load ptr, ptr %i.bxa, align 8, !tbaa !526 ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxp, i64 32 ; 2 uses
  %i.bxr = load i32, ptr %i.bxq, align 8          ; 3 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxp, i64 64
  %i.bxt = load i32, ptr %i.bxs, align 8          ; 2 uses
  %15 = shl i32 %i.bxt, 2
  %.lobit.i72.i.i = and i32 %15, 67108864
  %i.bxu = xor i32 %.lobit.i72.i.i, 67108864
  %i.bxv = and i32 %i.bxu, %i.bxt
  %i.bxw = and i32 %i.bxr, -67108865
  %i.bxx = or disjoint i32 %i.bxv, %i.bxw
  store i32 %i.bxx, ptr %i.bxq, align 8
  %i.bxy = load ptr, ptr %i.bxa, align 8, !tbaa !526
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxy, i64 64 ; 2 uses
  %i.bya = load i32, ptr %i.bxz, align 8
  %16 = shl i32 %i.bxr, 2
  %17 = and i32 %16, 67108864
  %18 = xor i32 %17, 67108864
  %19 = and i32 %18, %i.bxr
  %i.byb = and i32 %i.bya, -67108865
  %i.byc = or disjoint i32 %i.byb, %19
  store i32 %i.byc, ptr %i.bxz, align 8
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.ee:                                            ; preds = %bb.dt
  %i.byd = getelementptr inbounds nuw i8, ptr %i.bvz, i64 32 ; 2 uses
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !526
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 4
  %i.byg = load i32, ptr %i.byf, align 4, !tbaa !73 ; 3 uses
  %i.byh = load ptr, ptr %i.v, align 8, !tbaa !520 ; 2 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byh, i64 48
  %i.byj = and i32 %i.byg, 2147483647
  %i.byk = zext nneg i32 %i.byj to i64
  %i.byl = load ptr, ptr %i.byi, align 8, !tbaa !54
  %i.bym = getelementptr inbounds nuw [16 x i8], ptr %i.byl, i64 %i.byk
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bym, align 8
  %i.byn = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.byo = inttoptr i64 %i.byn to ptr
  %i.byp = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.byh, ptr noundef %i.byo, ptr nonnull @.str.4, i64 0) #14 ; 4 uses
  %i.byq = load ptr, ptr %i.byd, align 8, !tbaa !526
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.byq, i32 %i.byp) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bvz) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bvz, align 8
  %i.byr = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i75.i = icmp eq i64 %i.byr, 0
  br i1 %.not.i.i.i.i75.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.ee
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bvz, i64 44
  %i.byt = load i32, ptr %i.bys, align 4, !tbaa !99
  %i.byu = and i32 %i.byt, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.byu, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.byw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.bvz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.byv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !61 ; 3 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 44
  %i.byy = load i32, ptr %i.byx, align 4, !tbaa !99
  %i.byz = and i32 %i.byy, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.byz, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !185

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.ee
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.bvz, %bb.ee ], [ %i.bvz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.byw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.bza = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.bzb = load ptr, ptr %i.bza, align 8, !tbaa !61 ; 4 uses
  %i.bzc = icmp eq i64 %i.byn, ptrtoint (ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1984) to i64)
  br i1 %i.bzc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %i.bzd = load ptr, ptr %i.v, align 8, !tbaa !520
  %i.bze = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.bzd, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1856), ptr nonnull @.str.4, i64 0) #14 ; 3 uses
  %i.bzf = load ptr, ptr %i.v, align 8, !tbaa !520
  %i.bzg = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.bzf, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1856), ptr nonnull @.str.4, i64 0) #14 ; 2 uses
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bvz, i64 24 ; 3 uses
  %i.bzi = load ptr, ptr %i.bzh, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bvz, i64 72 ; 3 uses
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.bzj, align 8, !tbaa !102
  store ptr %.sroa.09.0.copyload.i.i, ptr %13, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkk, i8 0, i64 24, i1 false)
  %i.bzk = load ptr, ptr %i.aa, align 8, !tbaa !521
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzk, i64 8
  %i.bzm = load ptr, ptr %i.bzl, align 8, !tbaa !555
  %i.bzn = getelementptr inbounds i8, ptr %i.bzm, i64 -640
  %i.bzo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bzi, ptr %i.bzb, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.bzn, i32 %i.bze) ; 2 uses
  %i.bzp = extractvalue { ptr, ptr } %i.bzo, 0
  %i.bzq = extractvalue { ptr, ptr } %i.bzo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store ptr null, ptr %i.bkl, align 8, !tbaa !101, !alias.scope !556
  store i32 %i.byp, ptr %i.bkm, align 4, !tbaa !73, !alias.scope !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bkn, i8 0, i64 16, i1 false), !alias.scope !556
  store i32 0, ptr %12, align 8, !alias.scope !556
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bzq, ptr noundef nonnull align 8 dereferenceable(1065) %i.bzp, ptr noundef nonnull align 8 dereferenceable(32) %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %.val69.i.i = load ptr, ptr %i.aa, align 8, !tbaa !521
  %.val70.i.i = load ptr, ptr %i.bzh, align 8, !tbaa !554
  %.val71.i.i = load ptr, ptr %i.bzj, align 8, !tbaa !102
  %i.bzr = getelementptr i8, ptr %.val69.i.i, i64 8
  %.val69.val.i.i = load ptr, ptr %i.bzr, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store ptr %.val71.i.i, ptr %11, align 8, !tbaa !102
  %i.bzs = getelementptr inbounds i8, ptr %.val69.val.i.i, i64 -95136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bko, i8 0, i64 24, i1 false)
  %i.bzt = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.val70.i.i, ptr %i.bzb, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bzs, i32 %i.bzg) ; 2 uses
  %i.bzu = extractvalue { ptr, ptr } %i.bzt, 0    ; 3 uses
  %i.bzv = extractvalue { ptr, ptr } %i.bzt, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  store ptr null, ptr %i.bkp, align 8, !tbaa !101, !alias.scope !557
  store i32 %i.bze, ptr %i.bkq, align 4, !tbaa !73, !alias.scope !557
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bkr, i8 0, i64 16, i1 false), !alias.scope !557
  store i32 0, ptr %10, align 8, !alias.scope !557
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bzv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bzu, ptr noundef nonnull align 8 dereferenceable(32) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  store ptr null, ptr %i.bks, align 8, !tbaa !101, !alias.scope !558
  store i32 %i.bze, ptr %i.bkt, align 4, !tbaa !73, !alias.scope !558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bku, i8 0, i64 16, i1 false), !alias.scope !558
  store i32 0, ptr %9, align 8, !alias.scope !558
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bzv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bzu, ptr noundef nonnull align 8 dereferenceable(32) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store i32 1, ptr %8, align 8, !alias.scope !559
  store ptr null, ptr %i.bkv, align 8, !tbaa !101, !alias.scope !559
  store i64 2, ptr %i.bkw, align 8, !tbaa !73, !alias.scope !559
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bzv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bzu, ptr noundef nonnull align 8 dereferenceable(32) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.bzw = load ptr, ptr %i.bzh, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %.sroa.04.0.copyload.i.i = load ptr, ptr %i.bzj, align 8, !tbaa !102
  store ptr %.sroa.04.0.copyload.i.i, ptr %14, align 8, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkx, i8 0, i64 24, i1 false)
  %i.bzx = load ptr, ptr %i.aa, align 8, !tbaa !521
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzx, i64 8
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !555
  %i.caa = getelementptr inbounds i8, ptr %i.bzz, i64 -640
  %i.cab = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bzw, ptr %i.bzb, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.caa, i32 %i.byg) ; 2 uses
  %i.cac = extractvalue { ptr, ptr } %i.cab, 0
  %i.cad = extractvalue { ptr, ptr } %i.cab, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %i.bky, align 8, !tbaa !101, !alias.scope !560
  store i32 %i.bzg, ptr %i.bkz, align 4, !tbaa !73, !alias.scope !560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bla, i8 0, i64 16, i1 false), !alias.scope !560
  store i32 0, ptr %7, align 8, !alias.scope !560
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cad, ptr noundef nonnull align 8 dereferenceable(1065) %i.cac, ptr noundef nonnull align 8 dereferenceable(32) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

bb.eg:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.val66.i.i = load ptr, ptr %i.aa, align 8, !tbaa !521
  %i.cae = getelementptr i8, ptr %i.bvz, i64 24
  %.val67.i.i = load ptr, ptr %i.cae, align 8, !tbaa !554
  %i.caf = getelementptr i8, ptr %i.bvz, i64 72
  %.val68.i.i = load ptr, ptr %i.caf, align 8, !tbaa !102
  %i.cag = getelementptr i8, ptr %.val66.i.i, i64 8
  %.val66.val.i.i = load ptr, ptr %i.cag, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %.val68.i.i, ptr %6, align 8, !tbaa !102
  %i.cah = getelementptr inbounds i8, ptr %.val66.val.i.i, i64 -95136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bkb, i8 0, i64 24, i1 false)
  %i.cai = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.val67.i.i, ptr %i.bzb, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cah, i32 %i.byg) ; 2 uses
  %i.caj = extractvalue { ptr, ptr } %i.cai, 0    ; 3 uses
  %i.cak = extractvalue { ptr, ptr } %i.cai, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %i.bkc, align 8, !tbaa !101, !alias.scope !561
  store i32 %i.byp, ptr %i.bkd, align 4, !tbaa !73, !alias.scope !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bke, i8 0, i64 16, i1 false), !alias.scope !561
  store i32 0, ptr %5, align 8, !alias.scope !561
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cak, ptr noundef nonnull align 8 dereferenceable(1065) %i.caj, ptr noundef nonnull align 8 dereferenceable(32) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %i.bkf, align 8, !tbaa !101, !alias.scope !562
  store i32 %i.byp, ptr %i.bkg, align 4, !tbaa !73, !alias.scope !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bkh, i8 0, i64 16, i1 false), !alias.scope !562
  store i32 0, ptr %4, align 8, !alias.scope !562
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cak, ptr noundef nonnull align 8 dereferenceable(1065) %i.caj, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 1, ptr %3, align 8, !alias.scope !563
  store ptr null, ptr %i.bki, align 8, !tbaa !101, !alias.scope !563
  store i64 2, ptr %i.bkj, align 8, !tbaa !73, !alias.scope !563
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cak, ptr noundef nonnull align 8 dereferenceable(1065) %i.caj, ptr noundef nonnull align 8 dereferenceable(32) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i

_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i: ; preds = %.critedge2.i.i.i.i.i71, %.critedge2.i.i.i84, %bb.eg, %bb.ef, %bb.ed, %bb.ea, %bb.dz, %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit74.i, %bb.dp, %bb.do, %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit63.i, %bb.dc, %_ZNK4llvm18EquivalenceClassesIiE14getLeaderValueERKi.exit.i64
  %i.cal = add i32 %.0102.i, 1                    ; 2 uses
  %i.cam = zext i32 %i.cal to i64                 ; 2 uses
  %.val.i59 = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 3 uses
  %.val36.i = load ptr, ptr %i.ad, align 8, !tbaa !522 ; 2 uses
  %i.can = ptrtoint ptr %.val36.i to i64
  %i.cao = ptrtoint ptr %.val.i59 to i64
  %i.cap = sub i64 %i.can, %i.cao
  %i.caq = ashr exact i64 %i.cap, 4
  %i.car = icmp ugt i64 %i.caq, %i.cam
  br i1 %i.car, label %bb.cy, label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval19markSwapsForRemovalEv.exit, !llvm.loop !262

_ZN12_GLOBAL__N_117PPCVSXSwapRemoval19markSwapsForRemovalEv.exit: ; preds = %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i, %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23recordUnoptimizableWebsEv.exit
  %.val1620.i = phi ptr [ %.val36101.i, %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23recordUnoptimizableWebsEv.exit ], [ %.val36.i, %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i ] ; 2 uses
  %.val19.i = phi ptr [ %.val100.i57, %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23recordUnoptimizableWebsEv.exit ], [ %.val.i59, %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval23handleSpecialSwappablesEi.exit.i ] ; 2 uses
  %.not24.i = icmp eq ptr %.val1620.i, %.val19.i
  br i1 %.not24.i, label %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval11removeSwapsEv.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %_ZN12_GLOBAL__N_117PPCVSXSwapRemoval19markSwapsForRemovalEv.exit
  %i.cas = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ej, %.lr.ph.i103
  %.val1627.i = phi ptr [ %.val1620.i, %.lr.ph.i103 ], [ %.val16.i, %bb.ej ]
  %.val25.i104 = phi ptr [ %.val19.i, %.lr.ph.i103 ], [ %.val.i107, %bb.ej ] ; 2 uses
  %i.cat = phi i64 [ 0, %.lr.ph.i103 ], [ %i.cbr, %bb.ej ]
  %.022.i = phi i1 [ false, %.lr.ph.i103 ], [ %.1.i108, %bb.ej ]
  %.01421.i = phi i32 [ 0, %.lr.ph.i103 ], [ %i.cbq, %bb.ej ]
  %i.cau = getelementptr inbounds nuw [16 x i8], ptr %.val25.i104, i64 %i.cat ; 2 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 12
end_hunk_0
