Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86WinEHState?download=true
inline.NumInlined: 2250
inline.NumDeleted: 1306
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_120WinEHStateFnPassImpl13runOnFunctionERN4llvm8FunctionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.uc = ptrtoint ptr %44 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %40, align 8
  %.sroa.2485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.uc, ptr %.sroa.2485.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.ud = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %41, i32 noundef 16006, ptr null, i64 0, ptr nonnull %i.j, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %43, ptr noundef nonnull byval(%"class.llvm::ArrayRef.166") align 8 %39, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %40) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !242 ; 3 uses
  %.not.i20 = icmp eq ptr %i.uf, null
  br i1 %.not.i20, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl31emitExceptionRegistrationRecordEPN4llvm8FunctionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 40
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !252
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 48
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 32
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !166 ; 4 uses
  %i.ul = icmp eq ptr %i.uk, %i.ui
  %i.um = getelementptr inbounds i8, ptr %i.uk, i64 -24 ; 2 uses
  %spec.select.i.i136.i = select i1 %i.ul, ptr null, ptr %i.um
  %i.un = getelementptr inbounds i8, ptr %i.uk, i64 -16
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !204
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !235, !nonnull !49, !align !162
  %i.uq = getelementptr inbounds nuw i8, ptr %45, i64 88 ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %45, i64 96 ; 3 uses
  store ptr null, ptr %45, align 8, !tbaa !169
  %i.us = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 2 uses
  store ptr %i.up, ptr %i.us, align 8, !tbaa !172
  %i.ut = getelementptr inbounds nuw i8, ptr %45, i64 40
  store ptr %i.uq, ptr %i.ut, align 8, !tbaa !173
  %i.uu = getelementptr inbounds nuw i8, ptr %45, i64 48
  store ptr %i.ur, ptr %i.uu, align 8, !tbaa !175
  %i.uv = getelementptr inbounds nuw i8, ptr %45, i64 56
  store ptr null, ptr %i.uv, align 8, !tbaa !177
  %i.uw = getelementptr inbounds nuw i8, ptr %45, i64 64
  store i32 0, ptr %i.uw, align 8, !tbaa !188
  %i.ux = getelementptr inbounds nuw i8, ptr %45, i64 68
  store i8 0, ptr %i.ux, align 4, !tbaa !189
  %i.uy = getelementptr inbounds nuw i8, ptr %45, i64 69
  store i8 2, ptr %i.uy, align 1, !tbaa !190
  %i.uz = getelementptr inbounds nuw i8, ptr %45, i64 70
  store i8 7, ptr %i.uz, align 2, !tbaa !191
  %i.va = getelementptr inbounds nuw i8, ptr %45, i64 72
  %i.vb = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.va, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr %i.uq, align 8, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.ur, align 8, !tbaa !192
  %i.vc = getelementptr inbounds nuw i8, ptr %spec.select.i.i136.i, i64 24
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !252
  store ptr %i.ve, ptr %i.vb, align 8, !tbaa !194
  %i.vf = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr %i.vc, ptr %i.vf, align 8
  %.sroa.4.0..sroa_idx.i.i138.i = getelementptr inbounds nuw i8, ptr %45, i64 24
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i138.i, align 8
  %i.vg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.um) #18
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !195
  store i64 %i.vh, ptr %45, align 8, !tbaa !195
  %i.vi = load ptr, ptr %i.ue, align 8, !tbaa !242
  %i.vj = load ptr, ptr %i.us, align 8, !tbaa !196, !nonnull !49, !align !162
  %i.vk = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.vj, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #18
  %i.vl = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i16 257, ptr %i.vl, align 8
  %i.vm = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %45, i32 noundef 51, ptr noundef %i.vi, ptr noundef %i.vk, ptr noundef nonnull align 8 dereferenceable(34) %46, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store ptr %i.vm, ptr %i.k, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #18
  %i.vn = getelementptr inbounds nuw i8, ptr %47, i64 32
  store i16 257, ptr %i.vn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18
  %i.vo = ptrtoint ptr %48 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %38, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 %i.vo, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.vp = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %45, i32 noundef 16005, ptr null, i64 0, ptr nonnull %i.k, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %47, ptr noundef nonnull byval(%"class.llvm::ArrayRef.166") align 8 %37, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %38) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ur) #18
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.uq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl31emitExceptionRegistrationRecordEPN4llvm8FunctionE.exit
  %i.vq = load i32, ptr %i.ar, align 8, !tbaa !55
  %.off.i.i = add i32 %i.vq, -7
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvm24calculateSEHStateNumbersEPKNS_8FunctionERNS_13WinEHFuncInfoE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(720) %126) #18
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @_ZN4llvm29calculateWinCXXEHStateNumbersEPKNS_8FunctionERNS_13WinEHFuncInfoE(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(720) %126) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18
  call void @_ZN4llvm15colorEHFuncletsERNS_8FunctionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::DenseMap.187") align 8 %49, ptr noundef nonnull align 8 dereferenceable(140) %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  store ptr %1, ptr %i.l, align 8, !tbaa !257
  %i.vr = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  store ptr %i.vr, ptr %50, align 8, !tbaa !258
  %i.vs = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 5 uses
  store i32 0, ptr %i.vs, align 8, !tbaa !259
  %i.vt = getelementptr inbounds nuw i8, ptr %50, i64 12
  store i32 8, ptr %i.vt, align 4, !tbaa !260
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_8FunctionENS_11GraphTraitsIS2_EEE10InitializeERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %52, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  %i.vu = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 5 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 4 uses
  store i64 8, ptr %i.vv, align 8, !tbaa !261
  %i.vw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 2 uses
  store ptr %i.vw, ptr %53, align 8, !tbaa !267
  %i.vx = load i64, ptr %i.vv, align 8, !tbaa !261
  %i.vy = add i64 %i.vx, -1
  %i.vz = lshr i64 %i.vy, 1
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vz ; 3 uses
  %i.wb = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #19 ; 6 uses
  store ptr %i.wb, ptr %i.wa, align 8, !tbaa !268
  %i.wc = getelementptr inbounds nuw i8, ptr %53, i64 40 ; 5 uses
  store ptr %i.wa, ptr %i.wc, align 8, !tbaa !269
  %i.wd = getelementptr inbounds nuw i8, ptr %53, i64 24 ; 3 uses
  store ptr %i.wb, ptr %i.wd, align 8, !tbaa !270
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 512 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 4 uses
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !271
  %i.wg = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 8 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %53, i64 72 ; 5 uses
  store ptr %i.wa, ptr %i.wh, align 8, !tbaa !269
  %i.wi = getelementptr inbounds nuw i8, ptr %53, i64 56 ; 3 uses
  store ptr %i.wb, ptr %i.wi, align 8, !tbaa !270
  %i.wj = getelementptr inbounds nuw i8, ptr %53, i64 64 ; 4 uses
  store ptr %i.we, ptr %i.wj, align 8, !tbaa !271
  store ptr %i.wb, ptr %i.vu, align 8, !tbaa !272
  store ptr %i.wb, ptr %i.wg, align 8, !tbaa !273
  %i.wk = load ptr, ptr %50, align 8, !tbaa !258, !noalias !274 ; 2 uses
  %i.wl = load i32, ptr %i.vs, align 8, !tbaa !259, !noalias !49 ; 2 uses
  %.not524578.i = icmp eq i32 %i.wl, 0
  br i1 %.not524578.i, label %._crit_edge605.thread.i, label %.lr.ph582.i

