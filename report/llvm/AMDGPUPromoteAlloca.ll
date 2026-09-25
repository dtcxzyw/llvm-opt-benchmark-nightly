Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPromoteAlloca?download=true
inline.NumInlined: 5003
inline.NumDeleted: 2606
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS4_14AllocaAnalysisEE3$_0E9_M_invokeERKSt9_Any_dataOS2_":bb.a
  br i1 %.not.not.i280.i.i.i.i, label %bb.ao, label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i8 1, ptr %i.jr, align 8, !tbaa !289
  store i8 1, ptr %i.js, align 1, !tbaa !290
  %i.ke = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef 14, ptr noundef nonnull %i.ig, ptr noundef %i.jy, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr null, i64 0) #20 ; 3 uses
  %i.kf = load ptr, ptr %i.ao, align 8, !tbaa !263, !nonnull !34, !align !46 ; 2 uses
  %.sroa.0.0.copyload.i.i.i282.i.i.i.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i.i284.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i225.i.i.i.i, align 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !25
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef %i.ke, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr %.sroa.0.0.copyload.i.i.i282.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i284.i.i.i.i) #20, !inline_history !911
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef %i.ke) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i

_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.1.i281.i.i.i.i = phi ptr [ %i.kd, %bb.an ], [ %i.ke, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store i16 257, ptr %i.jt, align 8
  %i.kj = call noundef ptr @_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueEmRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef %i.jn, i64 noundef %indvars.iv.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %24) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  store i16 257, ptr %i.ju, align 8
  %i.kk = load ptr, ptr %i.an, align 8, !tbaa !291, !nonnull !34, !align !46 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 104
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = call noundef ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef %.020271.i.i.i.i, ptr noundef %i.kj, ptr noundef %.1.i281.i.i.i.i) #20, !inline_history !913 ; 2 uses
  %.not.not.i286.i.i.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.not.i286.i.i.i.i, label %bb.ap, label %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit.i.i.i.i

bb.ap:                                            ; preds = %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i16 257, ptr %i.jv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.kp = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #20 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17InsertElementInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.kp, ptr noundef %.020271.i.i.i.i, ptr noundef %i.kj, ptr noundef %.1.i281.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.kq = load ptr, ptr %i.ao, align 8, !tbaa !263, !nonnull !34, !align !46 ; 2 uses
  %.sroa.0.0.copyload.i.i288.i.i.i.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i289.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i225.i.i.i.i, align 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !25
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kq, ptr noundef nonnull %i.kp, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr %.sroa.0.0.copyload.i.i288.i.i.i.i, i64 %.sroa.2.0.copyload.i.i289.i.i.i.i) #20, !inline_history !914
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull %i.kp) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit.i.i.i.i

