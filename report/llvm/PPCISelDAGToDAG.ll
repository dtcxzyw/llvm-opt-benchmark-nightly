Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelDAGToDAG?download=true
inline.NumInlined: 6481
inline.NumDeleted: 1616
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeE:bb.a

bb.in:                                            ; preds = %bb.im
  %i.ary = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115PPCDAGToDAGISel27trySelectLoopCountIntrinsicEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr noundef nonnull %1)
  br i1 %i.ary, label %.critedge1045, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !423 ; 7 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 40
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !426
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 88
  %i.ase = load i32, ptr %i.asd, align 8, !tbaa !429 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #32
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asa, i64 80
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !426 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asa, i64 88
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !436 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asg, i64 48
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !414
  %i.asl = zext i32 %i.asi to i64
  %i.asm = getelementptr inbounds nuw [16 x i8], ptr %i.ask, i64 %i.asl ; 2 uses
  %.sroa.0.0.copyload.i.i1382 = load i16, ptr %i.asm, align 8, !tbaa !416 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i1383 = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  %.sroa.21.0.copyload.i.i1384 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1383, align 8, !tbaa !418 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i1382, ptr %104, align 8
  %i.asn = getelementptr inbounds nuw i8, ptr %104, i64 8
  store ptr %.sroa.21.0.copyload.i.i1384, ptr %i.asn, align 8
  %i.aso = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !234
  %i.asq = getelementptr i8, ptr %i.asp, i64 520
  %.val1133 = load i8, ptr %i.asq, align 8, !tbaa !686, !range !23, !noundef !24
  %i.asr = call fastcc noundef i32 @_ZL20getPredicateForSetCCN4llvm3ISD8CondCodeERKNS_3EVTEPKNS_12PPCSubtargetE(i32 noundef %i.ase, ptr noundef nonnull align 8 dereferenceable(16) %104, i8 %.val1133) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #32
  %.not.i.i1392 = icmp eq i16 %.sroa.0.0.copyload.i.i1382, 2
  %i.ass = icmp eq ptr %.sroa.21.0.copyload.i.i1384, null
  %.not4.i1393 = select i1 %.not.i.i1392, i1 %i.ass, i1 false
  br i1 %.not4.i1393, label %bb.ip, label %bb.ix

bb.ip:                                            ; preds = %bb.io
  %i.ast = add nsw i32 %i.asr, -4                 ; 2 uses
  %i.asu = call i32 @llvm.fshl.i32(i32 %i.ast, i32 %i.ast, i32 29)
  switch i32 %i.asu, label %bb.iq [
    i32 1, label %bb.iw
    i32 4, label %bb.ir
    i32 9, label %bb.is
    i32 0, label %bb.it
    i32 5, label %bb.iu
    i32 8, label %bb.iv
  ]

bb.iq:                                            ; preds = %bb.ip
  unreachable

bb.ir:                                            ; preds = %bb.ip
  br label %bb.iw

bb.is:                                            ; preds = %bb.ip
  br label %bb.iw

bb.it:                                            ; preds = %bb.ip
  br label %bb.iw

bb.iu:                                            ; preds = %bb.ip
  br label %bb.iw

bb.iv:                                            ; preds = %bb.ip
  br label %bb.iw

bb.iw:                                            ; preds = %bb.ip, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir
  %.01010 = phi i1 [ false, %bb.iv ], [ true, %bb.ir ], [ false, %bb.is ], [ false, %bb.it ], [ false, %bb.iu ], [ true, %bb.ip ]
  %.01009 = phi i32 [ 733, %bb.iv ], [ 730, %bb.ir ], [ 725, %bb.is ], [ 730, %bb.it ], [ 724, %bb.iu ], [ 724, %bb.ip ]
  %i.asv = add i32 %i.ase, -18
  %spec.select.i1394 = icmp ult i32 %i.asv, 4
  %spec.select = xor i1 %spec.select.i1394, %.01010 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !396
  %i.asy = select i1 %spec.select, i64 3, i64 2
  %i.asz = getelementptr inbounds nuw [40 x i8], ptr %i.asa, i64 %i.asy
  %i.ata = select i1 %spec.select, i64 2, i64 3
  %i.atb = getelementptr inbounds nuw [40 x i8], ptr %i.asa, i64 %i.ata
  %i.atc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.asx, i32 noundef %.01009, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.asz, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.atb) #32
  %i.atd = load ptr, ptr %i.asw, align 8, !tbaa !396
  store ptr %i.atc, ptr %105, align 8, !tbaa !420
  %.sroa.41554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %105, i64 8
  store i32 0, ptr %.sroa.41554.0..sroa_idx, align 8, !tbaa !421
  %i.ate = load ptr, ptr %i.arz, align 8, !tbaa !423 ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 160
  %i.atg = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueES4_S4_(ptr noundef nonnull align 8 dereferenceable(920) %i.atd, ptr noundef nonnull %1, i32 noundef 556, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %105, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.atf, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.ate) #32 ; 0 uses
  br label %.critedge1045