.lr.ph582.i:                                      ; preds = %bb.aj
  %i.wm = zext i32 %i.wl to i64
  %.idx.i = shl nuw nsw i64 %i.wm, 3
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx.i
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 9 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %49, i64 20 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %126, i64 24 ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %126, i64 32 ; 4 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %126, i64 44 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %126, i64 48 ; 7 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %126, i64 56 ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %126, i64 68 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %126, i64 64 ; 6 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  br label %bb.ak

.preheader.i:                                     ; preds = %_ZNSt5dequeIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit.i
  %.pre663.i.a = load ptr, ptr %i.wg, align 8, !tbaa !279
  %.pre664.i.a = load ptr, ptr %i.vu, align 8, !tbaa !279 ; 2 uses
  %i.xb = icmp eq ptr %.pre663.i.a, %.pre664.i.a
  br i1 %i.xb, label %._crit_edge588.i, label %.lr.ph587.i

.lr.ph587.i:                                      ; preds = %.preheader.i
  %i.xc = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.xd = getelementptr inbounds nuw i8, ptr %51, i64 20
  %i.xe = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.xf = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.xg = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  br label %bb.br

bb.ak:                                            ; preds = %_ZNSt5dequeIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph582.i
  %.sroa.0475.0580.i = phi ptr [ %i.wn, %.lr.ph582.i ], [ %i.xi, %_ZNSt5dequeIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit.i ]
  %.0503579.i = phi i32 [ undef, %.lr.ph582.i ], [ %.2505.lcssa.i, %_ZNSt5dequeIPN4llvm10BasicBlockESaIS2_EE9push_backERKS2_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.xi = getelementptr inbounds i8, ptr %.sroa.0475.0580.i, i64 -8 ; 3 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !280 ; 4 uses
  store ptr %i.xj, ptr %i.m, align 8, !tbaa !280
  %i.xk = load ptr, ptr %i.as, align 8, !tbaa !26
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 -24
  %i.xm = icmp eq ptr %i.xl, %i.xj
  br i1 %i.xm, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.xn = load i32, ptr %i.wo, align 4, !tbaa !206 ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.1504.i = phi i32 [ %i.xn, %bb.al ], [ %.0503579.i, %bb.ak ] ; 2 uses
  %.0.i21 = phi i32 [ %i.xn, %bb.al ], [ -2147483648, %bb.ak ] ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 56
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 48 ; 2 uses
  %.sroa.0465.0570.i = load ptr, ptr %i.xo, align 8, !tbaa !166 ; 2 uses
  %.not532571.i = icmp eq ptr %.sroa.0465.0570.i, %i.xp
  br i1 %.not532571.i, label %._crit_edge.i, label %.lr.ph.i22

._crit_edge.i:                                    ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i, %bb.am
  %.2505.lcssa.i = phi i32 [ %.1504.i, %bb.am ], [ %.3506.i, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.i21, %bb.am ], [ %.3.i, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i ] ; 2 uses
  %i.xq = icmp eq i32 %.1.lcssa.i, -2147483648
  br i1 %i.xq, label %bb.bn, label %bb.bq

.lr.ph.i22:                                       ; preds = %bb.am, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i
  %.sroa.0465.0574.i = phi ptr [ %.sroa.0465.0.i, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i ], [ %.sroa.0465.0570.i, %bb.am ] ; 7 uses
  %.1573.i = phi i32 [ %.3.i, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i ], [ %.0.i21, %bb.am ] ; 6 uses
  %.2505572.i = phi i32 [ %.3506.i, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i ], [ %.1504.i, %bb.am ] ; 4 uses
  %i.xr = getelementptr inbounds i8, ptr %.sroa.0465.0574.i, i64 -24 ; 6 uses
  %i.xs = load i8, ptr %i.xr, align 8, !tbaa !54
  switch i8 %i.xs, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i: ; preds = %.lr.ph.i22, %.lr.ph.i22, %.lr.ph.i22
  %i.xt = load i32, ptr %i.ar, align 8, !tbaa !55
  %i.xu = getelementptr i8, ptr %.sroa.0465.0574.i, i64 -56 ; 2 uses
  %.val.i.i = load ptr, ptr %i.xu, align 8, !tbaa !281 ; 5 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.sroa.0465.0574.i, i64 56 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.xv, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i
  %i.xw = load i8, ptr %.val.i.i, align 8, !tbaa !54
  %i.xx = icmp eq i8 %i.xw, 14
  br i1 %i.xx, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i.i: ; preds = %bb.an
  %i.xy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !285
  %i.ya = icmp eq ptr %i.xz, %.val5.i.i
  br i1 %i.ya, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i.i
  %i.yb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.yc = load i32, ptr %i.yb, align 8
  %i.yd = and i32 %i.yc, 8192
  %.not.i.i.i.i33 = icmp eq i32 %i.yd, 0
  br i1 %.not.i.i.i.i33, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i, label %_ZL15isSehScopeBeginRKN4llvm8CallBaseE.exit.i.i

_ZL15isSehScopeBeginRKN4llvm8CallBaseE.exit.i.i:  ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 36
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !286
  %i.yg = and i32 %i.yf, -2
  %switch.i34 = icmp eq i32 %i.yg, 340
  br i1 %switch.i34, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.thread.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i

_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i: ; preds = %_ZL15isSehScopeBeginRKN4llvm8CallBaseE.exit.i.i, %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i.i, %bb.an, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i
  %.off.i.i.i = add i32 %i.xt, -7
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0465.0574.i, i64 48
  %i.yi = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.yh, i32 noundef 45) #18
  br i1 %i.yi, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i, label %.split.i