_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit.i.i.i.i: ; preds = %bb.ap, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i
  %.1.i287.i.i.i.i = phi ptr [ %i.kp, %bb.ap ], [ %i.ko, %_ZN4llvm13IRBuilderBase9CreateAddEPNS_5ValueES2_RKNS_5TwineEbb.exit285.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ku = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.jw
  br i1 %i.ku, label %bb.an, label %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i, !llvm.loop !915

bb.aq:                                            ; preds = %bb.aj
  %i.kv = load ptr, ptr %i.ij, align 8, !tbaa !100 ; 4 uses
  %.not219.i.i.i.i = icmp eq ptr %i.kv, %i.bg
  br i1 %.not219.i.i.i.i, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.kw = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  store i16 257, ptr %i.kw, align 8
  %i.ky = load i32, ptr %i.kx, align 8            ; 3 uses
  %i.kz = and i32 %i.ky, 254
  %spec.select.i.i.i.i290.i.i.i.i = icmp eq i32 %i.kz, 18 ; 2 uses
  br i1 %spec.select.i.i.i.i290.i.i.i.i, label %bb.as, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i291.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.la = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !92
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !93
  %.phi.trans.insert.i.i306.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.pre.i.i307.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i306.i.i.i.i, align 8
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i291.i.i.i.i

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i291.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.ld = phi i32 [ %.pre.i.i307.i.i.i.i, %bb.as ], [ %i.ky, %bb.ar ]
  %i.le = and i32 %i.ld, 255
  %i.lf = icmp eq i32 %i.le, 15
  br i1 %i.lf, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i291.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.lh = load i32, ptr %i.lg, align 8            ; 2 uses
  %i.li = and i32 %i.lh, 254
  %spec.select.i.i.i19.i302.i.i.i.i = icmp eq i32 %i.li, 18
  br i1 %spec.select.i.i.i19.i302.i.i.i.i, label %bb.au, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !92
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !93
  %.phi.trans.insert.i20.i304.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %.pre.i21.i305.i.i.i.i = load i32, ptr %.phi.trans.insert.i20.i304.i.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i: ; preds = %bb.au, %bb.at
  %i.lm = phi i32 [ %.pre.i21.i305.i.i.i.i, %bb.au ], [ %i.lh, %bb.at ]
  %i.ln = and i32 %i.lm, 255
  %i.lo = icmp eq i32 %i.ln, 12
  br i1 %i.lo, label %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i, %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit.i291.i.i.i.i
  br i1 %spec.select.i.i.i.i290.i.i.i.i, label %bb.aw, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i292.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !92
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !93
  %.phi.trans.insert.i23.i300.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.pre.i24.i301.i.i.i.i = load i32, ptr %.phi.trans.insert.i23.i300.i.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i292.i.i.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i292.i.i.i.i: ; preds = %bb.aw, %bb.av
  %i.ls = phi i32 [ %.pre.i24.i301.i.i.i.i, %bb.aw ], [ %i.ky, %bb.av ]
  %i.lt = and i32 %i.ls, 255
  %i.lu = icmp eq i32 %i.lt, 12
  br i1 %i.lu, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i292.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.lw = load i32, ptr %i.lv, align 8            ; 2 uses
  %i.lx = and i32 %i.lw, 254
  %spec.select.i.i.i26.i296.i.i.i.i = icmp eq i32 %i.lx, 18
  br i1 %spec.select.i.i.i26.i296.i.i.i.i, label %bb.ay, label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !92
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !93
  %.phi.trans.insert.i27.i298.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.pre.i28.i299.i.i.i.i = load i32, ptr %.phi.trans.insert.i27.i298.i.i.i.i, align 8
  br label %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i

_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.mb = phi i32 [ %.pre.i28.i299.i.i.i.i, %bb.ay ], [ %i.lw, %bb.ax ]
  %i.mc = and i32 %i.mb, 255
  %i.md = icmp eq i32 %i.mc, 15
  br i1 %i.md, label %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit25.i292.i.i.i.i
  br label %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i

_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i: ; preds = %bb.az, %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i
  %.sink.i294.i.i.i.i = phi i32 [ 51, %bb.az ], [ 48, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i303.i.i.i.i ], [ 50, %_ZNK4llvm4Type18isPtrOrPtrVectorTyEv.exit29.i297.i.i.i.i ]
  %i.me = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %12, i32 noundef %.sink.i294.i.i.i.i, ptr noundef nonnull %i.ii, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %26, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i, %bb.aq
  %.0203.i.i.i.i = phi ptr [ %i.me, %_ZN4llvm13IRBuilderBase22CreateBitOrPointerCastEPNS_5ValueEPNS_4TypeERKNS_5TwineE.exit308.i.i.i.i ], [ %i.ii, %bb.aq ] ; 2 uses
  %i.mf = call fastcc noundef ptr @"_ZN4llvm12function_refIFPNS_5ValueEvEE11callback_fnIZZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS6_14AllocaAnalysisEENK3$_0clEPNS_11InstructionEEUlvE_EES2_l"(i64 noundef %i.z) #20, !inline_history !905 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.mg = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i16 257, ptr %i.mg, align 8
  %i.mh = load ptr, ptr %i.an, align 8, !tbaa !291, !nonnull !34, !align !46 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !25
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 104
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = call noundef ptr %i.mk(ptr noundef nonnull align 8 dereferenceable(8) %i.mh, ptr noundef %i.mf, ptr noundef %.0203.i.i.i.i, ptr noundef nonnull %i.ig) #20, !inline_history !913 ; 2 uses
  %.not.not.i309.i.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not.not.i309.i.i.i.i, label %bb.bb, label %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit314.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.mm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.mn = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #20 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @_ZN4llvm17InsertElementInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.mn, ptr noundef %i.mf, ptr noundef %.0203.i.i.i.i, ptr noundef nonnull %i.ig, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.mo = load ptr, ptr %i.ao, align 8, !tbaa !263, !nonnull !34, !align !46 ; 2 uses
  %.sroa.0.0.copyload.i.i311.i.i.i.i = load ptr, ptr %i.ba, align 8
  %.sroa.2.0.copyload.i.i313.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i225.i.i.i.i, align 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8
  call void %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %i.mo, ptr noundef nonnull %i.mn, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr %.sroa.0.0.copyload.i.i311.i.i.i.i, i64 %.sroa.2.0.copyload.i.i313.i.i.i.i) #20, !inline_history !914
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef nonnull %i.mn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit314.i.i.i.i

