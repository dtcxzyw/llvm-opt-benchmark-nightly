Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ABISysV_arm?download=true
inline.NumInlined: 887
inline.NumDeleted: 509
begin_hunk_0_@_ZNK11ABISysV_arm24GetReturnValueObjectImplERN12lldb_private6ThreadERNS0_12CompilerTypeE:bb.a
  %i.fc = shl i32 %i.fb, 2
  %i.fd = icmp ult i32 %i.fc, %i.eq
  br i1 %i.fd, label %.lr.ph338, label %._crit_edge339, !llvm.loop !239

bb.at:                                            ; preds = %bb.ar
  %i.fe = call fastcc noundef zeroext i1 @_ZL28GetReturnValuePassedInMemoryRN12lldb_private6ThreadEPNS_15RegisterContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef %i.ah, i64 noundef %.sroa.04.0.i183, ptr noundef nonnull align 8 dereferenceable(120) %11)
  br i1 %i.fe, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.an
  %i.ff = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType19IsFloatingPointTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br i1 %i.ff, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.fg = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType14IsCompleteTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br i1 %i.fg, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  switch i64 %.sroa.04.0.i, label %bb.ay [
    i64 64, label %bb.az
    i64 16, label %bb.bc
    i64 32, label %bb.bc
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.fh = call noundef zeroext i1 @_ZNK11ABISysV_arm14IsArmHardFloatERN12lldb_private6ThreadE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(576) %2)
  br i1 %i.fh, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %26)
  %i.fi = call noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr nonnull @.str, i64 2, i32 noundef 0) #20
  %i.fj = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call noundef zeroext i1 %i.fl(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.fi, ptr noundef nonnull align 8 dereferenceable(344) %26) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.fn = call noundef double @_ZNK12lldb_private13RegisterValue11GetAsDoubleEdPb(ptr noundef nonnull align 8 dereferenceable(344) %26, double noundef 0.000000e+00, ptr noundef null) #20
  call void @_ZN12lldb_private6ScalarC2Ed(ptr noundef nonnull align 8 dereferenceable(48) %27, double noundef %i.fn)
  %i.fo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6ScalaraSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %27) ; 0 uses
  call void @_ZN12lldb_private6ScalarD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN12lldb_private13RegisterValueD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

bb.bb:                                            ; preds = %bb.az
  %i.fp = call noundef ptr @_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i32 noundef 2, i32 noundef 6) #20
  %i.fq = call noundef i64 @_ZN12lldb_private15RegisterContext22ReadRegisterAsUnsignedEPKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.az, i64 noundef 0) #20
  %i.fr = and i64 %i.fq, 4294967295
  %i.fs = call noundef i64 @_ZN12lldb_private15RegisterContext22ReadRegisterAsUnsignedEPKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.fp, i64 noundef 0) #20
  %i.ft = shl i64 %i.fs, 32
  %i.fu = or disjoint i64 %i.ft, %i.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.fv = bitcast i64 %i.fu to double
  call void @_ZN12lldb_private6ScalarC2Ed(ptr noundef nonnull align 8 dereferenceable(48) %28, double noundef %i.fv)
  %i.fw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6ScalaraSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %28) ; 0 uses
  call void @_ZN12lldb_private6ScalarD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

bb.bc:                                            ; preds = %bb.ax, %bb.ax
  %i.fx = call noundef zeroext i1 @_ZNK11ABISysV_arm14IsArmHardFloatERN12lldb_private6ThreadE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(576) %2)
  br i1 %i.fx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %29)
  %i.fy = call noundef ptr @_ZN12lldb_private15RegisterContext21GetRegisterInfoByNameEN4llvm9StringRefEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr nonnull @.str.1, i64 2, i32 noundef 0) #20
  %i.fz = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 104
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = call noundef zeroext i1 %i.gb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(344) %29) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.gd = call noundef float @_ZNK12lldb_private13RegisterValue10GetAsFloatEfPb(ptr noundef nonnull align 8 dereferenceable(344) %29, float noundef 0.000000e+00, ptr noundef null) #20
  call void @_ZN12lldb_private6ScalarC2Ef(ptr noundef nonnull align 8 dereferenceable(48) %30, float noundef %i.gd)
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6ScalaraSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %30) ; 0 uses
  call void @_ZN12lldb_private6ScalarD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @_ZN12lldb_private13RegisterValueD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

