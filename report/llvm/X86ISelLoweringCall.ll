Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86ISelLoweringCall?download=true
inline.NumInlined: 4058
inline.NumDeleted: 1549
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm17X86TargetLowering20LowerFormalArgumentsENS_7SDValueEjbRKNS_15SmallVectorImplINS_3ISD8InputArgEEERKNS_5SDLocERNS_12SelectionDAGERNS2_IS1_EE:bb.a
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
  %i.mk = call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.lu, i32 noundef %3) ; 7 uses
  %spec.select.i.i.i434 = select i1 %i.mk, i64 4, i64 6 ; 6 uses
  %spec.select1.i.i.i = select i1 %i.mk, ptr @_ZZL20get64BitArgumentGPRsjRKN4llvm12X86SubtargetEE17GPR64ArgRegsWin64, ptr @_ZZL20get64BitArgumentGPRsjRKN4llvm12X86SubtargetEE17GPR64ArgRegs64Bit ; 2 uses
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
  %63 = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mu = load i32, ptr %63, align 4, !tbaa !182
  %64 = select i1 %i.mk, i32 4194304, i32 8388608
  %i.mv = and i32 %64, %i.mu
  %.not.i.i.i435 = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i.i435, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !182
  %i.my = select i1 %i.mk, i32 16777216, i32 268435456
  %i.mz = and i32 %i.my, %i.mx
  %.not.i.i.i435.1 = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i.i435.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.na = select i1 %i.mk, i32 119, i32 56        ; 2 uses
  %i.nb = lshr i32 %i.na, 5
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !182
  %i.nf = and i32 %i.na, 31
  %i.ng = shl nuw i32 1, %i.nf
  %i.nh = and i32 %i.ng, %i.ne
  %.not.i.i.i435.2 = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i.i435.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ni = select i1 %i.mk, i32 120, i32 54        ; 2 uses
  %i.nj = lshr i32 %i.ni, 5
  %i.nk = zext nneg i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !182
  %i.nn = and i32 %i.ni, 30
  %i.no = shl nuw nsw i32 1, %i.nn
  %i.np = and i32 %i.no, %i.nm
  %.not.i.i.i435.3 = icmp eq i32 %i.np, 0         ; 2 uses
  %brmerge = or i1 %.not.i.i.i435.3, %i.mk
  %.mux = select i1 %.not.i.i.i435.3, i64 3, i64 %spec.select.i.i.i434
  br i1 %brmerge, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !182
  %i.ns = and i32 %i.nr, 8388608
  %.not.i.i.i435.4 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i.i435.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %65 = getelementptr inbounds nuw i8, ptr %i.mt, i64 12
  %i.nt = load i32, ptr %65, align 4, !tbaa !182
  %i.nu = and i32 %i.nt, 16777216
  %.not.i.i.i435.5 = icmp eq i32 %i.nu, 0
  %spec.select742 = select i1 %.not.i.i.i435.5, i64 5, i64 %spec.select.i.i.i434
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i: ; preds = %bb.ch, %bb.cf, %bb.cg, %bb.ce, %bb.cd, %.lr.ph.i.i.i
  %.1.i.in.i.i = phi i64 [ %.mux, %bb.cf ], [ 0, %.lr.ph.i.i.i ], [ 1, %bb.cd ], [ %spec.select742, %bb.ch ], [ 2, %bb.ce ], [ 4, %bb.cg ] ; 2 uses
  %.1.i.i.i = trunc i64 %.1.i.in.i.i to i32       ; 3 uses
  %.not14.i148.i.i = icmp eq i64 %.sroa.6.0.i.i.i, 0
  br i1 %.not14.i148.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i
  %i.nv = load i16, ptr %.sroa.0.0.i.i.i, align 2, !tbaa !172
  %i.nw = zext i16 %i.nv to i32                   ; 2 uses
  %i.nx = lshr i32 %i.nw, 5
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !182
  %i.ob = and i32 %i.nw, 31
  %i.oc = shl nuw i32 1, %i.ob
  %i.od = and i32 %i.oc, %i.oa
  %.not.i151.i.i = icmp eq i32 %i.od, 0
  br i1 %.not.i151.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.1

.lr.ph.i149.i.i.1:                                ; preds = %.lr.ph.i149.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !172
  %i.og = zext i16 %i.of to i32                   ; 2 uses
  %i.oh = lshr i32 %i.og, 5
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !182
  %i.ol = and i32 %i.og, 31
  %i.om = shl nuw i32 1, %i.ol
  %i.on = and i32 %i.om, %i.ok
  %.not.i151.i.i.1 = icmp eq i32 %i.on, 0
  br i1 %.not.i151.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.2