_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit314.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.1.i310.i.i.i.i = phi ptr [ %i.mn, %bb.bb ], [ %i.ml, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i

bb.bc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ms = getelementptr inbounds i8, ptr %.val2, i64 -32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !172 ; 3 uses
  %.pre.pre.i.i.i.i = load i8, ptr %i.mt, align 8, !tbaa !105
  %i.mu = icmp eq i8 %.pre.pre.i.i.i.i, 14        ; 2 uses
  br i1 %i.mu, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.sink.split.i.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %36 = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 8192
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %38, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.sink.split.i.i.i, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 36
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !209 ; 2 uses
  switch i32 %i.mw, label %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i [
    i32 255, label %bb.bd
    i32 258, label %bb.bd
    i32 257, label %bb.bd
  ]

bb.bd:                                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a, %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a
  store ptr %.val2, ptr %i.a, align 8, !tbaa !211
  %i.mx = getelementptr inbounds nuw i8, ptr %.val2, i64 4
  %i.my = load i32, ptr %i.mx, align 4
  %i.mz = and i32 %i.my, 268435455
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = sub nsw i64 0, %i.na
  %i.nc = getelementptr inbounds [32 x i8], ptr %.val2, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !172 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !194
  %i.ni = icmp ult i32 %i.nh, 65
  %i.nj = load ptr, ptr %i.nf, align 8
  %spec.select.i.i315.i.i.i.i = select i1 %i.ni, ptr %i.nf, ptr %i.nj
  %.0.i.i316.i.i.i.i = load i64, ptr %spec.select.i.i315.i.i.i.i, align 8, !tbaa !111
  %i.nk = zext i32 %i.y to i64
  %i.nl = udiv i64 %.0.i.i316.i.i.i.i, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.no = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15MemTransferInstEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.nn, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !948 ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.no, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.no, 1
  %i.np = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i.i.i to i1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.q, i64 304 ; 4 uses
  br i1 %i.np, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.nr = getelementptr inbounds nuw i8, ptr %i.q, i64 312 ; 4 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !94 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i, i64 8
  store i32 %i.ns, ptr %i.nt, align 8, !tbaa !213
  %i.nu = getelementptr inbounds nuw i8, ptr %i.q, i64 316
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !95
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.ns, %i.nv
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf, !prof !106

bb.bf:                                            ; preds = %bb.be
  %i.nw = ptrtoint ptr %i.a to i64
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i64 %i.nw)
  %.val7.pre.i.i.i.i.i.i = load i32, ptr %i.nr, align 8, !tbaa !94
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.nx = zext i32 %i.ns to i64
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.nq, align 8, !tbaa !37
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.nx ; 2 uses
  %.val7.val.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !211
  store ptr %.val7.val.i.i.i.i.i.i.i, ptr %i.ny, align 8, !tbaa !216
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  %i.oa = load i32, ptr %i.nr, align 8, !tbaa !94
  %i.ob = add i32 %i.oa, 1                        ; 2 uses
  store i32 %i.ob, ptr %i.nr, align 8, !tbaa !94
  br label %_ZN4llvm15SmallVectorImplISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.val7.i.i.i.i.i.i = phi i32 [ %.val7.pre.i.i.i.i.i.i, %bb.bf ], [ %i.ob, %bb.bg ]
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.nq, align 8, !tbaa !37
  %i.oc = zext i32 %.val7.i.i.i.i.i.i to i64
  %i.od = getelementptr inbounds nuw [24 x i8], ptr %.val6.i.i.i.i.i.i, i64 %i.oc
  %i.oe = getelementptr inbounds i8, ptr %i.od, i64 -24
  br label %_ZN4llvm9MapVectorIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bd
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.nq, align 8, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i.i.i, i64 8
  %i.og = load i32, ptr %i.of, align 8, !tbaa !213
  %i.oh = zext i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [24 x i8], ptr %.val12.i.i.i.i.i.i, i64 %i.oh
  br label %_ZN4llvm9MapVectorIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i.i.i.i

