Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4llvm16SelectionDAGISel14LowerArgumentsERKNS_8FunctionE:bb.a
  %i.rs = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !688
  %i.rv = load ptr, ptr %i.rs, align 8, !tbaa !42
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = call i16 %i.rx(ptr noundef nonnull align 8 dereferenceable(518435) %i.rs, ptr noundef nonnull align 8 dereferenceable(912) %i.r, i32 noundef %i.ru) #34 ; 2 uses
  %i.rz = load ptr, ptr %i.hl, align 8, !tbaa !2581
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !2599
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 80
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !201
  %i.se = call i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %i.rz, ptr noundef nonnull align 8 dereferenceable(8) %i.sd, i16 %i.ry, ptr null) ; 2 uses
  %i.sf = load ptr, ptr %15, align 8, !tbaa !54
  store i16 %i.ry, ptr %16, align 8, !tbaa !79
  %i.sg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.sg, align 8, !tbaa !94
  store ptr %.fca.0.extract179, ptr %17, align 8, !tbaa !202
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract180, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !73
  %i.sh = load i16, ptr %i.gi, align 2, !tbaa !605
  %i.si = lshr i16 %i.sh, 4
  %i.sj = and i16 %i.si, 1023
  %.sroa.0539.0.insert.ext = zext nneg i16 %i.sj to i64
  %.sroa.0539.0.insert.insert = or disjoint i64 %.sroa.0539.0.insert.ext, 4294967296
  %i.sk = call fastcc { ptr, i32 } @_ZL16getCopyFromPartsRN4llvm12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTEPKNS_5ValueES5_St8optionalIjESD_INS_3ISD8NodeTypeEE(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull %i.sf, i32 noundef 1, i16 %i.se, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %16, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17, i64 %.sroa.0539.0.insert.insert, i64 0) ; 2 uses
  %.fca.0.extract154 = extractvalue { ptr, i32 } %i.sk, 0 ; 2 uses
  %.fca.1.extract155 = extractvalue { ptr, i32 } %i.sk, 1 ; 2 uses
  %i.sl = load ptr, ptr %i.f, align 8, !tbaa !2547
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 832
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 56
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !215
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !354
  %i.ss = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !42
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 528
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = call noundef ptr %i.sv(ptr noundef nonnull align 8 dereferenceable(518435) %i.ss, i16 %i.se, i1 noundef zeroext false) #34
  %i.sx = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.sr, ptr noundef %i.sw, ptr nonnull @.str.31, i64 0) #34 ; 2 uses
  %i.sy = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 52
  store i32 %i.sx, ptr %i.sz, align 4, !tbaa !73
  %i.ta = load ptr, ptr %i.f, align 8, !tbaa !2547 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 832
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !410, !nonnull !51, !align !346 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !436 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 816
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !438
  %.not.i.i405 = icmp eq ptr %i.td, null
  br i1 %.not.i.i405, label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit409, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 48
  %i.th = load i64, ptr %i.tg, align 8, !tbaa !446
  %i.ti = inttoptr i64 %i.th to ptr
  br label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit409

_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit409: ; preds = %bb.bv, %bb.bw
  %.sroa.0.0.i406 = phi ptr [ null, %bb.bv ], [ %i.ti, %bb.bw ]
  store ptr %.sroa.0.0.i406, ptr %18, align 8
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %i.tf, ptr %.sroa.2143.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.fca.0.extract154, ptr %5, align 8
  %.sroa.2535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract155, ptr %.sroa.2535.0..sroa_idx, align 8
  store ptr %.fca.0.extract179, ptr %3, align 8, !tbaa !202
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract180, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !73
  %i.tj = getelementptr inbounds nuw i8, ptr %.fca.0.extract154, i64 48
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !211
  %i.tl = zext i32 %.fca.1.extract155 to i64
  %i.tm = getelementptr inbounds nuw [16 x i8], ptr %i.tk, i64 %i.tl ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.tm, align 8, !tbaa !79
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !81
  %i.tn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.tc, i32 %i.sx, i16 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.21.0.copyload.i.i.i) #34 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.tn, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.tn, 1
  store ptr %.fca.0.extract1.i, ptr %4, align 8
  %.sroa.24.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i410, align 8
  %i.to = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.tc, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %18, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract135 = extractvalue { ptr, i32 } %i.to, 0 ; 4 uses
  %.fca.1.extract136 = extractvalue { ptr, i32 } %i.to, 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  %.not.i411 = icmp eq ptr %.fca.0.extract135, null
  br i1 %.not.i411, label %.thread.i413, label %bb.bx

.thread.i413:                                     ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit409
  store ptr null, ptr %i.hn, align 8, !tbaa !202
  store i32 %.fca.1.extract136, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !73
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415

bb.bx:                                            ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit409
  call void @_ZN4llvm14checkForCyclesEPKNS_6SDNodeEPKNS_12SelectionDAGEb(ptr noundef nonnull %.fca.0.extract135, ptr noundef nonnull align 8 dereferenceable(920) %i.i, i1 noundef zeroext false) #34
  store ptr %.fca.0.extract135, ptr %i.hn, align 8, !tbaa !202
  store i32 %.fca.1.extract136, ptr %.sroa.2184.0..sroa_idx, align 8, !tbaa !73
  call void @_ZN4llvm14checkForCyclesEPKNS_12SelectionDAGEb(ptr noundef nonnull align 8 dereferenceable(920) %i.i, i1 noundef zeroext false) #34
  br label %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415

