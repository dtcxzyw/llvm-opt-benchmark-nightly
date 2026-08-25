Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGException?download=true
inline.NumInlined: 3846
inline.NumDeleted: 2106
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL22emitCatchDispatchBlockRN5clang7CodeGen15CodeGenFunctionERNS0_12EHCatchScopeE:bb.a
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.jy = load ptr, ptr %i.iq, align 8, !tbaa !767
  call void @_ZN4llvm15CatchSwitchInst10addHandlerEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(76) %i.hs, ptr noundef %i.jy) #17
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i69
  br i1 %exitcond.not.i72, label %._crit_edge.i73, label %bb.aq, !llvm.loop !901

bb.ay:                                            ; preds = %_ZN5clang7CodeGen13EHPersonality3getERNS0_15CodeGenFunctionE.exit61
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8
  %.mask = and i32 %i.ka, -8
  %i.kb = icmp eq i32 %.mask, 8
  br i1 %i.kb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !778
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %_ZL17emitCatchPadBlockRN5clang7CodeGen15CodeGenFunctionERNS0_12EHCatchScopeE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !772, !noalias !902 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %.sroa.0.0.copyload.i.i78 = load ptr, ptr %i.ki, align 8, !noalias !902 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !902
  tail call void @_ZN5clang7CodeGen15CodeGenFunction18EmitBlockAfterUsesEPN4llvm10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.gz) #17
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !630, !nonnull !387, !align !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !679
  store ptr %i.km, ptr %i.g, align 8, !tbaa !682
  %i.kn = call noundef ptr @_ZN5clang7CodeGen13CodeGenModule12getIntrinsicEjN4llvm8ArrayRefIPNS2_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(4008) %i.kk, i32 noundef 95, ptr nonnull %i.g, i64 1) #17 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !645
  %i.kq = trunc i16 %i.kp to i1
  br i1 %i.kq, label %bb.bb, label %_ZNK4llvm8Function6getArgEj.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140) %i.kn) #17
  br label %_ZNK4llvm8Function6getArgEj.exit

_ZNK4llvm8Function6getArgEj.exit:                 ; preds = %bb.ba, %bb.bb
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 104
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !905
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !638 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !693, !noalias !930 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i80, label %bb.bc, label %_ZN5clang7CodeGen15CodeGenFunction19getSelectorFromSlotEv.exit

bb.bc:                                            ; preds = %_ZNK4llvm8Function6getArgEj.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !653, !noalias !930
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !930
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.la, align 1, !tbaa !676, !noalias !930
  store ptr @.str.25, ptr %7, align 8, !tbaa !679, !noalias !930
  store i8 3, ptr %i.kz, align 8, !tbaa !680, !noalias !930
  %i.lb = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction16CreateTempAllocaEPN4llvm4TypeERKNS2_5TwineEPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef null) #17, !noalias !930 ; 2 uses
  store ptr %i.lb, ptr %i.kv, align 8, !tbaa !693, !noalias !930
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !930
  br label %_ZN5clang7CodeGen15CodeGenFunction19getSelectorFromSlotEv.exit