bb.ix:                                            ; preds = %bb.io
  %i.ath = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16EnableBranchHint, i64 120), align 8, !tbaa !681, !range !23, !noundef !24
  %i.ati = trunc nuw i8 %i.ath to i1
  br i1 %i.ati, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.atj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !865
  %i.atl = getelementptr inbounds nuw i8, ptr %i.asa, i64 160
  %i.atm = call fastcc noundef i32 @_ZL13getBranchHintjRKN4llvm20FunctionLoweringInfoERKNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(976) %i.atk, ptr noundef nonnull align 8 dereferenceable(12) %i.atl)
  %i.atn = or i32 %i.atm, %i.asr
  %.pre1938 = load ptr, ptr %i.arz, align 8, !tbaa !423 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1938, i64 80
  %.sroa.0268.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !420
  %.sroa.2269.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1938, i64 88
  %.sroa.2269.0.copyload.pre = load i32, ptr %.sroa.2269.0..sroa_idx.phi.trans.insert, align 8, !tbaa !421
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.sroa.2269.0.copyload = phi i32 [ %.sroa.2269.0.copyload.pre, %bb.iy ], [ %i.asi, %bb.ix ]
  %.sroa.0268.0.copyload = phi ptr [ %.sroa.0268.0.copyload.pre, %bb.iy ], [ %i.asg, %bb.ix ]
  %i.ato = phi ptr [ %.pre1938, %bb.iy ], [ %i.asa, %bb.ix ] ; 2 uses
  %.01008 = phi i32 [ %i.atn, %bb.iy ], [ %i.asr, %bb.ix ]
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 120
  %.sroa.0265.0.copyload = load ptr, ptr %i.atp, align 8, !tbaa !420
  %.sroa.2266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ato, i64 128
  %.sroa.2266.0.copyload = load i32, ptr %.sroa.2266.0..sroa_idx, align 8, !tbaa !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, i8 0, i64 16, i1 false)
  %i.atq = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_115PPCDAGToDAGISel8SelectCCEN4llvm7SDValueES2_NS1_3ISD8CondCodeERKNS1_5SDLocES2_(ptr noundef nonnull align 8 dereferenceable(980) %0, ptr %.sroa.0268.0.copyload, i32 %.sroa.2269.0.copyload, ptr %.sroa.0265.0.copyload, i32 %.sroa.2266.0.copyload, i32 noundef %i.ase, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %106) ; 2 uses
  %.fca.0.extract261 = extractvalue { ptr, i32 } %i.atq, 0
  %.fca.1.extract262 = extractvalue { ptr, i32 } %i.atq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #32
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val1092 = load ptr, ptr %i.atr, align 8, !tbaa !396
  %i.ats = zext nneg i32 %.01008 to i64
  %i.att = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1092, i64 noundef %i.ats, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract257 = extractvalue { ptr, i32 } %i.att, 0
  %.fca.1.extract258 = extractvalue { ptr, i32 } %i.att, 1
  store ptr %.fca.0.extract257, ptr %107, align 16
  %.sroa.2260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %107, i64 8
  store i32 %.fca.1.extract258, ptr %.sroa.2260.0..sroa_idx, align 8
  %i.atu = getelementptr inbounds nuw i8, ptr %107, i64 16
  store ptr %.fca.0.extract261, ptr %i.atu, align 16, !tbaa !420
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %107, i64 24
  store i32 %.fca.1.extract262, ptr %.sroa.4272.0..sroa_idx, align 8, !tbaa !421
  %i.atv = getelementptr inbounds nuw i8, ptr %107, i64 32
  %i.atw = load ptr, ptr %i.arz, align 8, !tbaa !423 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.atv, ptr noundef nonnull align 8 dereferenceable(12) %i.atx, i64 12, i1 false), !tbaa.struct !443
  %i.aty = getelementptr inbounds nuw i8, ptr %107, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aty, ptr noundef nonnull align 8 dereferenceable(12) %i.atw, i64 12, i1 false), !tbaa.struct !443
  %i.atz = load ptr, ptr %i.atr, align 8, !tbaa !396
  store ptr %107, ptr %108, align 8, !tbaa !446
  %i.aua = getelementptr inbounds nuw i8, ptr %108, i64 8
  store i64 4, ptr %i.aua, align 8, !tbaa !447
  %i.aub = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.atz, ptr noundef nonnull %1, i32 noundef 557, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %108) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #32
  br label %.critedge1045