_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415: ; preds = %bb.bx, %.thread.i413, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit
  %.0355 = phi i32 [ 0, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ], [ 1, %.thread.i413 ], [ 1, %bb.bx ]
  %.sroa.0186.0 = phi ptr [ %.fca.0.extract179, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ], [ null, %.thread.i413 ], [ %.fca.0.extract135, %bb.bx ] ; 4 uses
  %.sroa.12.0 = phi i32 [ %.fca.1.extract180, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit ], [ %.fca.1.extract136, %.thread.i413 ], [ %.fca.1.extract136, %bb.bx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %i.tp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.tp, ptr %19, align 8, !tbaa !54
  %i.tq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 8 uses
  store i32 0, ptr %i.tq, align 8, !tbaa !82
  %i.tr = getelementptr inbounds nuw i8, ptr %19, i64 12 ; 3 uses
  store i32 4, ptr %i.tr, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.ts = load i16, ptr %i.gi, align 2, !tbaa !605 ; 2 uses
  %i.tt = trunc i16 %i.ts to i1
  br i1 %i.tt, label %bb.by, label %_ZNK4llvm8Function9arg_beginEv.exit.i416

bb.by:                                            ; preds = %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #34
  %.pre.i420 = load i16, ptr %i.gi, align 2, !tbaa !605
  br label %_ZNK4llvm8Function9arg_beginEv.exit.i416

_ZNK4llvm8Function9arg_beginEv.exit.i416:         ; preds = %bb.by, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415
  %i.tu = phi i16 [ %i.ts, %_ZN4llvm12SelectionDAG7setRootENS_7SDValueE.exit415 ], [ %.pre.i420, %bb.by ]
  %i.tv = load ptr, ptr %i.gm, align 8, !tbaa !2597 ; 3 uses
  %i.tw = trunc i16 %i.tu to i1
  br i1 %i.tw, label %bb.bz, label %_ZNK4llvm8Function4argsEv.exit421

bb.bz:                                            ; preds = %_ZNK4llvm8Function9arg_beginEv.exit.i416
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %1) #34
  %.pre1.i419 = load ptr, ptr %i.gm, align 8, !tbaa !2597
  br label %_ZNK4llvm8Function4argsEv.exit421

_ZNK4llvm8Function4argsEv.exit421:                ; preds = %_ZNK4llvm8Function9arg_beginEv.exit.i416, %bb.bz
  %i.tx = phi ptr [ %i.tv, %_ZNK4llvm8Function9arg_beginEv.exit.i416 ], [ %.pre1.i419, %bb.bz ]
  %i.ty = load i32, ptr %i.gq, align 8, !tbaa !2590
  %i.tz = zext i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [40 x i8], ptr %i.tx, i64 %i.tz ; 2 uses
  %.not371671 = icmp eq ptr %i.tv, %i.ua
  br i1 %.not371671, label %._crit_edge677, label %.lr.ph676

.lr.ph676:                                        ; preds = %_ZNK4llvm8Function4argsEv.exit421
  %i.ub = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %22, i64 12
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.uk = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 840
  %.sroa.6.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %24, i64 2
  %.sroa.8.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.12.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.7510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ca

._crit_edge677:                                   ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit, %_ZNK4llvm8Function4argsEv.exit421
  %i.ur = load i32, ptr %i.tq, align 8, !tbaa !82 ; 3 uses
  %.not.i422 = icmp eq i32 %i.ur, 0
  br i1 %.not.i422, label %bb.ds, label %bb.dp