_ZN5clang7CodeGen15CodeGenFunction19getSelectorFromSlotEv.exit: ; preds = %_ZNK4llvm8Function6getArgEj.exit, %bb.bc
  %i.lc = phi ptr [ %i.lb, %bb.bc ], [ %i.kw, %_ZNK4llvm8Function6getArgEj.exit ]
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !653, !noalias !930
  %i.lf = ptrtoint ptr %i.lc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.lg = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.lg, align 1, !tbaa !676
  store ptr @.str.27, ptr %6, align 8, !tbaa !679
  %i.lh = and i64 %i.lf, -8
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %i.lj, align 8, !tbaa !680
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.lk = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.ll, align 8, !tbaa !680
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.lm, align 1, !tbaa !676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.lk, ptr noundef %i.le, ptr noundef %i.li, ptr noundef nonnull align 8 dereferenceable(34) %2, i1 noundef zeroext false, i8 2, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %3) #17
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !743, !nonnull !387, !align !388 ; 2 uses
  %.sroa.0.0.copyload.i.i92 = load ptr, ptr %i.ki, align 8
  %.sroa.2.0.copyload.i.i94 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !655
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.lo, ptr noundef nonnull %i.lk, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr %.sroa.0.0.copyload.i.i92, i64 %.sroa.2.0.copyload.i.i94) #17, !inline_history !824
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(128) %i.kf, ptr noundef nonnull %i.lk) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ls = load i32, ptr %i.jz, align 8
  %i.lt = lshr i32 %i.ls, 3
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %34, i64 33
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.mf = getelementptr inbounds nuw i8, ptr %36, i64 33
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit, %_ZN5clang7CodeGen15CodeGenFunction19getSelectorFromSlotEv.exit
  %.048.a = phi i32 [ 0, %_ZN5clang7CodeGen15CodeGenFunction19getSelectorFromSlotEv.exit ], [ %i.mt, %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit ] ; 2 uses
  %i.mh = zext i32 %.048.a to i64
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.mh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !778 ; 5 uses
  store ptr %i.mj, ptr %i.h, align 8, !tbaa !681
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !638
  %.not = icmp eq ptr %i.ml, %i.ku
  br i1 %.not, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.mn = load i32, ptr %i.mm, align 4
  %i.mo = and i32 %i.mn, 536870912
  %.not.i81 = icmp eq i32 %i.mo, 0
  br i1 %.not.i81, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mp = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mj) #17 ; 2 uses
  %i.mq = extractvalue { ptr, i64 } %i.mp, 0
  %i.mr = extractvalue { ptr, i64 } %i.mp, 1
  store i8 5, ptr %i.lv, align 8, !tbaa !680, !alias.scope !933
  store i8 3, ptr %i.lw, align 1, !tbaa !676, !alias.scope !933
  store ptr %i.mq, ptr %5, align 8, !tbaa !679, !alias.scope !933
  store i64 %i.mr, ptr %i.lx, align 8, !tbaa !679, !alias.scope !933
  store ptr @.str.63, ptr %i.ly, align 8, !tbaa !679, !alias.scope !933
  br label %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit

bb.bg:                                            ; preds = %bb.be
  store i16 257, ptr %i.lv, align 8
  br label %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit

_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit: ; preds = %bb.bf, %bb.bg
  %i.ms = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.kf, i32 noundef 52, ptr noundef nonnull %i.mj, ptr noundef %i.ku, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  store ptr %i.ms, ptr %i.h, align 8, !tbaa !681
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN5clang7CodeGen15CodeGenFunction20performAddrSpaceCastEPN4llvm5ValueEPNS2_4TypeE.exit, %bb.bd
  %i.mt = add i32 %.048.a, 1                      ; 3 uses
  %i.mu = icmp eq i32 %i.mt, %i.lt
  br i1 %i.mu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.sroa.0.0.copyload.i82 = load i64, ptr %i.mb, align 8, !tbaa !690
  %i.mv = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction18getEHDispatchBlockENS0_12EHScopeStack15stable_iteratorE(ptr noundef nonnull align 8 dereferenceable(6288) %0, i64 %.sroa.0.0.copyload.i82)
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.mw = zext i32 %i.mt to i64
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.mw ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !778
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !767
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #17
  store i8 1, ptr %i.ma, align 1, !tbaa !676
  store ptr @.str.59, ptr %34, align 8, !tbaa !679
  store i8 3, ptr %i.lz, align 8, !tbaa !680
  %i.nc = load ptr, ptr %i.kj, align 8, !tbaa !630, !nonnull !387, !align !388
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 232
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !717, !nonnull !387, !align !388
  %i.nf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.nf, ptr noundef nonnull align 8 dereferenceable(8) %i.ne, ptr noundef nonnull align 8 dereferenceable(34) %34, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  br label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %bb.bi, %bb.bl, %bb.bk
  %.048 = phi i1 [ true, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bl ]
  %.0 = phi ptr [ %i.mv, %bb.bi ], [ %i.nb, %bb.bk ], [ %i.nf, %bb.bl ] ; 2 uses
  %i.ng = load ptr, ptr %i.mc, align 8, !tbaa !793
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #17
  store i16 257, ptr %i.md, align 8
  %i.nh = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %i.kf, ptr noundef %i.ng, ptr noundef %i.kn, ptr nonnull %i.h, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %35, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #17
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !638
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !750, !nonnull !387, !align !388
  %i.nm = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ni, ptr noundef nonnull align 8 dereferenceable(8) %i.nl, i32 noundef -1, i32 noundef 45) #17
  store ptr %i.nm, ptr %i.ni, align 8, !tbaa !754
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #17
  store i8 1, ptr %i.mf, align 1, !tbaa !676
  store ptr @.str.60, ptr %36, align 8, !tbaa !679
  store i8 3, ptr %i.me, align 8, !tbaa !680
  %i.nn = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.kf, i32 noundef 32, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.nh, ptr noundef nonnull align 8 dereferenceable(34) %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #17
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !767
  %i.nq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #17 ; 3 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.nq, ptr noundef %i.nn, ptr noundef %i.np, ptr noundef %.0, ptr null, i64 0) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i16 257, ptr %i.mg, align 8
  %i.nr = load ptr, ptr %i.ln, align 8, !tbaa !743, !nonnull !387, !align !388 ; 2 uses
  %.sroa.0.0.copyload.i.i84 = load ptr, ptr %i.ki, align 8
  %.sroa.2.0.copyload.i.i86 = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !655
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  call void %i.nu(ptr noundef nonnull align 8 dereferenceable(8) %i.nr, ptr noundef nonnull %i.nq, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i84, i64 %.sroa.2.0.copyload.i.i86) #17, !inline_history !936
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.kf, ptr noundef nonnull %i.nq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.048, label %bb.bm, label %_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit

bb.bm:                                            ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  %.not.i87 = icmp eq ptr %i.kh, null
  br i1 %.not.i87, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.kh, ptr %i.kg, align 8, !tbaa !772
  store ptr %.sroa.0.0.copyload.i.i78, ptr %i.ki, align 8
  %.sroa.45.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i.i to i16
  store i16 %.sroa.45.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %.not.i.i91 = icmp eq ptr %.sroa.0.0.copyload.i.i78, %i.nv
  br i1 %.not.i.i91, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nw = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i78, i64 -24
  %i.nx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.nw) #17
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !817
  store i64 %i.ny, ptr %i.kf, align 8, !tbaa !817
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.kg, i8 0, i64 18, i1 false)
  br label %bb.bq

_ZN4llvm13IRBuilderBase9restoreIPENS0_11InsertPointE.exit: ; preds = %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %0, ptr noundef %.0, i1 noundef zeroext false) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %bb.bd

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  br label %_ZL17emitCatchPadBlockRN5clang7CodeGen15CodeGenFunctionERNS0_12EHCatchScopeE.exit

_ZL17emitCatchPadBlockRN5clang7CodeGen15CodeGenFunctionERNS0_12EHCatchScopeE.exit: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.bq, %bb.az, %_ZL21emitWasmCatchPadBlockRN5clang7CodeGen15CodeGenFunctionERNS0_12EHCatchScopeE.exit
  ret void
}

declare void @_ZN5clang7CodeGen15CodeGenFunction18EmitBlockAfterUsesEPN4llvm10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(6288), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang7CodeGen13CodeGenModule12getIntrinsicEjN4llvm8ArrayRefIPNS2_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(4008), i32 noundef, ptr, i64) local_unnamed_addr #2

