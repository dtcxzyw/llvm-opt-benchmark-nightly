Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLoweringCall?download=true
inline.NumInlined: 4058
inline.NumDeleted: 1549
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm17X86TargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE:bb.a
  %i.jq = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920) %7, ptr nonnull %i.ea, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %.sroa.065.0.copyload, i32 %.sroa.266.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %41, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %40, i8 %i.jp, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(40) %60) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.jq, 0
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.jq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #24
  store ptr %.fca.0.extract57, ptr %61, align 8, !tbaa !618
  store i32 %.fca.1.extract58, ptr %.sroa.474.0..sroa_idx, align 8, !tbaa !182
  %i.jr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %61, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46) #24 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.jr, 0 ; 2 uses
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.jr, 1 ; 2 uses
  store ptr %.fca.0.extract50, ptr %46, align 8
  store i32 %.fca.1.extract51, ptr %i.a, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bl
  %.sroa.2346.0.copyload726 = phi i32 [ %.sroa.2346.0.copyload727, %bb.bn ], [ %.fca.1.extract51, %bb.bo ], [ %.sroa.2346.0.copyload727, %bb.bl ] ; 2 uses
  %.fca.0.extract718 = phi ptr [ %.fca.0.extract719, %bb.bn ], [ %.fca.0.extract50, %bb.bo ], [ %.fca.0.extract719, %bb.bl ] ; 2 uses
  br i1 %or.cond, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = load ptr, ptr %5, align 8, !tbaa !577
  %i.jt = getelementptr inbounds nuw [64 x i8], ptr %i.js, i64 %indvars.iv
  %i.ju = load i64, ptr %i.jt, align 4
  %i.jv = and i64 %i.ju, 16
  %.not619 = icmp eq i64 %i.jv, 0
  br i1 %.not619, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !489
  %i.jx = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.jw) #24
  %i.jy = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.jx, i32 noundef 0) #24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !492 ; 2 uses
  %i.kb = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ka)
  %i.kc = icmp eq i32 %i.kb, 1
  br i1 %i.kc, label %.split.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

.split.i.i:                                       ; preds = %bb.br
  %i.kd = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ka, i1 true) ; 2 uses
  %i.ke = icmp samesign ult i32 %i.kd, 10
  br i1 %i.ke, label %switch.lookup.i.i, label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

switch.lookup.i.i:                                ; preds = %.split.i.i
  %narrow = add nuw nsw i32 %i.kd, 2
  %switch.offset.i.i = zext nneg i32 %narrow to i64
  br label %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit

_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit: ; preds = %bb.br, %.split.i.i, %switch.lookup.i.i
  %.sroa.0.0.i.i423 = phi i64 [ %switch.offset.i.i, %switch.lookup.i.i ], [ 0, %.split.i.i ], [ 0, %bb.br ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !617
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.sroa.0.0.i.i423
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !176
  %i.kk = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.kg, ptr noundef %i.kj, ptr nonnull @.str.10, i64 0) #24 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !182
  %i.km = load ptr, ptr %8, align 8, !tbaa !577
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.km, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %i.ea, ptr %37, align 8, !tbaa !618
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !tbaa !182
  %i.ko = load ptr, ptr %39, align 8, !tbaa !620
  %i.kp = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !621
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !622
  %i.kt = zext i32 %i.kq to i64
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kt ; 2 uses
  %.sroa.0.0.copyload.i.i.i427 = load i16, ptr %i.ku, align 8, !tbaa !14
  %.sroa.21.0..sroa_idx.i.i.i428 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %.sroa.21.0.copyload.i.i.i429 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i428, align 8, !tbaa !179
  %i.kv = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 %i.kk, i16 %.sroa.0.0.copyload.i.i.i427, ptr %.sroa.21.0.copyload.i.i.i429) #24 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.kv, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.kv, 1
  store ptr %.fca.0.extract1.i, ptr %38, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.kw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 51, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %37, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %38, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %39) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  %.fca.0.extract31 = extractvalue { ptr, i32 } %i.kw, 0
  %.fca.1.extract32 = extractvalue { ptr, i32 } %i.kw, 1
  store ptr %.fca.0.extract31, ptr %62, align 8, !tbaa !618
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i32 %.fca.1.extract32, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !182
  %i.kx = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %7, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %62, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.kx, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.kx, 1 ; 2 uses
  store ptr %.fca.0.extract, ptr %46, align 8
  store i32 %.fca.1.extract, ptr %i.a, align 8
  br label %.loopexit622