bb.ca:                                            ; preds = %.lr.ph676, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit
  %.1356675 = phi i32 [ %.0355, %.lr.ph676 ], [ %.3358, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ] ; 3 uses
  %.0359672 = phi ptr [ %i.tv, %.lr.ph676 ], [ %i.aip, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit ] ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #34
  store ptr %i.ub, ptr %21, align 8, !tbaa !54
  store i32 0, ptr %i.uc, align 8, !tbaa !82
  store i32 4, ptr %i.ud, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #34
  store ptr %i.ue, ptr %22, align 8, !tbaa !54
  store i32 0, ptr %i.uf, align 8, !tbaa !82
  store i32 4, ptr %i.ug, align 4, !tbaa !77
  %i.us = load ptr, ptr %i.hl, align 8, !tbaa !2581
  %i.ut = load ptr, ptr %i.p, align 8, !tbaa !215
  %i.uu = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.ut) #34
  %i.uv = getelementptr inbounds nuw i8, ptr %.0359672, i64 8 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !554
  store i64 0, ptr %23, align 8
  store i8 0, ptr %.sroa.2109.0..sroa_idx, align 8
  call void @_ZN4llvm15ComputeValueVTsERKNS_14TargetLoweringERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplINS_3EVTEEEPSA_PNS8_INS_8TypeSizeEEESD_(ptr noundef nonnull align 8 dereferenceable(518435) %i.us, ptr noundef nonnull align 8 dereferenceable(912) %i.uu, ptr noundef %i.uw, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef null, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::TypeSize") align 8 %23) #34
  %i.ux = load i32, ptr %i.uf, align 8, !tbaa !82 ; 3 uses
  %i.uy = zext i32 %i.ux to i64                   ; 2 uses
  %i.uz = icmp eq i32 %i.ux, 0
  br i1 %i.uz, label %_ZN4llvm19SelectionDAGBuilder24CopyToExportRegsIfNeededEPKNS_5ValueE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.va = getelementptr inbounds nuw i8, ptr %.0359672, i64 16 ; 4 uses
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !450
  %i.vc = icmp ne ptr %i.vb, null                 ; 7 uses
  %i.vd = zext i32 %.1356675 to i64               ; 4 uses
  %i.ve = load ptr, ptr %10, align 8, !tbaa !54
  %i.vf = getelementptr inbounds nuw [64 x i8], ptr %i.ve, i64 %i.vd
  %i.vg = load i64, ptr %i.vf, align 4
  %i.vh = and i64 %i.vg, 8589934592
  %.not642 = icmp eq i64 %i.vh, 0
  br i1 %.not642, label %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit, label %.lr.ph667.preheader

.lr.ph667.preheader:                              ; preds = %bb.cb
  %i.vi = load ptr, ptr %22, align 8, !tbaa !54   ; 2 uses
  %.idx = shl nuw nsw i64 %i.uy, 4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.idx
  br label %.lr.ph667

._crit_edge668:                                   ; preds = %.lr.ph667
  %i.vk = load ptr, ptr %i.w, align 8, !tbaa !1231 ; 2 uses
  %i.vl = load ptr, ptr %15, align 8, !tbaa !54
  %i.vm = getelementptr inbounds nuw [16 x i8], ptr %i.vl, i64 %i.vd ; 3 uses
  %i.vn = zext i32 %i.aab to i64
  %i.vo = load ptr, ptr %i.vm, align 8, !tbaa !195 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !349
  %i.vr = icmp ne i32 %i.vq, 316
  %.not28.i423 = icmp eq ptr %i.vo, null
  %.not.i424 = or i1 %.not28.i423, %i.vr
  br i1 %.not.i424, label %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge668
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 40
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !350
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !195 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !349
  switch i32 %i.vx, label %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.i
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.i: ; preds = %bb.cc, %bb.cc
  %i.vy = load ptr, ptr %12, align 8, !tbaa !1236, !noalias !2601 ; 2 uses
  %i.vz = load ptr, ptr %i.uj, align 8, !tbaa !1237, !noalias !2601 ; 2 uses
  %i.wa = load i32, ptr %i.uk, align 4, !tbaa !1238, !noalias !2601 ; 3 uses
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %.loopexit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  %i.wc = add i32 %i.wa, -1                       ; 2 uses
  %i.wd = ptrtoint ptr %.0359672 to i64
  %i.we = mul i64 %i.wd, -4658895280553007687     ; 2 uses
  %i.wf = lshr i64 %i.we, 31
  %i.wg = xor i64 %i.wf, %i.we
  %i.wh = trunc i64 %i.wg to i32
  %i.wi = and i32 %i.wc, %i.wh                    ; 3 uses
  %i.wj = zext i32 %i.wi to i64                   ; 2 uses
  %i.wk = lshr i64 %i.wj, 5
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !73, !noalias !2602
  %i.wn = and i32 %i.wi, 31
  %i.wo = lshr i32 %i.wm, %i.wn
  %i.wp = trunc i32 %i.wo to i1
  br i1 %i.wp, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !552

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cd, %bb.ce
  %i.wq = phi i64 [ %i.ww, %bb.ce ], [ %i.wj, %bb.cd ]
  %.017.i.i.i.i.i = phi i32 [ %i.wv, %bb.ce ], [ %i.wi, %bb.cd ]
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %i.vy, i64 %i.wq ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !1239, !noalias !2602
  %i.wt = icmp eq ptr %.0359672, %i.ws
  br i1 %i.wt, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SE_SH_E4findES4_.exit.i, label %bb.ce, !prof !89

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.wu = add nuw i32 %.017.i.i.i.i.i, 1
  %i.wv = and i32 %i.wu, %i.wc                    ; 3 uses
  %i.ww = zext i32 %i.wv to i64                   ; 2 uses
  %i.wx = lshr i64 %i.ww, 5
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.wx
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !73, !noalias !2602
  %i.xa = and i32 %i.wv, 31
  %i.xb = lshr i32 %i.wz, %i.xa
  %i.xc = trunc i32 %i.xb to i1
  br i1 %i.xc, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !553

.loopexit.i.i.i:                                  ; preds = %bb.ce, %bb.cd, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.i
  %i.xd = zext i32 %i.wa to i64
  %i.xe = getelementptr inbounds nuw [24 x i8], ptr %i.vy, i64 %i.xd
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SE_SH_E4findES4_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SE_SH_E4findES4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %.lcssa.sink.i.i.i = phi ptr [ %i.xe, %.loopexit.i.i.i ], [ %i.wr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.xf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !2603
  store ptr %i.xg, ptr %i.c, align 8, !tbaa !610
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vv, i64 88
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !456 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vk, i64 216
  %i.xk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.xk, 0
  %i.xl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !73 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !535
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 48
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !964 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 32
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !1115 ; 2 uses
  %i.xu = add i32 %i.xt, %i.xi
  %i.xv = zext i32 %i.xu to i64
  %i.xw = load ptr, ptr %i.xr, align 8, !tbaa !1114 ; 2 uses
  %i.xx = getelementptr inbounds nuw [40 x i8], ptr %i.xw, i64 %i.xv ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !2605
  %i.ya = add i32 %i.xt, %i.xm
  %i.yb = zext i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [40 x i8], ptr %i.xw, i64 %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !2605
  %.not41.i = icmp eq i64 %i.xz, %i.ye
  br i1 %.not41.i, label %bb.cf, label %.loopexit.i425

bb.cf:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SC_EEEES4_SC_SE_SH_E4findES4_.exit.i
  %i.yf = load ptr, ptr %i.c, align 8, !tbaa !610
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 2
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !605
  %i.yi = trunc i16 %i.yh to i8
  %i.yj = and i8 %i.yi, 63
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %.sroa.0.0.copyload.i.i426 = load i8, ptr %i.yk, align 8, !tbaa !70
  %i.yl = icmp ult i8 %.sroa.0.0.copyload.i.i426, %i.yj
  br i1 %i.yl, label %.loopexit.i425, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 -1, ptr %i.yd, align 8, !tbaa !2605
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xx, i64 17
  store i8 0, ptr %i.ym, align 1, !tbaa !2606
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xx, i64 33
  store i8 1, ptr %i.yn, align 1, !tbaa !2607
  store i32 %i.xi, ptr %i.xl, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store i32 %i.xm, ptr %2, align 4, !tbaa !2608
  store i32 %i.xi, ptr %i.ul, align 4, !tbaa !2609
  %i.yo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24lookupOrInsertIntoBucketIiJiEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.ul), !noalias !2610 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %.idx.i427 = shl nuw nsw i64 %i.vn, 4
  %i.yp = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.idx.i427
  %.not4232.i = icmp eq i32 %i.aab, 0
  br i1 %.not4232.i, label %._crit_edge.i, label %.lr.ph.i428

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i, %bb.cg
  %i.yq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !2611 ; 4 uses
  %i.ys = load i8, ptr %i.um, align 8, !tbaa !49, !range !50, !noalias !2612, !noundef !51
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.ch, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.ch:                                            ; preds = %._crit_edge.i
  %i.yu = load ptr, ptr %i.ui, align 8, !tbaa !52, !noalias !2612 ; 2 uses
  %i.yv = load i32, ptr %i.un, align 4, !tbaa !583, !noalias !2612 ; 4 uses
  %i.yw = zext i32 %i.yv to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.yw, 3
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.yv, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i430

.lr.ph.i.i.i430:                                  ; preds = %bb.ch, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.yz, %.critedge.i.i.i ], [ %i.yu, %bb.ch ] ; 2 uses
  %i.yy = load ptr, ptr %.023.i.i.i, align 8, !tbaa !548, !noalias !2612
  %.not15.i.i.i = icmp eq ptr %i.yy, %i.yr
  br i1 %.not15.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i430
  %i.yz = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i431 = icmp eq ptr %i.yz, %i.yx
  br i1 %.not.i.i.i431, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i430

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.ch
  %i.za = load i32, ptr %i.uo, align 8, !tbaa !653, !noalias !2612
  %i.zb = icmp ult i32 %i.yv, %i.za
  br i1 %i.zb, label %bb.ci, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i