bb.ja:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.auc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !423 ; 5 uses
  %.sroa.01535.0.copyload = load ptr, ptr %i.aud, align 8, !tbaa !420
  %.sroa.61538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 12
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 40
  %.sroa.01525.0.copyload = load ptr, ptr %i.aue, align 8, !tbaa !420 ; 2 uses
  %.sroa.61528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aud, i64 48 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.sroa.01525.0.copyload, i64 48
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !414
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !396
  store ptr %.sroa.01525.0.copyload, ptr %109, align 8, !tbaa !420
  %.sroa.61528.0..sroa_idx1529 = getelementptr inbounds nuw i8, ptr %109, i64 8
  %i.auj = load <2 x i32>, ptr %.sroa.61528.0..sroa_idx, align 8
  %.sroa.61528.0.copyload = load i32, ptr %.sroa.61528.0..sroa_idx, align 8, !tbaa !421
  %i.auk = zext i32 %.sroa.61528.0.copyload to i64
  %i.aul = getelementptr inbounds nuw [16 x i8], ptr %i.aug, i64 %i.auk ; 2 uses
  %.sroa.0.0.copyload.i.i1395 = load i16, ptr %i.aul, align 8, !tbaa !416
  %.sroa.21.0..sroa_idx.i.i1396 = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  %.sroa.21.0.copyload.i.i1397 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1396, align 8, !tbaa !418
  %.not.i.i1400 = icmp eq i16 %.sroa.0.0.copyload.i.i1395, 7
  %i.aum = icmp eq ptr %.sroa.21.0.copyload.i.i1397, null
  %.not4.i1401 = select i1 %.not.i.i1400, i1 %i.aum, i1 false ; 2 uses
  %i.aun = select i1 %.not4.i1401, i32 1547, i32 1548
  %i.auo = select i1 %.not4.i1401, i32 597, i32 598
  store <2 x i32> %i.auj, ptr %.sroa.61528.0..sroa_idx1529, align 8
  store ptr %.sroa.01535.0.copyload, ptr %110, align 8, !tbaa !420
  %.sroa.61538.0..sroa_idx1539 = getelementptr inbounds nuw i8, ptr %110, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4
  %i.aup = load <2 x i32>, ptr %.sroa.61538.0..sroa_idx, align 8
  store <2 x i32> %i.aup, ptr %.sroa.61538.0..sroa_idx1539, align 8
  %i.auq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.aui, i32 noundef %i.aun, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 249, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %109, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %110) #32
  %i.aur = load ptr, ptr %i.auh, align 8, !tbaa !396
  store ptr %i.auq, ptr %111, align 8, !tbaa !420
  %.sroa.61538.0..sroa_idx1541 = getelementptr inbounds nuw i8, ptr %111, i64 8
  store i32 0, ptr %.sroa.61538.0..sroa_idx1541, align 8, !tbaa !421
  %.sroa.7.0..sroa_idx1545 = getelementptr inbounds nuw i8, ptr %111, i64 12
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx1545, align 4
  %i.aus = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aur, ptr noundef nonnull %1, i32 noundef %i.auo, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %111) #32 ; 0 uses
  br label %.critedge1045