_ZN4llvm9MapVectorIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i.i.i.i: ; preds = %bb.bh, %_ZN4llvm15SmallVectorImplISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i
  %.sroa.016.0.i.i.i.i.i.i = phi ptr [ %i.oe, %_ZN4llvm15SmallVectorImplISt4pairIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS3_EESC_IJEEEEERS6_DpOT_.exit.i.i.i.i.i.i ], [ %i.oi, %bb.bh ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i.i.i.i.i, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !218 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !194
  %i.oo = icmp ult i32 %i.on, 65
  %i.op = load ptr, ptr %i.ol, align 8
  %spec.select.i.i317.i.i.i.i = select i1 %i.oo, ptr %i.ol, ptr %i.op
  %.0.i.i318.i.i.i.i = load i64, ptr %spec.select.i.i317.i.i.i.i, align 8, !tbaa !111
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i.i.i.i.i.i, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !217 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 32
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !194
  %i.ov = icmp ult i32 %i.ou, 65
  %i.ow = load ptr, ptr %i.os, align 8
  %spec.select.i.i319.i.i.i.i = select i1 %i.ov, ptr %i.os, ptr %i.ow
  %.0.i.i320.i.i.i.i = load i64, ptr %spec.select.i.i319.i.i.i.i, align 8, !tbaa !111
  %i.ox = trunc i64 %.0.i.i320.i.i.i.i to i32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.oy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.oy, ptr %28, align 8, !tbaa !37
  %i.oz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 8 uses
  store i32 0, ptr %i.oz, align 8, !tbaa !94
  %i.pa = getelementptr inbounds nuw i8, ptr %28, i64 12 ; 3 uses
  store i32 12, ptr %i.pa, align 4, !tbaa !95
  %i.pb = load ptr, ptr %i.bd, align 8, !tbaa !189
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !187 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm9MapVectorIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i.i.i.i
  %i.pe = trunc i64 %.0.i.i318.i.i.i.i to i32
  %i.pf = add i32 %i.ox, %i.nm
  br label %bb.bj

._crit_edge.i.i.i.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i, %_ZN4llvm9MapVectorIPNS_15MemTransferInstEN12_GLOBAL__N_115MemTransferInfoENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj0EEELj0EEixERKS2_.exit.i.i.i.i
  %i.pg = call fastcc noundef ptr @"_ZN4llvm12function_refIFPNS_5ValueEvEE11callback_fnIZZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS6_14AllocaAnalysisEENK3$_0clEPNS_11InstructionEEUlvE_EES2_l"(i64 noundef %i.z) #20, !inline_history !905
  %i.ph = load ptr, ptr %28, align 8, !tbaa !37
  %i.pi = load i32, ptr %i.oz, align 8, !tbaa !94
  %i.pj = zext i32 %i.pi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.pk = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i16 257, ptr %i.pk, align 8
  %i.pl = call noundef ptr @_ZN4llvm13IRBuilderBase19CreateShuffleVectorEPNS_5ValueENS_8ArrayRefIiEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %12, ptr noundef %i.pg, ptr %i.ph, i64 %i.pj, ptr noundef nonnull align 8 dereferenceable(34) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.pm = load ptr, ptr %28, align 8, !tbaa !37   ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.oy
  br i1 %i.pn, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.pm) #20
  br label %bb.bq