bb.be:                                            ; preds = %bb.bc
  %i.gf = call noundef i64 @_ZN12lldb_private15RegisterContext22ReadRegisterAsUnsignedEPKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.az, i64 noundef 0) #20
  %i.gg = trunc i64 %i.gf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.gh = bitcast i32 %i.gg to float
  call void @_ZN12lldb_private6ScalarC2Ef(ptr noundef nonnull align 8 dereferenceable(48) %31, float noundef %i.gh)
  %i.gi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private6ScalaraSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %31) ; 0 uses
  call void @_ZN12lldb_private6ScalarD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

bb.bf:                                            ; preds = %bb.aw
  %i.gj = call noundef zeroext i1 @_ZNK11ABISysV_arm14IsArmHardFloatERN12lldb_private6ThreadE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(576) %2)
  br i1 %i.gj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gk = lshr i64 %.sroa.04.0.i183, 1
  %i.gl = trunc i64 %i.gk to i8
  br label %.thread308

bb.bh:                                            ; preds = %bb.bf
  %i.gm = lshr i64 %.sroa.04.0.i, 3
  %i.gn = call fastcc noundef zeroext i1 @_ZL28GetReturnValuePassedInMemoryRN12lldb_private6ThreadEPNS_15RegisterContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef %i.ah, i64 noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(120) %11)
  br i1 %i.gn, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.av
  %i.go = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType15IsAggregateTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  br i1 %i.go, label %bb.bk, label %bb.ct

bb.bk:                                            ; preds = %bb.bj
  %i.gp = call noundef zeroext i1 @_ZNK11ABISysV_arm14IsArmHardFloatERN12lldb_private6ThreadE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(576) %2)
  br i1 %i.gp, label %bb.bl, label %.thread394

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  %i.gq = call noundef i32 @_ZNK12lldb_private12CompilerType22IsHomogeneousAggregateEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %32) #20 ; 4 uses
  %i.gr = add i32 %i.gq, -1
  %or.cond = icmp ult i32 %i.gr, 4
  br i1 %or.cond, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull %i.ba) #20
  %i.gs = call { i64, i8 } @_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE(ptr noundef nonnull align 8 dereferenceable(9) %33) ; 2 uses
  %i.gt = extractvalue { i64, i8 } %i.gs, 0       ; 3 uses
  %i.gu = extractvalue { i64, i8 } %i.gs, 1       ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.gw = load i8, ptr %i.gv, align 8
  %i.gx = trunc i8 %i.gw to i1
  br i1 %i.gx, label %bb.bn, label %_ZN4llvm8ExpectedImED2Ev.exit195

bb.bn:                                            ; preds = %bb.bm
  %i.gy = load ptr, ptr %33, align 8, !tbaa !95   ; 3 uses
  %.not.i.i193 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i193, label %_ZN4llvm8ExpectedImED2Ev.exit195, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i194

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i194: ; preds = %bb.bn
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !37
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gy) #20, !inline_history !7
  br label %_ZN4llvm8ExpectedImED2Ev.exit195

_ZN4llvm8ExpectedImED2Ev.exit195:                 ; preds = %bb.bm, %bb.bn, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  %i.hc = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType12IsVectorTypeEPS0_Pm(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef null, ptr noundef null) #20
  br i1 %i.hc, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit195
  %i.hd = trunc nuw i8 %i.gu to i1
  br i1 %i.hd, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.bp:                                            ; preds = %bb.bo
  switch i64 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383 [
    i64 8, label %bb.bq
    i64 16, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp
  %i.he = icmp ne i64 %i.gt, 8
  %i.hf = zext i1 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.gq, %i.hf
  %i.hh = trunc nuw nsw i32 %i.hg to i8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.br:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit195
  %i.hi = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType19IsFloatingPointTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #20
  br i1 %i.hi, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.bs:                                            ; preds = %bb.br
  %i.hj = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType13IsComplexTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #20
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hk = trunc nuw i8 %i.gu to i1
  %i.hl = trunc i64 %i.gt to i8
  %i.hm = trunc nuw nsw i32 %i.gq to i8
  %spec.select = select i1 %i.hk, i8 %i.hl, i8 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.bu:                                            ; preds = %bb.bl
  %i.hn = icmp eq i32 %i.gq, 0
  br i1 %i.hn, label %bb.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.bv:                                            ; preds = %bb.bu
  %i.ho = call noundef i32 @_ZNK12lldb_private12CompilerType12GetNumFieldsEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #20 ; 2 uses
  %i.hp = add i32 %i.ho, -1
  %or.cond6 = icmp ult i32 %i.hp, 2
  br i1 %or.cond6, label %.lr.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

.lr.ph:                                           ; preds = %bb.bv
  %i.hq = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  store ptr %i.hq, ptr %34, align 8, !tbaa !102
  store i64 0, ptr %i.hr, align 8, !tbaa !103
  store i8 0, ptr %i.hq, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %i.hu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private12CompilerTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %35) ; 0 uses
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i196.peel = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i196.peel, label %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 12 ; 3 uses
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i197.peel = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i197.peel, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !19 ; 2 uses
  %i.hz = add nsw i32 %i.hy, -1
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198.peel