.lr.ph.i149.i.i.2:                                ; preds = %.lr.ph.i149.i.i.1
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !172
  %i.oq = zext i16 %i.op to i32                   ; 2 uses
  %i.or = lshr i32 %i.oq, 5
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.os
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !182
  %i.ov = and i32 %i.oq, 31
  %i.ow = shl nuw i32 1, %i.ov
  %i.ox = and i32 %i.ow, %i.ou
  %.not.i151.i.i.2 = icmp eq i32 %i.ox, 0
  br i1 %.not.i151.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.3

.lr.ph.i149.i.i.3:                                ; preds = %.lr.ph.i149.i.i.2
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !172
  %i.pa = zext i16 %i.oz to i32                   ; 2 uses
  %i.pb = lshr i32 %i.pa, 5
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pc
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !182
  %i.pf = and i32 %i.pa, 31
  %i.pg = shl nuw i32 1, %i.pf
  %i.ph = and i32 %i.pg, %i.pe
  %.not.i151.i.i.3 = icmp eq i32 %i.ph, 0
  br i1 %.not.i151.i.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.4

.lr.ph.i149.i.i.4:                                ; preds = %.lr.ph.i149.i.i.3
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !172
  %i.pk = zext i16 %i.pj to i32                   ; 2 uses
  %i.pl = lshr i32 %i.pk, 5
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !182
  %i.pp = and i32 %i.pk, 31
  %i.pq = shl nuw i32 1, %i.pp
  %i.pr = and i32 %i.pq, %i.po
  %.not.i151.i.i.4 = icmp eq i32 %i.pr, 0
  br i1 %.not.i151.i.i.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.5

.lr.ph.i149.i.i.5:                                ; preds = %.lr.ph.i149.i.i.4
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !172
  %i.pu = zext i16 %i.pt to i32                   ; 2 uses
  %i.pv = lshr i32 %i.pu, 5
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !182
  %i.pz = and i32 %i.pu, 31
  %i.qa = shl nuw i32 1, %i.pz
  %i.qb = and i32 %i.qa, %i.py
  %.not.i151.i.i.5 = icmp eq i32 %i.qb, 0
  br i1 %.not.i151.i.i.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.6

.lr.ph.i149.i.i.6:                                ; preds = %.lr.ph.i149.i.i.5
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 12
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !172
  %i.qe = zext i16 %i.qd to i32                   ; 2 uses
  %i.qf = lshr i32 %i.qe, 5
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !182
  %i.qj = and i32 %i.qe, 31
  %i.qk = shl nuw i32 1, %i.qj
  %i.ql = and i32 %i.qk, %i.qi
  %.not.i151.i.i.6 = icmp eq i32 %i.ql, 0
  br i1 %.not.i151.i.i.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i, label %.lr.ph.i149.i.i.7