bb.bs:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not356 = icmp eq i64 %indvars.iv.next, %i.ec
  br i1 %.not356, label %.loopexit622, label %bb.bl, !llvm.loop !867

.loopexit622:                                     ; preds = %bb.bs, %._crit_edge, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit
  %.sroa.2346.0.copyload725 = phi i32 [ %.fca.1.extract, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit ], [ %2, %._crit_edge ], [ %.sroa.2346.0.copyload726, %bb.bs ] ; 9 uses
  %.fca.0.extract717 = phi ptr [ %.fca.0.extract, %_ZNK4llvm18TargetLoweringBase12getPointerTyERKNS_10DataLayoutEj.exit ], [ %1, %._crit_edge ], [ %.fca.0.extract718, %bb.bs ] ; 9 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !711 ; 2 uses
  %i.la = trunc i64 %i.kz to i32                  ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !712, !nonnull !58, !align !59
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1296
  %i.le = load i8, ptr %i.ld, align 8
  %i.lf = and i8 %i.le, 16
  %.not620 = icmp eq i8 %i.lf, 0
  br i1 %.not620, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.loopexit622
  switch i32 %3, label %bb.bv [
    i32 92, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 18, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 11, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 10, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 8, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 20, label %_ZL18shouldGuaranteeTCOjb.exit.thread
  ]

bb.bu:                                            ; preds = %.loopexit622
  switch i32 %3, label %bb.bv [
    i32 18, label %_ZL18shouldGuaranteeTCOjb.exit.thread
    i32 20, label %_ZL18shouldGuaranteeTCOjb.exit.thread
  ]

_ZL18shouldGuaranteeTCOjb.exit.thread:            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bt, %bb.bu, %bb.bu
  %i.lg = load ptr, ptr %i.ae, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 519700
  %.sroa.0.0.copyload.i.i430 = load i8, ptr %i.lh, align 4, !tbaa !186
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 1200
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !713 ; 2 uses
  %i.lk = zext i32 %i.lj to i64
  %i.ll = zext nneg i8 %.sroa.0.0.copyload.i.i430 to i64
  %i.lm = shl nuw i64 1, %i.ll                    ; 2 uses
  %i.ln = add i64 %i.kz, 4294967295
  %i.lo = add i64 %i.ln, %i.lk
  %i.lp = add i64 %i.lo, %i.lm
  %i.lq = sub i64 0, %i.lm
  %i.lr = and i64 %i.lp, %i.lq
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = sub i32 %i.ls, %i.lj
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %_ZL18shouldGuaranteeTCOjb.exit.thread
  %.0349 = phi i32 [ %i.lt, %_ZL18shouldGuaranteeTCOjb.exit.thread ], [ %i.la, %bb.bt ], [ %i.la, %bb.bu ] ; 3 uses
  br i1 %4, label %bb.bw, label %_ZN12_GLOBAL__N_121VarArgsLoweringHelper22lowerVarArgsParametersERN4llvm7SDValueEj.exit