bb.by:                                            ; preds = %bb.bw
  %i.ia = atomicrmw volatile add ptr %i.hw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198.peel: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i199.peel = phi i32 [ %i.hy, %bb.bx ], [ %i.ia, %bb.by ]
  %i.ib = icmp eq i32 %.0.i.i.i.i.i199.peel, 1
  br i1 %i.ib, label %bb.bz, label %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198.peel
  %i.ic = load ptr, ptr %i.hv, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #20, !inline_history !8
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel

_ZN12lldb_private12CompilerTypeD2Ev.exit.peel:    ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198.peel, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.if = call noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef null) #20
  %i.ig = and i32 %i.if, 524288
  %.not175.peel = icmp eq i32 %i.ig, 0
  br i1 %.not175.peel, label %.thread302.peel, label %bb.ca

bb.ca:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull %i.ba) #20
  %i.ih = call { i64, i8 } @_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE(ptr noundef nonnull align 8 dereferenceable(9) %36) ; 2 uses
  %i.ii = extractvalue { i64, i8 } %i.ih, 0
  %i.ij = extractvalue { i64, i8 } %i.ih, 1
  %i.ik = load i8, ptr %i.ht, align 8
  %i.il = trunc i8 %i.ik to i1
  br i1 %i.il, label %bb.cb, label %_ZN4llvm8ExpectedImED2Ev.exit202.peel

bb.cb:                                            ; preds = %bb.ca
  %i.im = load ptr, ptr %36, align 8, !tbaa !95   ; 3 uses
  %.not.i.i200.peel = icmp eq ptr %i.im, null
  br i1 %.not.i.i200.peel, label %_ZN4llvm8ExpectedImED2Ev.exit202.peel, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201.peel

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201.peel: ; preds = %bb.cb
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.im) #20, !inline_history !7
  br label %_ZN4llvm8ExpectedImED2Ev.exit202.peel

_ZN4llvm8ExpectedImED2Ev.exit202.peel:            ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201.peel, %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  %i.iq = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType13IsComplexTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #20
  br i1 %i.iq, label %bb.cc, label %.thread302.peel

bb.cc:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit202.peel
  %i.ir = trunc nuw i8 %i.ij to i1
  %i.is = trunc i64 %i.ii to i8
  %spec.select410 = select i1 %i.ir, i8 %i.is, i8 0
  br label %.thread302.peel

.thread302.peel:                                  ; preds = %bb.cc, %_ZN4llvm8ExpectedImED2Ev.exit202.peel, %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel
  %.5166.peel = phi i8 [ 0, %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel ], [ %spec.select410, %bb.cc ], [ 0, %_ZN4llvm8ExpectedImED2Ev.exit202.peel ] ; 5 uses
  %i.it = phi i1 [ false, %_ZN12lldb_private12CompilerTypeD2Ev.exit.peel ], [ true, %bb.cc ], [ false, %_ZN4llvm8ExpectedImED2Ev.exit202.peel ]
  %i.iu = load ptr, ptr %34, align 8, !tbaa !104  ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.hq
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %.thread302.peel
  %i.iw = load i64, ptr %i.hq, align 8, !tbaa !38
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %.thread302.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br i1 %i.it, label %bb.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %exitcond.peel.not = icmp eq i32 %i.ho, 1
  br i1 %exitcond.peel.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread, label %.peel.next

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread: ; preds = %bb.cd
  %.7377 = lshr i8 %.5166.peel, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

.peel.next:                                       ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  store ptr %i.hq, ptr %34, align 8, !tbaa !102
  store i64 0, ptr %i.hr, align 8, !tbaa !103
  store i8 0, ptr %i.hq, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  call void @_ZNK12lldb_private12CompilerType15GetFieldAtIndexEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPmPjPb(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef null, ptr noundef null, ptr noundef null) #20
  %i.iy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private12CompilerTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %35) ; 0 uses
  %i.iz = load ptr, ptr %i.hs, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i196 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i196, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %.peel.next
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 12 ; 3 uses
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i197 = icmp eq i8 %i.jb, 0
  br i1 %.not.i.i.i.i197, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !19 ; 2 uses
  %i.jd = add nsw i32 %i.jc, -1
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198