bb.jb:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.aut = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !234 ; 3 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 538
  %i.auw = load i8, ptr %i.auv, align 2, !tbaa !612, !range !23, !noundef !24
  %i.aux = trunc nuw i8 %i.auw to i1              ; 6 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auu, i64 52
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !553
  %144 = icmp ne i32 %i.auz, 19                   ; 4 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !448, !nonnull !24, !align !43 ; 2 uses
  %i.avc = getelementptr i8, ptr %1, i64 40       ; 3 uses
  %.val1135 = load ptr, ptr %i.avc, align 8, !tbaa !423
  %.val1135.val = load ptr, ptr %.val1135, align 8, !tbaa !426 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avb, i64 1052
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !866 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.val1135.val, i64 24
  %i.avg = load i32, ptr %i.avf, align 8, !tbaa !409
  switch i32 %i.avg, label %_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit [
    i32 14, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 39, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 15, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.jb, %bb.jb, %bb.jb, %bb.jb
  %i.avh = getelementptr inbounds nuw i8, ptr %.val1135.val, i64 88
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !552 ; 2 uses
  %.not12.i = icmp eq ptr %i.avi, null
  br i1 %.not12.i, label %_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit, label %bb.jc

bb.jc:                                            ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  %i.avj = call noundef i32 @_ZNK4llvm12PPCSubtarget12getCodeModelERKNS_13TargetMachineEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(520296) %i.auu, ptr noundef nonnull align 8 dereferenceable(1728) %i.avb, ptr noundef nonnull %i.avi) #32
  br label %_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit

_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit: ; preds = %bb.jb, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %bb.jc
  %.1.i1409 = phi i32 [ %i.ave, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRKT0_.exit.i ], [ %i.avj, %bb.jc ], [ %i.ave, %bb.jb ] ; 2 uses
  %145 = icmp ne i32 %.1.i1409, 3
  %or.cond58.not = or i1 %145, %144
  br i1 %or.cond58.not, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.47, i1 noundef zeroext true) #33
  unreachable

bb.je:                                            ; preds = %_ZL12getCodeModelRKN4llvm12PPCSubtargetERKNS_13TargetMachineEPKNS_6SDNodeE.exit
  %or.cond61.not = and i1 %144, %i.aux
  %i.avk = icmp eq i32 %.1.i1409, 1               ; 3 uses
  %or.cond63 = and i1 %or.cond61.not, %i.avk
  br i1 %or.cond63, label %.critedge1047, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %.not59 = xor i1 %i.aux, true
  %or.cond66 = and i1 %i.avk, %.not59
  br i1 %or.cond66, label %bb.jg, label %bb.jl

bb.jg:                                            ; preds = %bb.jf
  br i1 %144, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  call fastcc void @"_ZZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeEENK3$_0clEjS3_NS1_3EVTE"(ptr nonnull %0, ptr nonnull %4, i32 noundef 1462, ptr noundef nonnull %1, i16 7, ptr null)
  br label %.critedge1045

bb.ji:                                            ; preds = %bb.jg
  %i.avl = load ptr, ptr %i.avc, align 8, !tbaa !423
  %.sroa.0238.0.copyload = load ptr, ptr %i.avl, align 8, !tbaa !420
  %i.avm = call fastcc noundef zeroext i1 @_ZL14hasTocDataAttrN4llvm7SDValueE(ptr %.sroa.0238.0.copyload)
  br i1 %i.avm, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  call fastcc void @"_ZZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeEENK3$_0clEjS3_NS1_3EVTE"(ptr nonnull %0, ptr nonnull %4, i32 noundef 477, ptr noundef nonnull %1, i16 7, ptr null)
  br label %.critedge1045

bb.jk:                                            ; preds = %bb.ji
  call fastcc void @"_ZZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeEENK3$_0clEjS3_NS1_3EVTE"(ptr nonnull %0, ptr nonnull %4, i32 noundef 1462, ptr noundef nonnull %1, i16 7, ptr null)
  br label %.critedge1045

bb.jl:                                            ; preds = %bb.jf
  %or.cond68 = and i1 %i.avk, %i.aux
  %i.avn = load ptr, ptr %i.avc, align 8, !tbaa !423 ; 4 uses
  %.sroa.0235.0.copyload = load ptr, ptr %i.avn, align 8, !tbaa !420 ; 7 uses
  %.sroa.2236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  %.sroa.2236.0.copyload = load i32, ptr %.sroa.2236.0..sroa_idx, align 8, !tbaa !421 ; 5 uses
  br i1 %or.cond68, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %bb.jl
  %i.avo = call fastcc noundef zeroext i1 @_ZL14hasTocDataAttrN4llvm7SDValueE(ptr %.sroa.0235.0.copyload)
  br i1 %i.avo, label %bb.jn, label %.critedge1047