bb.bj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.po = phi i32 [ %i.pd, %.lr.ph.i.i.i.i ], [ %i.qj, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i ]
  %.019770.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.qg, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i ] ; 5 uses
  %.019869.i.i.i.i = phi i32 [ %i.pe, %.lr.ph.i.i.i.i ], [ %.2200.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i ] ; 5 uses
  %.not217.i.i.i.i = icmp uge i32 %.019770.i.i.i.i, %i.ox
  %i.pp = icmp ult i32 %.019770.i.i.i.i, %i.pf
  %or.cond223.i.i.i.i = and i1 %.not217.i.i.i.i, %i.pp
  br i1 %or.cond223.i.i.i.i, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.pq = icmp ult i32 %.019869.i.i.i.i, %i.po    ; 2 uses
  %i.pr = zext i1 %i.pq to i32
  %spec.select.i.i.i.i = add i32 %.019869.i.i.i.i, %i.pr ; 2 uses
  %spec.select224.i.i.i.i = select i1 %i.pq, i32 %.019869.i.i.i.i, i32 -1 ; 2 uses
  %i.ps = load i32, ptr %i.oz, align 8, !tbaa !94 ; 2 uses
  %i.pt = load i32, ptr %i.pa, align 4, !tbaa !95
  %.not.i.i.i.i.i = icmp ult i32 %i.ps, %i.pt
  br i1 %.not.i.i.i.i.i, label %bb.bm, label %bb.bl, !prof !106

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef %spec.select224.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.pu = zext i32 %i.ps to i64
  %i.pv = load ptr, ptr %28, align 8, !tbaa !37
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.pu
  store i32 %spec.select224.i.i.i.i, ptr %i.pw, align 1
  %i.px = load i32, ptr %i.oz, align 8, !tbaa !94
  %i.py = add i32 %i.px, 1
  store i32 %i.py, ptr %i.oz, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i

bb.bn:                                            ; preds = %bb.bj
  %i.pz = load i32, ptr %i.oz, align 8, !tbaa !94 ; 2 uses
  %i.qa = load i32, ptr %i.pa, align 4, !tbaa !95
  %.not.i321.i.i.i.i = icmp ult i32 %i.pz, %i.qa
  br i1 %.not.i321.i.i.i.i, label %bb.bp, label %bb.bo, !prof !106

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %28, i32 noundef %.019770.i.i.i.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.qb = zext i32 %i.pz to i64
  %i.qc = load ptr, ptr %28, align 8, !tbaa !37
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qb
  store i32 %.019770.i.i.i.i, ptr %i.qd, align 1
  %i.qe = load i32, ptr %i.oz, align 8, !tbaa !94
  %i.qf = add i32 %i.qe, 1
  store i32 %i.qf, ptr %i.oz, align 8, !tbaa !94
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl
  %.2200.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.bm ], [ %spec.select.i.i.i.i, %bb.bl ], [ %.019869.i.i.i.i, %bb.bo ], [ %.019869.i.i.i.i, %bb.bp ]
  %i.qg = add nuw i32 %.019770.i.i.i.i, 1         ; 2 uses
  %i.qh = load ptr, ptr %i.bd, align 8, !tbaa !189
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !187 ; 2 uses
  %i.qk = icmp ult i32 %i.qg, %i.qj
  br i1 %i.qk, label %bb.bj, label %._crit_edge.i.i.i.i, !llvm.loop !920

bb.bq:                                            ; preds = %bb.bi, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i

_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ql = and i32 %i.mw, -3
  %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ql, 260
  br i1 %switch.selectcmp.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i

_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i
  %i.qm = getelementptr inbounds nuw i8, ptr %.val2, i64 4
  %i.qn = load i32, ptr %i.qm, align 4
  %i.qo = and i32 %i.qn, 268435455
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = sub nsw i64 0, %i.qp
  %i.qr = getelementptr inbounds [32 x i8], ptr %.val2, i64 %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !172 ; 2 uses
  %i.qu = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.s, ptr noundef %i.bg) ; 2 uses
  %.fca.1.extract.i.i329.i.i.i.i = extractvalue { i64, i8 } %i.qu, 1
  %i.qv = trunc nuw i8 %.fca.1.extract.i.i329.i.i.i.i to i1
  br i1 %i.qv, label %bb.br, label %_ZNK4llvm8TypeSizecvmEv.exit332.i.i.i.i