bb.cg:                                            ; preds = %bb.ce
  %i.je = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i199 = phi i32 [ %i.jc, %bb.cf ], [ %i.je, %bb.cg ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i199, 1
  br i1 %i.jf, label %bb.ch, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198
  %i.jg = load ptr, ptr %i.iz, align 8, !tbaa !37
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #20, !inline_history !8
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %.peel.next, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i198, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #20
  %i.jj = call noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef null) #20
  %i.jk = and i32 %i.jj, 524288
  %.not175 = icmp eq i32 %i.jk, 0
  br i1 %.not175, label %.thread302, label %bb.ci

bb.ci:                                            ; preds = %_ZN12lldb_private12CompilerTypeD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @_ZNK12lldb_private12CompilerType11GetByteSizeEPNS_21ExecutionContextScopeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull %i.ba) #20
  %i.jl = call { i64, i8 } @_ZN4llvm18expectedToOptionalImEESt8optionalIT_EONS_8ExpectedIS2_EE(ptr noundef nonnull align 8 dereferenceable(9) %36) ; 2 uses
  %i.jm = extractvalue { i64, i8 } %i.jl, 0
  %i.jn = extractvalue { i64, i8 } %i.jl, 1
  %i.jo = load i8, ptr %i.ht, align 8
  %i.jp = trunc i8 %i.jo to i1
  br i1 %i.jp, label %bb.cj, label %_ZN4llvm8ExpectedImED2Ev.exit202

bb.cj:                                            ; preds = %bb.ci
  %i.jq = load ptr, ptr %36, align 8, !tbaa !95   ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i200, label %_ZN4llvm8ExpectedImED2Ev.exit202, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201: ; preds = %bb.cj
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %i.jq) #20, !inline_history !7
  br label %_ZN4llvm8ExpectedImED2Ev.exit202

_ZN4llvm8ExpectedImED2Ev.exit202:                 ; preds = %bb.ci, %bb.cj, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  %i.ju = call noundef zeroext i1 @_ZNK12lldb_private12CompilerType13IsComplexTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %32) #20
  br i1 %i.ju, label %bb.ck, label %.thread302

bb.ck:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit202
  %i.jv = trunc nuw i8 %i.jn to i1
  br i1 %i.jv, label %bb.cl, label %.thread302

bb.cl:                                            ; preds = %bb.ck
  %i.jw = zext i8 %.5166.peel to i64
  %.not177 = icmp eq i64 %i.jm, %i.jw
  br label %.thread302