bb.bw:                                            ; preds = %bb.bv
  %i.lu = load ptr, ptr %i.ae, align 8, !tbaa !57, !nonnull !58, !align !59 ; 14 uses
  %i.lv = load ptr, ptr %i.b, align 8, !tbaa !489 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !683 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !888 ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 3 uses
  store i32 178956970, ptr %i.ma, align 4, !tbaa !889
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 6 uses
  store i32 178956970, ptr %i.mb, align 8, !tbaa !890
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 668
  %i.md = load i8, ptr %i.mc, align 4, !tbaa !891, !range !174, !noundef !58
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.bx, label %bb.dj

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %i.mf = getelementptr i8, ptr %i.lu, i64 522    ; 2 uses
  %.val141.val.i.i = load i8, ptr %i.mf, align 2, !tbaa !173, !range !174, !noundef !58
  %i.mg = trunc nuw i8 %.val141.val.i.i to i1
  br i1 %i.mg, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i32 %3, label %bb.bz [
    i32 65, label %_ZN12_GLOBAL__N_121VarArgsLoweringHelper33createVarArgAreaAndStoreRegistersERN4llvm7SDValueEj.exit.i
    i32 70, label %_ZN12_GLOBAL__N_121VarArgsLoweringHelper33createVarArgAreaAndStoreRegistersERN4llvm7SDValueEj.exit.i
  ]

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.mh = zext i32 %.0349 to i64
  %i.mi = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.lx, i64 noundef 1, i64 noundef %i.mh, i1 noundef zeroext true, i1 noundef zeroext false) #24
  store i32 %i.mi, ptr %i.ma, align 4, !tbaa !889
  %.val.val.pre.i.i = load i8, ptr %i.mf, align 2, !tbaa !173, !range !174
  %i.mj = trunc nuw i8 %.val.val.pre.i.i to i1
  br i1 %i.mj, label %bb.ca, label %_ZN12_GLOBAL__N_121VarArgsLoweringHelper33createVarArgAreaAndStoreRegistersERN4llvm7SDValueEj.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.mk = call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.lu, i32 noundef %3) ; 3 uses
  %spec.select.i.i.i434 = select i1 %i.mk, i64 4, i64 6 ; 6 uses
  %spec.select1.i.i.i = select i1 %i.mk, ptr @_ZZL20get64BitArgumentGPRsjRKN4llvm12X86SubtargetEE17GPR64ArgRegsWin64, ptr @_ZZL20get64BitArgumentGPRsjRKN4llvm12X86SubtargetEE17GPR64ArgRegs64Bit ; 8 uses
  %i.ml = call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.lu, i32 noundef %3)
  br i1 %i.ml, label %.lr.ph.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 559
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !293, !range !174, !noundef !58
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %.lr.ph.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lu, i64 360
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !171
  %i.mr = icmp sgt i32 %i.mq, 0                   ; 2 uses
  %spec.select.i144.i.i = select i1 %i.mr, ptr @_ZZL20get64BitArgumentXMMsRN4llvm15MachineFunctionEjRKNS_12X86SubtargetEE15XMMArgRegs64Bit, ptr null
  %spec.select1.i145.i.i = select i1 %i.mr, i64 8, i64 0
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cc, %bb.cb, %bb.ca
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.cb ], [ null, %bb.ca ], [ %spec.select.i144.i.i, %bb.cc ] ; 10 uses
  %.sroa.6.0.i.i.i = phi i64 [ 0, %bb.cb ], [ 0, %bb.ca ], [ %spec.select1.i145.i.i, %bb.cc ] ; 5 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %48, i64 64
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !577 ; 14 uses
  %i.mu = load i16, ptr %spec.select1.i.i.i, align 2, !tbaa !172
  %i.mv = zext i16 %i.mu to i32                   ; 2 uses
  %i.mw = lshr i32 %i.mv, 5
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !182
  %i.na = and i32 %i.mv, 31
  %i.nb = shl nuw i32 1, %i.na
  %i.nc = and i32 %i.nb, %i.mz
  %.not.i.i.i435 = icmp eq i32 %i.nc, 0
  br i1 %.not.i.i.i435, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 2
  %63 = load i16, ptr %i.nd, align 2, !tbaa !172
  %64 = zext i16 %63 to i32                       ; 2 uses
  %65 = lshr i32 %64, 5
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %66
  %i.ne = load i32, ptr %67, align 4, !tbaa !182
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %i.nf = and i32 %69, %i.ne
  %.not.i.i.i435.1 = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i.i435.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %70 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 4
  %71 = load i16, ptr %70, align 2, !tbaa !172
  %72 = zext i16 %71 to i32                       ; 2 uses
  %i.ng = lshr i32 %72, 5
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !182
  %i.nk = and i32 %72, 31
  %i.nl = shl nuw i32 1, %i.nk
  %i.nm = and i32 %i.nl, %i.nj
  %.not.i.i.i435.2 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i.i435.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %73 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 6
  %74 = load i16, ptr %73, align 2, !tbaa !172
  %75 = zext i16 %74 to i32                       ; 2 uses
  %i.nn = lshr i32 %75, 5
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !182
  %i.nr = and i32 %75, 31
  %i.ns = shl nuw i32 1, %i.nr
  %i.nt = and i32 %i.ns, %i.nq
  %.not.i.i.i435.3 = icmp eq i32 %i.nt, 0         ; 2 uses
  %brmerge = or i1 %.not.i.i.i435.3, %i.mk
  %.mux = select i1 %.not.i.i.i435.3, i64 3, i64 %spec.select.i.i.i434
  br i1 %brmerge, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nu = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 8
  %76 = load i16, ptr %i.nu, align 2, !tbaa !172
  %77 = zext i16 %76 to i32                       ; 2 uses
  %78 = lshr i32 %77, 5
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %79
  %i.nv = load i32, ptr %80, align 4, !tbaa !182
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %i.nw = and i32 %82, %i.nv
  %.not.i.i.i435.4 = icmp eq i32 %i.nw, 0
  br i1 %.not.i.i.i435.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %83 = getelementptr inbounds nuw i8, ptr %spec.select1.i.i.i, i64 10
  %i.nx = load i16, ptr %83, align 2, !tbaa !172
  %i.ny = zext i16 %i.nx to i32                   ; 2 uses
  %i.nz = lshr i32 %i.ny, 5
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !182
  %i.od = and i32 %i.ny, 31
  %i.oe = shl nuw i32 1, %i.od
  %i.of = and i32 %i.oe, %i.oc
  %.not.i.i.i435.5 = icmp eq i32 %i.of, 0
  %spec.select742 = select i1 %.not.i.i.i435.5, i64 5, i64 %spec.select.i.i.i434
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i: ; preds = %bb.ch, %bb.cf, %bb.cg, %bb.ce, %bb.cd, %.lr.ph.i.i.i
  %.1.i.in.i.i = phi i64 [ %.mux, %bb.cf ], [ 0, %.lr.ph.i.i.i ], [ 1, %bb.cd ], [ %spec.select742, %bb.ch ], [ 2, %bb.ce ], [ 4, %bb.cg ] ; 2 uses
  %.1.i.i.i = trunc i64 %.1.i.in.i.i to i32       ; 3 uses
  %.not14.i148.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not14.i148.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i
  %i.og = load i16, ptr %.sroa.0.0.i.i.i, align 2, !tbaa !172
  %i.oh = zext i16 %i.og to i32                   ; 2 uses
  %i.oi = lshr i32 %i.oh, 5
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !182
  %i.om = and i32 %i.oh, 31
  %i.on = shl nuw i32 1, %i.om
  %i.oo = and i32 %i.on, %i.ol
  %.not.i151.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not.i151.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.1