declare void @_ZN5clang7CodeGen15CodeGenFunction31EmitNoreturnRuntimeCallOrInvokeEN4llvm14FunctionCalleeENS2_8ArrayRefIPNS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(6288), ptr, ptr, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction11FinallyInfo5enterERS1_PKNS_4StmtEN4llvm14FunctionCalleeES8_S8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 20), (24, 56)) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %2, ptr %3, ptr %4, ptr nofree noundef readonly byval(%"class.llvm::FunctionCallee") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.llvm::FunctionCallee") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.a, align 8, !tbaa !937
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !681
  %i.b = load ptr, ptr %6, align 8, !tbaa !938
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !939
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !941
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !679
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !676
  store ptr @.str.37, ptr %9, align 8, !tbaa !679
  store i8 3, ptr %i.h, align 8, !tbaa !680
  %i.j = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction16CreateTempAllocaEPN4llvm4TypeERKNS2_5TwineEPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef null) #17
  store ptr %i.j, ptr %i.c, align 8, !tbaa !939
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction19getUnreachableBlockEv(ptr noundef nonnull align 8 dereferenceable(6288) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !690, !noalias !942
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2784 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !945, !noalias !942 ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !945, !noalias !942
  store ptr %i.k, ptr %0, align 8, !tbaa !848
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !690
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !714
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !745, !nonnull !387, !align !388
  %i.s = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.u, align 1, !tbaa !676
  store ptr @.str.38, ptr %10, align 8, !tbaa !679
  store i8 3, ptr %i.t, align 8, !tbaa !680
  %i.v = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction16CreateTempAllocaEPN4llvm4TypeERKNS2_5TwineEPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef null) #17 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !946
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !745, !nonnull !387, !align !388
  %i.y = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #17
  %i.z = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.y, i64 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aa = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 2) #17 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZN4llvm9StoreInstC1EPNS_5ValueES2_bNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.aa, ptr noundef %i.z, ptr noundef %i.v, i1 noundef zeroext false, i8 0, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i16 257, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !743, !nonnull !387, !align !388 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ae, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !655
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #17, !inline_history !947
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(128) %i.p, ptr noundef nonnull %i.aa) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2056 ; 2 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !946
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !939
  %i.al = call noundef ptr @_ZN5clang7CodeGen12EHScopeStack11pushCleanupENS0_11CleanupKindEm(ptr noundef nonnull align 8 dereferenceable(320) %i.ai, i32 noundef 2, i64 noundef 64) #17 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_114PerformFinallyE, i64 16), ptr %i.al, align 8, !tbaa !655
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %2, ptr %i.am, align 8, !tbaa !948
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !950
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load <2 x ptr>, ptr %5, align 8, !tbaa !877
  store <2 x ptr> %i.ap, ptr %i.ao, align 8, !tbaa !877
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !951
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !676
  store ptr @.str.39, ptr %11, align 8, !tbaa !679
  store i8 3, ptr %i.as, align 8, !tbaa !680
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !630, !nonnull !387, !align !388
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !717, !nonnull !387, !align !388
  %i.ay = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.az = call noundef ptr @_ZN5clang7CodeGen12EHScopeStack9pushCatchEj(ptr noundef nonnull align 8 dereferenceable(320) %i.ai, i32 noundef 1) #17 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !766
  %.sroa.2.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i17, align 8, !tbaa !714
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !767
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang7CodeGen15CodeGenFunction19getUnreachableBlockEv(ptr noundef nonnull align 8 dereferenceable(6288) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::InsertPosition", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4232 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !952  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !676
  store ptr @.str.64, ptr %1, align 8, !tbaa !679
  store i8 3, ptr %i.c, align 8, !tbaa !680
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !630, !nonnull !387, !align !388
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !717, !nonnull !387, !align !388
  %i.i = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19 ; 2 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef null, ptr noundef null) #17
  store ptr %i.i, ptr %i.a, align 8, !tbaa !952
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.j = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #17
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !630, !nonnull !387, !align !388
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !717, !nonnull !387, !align !388
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !952
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.n) #17
  %i.o = load ptr, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8
  call void @_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr %i.o, i64 %i.q) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !952
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang7CodeGen15CodeGenFunction11FinallyInfo4exitERS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::InsertPosition", align 8 ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2056
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2072 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !684  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !767  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_0