bb.jn:                                            ; preds = %bb.jm
  call fastcc void @"_ZZN12_GLOBAL__N_115PPCDAGToDAGISel6SelectEPN4llvm6SDNodeEENK3$_0clEjS3_NS1_3EVTE"(ptr nonnull %0, ptr nonnull %4, i32 noundef 478, ptr noundef nonnull %1, i16 8, ptr null)
  br label %.critedge1045

bb.jo:                                            ; preds = %bb.jl
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avn, i64 12
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 4 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avn, i64 40
  %i.avq = load ptr, ptr %i.aut, align 8, !tbaa !234
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 538
  %i.avs = load i8, ptr %i.avr, align 2, !tbaa !612, !range !23, !noundef !24
  %i.avt = trunc nuw i8 %i.avs to i1
  %i.avu = select i1 %i.avt, i16 8, i16 7         ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !396
  %i.avx = select i1 %i.aux, i32 466, i32 465
  store ptr %.sroa.0235.0.copyload, ptr %112, align 8, !tbaa !420
  %.sroa.9.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i32 %.sroa.2236.0.copyload, ptr %.sroa.9.0..sroa_idx218, align 8, !tbaa !421
  %.sroa.11.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %112, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx226, align 4
  %i.avy = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.avw, i32 noundef %i.avx, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.avu, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.avp, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %112) #32 ; 3 uses
  br i1 %144, label %bb.jr, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.avz = call fastcc noundef zeroext i1 @_ZL14hasTocDataAttrN4llvm7SDValueE(ptr %.sroa.0235.0.copyload)
  br i1 %i.avz, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.awa = load ptr, ptr %i.avv, align 8, !tbaa !396
  %i.awb = select i1 %i.aux, i32 480, i32 479
  store ptr %i.avy, ptr %113, align 8, !tbaa !426
  %i.awc = getelementptr inbounds nuw i8, ptr %113, i64 8
  store i32 0, ptr %i.awc, align 8, !tbaa !436
  store ptr %.sroa.0235.0.copyload, ptr %114, align 8, !tbaa !420
  %.sroa.9.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i32 %.sroa.2236.0.copyload, ptr %.sroa.9.0..sroa_idx220, align 8, !tbaa !421
  %.sroa.11.0..sroa_idx228 = getelementptr inbounds nuw i8, ptr %114, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx228, align 4
  %i.awd = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.awa, i32 noundef %i.awb, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.avu, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %113, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %114) #32
  br label %bb.ju

bb.jr:                                            ; preds = %bb.jp, %bb.jo
  %i.awe = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !235
  %i.awg = call noundef zeroext i1 @_ZNK4llvm17PPCTargetLowering23isAccessedAsGotIndirectENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518496) %i.awf, ptr %.sroa.0235.0.copyload, i32 %.sroa.2236.0.copyload) #32
  %i.awh = load ptr, ptr %i.avv, align 8, !tbaa !396 ; 2 uses
  br i1 %i.awg, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.awi = select i1 %i.aux, i32 1374, i32 1463
  store ptr %.sroa.0235.0.copyload, ptr %115, align 8, !tbaa !420
  %.sroa.9.0..sroa_idx222 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i32 %.sroa.2236.0.copyload, ptr %.sroa.9.0..sroa_idx222, align 8, !tbaa !421
  %.sroa.11.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %115, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx230, align 4
  store ptr %i.avy, ptr %116, align 8, !tbaa !426
  %i.awj = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i32 0, ptr %i.awj, align 8, !tbaa !436
  %i.awk = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.awh, i32 noundef %i.awi, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.avu, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %115, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %116) #32 ; 2 uses
  %.val1122 = load ptr, ptr %i.avv, align 8, !tbaa !396
  %i.awl = getelementptr i8, ptr %1, i64 104
  %.val1123 = load i64, ptr %i.awl, align 8
  %i.awm = and i64 %.val1123, -5
  %i.awn = inttoptr i64 %i.awm to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %i.awn, ptr %i.b, align 8, !tbaa !683
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %.val1122, ptr noundef %i.awk, ptr nonnull %i.b, i64 1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  store ptr %i.avy, ptr %117, align 8, !tbaa !426
  %i.awo = getelementptr inbounds nuw i8, ptr %117, i64 8
  store i32 0, ptr %i.awo, align 8, !tbaa !436
  store ptr %.sroa.0235.0.copyload, ptr %118, align 8, !tbaa !420
  %.sroa.9.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i32 %.sroa.2236.0.copyload, ptr %.sroa.9.0..sroa_idx224, align 8, !tbaa !421
  %.sroa.11.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %118, i64 12
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx232, align 4
  %i.awp = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.awh, i32 noundef 480, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %117, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %118) #32
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.js, %bb.jq
  %.sink = phi ptr [ %i.awp, %bb.jt ], [ %i.awk, %bb.js ], [ %i.awd, %bb.jq ]
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.sink)
  br label %.critedge1045