.lr.ph.i149.i.i.7:                                ; preds = %.lr.ph.i149.i.i.6
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 14
  %i.qn = load i16, ptr %i.qm, align 2, !tbaa !172
  %i.qo = zext i16 %i.qn to i32                   ; 2 uses
  %i.qp = lshr i32 %i.qo, 5
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !182
  %i.qt = and i32 %i.qo, 31
  %i.qu = shl nuw i32 1, %i.qt
  %i.qv = and i32 %i.qu, %i.qs
  %.not.i151.i.i.7 = icmp eq i32 %i.qv, 0
  %spec.select743 = select i1 %.not.i151.i.i.7, i64 7, i64 %.sroa.6.0.i.i.i
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i: ; preds = %.lr.ph.i149.i.i.7, %.lr.ph.i149.i.i, %.lr.ph.i149.i.i.1, %.lr.ph.i149.i.i.2, %.lr.ph.i149.i.i.3, %.lr.ph.i149.i.i.4, %.lr.ph.i149.i.i.5, %.lr.ph.i149.i.i.6, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i
  %.1.i153.in.i.i = phi i64 [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i.i ], [ 0, %.lr.ph.i149.i.i ], [ 4, %.lr.ph.i149.i.i.4 ], [ 1, %.lr.ph.i149.i.i.1 ], [ %spec.select743, %.lr.ph.i149.i.i.7 ], [ 2, %.lr.ph.i149.i.i.2 ], [ 5, %.lr.ph.i149.i.i.5 ], [ 3, %.lr.ph.i149.i.i.3 ], [ 6, %.lr.ph.i149.i.i.6 ] ; 2 uses
  %i.qw = call noundef zeroext i1 @_ZNK4llvm12X86Subtarget18isCallingConvWin64Ej(ptr noundef nonnull align 8 dereferenceable(519752) %i.lu, i32 noundef %3)
  br i1 %i.qw, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lu, i64 519704
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !892
  %i.qz = shl i32 %.1.i.i.i, 3
  %i.ra = add i32 %i.qz, 8
  %i.rb = add i32 %i.ra, %i.qy
  %i.rc = zext i32 %i.rb to i64
  %i.rd = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateFixedObjectEmlbb(ptr noundef nonnull align 8 dereferenceable(728) %i.lx, i64 noundef 1, i64 noundef %i.rc, i1 noundef zeroext false, i1 noundef zeroext false) #24 ; 2 uses
  store i32 %i.rd, ptr %i.mb, align 8, !tbaa !890
  %i.re = icmp ult i32 %.1.i.i.i, 4
  br i1 %i.re, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.rd, ptr %i.ma, align 4, !tbaa !889
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit154.i.i
  %.1.i153.i.i = trunc i64 %.1.i153.in.i.i to i32
  %i.rf = shl i32 %.1.i.i.i, 3
  %i.rg = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !893
  %i.rh = shl i32 %.1.i153.i.i, 4
  %.tr.i.i = trunc nuw nsw i64 %spec.select.i.i.i434 to i32
  %i.ri = shl nuw nsw i32 %.tr.i.i, 3
  %i.rj = add i32 %i.rh, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 %i.rj, ptr %i.rk, align 8, !tbaa !894
  %i.rl = shl nuw nsw i64 %spec.select.i.i.i434, 3
  %i.rm = shl nuw nsw i64 %.sroa.6.0.i.i.i, 4
  %i.rn = or disjoint i64 %i.rm, %i.rl
  %i.ro = call noundef i32 @_ZN4llvm16MachineFrameInfo17CreateStackObjectEmNS_5AlignEbPKNS_10AllocaInstEh(ptr noundef nonnull align 8 dereferenceable(728) %i.lx, i64 noundef %i.rn, i8 4, i1 noundef zeroext false, ptr noundef null, i8 noundef zeroext 0) #24
  store i32 %i.ro, ptr %i.mb, align 8, !tbaa !890
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.rp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.rp, ptr %24, align 8, !tbaa !577
  %i.rq = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store i32 0, ptr %i.rq, align 8, !tbaa !579
  %i.rr = getelementptr inbounds nuw i8, ptr %24, i64 12 ; 2 uses
  store i32 6, ptr %i.rr, align 4, !tbaa !578
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.rs = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %i.rs, ptr %25, align 8, !tbaa !577
  %i.rt = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  store i32 0, ptr %i.rt, align 8, !tbaa !579
  %i.ru = getelementptr inbounds nuw i8, ptr %25, i64 12 ; 2 uses
  store i32 8, ptr %i.ru, align 4, !tbaa !578
  %i.rv = and i64 %.1.i.in.i.i, 4294967295        ; 2 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %spec.select1.i.i.i, i64 %spec.select.i.i.i434
  %.not138244.i.i = icmp samesign eq i64 %spec.select.i.i.i434, %i.rv
  br i1 %.not138244.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cl
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %spec.select1.i.i.i, i64 %i.rv
  %.sroa.218.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.rz = getelementptr inbounds nuw i8, ptr %23, i64 8
  br label %bb.cm

._crit_edge.i.i:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i, %bb.cl
  %i.sa = and i64 %.1.i153.in.i.i, 4294967295     ; 2 uses
  %i.sb = icmp eq i64 %.sroa.6.0.i.i.i, %i.sa
  br i1 %i.sb, label %.loopexit.i.i, label %.lr.ph249.preheader.i.i

bb.cm:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i, %.lr.ph.i.i
  %.0245.i.i = phi ptr [ %i.rx, %.lr.ph.i.i ], [ %i.sr, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit.i.i ] ; 2 uses
  %i.sc = load i16, ptr %.0245.i.i, align 2, !tbaa !172
  %i.sd = zext i16 %i.sc to i32
  %i.se = call i32 @_ZN4llvm15MachineFunction9addLiveInENS_10MCRegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1065) %i.lv, i32 %i.sd, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25X86MCRegisterClassStorageE, i64 4608)) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
end_hunk_0