bb.br:                                            ; preds = %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.35) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit332.i.i.i.i:          ; preds = %_ZN4llvm8dyn_castINS_10MemSetInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i
  %.fca.0.extract.i.i328.i.i.i.i = extractvalue { i64, i8 } %i.qu, 0
  %i.qw = add i64 %.fca.0.extract.i.i328.i.i.i.i, 7
  %i.qx = lshr i64 %i.qw, 3
  %i.qy = trunc i64 %i.qx to i32                  ; 3 uses
  %i.qz = icmp ugt i32 %i.qy, 1
  br i1 %i.qz, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit332.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.ra = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i16 257, ptr %i.ra, align 8
  %i.rb = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateVectorSplatEjPNS_5ValueERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %12, i32 noundef %i.qy, ptr noundef %i.qt, ptr noundef nonnull align 8 dereferenceable(34) %30) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.rd = load i32, ptr %i.rc, align 8
  %i.re = and i32 %i.rd, 255
  %i.rf = icmp eq i32 %i.re, 15
  br i1 %i.rf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.rg = shl i32 %i.qy, 3
  %i.rh = load ptr, ptr %i.am, align 8, !tbaa !315, !nonnull !34, !align !46
  %i.ri = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, i32 noundef %i.rg) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.rj = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i16 257, ptr %i.rj, align 8
  %i.rk = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %12, i32 noundef 51, ptr noundef %i.rb, ptr noundef %i.ri, ptr noundef nonnull align 8 dereferenceable(34) %31, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.rl = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i16 257, ptr %i.rl, align 8
  %i.rm = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %12, i32 noundef 50, ptr noundef %i.rk, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %32, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.rn = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i16 257, ptr %i.rn, align 8
  %i.ro = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %12, i32 noundef 51, ptr noundef %i.rb, ptr noundef nonnull %i.bg, ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %_ZNK4llvm8TypeSizecvmEv.exit332.i.i.i.i
  %.1196.i.i.i.i = phi ptr [ %i.qt, %_ZNK4llvm8TypeSizecvmEv.exit332.i.i.i.i ], [ %i.rm, %bb.bt ], [ %i.ro, %bb.bu ]
  %i.rp = load ptr, ptr %i.bd, align 8, !tbaa !189 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !187
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rt = load i32, ptr %i.rs, align 8
  %i.ru = and i32 %i.rt, 255
  %i.rv = icmp eq i32 %i.ru, 19
  %.sroa.2.0.insert.shift.i.i.i.i.i.i = select i1 %i.rv, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i32 %i.rr to i64
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.rw = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i16 257, ptr %i.rw, align 8
  %i.rx = call noundef ptr @_ZN4llvm13IRBuilderBase17CreateVectorSplatENS_12ElementCountEPNS_5ValueERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %12, i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr noundef %.1196.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(34) %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br label %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.sink.split.i.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.sink.split.i.i.i, %_ZN4llvm14CastIsPossibleINS_10MemSetInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.mu)
  %i.ry = load ptr, ptr %i.aa, align 8, !tbaa !100
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load i32, ptr %i.rz, align 8
  %i.sb = call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.s, ptr noundef nonnull %i.be) #20 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i8 } %i.sb, 1
  %i.sc = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.sc, label %bb.bw, label %_ZNK4llvm8TypeSizecvmEv.exit336.i.i.i.i

bb.bw:                                            ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.35) #21
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit336.i.i.i.i:          ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { i64, i8 } %i.sb, 0
  %i.sd = lshr i32 %i.sa, 8
  %i.se = load ptr, ptr %i.am, align 8, !tbaa !315, !nonnull !34, !align !46
  %i.sf = call noundef ptr @_ZN4llvm4Type9getIntNTyERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.se, i32 noundef %i.sd) #20
  %i.sg = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.sf, i64 noundef %.fca.0.extract.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #20
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %.val2, ptr noundef %i.sg) #20
  br label %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i

bb.bx:                                            ; preds = %bb.a
  unreachable