bb.jv:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.awq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !396 ; 2 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !235 ; 2 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awr, i64 56
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !611
  %i.aww = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.awv) #32
  %i.awx = load ptr, ptr %i.awt, align 8, !tbaa !15
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 24
  %i.awz = load ptr, ptr %i.awy, align 8
  %i.axa = call i16 %i.awz(ptr noundef nonnull align 8 dereferenceable(518435) %i.awt, ptr noundef nonnull align 8 dereferenceable(912) %i.aww, i32 noundef 0) #32
  store i16 7, ptr %119, align 8, !tbaa !675
  %i.axb = getelementptr inbounds nuw i8, ptr %119, i64 8
  store ptr null, ptr %i.axb, align 8, !tbaa !676
  %i.axc = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTES3_(ptr noundef nonnull align 8 dereferenceable(920) %i.awr, ptr noundef nonnull %1, i32 noundef 1805, i16 %i.axa, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %119) #32 ; 0 uses
  br label %.critedge1045

bb.jw:                                            ; preds = %_ZN12_GLOBAL__N_115PPCDAGToDAGISel18tryIntCompareInGPREPN4llvm6SDNodeE.exit.thread
  %i.axd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !423 ; 2 uses
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !426
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 88
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !432 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 24 ; 2 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axh, i64 32
  %i.axk = load i32, ptr %i.axj, align 8, !tbaa !434
  %i.axl = icmp ult i32 %i.axk, 65
  %i.axm = load ptr, ptr %i.axi, align 8
  %spec.select.i.i.i.i1410 = select i1 %i.axl, ptr %i.axi, ptr %i.axm
  %.0.i.i.i.i1411 = load i64, ptr %spec.select.i.i.i.i1410, align 8, !tbaa !47 ; 3 uses
  %i.axn = trunc i64 %.0.i.i.i.i1411 to i32       ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axe, i64 40
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !426
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 88
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !432 ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 24 ; 2 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 32
  %i.axu = load i32, ptr %i.axt, align 8, !tbaa !434
  %i.axv = icmp ult i32 %i.axu, 65
  %i.axw = load ptr, ptr %i.axs, align 8
  %spec.select.i.i.i.i1412 = select i1 %i.axv, ptr %i.axs, ptr %i.axw
  %.0.i.i.i.i1413 = load i64, ptr %spec.select.i.i.i.i1412, align 8, !tbaa !47
  %i.axx = trunc i64 %.0.i.i.i.i1413 to i32
  switch i32 %i.axx, label %bb.jy [
    i32 1, label %bb.jz
    i32 2, label %bb.jx
  ]