bb.ci:                                            ; preds = %._crit_edge.i.i.i
  %i.zc = add nuw i32 %i.yv, 1
  store i32 %i.zc, ptr %i.un, align 4, !tbaa !583, !noalias !2612
  store ptr %i.yr, ptr %i.yx, align 8, !tbaa !548, !noalias !2612
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i: ; preds = %._crit_edge.i.i.i, %._crit_edge.i
  %i.zd = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.ui, ptr noundef %i.yr) #34, !noalias !2612 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i

_ZN4llvm15SmallPtrSetImplIPKNS_11InstructionEE6insertES3_.exit.i: ; preds = %.lr.ph.i.i.i430, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.ci
end_hunk_0
begin_hunk_1_@_ZN4llvm16SelectionDAGISel14LowerArgumentsERKNS_8FunctionE:bb.a
.lr.ph667:                                        ; preds = %.lr.ph667.preheader, %.lr.ph667
  %.0360665 = phi i32 [ %i.aab, %.lr.ph667 ], [ 0, %.lr.ph667.preheader ]
  %.0361664 = phi ptr [ %i.aac, %.lr.ph667 ], [ %i.vi, %.lr.ph667.preheader ] ; 3 uses
  %.sroa.092.0.copyload = load i16, ptr %.0361664, align 8, !tbaa !79
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0361664, i64 8
  %.sroa.594.0.copyload = load ptr, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !81
  %i.zp = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.zq = load ptr, ptr %i.uh, align 8, !tbaa !2599
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !201
  %i.zt = load i16, ptr %i.gi, align 2, !tbaa !605
  %i.zu = lshr i16 %i.zt, 4
  %i.zv = and i16 %i.zu, 1023
  %i.zw = zext nneg i16 %i.zv to i32
  %i.zx = load ptr, ptr %i.zp, align 8, !tbaa !42
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 744
  %i.zz = load ptr, ptr %i.zy, align 8
  %i.aaa = call noundef i32 %i.zz(ptr noundef nonnull align 8 dereferenceable(518435) %i.zp, ptr noundef nonnull align 8 dereferenceable(8) %i.zs, i32 noundef %i.zw, i16 %.sroa.092.0.copyload, ptr %.sroa.594.0.copyload) #34
  %i.aab = add i32 %i.aaa, %.0360665              ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0361664, i64 16 ; 2 uses
  %.not372 = icmp eq ptr %i.aac, %i.vj
  br i1 %.not372, label %._crit_edge668, label %.lr.ph667