.split.i:                                         ; preds = %bb.ao
  %i.yj = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.xr, i32 noundef 45) #18
  br i1 %i.yj, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.thread.i

_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.i: ; preds = %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i.i
  %i.yk = call noundef zeroext i1 @_ZNK4llvm8CallBase19doesNotAccessMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %i.xr) #18
  br i1 %i.yk, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread.i, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.thread.i

_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.i, %.split.i, %_ZL15isSehScopeBeginRKN4llvm8CallBaseE.exit.i.i
  %i.yl = load i8, ptr %i.xr, align 8, !tbaa !54
  %i.ym = icmp eq i8 %i.yl, 36                    ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.ym, ptr %i.xr, ptr null ; 4 uses
  br i1 %i.ym, label %bb.ap, label %bb.bc

bb.ap:                                            ; preds = %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl18isStateStoreNeededEN4llvm13EHPersonalityERNS1_8CallBaseE.exit.thread.i
  %.val.i141.i = load ptr, ptr %i.xu, align 8, !tbaa !281 ; 5 uses
  %.val11.i.i = load ptr, ptr %i.xv, align 8
  %.not.i.i.i.i.i.i142.i = icmp eq ptr %.val.i141.i, null
  br i1 %.not.i.i.i.i.i.i142.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i143.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.yn = load i8, ptr %.val.i141.i, align 8, !tbaa !54
  %i.yo = icmp eq i8 %i.yn, 14
  br i1 %i.yo, label %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i144.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i143.i