_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i: ; preds = %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit.i.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit336.i.i.i.i, %bb.bv, %bb.bq, %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit314.i.i.i.i, %_ZNK4llvm8TypeSizecvmEv.exit279.i.i.i.i, %bb.ai, %bb.ad, %._crit_edge77.i.i.i.i, %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i.i.i, %.critedge.i.i.i.i
  %.8.i.i.i.i = phi ptr [ %i.pl, %bb.bq ], [ null, %bb.ad ], [ null, %_ZNK4llvm8TypeSizecvmEv.exit336.i.i.i.i ], [ %i.rx, %bb.bv ], [ null, %_ZN4llvm13IRBuilderBase20CreateExtractElementEPNS_5ValueES2_RKNS_5TwineE.exit.i.i.i.i ], [ null, %._crit_edge77.i.i.i.i ], [ null, %.critedge.i.i.i.i ], [ %i.ix, %bb.ai ], [ %.1.i310.i.i.i.i, %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit314.i.i.i.i ], [ %i.jo, %_ZNK4llvm8TypeSizecvmEv.exit279.i.i.i.i ], [ %.1.i287.i.i.i.i, %_ZN4llvm13IRBuilderBase19CreateInsertElementEPNS_5ValueES2_S2_RKNS_5TwineE.exit.i.i.i.i ] ; 4 uses
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aw) #20
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.ak) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %.not.i.i.i = icmp eq ptr %.8.i.i.i.i, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS0_14AllocaAnalysisEE3$_0JPN4llvm11InstructionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.by

bb.by:                                            ; preds = %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i
  %i.sh = load i8, ptr %.8.i.i.i.i, align 8, !tbaa !105
  %i.si = icmp ugt i8 %i.sh, 29
  br i1 %i.si, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sj = load ptr, ptr %i.l, align 8, !tbaa !925, !nonnull !34, !align !46
  %i.sk = call noundef zeroext i1 @_ZNK4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE8containsEPKS1_(ptr noundef nonnull align 8 dereferenceable(104) %i.sj, ptr noundef nonnull %.8.i.i.i.i)
  br i1 %i.sk, label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS0_14AllocaAnalysisEE3$_0JPN4llvm11InstructionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.sl = load ptr, ptr %.val, align 8, !tbaa !923, !nonnull !34, !align !46
  %i.sm = load ptr, ptr %i.c, align 8, !tbaa !278
  call void @_ZN4llvm10SSAUpdater17AddAvailableValueEPNS_10BasicBlockEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(56) %i.sl, ptr noundef %i.sm, ptr noundef nonnull %.8.i.i.i.i) #20
  br label %"_ZSt10__invoke_rIvRZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS0_14AllocaAnalysisEE3$_0JPN4llvm11InstructionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS0_14AllocaAnalysisEE3$_0JPN4llvm11InstructionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %_ZL25promoteAllocaUserToVectorPN4llvm11InstructionERKNS_10DataLayoutERN12_GLOBAL__N_114AllocaAnalysisEjjNS_12function_refIFPNS_5ValueEvEEE.exit.i.i.i, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN4llvm11InstructionEEZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS4_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !38
  store ptr %.val, ptr %0, align 8, !tbaa !38
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !950
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %.val5, i64 48, i1 false), !tbaa.struct !951
  store ptr %i.a, ptr %0, align 8, !tbaa !38
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !38 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 48) #25
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_123AMDGPUPromoteAllocaImpl21promoteAllocaToVectorERNS1_14AllocaAnalysisEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm9SetVectorIPNS_11InstructionENS_11SmallVectorIS2_Lj8EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj8EE8containsEPKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !316
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %.idx4.i = shl nuw nsw i64 %i.h, 3              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx4.i ; 2 uses
  %i.j = lshr i64 %i.h, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = and i64 %.idx4.i, 34359738336
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.e, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.w, %bb.g ] ; 9 uses
  %i.l = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !164
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.x = add nsw i64 %.047.i.i.i.i, -1
  %i.y = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.y, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !952

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %i.z = and i32 %i.g, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi56.i.i.i.i = phi i32 [ %i.z, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.b ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.e, %bb.b ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %bb.k [
    i32 3, label %bb.h
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !164
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.1.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !164
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.2.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ag = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !164
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRKNS_11SmallVectorIPNS_11InstructionELj8EEEPKS2_EEbOT_RKT0_.exit.loopexit.split.loop.exit20: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
end_hunk_0