.lr.ph.i149.i.i.1:                                ; preds = %.lr.ph.i149.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !172
  %i.or = zext i16 %i.oq to i32                   ; 2 uses
  %i.os = lshr i32 %i.or, 5
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !182
  %i.ow = and i32 %i.or, 31
  %i.ox = shl nuw i32 1, %i.ow
  %i.oy = and i32 %i.ox, %i.ov
  %.not.i151.i.i.1 = icmp eq i32 %i.oy, 0
  br i1 %.not.i151.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.2

.lr.ph.i149.i.i.2:                                ; preds = %.lr.ph.i149.i.i.1
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !172
  %i.pb = zext i16 %i.pa to i32                   ; 2 uses
  %i.pc = lshr i32 %i.pb, 5
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !182
  %i.pg = and i32 %i.pb, 31
  %i.ph = shl nuw i32 1, %i.pg
  %i.pi = and i32 %i.ph, %i.pf
  %.not.i151.i.i.2 = icmp eq i32 %i.pi, 0
  br i1 %.not.i151.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.3

.lr.ph.i149.i.i.3:                                ; preds = %.lr.ph.i149.i.i.2
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !172
  %i.pl = zext i16 %i.pk to i32                   ; 2 uses
  %i.pm = lshr i32 %i.pl, 5
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !182
  %i.pq = and i32 %i.pl, 31
  %i.pr = shl nuw i32 1, %i.pq
  %i.ps = and i32 %i.pr, %i.pp
  %.not.i151.i.i.3 = icmp eq i32 %i.ps, 0
  br i1 %.not.i151.i.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.4

.lr.ph.i149.i.i.4:                                ; preds = %.lr.ph.i149.i.i.3
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !172
  %i.pv = zext i16 %i.pu to i32                   ; 2 uses
  %i.pw = lshr i32 %i.pv, 5
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !182
  %i.qa = and i32 %i.pv, 31
  %i.qb = shl nuw i32 1, %i.qa
  %i.qc = and i32 %i.qb, %i.pz
  %.not.i151.i.i.4 = icmp eq i32 %i.qc, 0
  br i1 %.not.i151.i.i.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.5

.lr.ph.i149.i.i.5:                                ; preds = %.lr.ph.i149.i.i.4
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !172
  %i.qf = zext i16 %i.qe to i32                   ; 2 uses
  %i.qg = lshr i32 %i.qf, 5
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !182
  %i.qk = and i32 %i.qf, 31
  %i.ql = shl nuw i32 1, %i.qk
  %i.qm = and i32 %i.ql, %i.qj
  %.not.i151.i.i.5 = icmp eq i32 %i.qm, 0
  br i1 %.not.i151.i.i.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.6

.lr.ph.i149.i.i.6:                                ; preds = %.lr.ph.i149.i.i.5
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !172
  %i.qp = zext i16 %i.qo to i32                   ; 2 uses
  %i.qq = lshr i32 %i.qp, 5
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !182
  %i.qu = and i32 %i.qp, 31
  %i.qv = shl nuw i32 1, %i.qu
  %i.qw = and i32 %i.qv, %i.qt
  %.not.i151.i.i.6 = icmp eq i32 %i.qw, 0
  br i1 %.not.i151.i.i.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.7