_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i144.i: ; preds = %bb.aq
  %i.yp = getelementptr inbounds nuw i8, ptr %.val.i141.i, i64 24
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !285
  %i.yr = icmp eq ptr %i.yq, %.val11.i.i
  br i1 %i.yr, label %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i145.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i143.i

_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i145.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i144.i
  %i.ys = getelementptr inbounds nuw i8, ptr %.val.i141.i, i64 32
  %i.yt = load i32, ptr %i.ys, align 8
  %i.yu = and i32 %i.yt, 8192
  %.not.i.i.i146.i = icmp eq i32 %i.yu, 0
  br i1 %.not.i.i.i146.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i143.i, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.i147.i

_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.i147.i: ; preds = %_ZNK4llvm8CallBase17getCalledFunctionEv.exit.i.i.i145.i
  %i.yv = getelementptr inbounds nuw i8, ptr %.val.i141.i, i64 36
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !286
  %i.yx = icmp eq i32 %i.yw, 341
  br i1 %i.yx, label %bb.ar, label %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.thread.i143.i

bb.ar:                                            ; preds = %_ZL13isSehScopeEndRKN4llvm8CallBaseE.exit.i147.i
  %i.yy = getelementptr inbounds i8, ptr %.sroa.0465.0574.i, i64 -120
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !281
  %.val13.i.i = load i32, ptr %i.wo, align 4, !tbaa !206 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.yz, ptr %i.a, align 8, !tbaa !280
  %i.za = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i62 = extractvalue { ptr, i8 } %i.za, 0
  %i.zb = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i62, i64 8
  %.0.copyload.i.i.i.i.i.i.i63 = load i64, ptr %i.zb, align 8 ; 3 uses
  %i.zc = and i64 %.0.copyload.i.i.i.i.i.i.i63, 4
  %i.zd = icmp eq i64 %i.zc, 0
  br i1 %i.zd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ze = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i63 to ptr
  br label %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i64

bb.at:                                            ; preds = %bb.ar
  %i.zf = and i64 %.0.copyload.i.i.i.i.i.i.i63, -5
  %i.zg = inttoptr i64 %i.zf to ptr
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !258
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !280
  br label %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i64

_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i64: ; preds = %bb.at, %bb.as
  %.0.i.i65 = phi ptr [ %i.ze, %bb.as ], [ %i.zi, %bb.at ]
  %i.zj = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i65) #18
  %.fca.0.extract.i66 = extractvalue { ptr, i64 } %i.zj, 0
  %i.zk = getelementptr inbounds i8, ptr %.fca.0.extract.i66, i64 -24 ; 3 uses
  %i.zl = load i8, ptr %i.zk, align 8, !tbaa !54
  %i.zm = add i8 %i.zl, -85
  %i.zn = icmp ult i8 %i.zm, -2                   ; 2 uses
  %spec.select.i.i.i.i67 = select i1 %i.zn, ptr null, ptr %i.zk
  br i1 %i.zn, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl17getBaseStateForBBERN4llvm8DenseMapIPNS1_10BasicBlockENS1_13TinyPtrVectorIS4_EENS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_S6_EEEERNS1_13WinEHFuncInfoES4_.exit78, label %bb.au