bb.jx:                                            ; preds = %bb.jw
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jw
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jw, %bb.jx, %bb.jy
  %.sroa.01482.0 = phi i16 [ 73, %bb.jy ], [ 62, %bb.jx ], [ 48, %bb.jw ] ; 8 uses
  %.01014 = phi i32 [ 2536, %bb.jy ], [ 2535, %bb.jx ], [ 2534, %bb.jw ] ; 5 uses
  %.01013 = phi i32 [ 2222, %bb.jy ], [ 2219, %bb.jx ], [ 2216, %bb.jw ] ; 2 uses
  %.01012 = phi i32 [ 2574, %bb.jy ], [ 2571, %bb.jx ], [ 2568, %bb.jw ]
  %i.axy = and i32 %i.axn, 1
  %i.axz = icmp eq i32 %i.axy, 0
  %i.aya = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %.val1091 = load ptr, ptr %i.aya, align 8, !tbaa !396 ; 3 uses
  br i1 %i.axz, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.ayb = ashr exact i32 %i.axn, 1
  %i.ayc = zext i32 %i.ayb to i64
  %i.ayd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1091, i64 noundef %i.ayc, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract170 = extractvalue { ptr, i32 } %i.ayd, 0
  %.fca.1.extract171 = extractvalue { ptr, i32 } %i.ayd, 1
  %i.aye = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %.fca.0.extract170, ptr %120, align 8, !tbaa !420
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i32 %.fca.1.extract171, ptr %.sroa.4175.0..sroa_idx, align 8, !tbaa !421
  %i.ayf = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aye, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %120) #32 ; 2 uses
  %i.ayg = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %i.ayf, ptr %121, align 8, !tbaa !420
  %.sroa.5.0..sroa_idx1469 = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx1469, align 8, !tbaa !421
  store ptr %i.ayf, ptr %122, align 8, !tbaa !420
  %.sroa.5.0..sroa_idx1470 = getelementptr inbounds nuw i8, ptr %122, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx1470, align 8, !tbaa !421
  %i.ayh = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ayg, i32 noundef %.01013, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %121, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %122) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.ayh)
  br label %.critedge1045

bb.kb:                                            ; preds = %bb.jz
  %i.ayi = icmp sgt i32 %i.axn, 0
  br i1 %i.ayi, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.ayj = add i64 %.0.i.i.i.i1411, 4294967280
  %i.ayk = and i64 %i.ayj, 4294967295
  %i.ayl = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1091, i64 noundef %i.ayk, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract151 = extractvalue { ptr, i32 } %i.ayl, 0
  %.fca.1.extract152 = extractvalue { ptr, i32 } %i.ayl, 1
  %i.aym = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %.fca.0.extract151, ptr %123, align 8, !tbaa !420
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i32 %.fca.1.extract152, ptr %.sroa.6157.0..sroa_idx, align 8, !tbaa !421
  %i.ayn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aym, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %123) #32
  %.val1089 = load ptr, ptr %i.aya, align 8, !tbaa !396
  %i.ayo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1089, i64 noundef 4294967280, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract140 = extractvalue { ptr, i32 } %i.ayo, 0
  %.fca.1.extract141 = extractvalue { ptr, i32 } %i.ayo, 1
  %i.ayp = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %.fca.0.extract140, ptr %124, align 8, !tbaa !420
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %124, i64 8
  store i32 %.fca.1.extract141, ptr %.sroa.6157.0..sroa_idx158, align 8, !tbaa !421
  %i.ayq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ayp, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %124) #32
  %i.ayr = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %i.ayn, ptr %125, align 8, !tbaa !426
  %i.ays = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i32 0, ptr %i.ays, align 8, !tbaa !436
  store ptr %i.ayq, ptr %126, align 8, !tbaa !426
  %i.ayt = getelementptr inbounds nuw i8, ptr %126, i64 8
  store i32 0, ptr %i.ayt, align 8, !tbaa !436
  %i.ayu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ayr, i32 noundef %.01012, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %125, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %126) #32
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.ayu)
  br label %.critedge1045

bb.kd:                                            ; preds = %bb.kb
  %i.ayv = add i64 %.0.i.i.i.i1411, 16
  %i.ayw = and i64 %i.ayv, 4294967295
  %i.ayx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %.val1091, i64 noundef %i.ayw, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #32 ; 2 uses
  %.fca.0.extract122 = extractvalue { ptr, i32 } %i.ayx, 0
  %.fca.1.extract123 = extractvalue { ptr, i32 } %i.ayx, 1
  %i.ayy = load ptr, ptr %i.aya, align 8, !tbaa !396
  store ptr %.fca.0.extract122, ptr %127, align 8, !tbaa !420
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i32 %.fca.1.extract123, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !421
  %i.ayz = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ayy, i32 noundef %.01014, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.01482.0, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %127) #32
  %.val = load ptr, ptr %i.aya, align 8, !tbaa !396
end_hunk_0