_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit: ; preds = %.loopexit.i425, %bb.cc, %._crit_edge668, %bb.cb
  %.0 = phi i1 [ %i.vc, %bb.cb ], [ %i.vc, %._crit_edge668 ], [ %i.vc, %bb.cc ], [ %.1, %.loopexit.i425 ]
  %i.aad = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !42
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 2248
  %i.aag = load ptr, ptr %i.aaf, align 8
  %i.aah = call noundef zeroext i1 %i.aag(ptr noundef nonnull align 8 dereferenceable(518435) %i.aad) #34
  br i1 %i.aah, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit
  %i.aai = call noundef zeroext i1 @_ZNK4llvm8Argument12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(40) %.0359672, i32 noundef 79) #34
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit
  %i.aaj = phi i1 [ false, %_ZL22tryToElideArgumentCopyRN4llvm20FunctionLoweringInfoERNS_15SmallVectorImplINS_7SDValueEEERNS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEERNS_15SmallPtrSetImplIPKNS_11InstructionEEERNS6_IPKNS_8ArgumentESt4pairIPKNS_10AllocaInstEPKNS_9StoreInstEENS7_ISM_vEENSA_ISM_SU_EEEERSL_NS_8ArrayRefIS3_EERb.exit ], [ %i.aai, %bb.cm ] ; 2 uses
  %or.cond4 = or i1 %.0, %i.aaj                   ; 2 uses
  br i1 %or.cond4, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader, label %bb.co

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader: ; preds = %bb.co, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit, %bb.cn
  br label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread

bb.co:                                            ; preds = %bb.cn
  %i.aak = load ptr, ptr %i.f, align 8, !tbaa !2547
  %i.aal = load ptr, ptr %15, align 8, !tbaa !54
  %i.aam = getelementptr inbounds nuw [16 x i8], ptr %i.aal, i64 %i.vd ; 2 uses
  %.sroa.083.0.copyload = load ptr, ptr %i.aam, align 8, !tbaa !202
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %.sroa.284.0.copyload = load i32, ptr %.sroa.284.0..sroa_idx, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.0359672, ptr %i.b, align 8, !tbaa !448
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.aao = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aan, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i432 = extractvalue { ptr, i8 } %i.aao, 0 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i432, i64 8
  store ptr %.sroa.083.0.copyload, ptr %i.aap, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i432, i64 16
  store i32 %.sroa.284.0.copyload, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aaq = load ptr, ptr %15, align 8, !tbaa !54
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %i.vd
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !195 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aau = load i32, ptr %i.aat, align 8, !tbaa !349
  switch i32 %i.aau, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit: ; preds = %bb.co, %bb.co
  %i.aav = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 88
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !456
  call void @_ZN4llvm20FunctionLoweringInfo21setArgumentFrameIndexEPKNS_8ArgumentEi(ptr noundef nonnull align 8 dereferenceable(976) %i.aav, ptr noundef nonnull %.0359672, i32 noundef %i.aax) #34
  br label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader

bb.cp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %i.aay = load i32, ptr %i.uc, align 8, !tbaa !82
  %.not.i433 = icmp eq i32 %i.aay, 0
  br i1 %.not.i433, label %_ZN4llvm19SelectionDAGBuilder24CopyToExportRegsIfNeededEPKNS_5ValueE.exit, label %bb.cx

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread: ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %indvars.iv691 = phi i64 [ %indvars.iv.next692, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ 0, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader ] ; 2 uses
  %.2357670 = phi i32 [ %i.acy, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ], [ %.1356675, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.aaz = load ptr, ptr %22, align 8, !tbaa !54
  %i.aba = getelementptr inbounds nuw [16 x i8], ptr %i.aaz, i64 %indvars.iv691 ; 3 uses
  %.sroa.073.0.copyload = load i16, ptr %i.aba, align 8, !tbaa !79 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aba, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx, i64 6, i1 false), !tbaa.struct !2613
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  %i.abb = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.abc = load ptr, ptr %i.uh, align 8, !tbaa !2599
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 80
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !201
  %i.abf = load i16, ptr %i.gi, align 2, !tbaa !605
  %i.abg = lshr i16 %i.abf, 4
  %i.abh = and i16 %i.abg, 1023
  %i.abi = zext nneg i16 %i.abh to i32
  %i.abj = load ptr, ptr %i.abb, align 8, !tbaa !42
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 736
  %i.abl = load ptr, ptr %i.abk, align 8
  %i.abm = call i16 %i.abl(ptr noundef nonnull align 8 dereferenceable(518435) %i.abb, ptr noundef nonnull align 8 dereferenceable(8) %i.abe, i32 noundef %i.abi, i16 %.sroa.073.0.copyload, ptr %.sroa.8.0.copyload) #34
  %i.abn = load ptr, ptr %i.hl, align 8, !tbaa !2581 ; 2 uses
  %i.abo = load ptr, ptr %i.uh, align 8, !tbaa !2599
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 80
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !201
  %i.abr = load i16, ptr %i.gi, align 2, !tbaa !605
  %i.abs = lshr i16 %i.abr, 4
  %i.abt = and i16 %i.abs, 1023
  %i.abu = zext nneg i16 %i.abt to i32
  %i.abv = load ptr, ptr %i.abn, align 8, !tbaa !42
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 744
  %i.abx = load ptr, ptr %i.abw, align 8
  %i.aby = call noundef i32 %i.abx(ptr noundef nonnull align 8 dereferenceable(518435) %i.abn, ptr noundef nonnull align 8 dereferenceable(8) %i.abq, i32 noundef %i.abu, i16 %.sroa.073.0.copyload, ptr %.sroa.8.0.copyload) #34 ; 2 uses
  br i1 %or.cond4, label %bb.cq, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.cq:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %i.abz = call noundef zeroext i1 @_ZNK4llvm8Argument12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(40) %.0359672, i32 noundef 58) #34
  br i1 %i.abz, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aca = call noundef zeroext i1 @_ZNK4llvm8Argument12hasAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(40) %.0359672, i32 noundef 84) #34
  %i.acb = select i1 %i.aca, i64 4294967300, i64 4
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.0520.0.insert.insert = phi i64 [ %i.acb, %bb.cr ], [ 4294967299, %bb.cq ]
  %i.acc = zext i32 %.2357670 to i64
  %i.acd = load ptr, ptr %15, align 8, !tbaa !54
  %i.ace = getelementptr inbounds nuw [16 x i8], ptr %i.acd, i64 %i.acc
  store i16 %.sroa.073.0.copyload, ptr %24, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6.0..sroa_idx75, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6, i64 6, i1 false), !tbaa.struct !2613
  store ptr %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx76, align 8, !tbaa !81
  store ptr %.sroa.0186.0, ptr %25, align 8, !tbaa !202
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx188, align 8, !tbaa !73
  %i.acf = load i16, ptr %i.gi, align 2, !tbaa !605
  %i.acg = lshr i16 %i.acf, 4
  %i.ach = and i16 %i.acg, 1023
  %.sroa.0507.0.insert.ext = zext nneg i16 %i.ach to i64
  %.sroa.0507.0.insert.insert = or disjoint i64 %.sroa.0507.0.insert.ext, 4294967296
  %i.aci = call fastcc { ptr, i32 } @_ZL16getCopyFromPartsRN4llvm12SelectionDAGERKNS_5SDLocEPKNS_7SDValueEjNS_3MVTENS_3EVTEPKNS_5ValueES5_St8optionalIjESD_INS_3ISD8NodeTypeEE(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull %i.ace, i32 noundef %i.aby, i16 %i.abm, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %24, ptr noundef null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25, i64 %.sroa.0507.0.insert.insert, i64 %.sroa.0520.0.insert.insert) ; 2 uses
  %.fca.0.extract58 = extractvalue { ptr, i32 } %i.aci, 0 ; 3 uses
  %.fca.1.extract59 = extractvalue { ptr, i32 } %i.aci, 1 ; 3 uses
  %i.acj = call noundef i32 @_ZNK4llvm8Argument12getNoFPClassEv(ptr noundef nonnull align 8 dereferenceable(40) %.0359672) #34 ; 2 uses
  %.not379 = icmp eq i32 %i.acj, 0
  br i1 %.not379, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ack = zext i32 %i.acj to i64
  %i.acl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.i, i64 noundef %i.ack, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #34 ; 2 uses
  %.fca.0.extract49 = extractvalue { ptr, i32 } %i.acl, 0
  %.fca.1.extract50 = extractvalue { ptr, i32 } %i.acl, 1
  %i.acm = getelementptr inbounds nuw i8, ptr %.fca.0.extract58, i64 48
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !211
  %i.aco = zext i32 %.fca.1.extract59 to i64
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %i.acn, i64 %i.aco ; 2 uses
  %.sroa.0.0.copyload.i.i434 = load i16, ptr %i.acp, align 8, !tbaa !79
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !81
  store ptr %.fca.0.extract58, ptr %26, align 8, !tbaa !202
  store i32 %.fca.1.extract59, ptr %.sroa.7510.0..sroa_idx, align 8, !tbaa !73
  store ptr %.fca.0.extract49, ptr %27, align 8, !tbaa !202
  store i32 %.fca.1.extract50, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !73
  %i.acq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.i, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.0.0.copyload.i.i434, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %26, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %27) #34 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i32 } %i.acq, 0
  %.fca.1.extract41 = extractvalue { ptr, i32 } %i.acq, 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.7510.0 = phi i32 [ %.fca.1.extract59, %bb.cs ], [ %.fca.1.extract41, %bb.ct ] ; 2 uses
  %.sroa.0509.0 = phi ptr [ %.fca.0.extract58, %bb.cs ], [ %.fca.0.extract40, %bb.ct ] ; 2 uses
  %i.acr = load i32, ptr %i.uc, align 8, !tbaa !82 ; 2 uses
  %i.acs = load i32, ptr %i.ud, align 4, !tbaa !77
  %.not.i437 = icmp ult i32 %i.acr, %i.acs
  br i1 %.not.i437, label %bb.cw, label %bb.cv, !prof !89

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr %.sroa.0509.0, i32 %.sroa.7510.0)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.cw:                                            ; preds = %bb.cu
  %i.act = zext i32 %i.acr to i64
  %i.acu = load ptr, ptr %21, align 8, !tbaa !54
  %i.acv = getelementptr inbounds nuw [16 x i8], ptr %i.acu, i64 %i.act ; 2 uses
  store ptr %.sroa.0509.0, ptr %i.acv, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store i32 %.sroa.7510.0, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.acw = load i32, ptr %i.uc, align 8, !tbaa !82
  %i.acx = add i32 %i.acw, 1
  store i32 %i.acx, ptr %i.uc, align 8, !tbaa !82
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.cw, %bb.cv, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread
  %i.acy = add i32 %i.aby, %.2357670              ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next692 to i32
  %exitcond = icmp eq i32 %i.ux, %lftr.wideiv
  br i1 %exitcond, label %bb.cp, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit.thread, !llvm.loop !2525