.thread302:                                       ; preds = %bb.cl, %bb.ck, %_ZN4llvm8ExpectedImED2Ev.exit202, %_ZN12lldb_private12CompilerTypeD2Ev.exit
  %i.jx = phi i1 [ false, %_ZN12lldb_private12CompilerTypeD2Ev.exit ], [ %.not177, %bb.cl ], [ false, %_ZN4llvm8ExpectedImED2Ev.exit202 ], [ true, %bb.ck ]
  %i.jy = load ptr, ptr %34, align 8, !tbaa !104  ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hq
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread302
  %i.ka = load i64, ptr %i.hq, align 8, !tbaa !38
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.thread302, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.7392 = lshr i8 %.5166.peel, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread, %bb.bp, %bb.bq, %bb.bo, %bb.bs, %bb.br, %bb.bv, %bb.bu
  %.9 = phi i8 [ 0, %bb.bv ], [ 0, %bb.bu ], [ %.7392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ 8, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ %spec.select, %bb.bt ], [ 0, %bb.br ], [ %.5166.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %.7377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ %.5166.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.3158 = phi i8 [ 0, %bb.bv ], [ 0, %bb.bu ], [ 4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ %i.hh, %bb.bq ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ %i.hm, %bb.bt ], [ 0, %bb.br ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.3152 = phi i1 [ false, %bb.bv ], [ false, %bb.bu ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread389 ], [ true, %bb.bq ], [ false, %bb.bp ], [ false, %bb.bo ], [ false, %bb.bs ], [ true, %bb.bt ], [ false, %bb.br ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !82 ; 4 uses
  %.not.i.i.i203 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i203, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12 ; 3 uses
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i204 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i.i204, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !19 ; 2 uses
  %i.kh = add nsw i32 %i.kg, -1
  store i32 %i.kh, ptr %i.ke, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205

bb.co:                                            ; preds = %bb.cm
  %i.ki = atomicrmw volatile add ptr %i.ke, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i206 = phi i32 [ %i.kg, %bb.cn ], [ %i.ki, %bb.co ]
  %i.kj = icmp eq i32 %.0.i.i.i.i.i206, 1
  br i1 %i.kj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205
  %i.kk = load ptr, ptr %i.kd, align 8, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #20, !inline_history !8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit._crit_edge.thread383
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  %i.kn = icmp ult i64 %.sroa.04.0.i183, 5
  br i1 %i.kn, label %bb.cu, label %bb.cr

.thread394:                                       ; preds = %bb.bk
  %i.ko = icmp ult i64 %.sroa.04.0.i183, 5
  br i1 %i.ko, label %bb.cu, label %.thread404

bb.cr:                                            ; preds = %bb.cq
  br i1 %.3152, label %.thread308, label %.thread404

.thread404:                                       ; preds = %.thread394, %bb.cr
  %i.kp = call fastcc noundef zeroext i1 @_ZL28GetReturnValuePassedInMemoryRN12lldb_private6ThreadEPNS_15RegisterContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef %i.ah, i64 noundef %.sroa.04.0.i183, ptr noundef nonnull align 8 dereferenceable(120) %11)
  br i1 %i.kp, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit, label %bb.cs

bb.cs:                                            ; preds = %.thread404
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ct:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cu:                                            ; preds = %.thread394, %bb.cq
  %.4153402 = phi i1 [ false, %.thread394 ], [ %.3152, %bb.cq ]
  %.4159400 = phi i8 [ 0, %.thread394 ], [ %.3158, %bb.cq ]
  %.10398 = phi i8 [ 0, %.thread394 ], [ %.9, %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  call void @_ZN12lldb_private13RegisterValueC2Ev(ptr noundef nonnull align 8 dereferenceable(344) %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.kq = call noundef i64 @_ZN12lldb_private15RegisterContext22ReadRegisterAsUnsignedEPKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef %i.az, i64 noundef 0) #20
  %i.kr = trunc i64 %i.kq to i32
  store i32 %i.kr, ptr %i.b, align 4, !tbaa !19
  %i.ks = trunc nuw nsw i64 %.sroa.04.0.i183 to i32
  call void @_ZN12lldb_private5Value8SetBytesEPKvi(ptr noundef nonnull align 8 dereferenceable(120) %11, ptr noundef nonnull %i.b, i32 noundef %i.ks) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @_ZN12lldb_private13RegisterValueD2Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  br i1 %.4153402, label %.thread308, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit

.thread308:                                       ; preds = %bb.bg, %bb.cr, %bb.aq, %bb.cu
  %.5160313 = phi i8 [ %.4159400, %bb.cu ], [ 2, %bb.bg ], [ %.3158, %bb.cr ], [ %i.ek, %bb.aq ] ; 2 uses
  %.11312 = phi i8 [ %.10398, %bb.cu ], [ %i.gl, %bb.bg ], [ %.9, %bb.cr ], [ 8, %bb.aq ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !82, !noalias !253, !nonnull !84, !noundef !84 ; 7 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 7 uses
  %i.kw = load atomic i32, ptr %i.kv monotonic, align 8, !noalias !253
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.thread308
  %.06.i.i.i.i.i.i209 = phi i32 [ %i.kw, %.thread308 ], [ %i.la, %bb.cv ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i210 = icmp ne i32 %.06.i.i.i.i.i.i209, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i210)
  %i.kx = add nsw i32 %.06.i.i.i.i.i.i209, 1
  %i.ky = cmpxchg weak ptr %i.kv, i32 %.06.i.i.i.i.i.i209, i32 %i.kx acq_rel monotonic, align 8, !noalias !253 ; 2 uses
  %i.kz = extractvalue { i32, i1 } %i.ky, 1
  %i.la = extractvalue { i32, i1 } %i.ky, 0
  br i1 %i.kz, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211, label %bb.cv, !llvm.loop !3

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211: ; preds = %bb.cv
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.lc = load atomic i32, ptr %i.kv monotonic, align 8, !noalias !253 ; 0 uses
  %i.ld = load ptr, ptr %i.lb, align 8, !tbaa !100, !noalias !253 ; 2 uses
  %i.le = call noundef i32 @_ZNK12lldb_private7Process12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(3224) %i.ld) #20 ; 2 uses
  %i.lf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 7 uses
  call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, i64 noundef %.sroa.04.0.i183, i8 noundef zeroext 0) #20
  %i.lg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 10 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 8 uses
  store i32 1, ptr %i.lh, align 8, !tbaa !40
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 12 ; 2 uses
  store i32 1, ptr %i.li, align 4, !tbaa !41
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lg, align 8, !tbaa !37
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store ptr %i.lf, ptr %i.lj, align 8, !tbaa !107
  %i.lk = zext i8 %.5160313 to i32
  %.not341 = icmp eq i8 %.5160313, 0
  br i1 %.not341, label %.thread315, label %.lr.ph328

.lr.ph328:                                        ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i211
  %i.ll = zext i8 %.11312 to i32                  ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %38, i64 28
  %i.lq = getelementptr inbounds nuw i8, ptr %38, i64 32 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %38, i64 80 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %38, i64 64
  %i.lu = getelementptr inbounds nuw i8, ptr %38, i64 72
  %i.lv = getelementptr inbounds nuw i8, ptr %38, i64 336
  br label %bb.cw

bb.cw:                                            ; preds = %bb.dg, %.lr.ph328
  %.0140327 = phi i32 [ 0, %.lr.ph328 ], [ %i.mx, %bb.dg ] ; 2 uses
  %.0141326 = phi i32 [ 0, %.lr.ph328 ], [ %.3, %bb.dg ] ; 6 uses
  switch i8 %.11312, label %.thread315.loopexit [
    i8 4, label %bb.cy
    i8 8, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %.sink = phi i32 [ 256, %bb.cx ], [ 64, %bb.cw ]
  %i.lw = add nuw nsw i32 %.0140327, %.sink
  %i.lx = call noundef ptr @_ZN12lldb_private15RegisterContext15GetRegisterInfoEN4lldb12RegisterKindEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i32 noundef 1, i32 noundef %i.lw) #20 ; 3 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %.thread315.loopexit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  store i32 0, ptr %38, align 8, !tbaa !65
  store i32 1, ptr %i.lm, align 8, !tbaa !66
  store i32 64, ptr %i.lo, align 8, !tbaa !67, !alias.scope !254
  store i64 0, ptr %i.ln, align 8, !alias.scope !254
  store i8 1, ptr %i.lp, align 4, !tbaa !68, !alias.scope !254
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 0.000000e+00) #20
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.lq, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #20
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !69
  store i64 256, ptr %i.lu, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ls, i8 0, i64 256, i1 false), !tbaa !38
  store i64 256, ptr %i.lt, align 8, !tbaa !71
  store i32 0, ptr %i.lv, align 8, !tbaa !72
  %i.lz = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 104
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = call noundef zeroext i1 %i.mb(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull %i.lx, ptr noundef nonnull align 8 dereferenceable(344) %38) #20
  br i1 %i.mc, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.md = add i32 %.0141326, %i.ll
  %i.me = zext i32 %i.md to i64
  %i.mf = load ptr, ptr %i.lf, align 8, !tbaa !37
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = call noundef i64 %i.mh(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #20
  %.not178 = icmp ult i64 %i.mi, %i.me
  br i1 %.not178, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %39) #20
  %i.mj = load ptr, ptr %i.lf, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call noundef ptr %i.ml(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #20, !inline_history !9
  %i.mn = zext i32 %.0141326 to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  %i.mp = call noundef i32 @_ZNK12lldb_private13RegisterValue15GetAsMemoryDataERKNS_12RegisterInfoEPvjN4lldb9ByteOrderERNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(344) %38, ptr noundef nonnull align 8 dereferenceable(80) %i.lx, ptr noundef %i.mo, i32 noundef %i.ll, i32 noundef %i.le, ptr noundef nonnull align 8 dereferenceable(40) %39) #20 ; 2 uses
  %.not179 = icmp ne i32 %i.mp, %i.ll             ; 2 uses
  %i.mq = select i1 %.not179, i32 0, i32 %i.mp
  %.1 = add i32 %i.mq, %.0141326
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %39) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.3146 = phi i1 [ true, %bb.cz ], [ %.not179, %bb.db ], [ false, %bb.da ]
  %.3 = phi i32 [ %.0141326, %bb.cz ], [ %.1, %bb.db ], [ %.0141326, %bb.da ] ; 2 uses
  %i.mr = load ptr, ptr %i.lr, align 8, !tbaa !69 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, %i.ls
end_hunk_0