bb.au:                                            ; preds = %_ZNK4llvm13TinyPtrVectorIPNS_10BasicBlockEE5frontEv.exit.i64
  %i.zo = load ptr, ptr %i.ws, align 8, !tbaa !287, !noalias !290 ; 3 uses
  %i.zp = load ptr, ptr %i.wt, align 8, !tbaa !299, !noalias !290 ; 2 uses
  %i.zq = load i32, ptr %i.wu, align 4, !tbaa !300, !noalias !290 ; 4 uses
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %.loopexit.i.i.i68, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.zs = add i32 %i.zq, -1                       ; 2 uses
  %i.zt = ptrtoint ptr %i.zk to i64
  %i.zu = mul i64 %i.zt, -4658895280553007687     ; 2 uses
  %i.zv = lshr i64 %i.zu, 31
  %i.zw = xor i64 %i.zv, %i.zu
  %i.zx = trunc i64 %i.zw to i32
  %i.zy = and i32 %i.zs, %i.zx                    ; 3 uses
  %i.zz = zext i32 %i.zy to i64                   ; 2 uses
  %i.aaa = lshr i64 %i.zz, 5
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.aaa
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !301, !noalias !302
  %i.aad = and i32 %i.zy, 31
  %i.aae = lshr i32 %i.aac, %i.aad
  %i.aaf = trunc i32 %i.aae to i1
  br i1 %i.aaf, label %.lr.ph.i.i.i.i.i74, label %.loopexit.i.i.i68, !prof !303

.lr.ph.i.i.i.i.i74:                               ; preds = %bb.av, %bb.aw
  %i.aag = phi i64 [ %i.aam, %bb.aw ], [ %i.zz, %bb.av ]
  %.01117.i.i.i.i.i75 = phi i32 [ %i.aal, %bb.aw ], [ %i.zy, %bb.av ]
  %i.aah = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %i.aag ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !304, !noalias !302
  %i.aaj = icmp eq ptr %spec.select.i.i.i.i67, %i.aai
  br i1 %i.aaj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit.i76, label %bb.aw, !prof !306

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i74
  %i.aak = add nuw i32 %.01117.i.i.i.i.i75, 1
  %i.aal = and i32 %i.aak, %i.zs                  ; 3 uses
  %i.aam = zext i32 %i.aal to i64                 ; 2 uses
  %i.aan = lshr i64 %i.aam, 5
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !301, !noalias !302
  %i.aaq = and i32 %i.aal, 31
  %i.aar = lshr i32 %i.aap, %i.aaq
  %i.aas = trunc i32 %i.aar to i1
  br i1 %i.aas, label %.lr.ph.i.i.i.i.i74, label %.loopexit.i.i.i68, !prof !307

.loopexit.i.i.i68:                                ; preds = %bb.aw, %bb.av, %bb.au
  %i.aat = zext i32 %i.zq to i64                  ; 2 uses
  %i.aau = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %i.aat
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i69

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit.i76: ; preds = %.lr.ph.i.i.i.i.i74
  %.pre.i77 = zext i32 %i.zq to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i69

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.i69: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit.i76, %.loopexit.i.i.i68
  %.pre-phi.i70 = phi i64 [ %.pre.i77, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit.i76 ], [ %i.aat, %.loopexit.i.i.i68 ]
  %.lcssa.sink.i.i.i71 = phi ptr [ %i.aah, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_14FuncletPadInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit.i76 ], [ %i.aau, %.loopexit.i.i.i68 ] ; 2 uses
  %i.aav = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %.pre-phi.i70
  %.not.i72 = icmp eq ptr %.lcssa.sink.i.i.i71, %i.aav
  br i1 %.not.i72, label %_ZN12_GLOBAL__N_120WinEHStateFnPassImpl17getBaseStateForBBERN4llvm8DenseMapIPNS1_10BasicBlockENS1_13TinyPtrVectorIS4_EENS1_12DenseMapInfoIS4_vEENS1_6detail12DenseMapPairIS4_S6_EEEERNS1_13WinEHFuncInfoES4_.exit78, label %bb.ax

end_hunk_0