.lr.ph.i149.i.i.7:                                ; preds = %.lr.ph.i149.i.i.6
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 14
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !172
  %i.qz = zext i16 %i.qy to i32                   ; 2 uses
  %i.ra = lshr i32 %i.qz, 5
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !182
  %i.re = and i32 %i.qz, 31
  %i.rf = shl nuw i32 1, %i.re
  %i.rg = and i32 %i.rf, %i.rd
  %.not.i151.i.i.7 = icmp eq i32 %i.rg, 0
  %spec.select743 = select i1 %.not.i151.i.i.7, i64 7, i64 %.sroa.6.0.i.i.i
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i: ; preds = %.lr.ph.i149.i.i.7, %.lr.ph.i149.i.i, %.lr.ph.i149.i.i.1, %.lr.ph.i149.i.i.2, %.lr.ph.i149.i.i.3, %.lr.ph.i149.i.i.4, %.lr.ph.i149.i.i.5, %.lr.ph.i149.i.i.6, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i
  %.1.i153.in.i.i = phi i64 [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i ], [ 0, %.lr.ph.i149.i.i ], [ 4, %.lr.ph.i149.i.i.4 ], [ 1, %.lr.ph.i149.i.i.1 ], [ %spec.select743, %.lr.ph.i149.i.i.7 ], [ 2, %.lr.ph.i149.i.i.2 ], [ 5, %.lr.ph.i149.i.i.5 ], [ 3, %.lr.ph.i149.i.i.3 ], [ 6, %.lr.ph.i149.i.i.6 ] ; 2 uses
  %i.rh = call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.lu, i32 noundef %3)
  br i1 %i.rh, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.lu, i64 519704
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !892
  %i.rk = shl i32 %.1.i.i.i, 3
  %i.rl = add i32 %i.rk, 8
  %i.rm = add i32 %i.rl, %i.rj
  %i.rn = zext i32 %i.rm to i64
  %i.ro = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.lx, i64 noundef 1, i64 noundef %i.rn, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  store i32 %i.ro, ptr %i.mb, align 8, !tbaa !890
  %i.rp = icmp ult i32 %.1.i.i.i, 4
  br i1 %i.rp, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.ro, ptr %i.ma, align 4, !tbaa !889
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i
  %.1.i153.i.i = trunc i64 %.1.i153.in.i.i to i32
  %i.rq = shl i32 %.1.i.i.i, 3
  %i.rr = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.rq, ptr %i.rr, align 4, !tbaa !893
  %i.rs = shl i32 %.1.i153.i.i, 4
  %.tr.i.i = trunc nuw nsw i64 %spec.select.i.i.i434 to i32
  %i.rt = shl nuw nsw i32 %.tr.i.i, 3
  %i.ru = add i32 %i.rs, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 %i.ru, ptr %i.rv, align 8, !tbaa !894
  %i.rw = shl nuw nsw i64 %spec.select.i.i.i434, 3
  %i.rx = shl nuw nsw i64 %.sroa.6.0.i.i.i, 4
  %i.ry = or disjoint i64 %i.rx, %i.rw
  %i.rz = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.lx, i64 noundef %i.ry, i8 4, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #24
  store i32 %i.rz, ptr %i.mb, align 8, !tbaa !890
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.sa = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.sa, ptr %24, align 8, !tbaa !577
  %i.sb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.sb, align 8, !tbaa !579
  %i.sc = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  store i32 6, ptr %i.sc, align 4, !tbaa !578
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.sd = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.sd, ptr %25, align 8, !tbaa !577
  %i.se = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  store i32 0, ptr %i.se, align 8, !tbaa !579
  %i.sf = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 2 uses
  store i32 8, ptr %i.sf, align 4, !tbaa !578
  %i.sg = and i64 %.1.i.in.i.i, 4294967295        ; 2 uses
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %spec.select1.i.i.i, i64 %spec.select.i.i.i434
  %.not138244.i.i = icmp samesign eq i64 %spec.select.i.i.i434, %i.sg
  br i1 %.not138244.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cl
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %spec.select1.i.i.i, i64 %i.sg
  %.sroa.218.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.cm

._crit_edge.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i, %bb.cl
  %i.sl = and i64 %.1.i153.in.i.i, 4294967295     ; 2 uses
  %i.sm = icmp eq i64 %.sroa.6.0.i.i.i, %i.sl
end_hunk_0