bb.cx:                                            ; preds = %bb.cp
  %i.acz = load ptr, ptr %21, align 8, !tbaa !54  ; 2 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !195 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !349
  switch i32 %i.adc, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439: ; preds = %bb.cx, %bb.cx
  %i.add = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 88
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !456
  call void @_ZN4llvm20FunctionLoweringInfo21setArgumentFrameIndexEPKNS_8ArgumentEi(ptr noundef nonnull align 8 dereferenceable(976) %i.add, ptr noundef nonnull %.0359672, i32 noundef %i.adf) #34
  %.pre696 = load ptr, ptr %21, align 8, !tbaa !54
  br label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread: ; preds = %bb.cx, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439
  %i.adg = phi ptr [ %i.acz, %bb.cx ], [ %.pre696, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #34
  %i.adh = load ptr, ptr %i.f, align 8, !tbaa !2547 ; 2 uses
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !436 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 816
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !438
  %.not.i.i440 = icmp eq ptr %i.adi, null
  br i1 %.not.i.i440, label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit444, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adi, i64 48
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !446
  %i.adn = inttoptr i64 %i.adm to ptr
  br label %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit444

_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit444: ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread, %bb.cy
  %.sroa.0.0.i441 = phi ptr [ null, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit439.thread ], [ %i.adn, %bb.cy ]
  store ptr %.sroa.0.0.i441, ptr %28, align 8
  store i32 %i.adk, ptr %.sroa.234.0..sroa_idx, align 8
  %i.ado = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getMergeValuesENS_8ArrayRefINS_7SDValueEEERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(920) %i.i, ptr %i.adg, i64 %i.uy, ptr noundef nonnull align 8 dereferenceable(12) %28) #34 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i32 } %i.ado, 0 ; 6 uses
  %.fca.1.extract28 = extractvalue { ptr, i32 } %i.ado, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #34
  %i.adp = load ptr, ptr %i.f, align 8, !tbaa !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.0359672, ptr %i.a, align 8, !tbaa !448
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  %i.adr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_7SDValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.adq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i445 = extractvalue { ptr, i8 } %i.adr, 0 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i445, i64 8
  store ptr %.fca.0.extract27, ptr %i.ads, align 8, !tbaa !202
  %.sroa.2.0..0..sroa_idx.i446 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i445, i64 16
  store i32 %.fca.1.extract28, ptr %.sroa.2.0..0..sroa_idx.i446, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.adt = load ptr, ptr %i.up, align 8, !tbaa !2614, !nonnull !51, !align !346
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 1296
  %i.adv = load i8, ptr %i.adu, align 8
  %i.adw = and i8 %i.adv, 64
  %.not376 = icmp eq i8 %i.adw, 0
  br i1 %.not376, label %bb.cz, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread

bb.cz:                                            ; preds = %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit444
  %i.adx = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 24
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !349
  %i.adz = icmp eq i32 %i.ady, 57
  br i1 %i.adz, label %bb.da, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread

bb.da:                                            ; preds = %bb.cz
  %i.aea = load ptr, ptr %i.p, align 8, !tbaa !215
  %i.aeb = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.aea) #34
  %i.aec = load i8, ptr %i.aeb, align 8, !tbaa !246, !range !50, !noundef !51
  %i.aed = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 40
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !350
  %i.aef = zext nneg i8 %i.aec to i64
  %i.aeg = getelementptr inbounds nuw [40 x i8], ptr %i.aee, i64 %i.aef
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !195 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 24
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !349
  %i.aek = icmp ne i32 %i.aej, 316
  %.not377643 = icmp eq ptr %i.aeh, null
  %.not377 = or i1 %.not377643, %i.aek
  br i1 %.not377, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 40
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !350
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 40
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !195 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 24
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !349
  switch i32 %i.aeq, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448: ; preds = %bb.db, %bb.db
  %i.aer = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeo, i64 88
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !456
  call void @_ZN4llvm20FunctionLoweringInfo21setArgumentFrameIndexEPKNS_8ArgumentEi(ptr noundef nonnull align 8 dereferenceable(976) %i.aer, ptr noundef nonnull %.0359672, i32 noundef %i.aet) #34
  br label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread: ; preds = %bb.db, %bb.da, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448, %bb.cz, %_ZNK4llvm19SelectionDAGBuilder11getCurSDLocEv.exit444
  %i.aeu = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 24
  %i.aev = load i32, ptr %i.aeu, align 8, !tbaa !349 ; 2 uses
  %i.aew = icmp eq i32 %i.aev, 4
  br i1 %i.aew, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread
  %i.aex = getelementptr inbounds nuw i8, ptr %.fca.0.extract27, i64 40
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !350
  %.sroa.0497.0.copyload = load ptr, ptr %i.aey, align 8, !tbaa !202 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0497.0.copyload, i64 24
  %.pre697 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !349
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread
  %i.aez = phi i32 [ %.pre697, %bb.dc ], [ %i.aev, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread ] ; 2 uses
  %.sroa.0497.0 = phi ptr [ %.sroa.0497.0.copyload, %bb.dc ], [ %.fca.0.extract27, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_6SDNodeEEEDcPT0_.exit448.thread ] ; 3 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0497.0, i64 24
  %i.afb = icmp eq i32 %i.aez, 52
  %or.cond8 = and i1 %i.aaj, %i.afb
  br i1 %or.cond8, label %bb.de, label %thread-pre-split

bb.de:                                            ; preds = %bb.dd
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.0497.0, i64 40
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !350
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 40
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !195
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 88
  %.sroa.0.0.copyload.i = load i32, ptr %i.afg, align 8, !tbaa !73 ; 2 uses
  %i.afh = icmp slt i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.afh, label %bb.df, label %thread-pre-split.thread

bb.df:                                            ; preds = %bb.de
  %i.afi = load ptr, ptr %i.uq, align 8, !tbaa !2615 ; 2 uses
  %i.afj = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 680
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !534
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 104
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !706
  call void @_ZN4llvm23SwiftErrorValueTracking14setCurrentVRegEPKNS_17MachineBasicBlockEPKNS_5ValueENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(136) %i.afi, ptr noundef %i.afl, ptr noundef %i.afn, i32 %.sroa.0.0.copyload.i) #34
  %.pr.pre = load i32, ptr %i.afa, align 8, !tbaa !349
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.df, %bb.dd
  %i.afo = phi i32 [ %i.aez, %bb.dd ], [ %.pr.pre, %bb.df ]
  %i.afp = icmp eq i32 %i.afo, 52
  br i1 %i.afp, label %thread-pre-split.thread, label %.critedge387

thread-pre-split.thread:                          ; preds = %bb.de, %thread-pre-split
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.0497.0, i64 40
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !350
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 40
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !195
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 88
  %.sroa.0.0.copyload.i449 = load i32, ptr %i.afu, align 8, !tbaa !73 ; 2 uses
  %i.afv = icmp slt i32 %.sroa.0.0.copyload.i449, 0
  br i1 %i.afv, label %bb.dg, label %.critedge387

bb.dg:                                            ; preds = %thread-pre-split.thread
  %i.afw = load ptr, ptr %i.w, align 8, !tbaa !1231
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  store ptr %.0359672, ptr %i.e, align 8, !tbaa !448
  %i.afy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_8RegisterENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.afx, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.afy, 0
  %i.afz = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %.sroa.0.0.copyload.i449, ptr %i.afz, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %_ZN4llvm19SelectionDAGBuilder24CopyToExportRegsIfNeededEPKNS_5ValueE.exit

.critedge387:                                     ; preds = %thread-pre-split.thread, %thread-pre-split
  %i.aga = load ptr, ptr %i.up, align 8, !tbaa !2614, !nonnull !51, !align !346
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 1296
  %i.agc = load i8, ptr %i.agb, align 8
  %i.agd = and i8 %i.agc, 64
  %.not644 = icmp eq i8 %i.agd, 0
  br i1 %.not644, label %bb.dh, label %_ZL22isOnlyUsedInEntryBlockPKN4llvm8ArgumentEb.exit

bb.dh:                                            ; preds = %.critedge387
  %i.age = getelementptr inbounds nuw i8, ptr %.0359672, i64 24
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !2616
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 88
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !536
  %i.agi = getelementptr inbounds i8, ptr %i.agh, i64 -24
  %.sroa.015.020.i = load ptr, ptr %i.va, align 8, !tbaa !674 ; 2 uses
  %.not1921.i = icmp eq ptr %.sroa.015.020.i, null
  br i1 %.not1921.i, label %_ZN4llvm19SelectionDAGBuilder24CopyToExportRegsIfNeededEPKNS_5ValueE.exit, label %.lr.ph.i450

bb.di:                                            ; preds = %.critedge.i452
  %i.agj = getelementptr inbounds nuw i8, ptr %.sroa.015.022.i, i64 8
  %.sroa.015.0.i = load ptr, ptr %i.agj, align 8, !tbaa !674 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.015.0.i, null
  br i1 %.not19.i, label %_ZN4llvm19SelectionDAGBuilder24CopyToExportRegsIfNeededEPKNS_5ValueE.exit, label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %bb.dh, %bb.di
  %.sroa.015.022.i = phi ptr [ %.sroa.015.0.i, %bb.di ], [ %.sroa.015.020.i, %bb.dh ] ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.015.022.i, i64 24
end_hunk_1
