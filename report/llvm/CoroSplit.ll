Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoroSplit?download=true
inline.NumInlined: 5449
inline.NumDeleted: 3129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm13CoroSplitPass3runERNS_13LazyCallGraph3SCCERNS_15AnalysisManagerIS2_JRS1_EEES5_RNS_17CGSCCUpdateResultE:bb.a
  %i.ku = call { ptr, i64 } @_ZNK4llvm10BasicBlock19getFirstInsertionPtEv(ptr noundef nonnull align 8 dereferenceable(80) %i.kt) #18 ; 2 uses
  %.fca.0.extract1.i.i.i.i = extractvalue { ptr, i64 } %i.ku, 0 ; 4 uses
  %.fca.1.extract2.i.i.i.i = extractvalue { ptr, i64 } %i.ku, 1
  %.not.i.i.i.i.i = icmp eq ptr %.fca.0.extract1.i.i.i.i, null
  %i.kv = getelementptr inbounds i8, ptr %.fca.0.extract1.i.i.i.i, i64 -24
  %i.kw = getelementptr inbounds nuw i8, ptr %.fca.0.extract1.i.i.i.i, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !99
  store ptr %i.kx, ptr %i.cn, align 8, !tbaa !107
  store ptr %.fca.0.extract1.i.i.i.i, ptr %i.co, align 8
  %i.ky = trunc i64 %.fca.1.extract2.i.i.i.i to i16
  %.sroa.4.0.extract.trunc.i.i.i.i = select i1 %.not.i.i.i.i.i, i16 0, i16 %i.ky
  store i16 %.sroa.4.0.extract.trunc.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.kz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kv) #18
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !108
  store i64 %i.la, ptr %35, align 8, !tbaa !108
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18
  %i.lb = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !255
  call void @_ZN4llvm4coro11LowererBaseC1ERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 8 dereferenceable(1288) %i.lc) #18
  %.sroa.0.0.copyload.i84.i.i.i = load ptr, ptr %i.co, align 8
  %i.ld = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i84.i.i.i, i64 -24
  %i.le = call noundef ptr @_ZN4llvm4coro11LowererBase13makeSubFnCallEPNS_5ValueEiPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull %.sink109.i.i.i, i32 noundef 0, ptr noundef nonnull %i.ld) #18
  %i.lf = load ptr, ptr %i.ce, align 8, !tbaa !212, !nonnull !78, !align !111 ; 2 uses
  %i.lg = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lf) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.lh = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, i32 noundef 0) #18
  store ptr %i.lh, ptr %i.d, align 8, !tbaa !247
  %i.li = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.lg, ptr nonnull %i.d, i64 1, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %.sink109.i.i.i, ptr %i.e, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #18
  store i16 257, ptr %i.ct, align 8
  %i.lj = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(104) %35, ptr noundef %i.li, ptr noundef %i.le, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %34, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.lk = load i32, ptr %i.hk, align 8, !tbaa !165 ; 2 uses
  %i.ll = load i32, ptr %i.hl, align 4, !tbaa !166
  %.not.i87.i.i.i = icmp ult i32 %i.lk, %i.ll
  br i1 %.not.i87.i.i.i, label %bb.ag, label %bb.af, !prof !204

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef %i.lj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE9push_backES2_.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.lm = zext i32 %i.lk to i64
  %i.ln = load ptr, ptr %i.hj, align 8, !tbaa !164
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm
  store ptr %i.lj, ptr %i.lo, align 1
  %i.lp = load i32, ptr %i.hk, align 8, !tbaa !165
  %i.lq = add i32 %i.lp, 1
  store i32 %i.lq, ptr %i.hk, align 8, !tbaa !165
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE9push_backES2_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE9push_backES2_.exit.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %_ZL17lowerAwaitSuspendRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_20CoroAwaitSuspendInstERNS_4coro5ShapeE.exit.i.i

_ZL17lowerAwaitSuspendRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_20CoroAwaitSuspendInstERNS_4coro5ShapeE.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE9push_backES2_.exit.i.i.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i
  %.1.i.i.i = phi ptr [ %i.lj, %_ZN4llvm23SmallVectorTemplateBaseIPNS_8CallInstELb1EE9push_backES2_.exit.i.i.i ], [ %.sink109.i.i.i, %_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEEDaPT0_.exit.i.i.i.i ]
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef %.1.i.i.i) #18
  %i.lr = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hm) #18 ; 0 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ls, %i.hi
  br i1 %.not.i.i73, label %_ZL18lowerAwaitSuspendsRN4llvm8FunctionERNS_4coro5ShapeE.exit.i, label %bb.r

_ZL18lowerAwaitSuspendsRN4llvm8FunctionERNS_4coro5ShapeE.exit.i: ; preds = %_ZL17lowerAwaitSuspendRN4llvm9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPNS_20CoroAwaitSuspendInstERNS_4coro5ShapeE.exit.i.i, %_ZNKSt8functionIFSt10unique_ptrIN4llvm4coro7BaseABIESt14default_deleteIS3_EERNS1_8FunctionERNS2_5ShapeEEEclES8_SA_.exit
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #18
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.lt = getelementptr inbounds nuw i8, ptr %i.hb, i64 312 ; 5 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !167
  %.not.i43.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i43.i, label %bb.ah, label %_ZL21simplifySuspendPointsRN4llvm4coro5ShapeE.exit.i

bb.ah:                                            ; preds = %_ZL18lowerAwaitSuspendsRN4llvm8FunctionERNS_4coro5ShapeE.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.hb, i64 152 ; 5 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.hb, i64 160 ; 4 uses
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !165 ; 2 uses
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_ZL21simplifySuspendPointsRN4llvm4coro5ShapeE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ah
  %i.lz = zext i32 %i.lx to i64
  br label %.outer

.outer:                                           ; preds = %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, %.preheader.i.i
  %.030.i.i.ph = phi i64 [ %i.uw, %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i ], [ 0, %.preheader.i.i ] ; 6 uses
  %.028.i.i.ph = phi i64 [ %.028.i.i, %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i ], [ %i.lz, %.preheader.i.i ]
  %.0.i.i.ph = phi i64 [ %.0.i.i, %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i ], [ -1, %.preheader.i.i ]
  br label %bb.ai

bb.ai:                                            ; preds = %.outer, %bb.ca
  %.028.i.i = phi i64 [ %i.uf, %bb.ca ], [ %.028.i.i.ph, %.outer ] ; 4 uses
  %.0.i.i = phi i64 [ %spec.select.i.i, %bb.ca ], [ %.0.i.i.ph, %.outer ] ; 4 uses
  %i.ma = load ptr, ptr %i.lv, align 8, !tbaa !164
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.030.i.i.ph
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !213 ; 7 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4
  %i.mf = and i32 %i.me, 268435455
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = sub nsw i64 0, %i.mg
  %i.mi = getelementptr inbounds [32 x i8], ptr %i.mc, i64 %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !97
  %i.ml = call noundef zeroext i1 @_ZNK4llvm8Constant10isOneValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mk) #18
  br i1 %i.ml, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mm = load ptr, ptr %i.hb, align 8, !tbaa !152
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mc, i64 24 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !99 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 56
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !229
  %i.ms = icmp eq ptr %i.mn, %i.mr
  br i1 %i.ms, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.mt = call noundef ptr @_ZNK4llvm10BasicBlock20getSinglePredecessorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.mp) #18 ; 2 uses
  %.not55.not.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not55.not.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.pn.in.i.i.i = phi ptr [ %i.mn, %bb.aj ], [ %i.mu, %bb.al ]
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8 ; 9 uses
  %.146.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -24 ; 3 uses
  %i.mv = load i8, ptr %.146.i.i.i, align 8, !tbaa !209
  switch i8 %i.mv, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i: ; preds = %bb.am, %bb.am, %bb.am
  %i.mw = getelementptr inbounds i8, ptr %.pn.i.i.i, i64 -56 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !97
  %i.my = call noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mx) #18 ; 8 uses
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !209
  %i.na = icmp eq i8 %i.mz, 88
  br i1 %i.na, label %bb.an, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

bb.an:                                            ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
  %i.nb = getelementptr inbounds i8, ptr %i.my, i64 -32
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nd = load i8, ptr %i.nc, align 8, !tbaa !209
  %i.ne = icmp eq i8 %i.nd, 14
  br i1 %i.ne, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ng = load i32, ptr %i.nf, align 8
  %i.nh = and i32 %i.ng, 8192
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %_ZN4llvm14CastIsPossibleINS_13CoroSubFnInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i.i

_ZN4llvm14CastIsPossibleINS_13CoroSubFnInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i.i: ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 36
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !228
  %i.nk = icmp eq i32 %i.nj, 68
  br i1 %i.nk, label %_ZN4llvm8dyn_castINS_13CoroSubFnInstENS_5ValueEEEDcPT0_.exit.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm8dyn_castINS_13CoroSubFnInstENS_5ValueEEEDcPT0_.exit.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13CoroSubFnInstEPNS_5ValueEvE10isPossibleERKS3_.exit.i.i.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.my, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = and i32 %i.nm, 268435455
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = sub nsw i64 0, %i.no                    ; 3 uses
  %i.nq = getelementptr inbounds [32 x i8], ptr %i.my, i64 %i.np
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !97
  %.not58.i.i.i = icmp eq ptr %i.nr, %i.mm
  br i1 %.not58.i.i.i, label %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm8dyn_castINS_13CoroSubFnInstENS_5ValueEEEDcPT0_.exit.i.i.i
  %i.ns = load i32, ptr %i.md, align 4
  %i.nt = and i32 %i.ns, 268435455
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = sub nsw i64 0, %i.nu
  %i.nw = getelementptr inbounds [32 x i8], ptr %i.mc, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !97 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !99 ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !99 ; 5 uses
  %i.oc = icmp eq ptr %i.nz, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !229 ; 4 uses
  br i1 %i.oc, label %.preheader.preheader.i.i.i.i, label %.preheader127.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.not29.not.i.i.i.i.i = icmp eq ptr %i.oe, %.pn.i.i.i
  br i1 %.not29.not.i.i.i.i.i, label %_ZL15hasCallsBetweenPN4llvm11InstructionES1_.exit.thread73.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.preheader.i.i.i.i, %bb.ar
  %.sroa.017.030.i.i.i.i.i = phi ptr [ %.sroa.017.0.i.i.i.i.i, %bb.ar ], [ %i.oe, %.preheader.preheader.i.i.i.i ] ; 3 uses
  %i.of = getelementptr inbounds i8, ptr %.sroa.017.030.i.i.i.i.i, i64 -24
  %i.og = load i8, ptr %i.of, align 8, !tbaa !209
  switch i8 %i.og, label %bb.ar [
    i8 88, label %bb.ap
    i8 42, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
    i8 36, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.oh = getelementptr inbounds i8, ptr %.sroa.017.030.i.i.i.i.i, i64 -56
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !209
  %i.ok = icmp eq i8 %i.oj, 14
  br i1 %i.ok, label %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = and i32 %i.om, 8192
  %.not27.i.i.i.i.i = icmp eq i32 %i.on, 0
  br i1 %.not27.i.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.017.030.i.i.i.i.i, i64 8
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %i.oo, align 8 ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq ptr %.sroa.017.0.i.i.i.i.i, %.pn.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZL15hasCallsBetweenPN4llvm11InstructionES1_.exit.thread73.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader127.i.i.i.i:                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEEPKNS_5ValueEEEbRKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %44 = getelementptr inbounds nuw i8, ptr %i.nz, i64 48 ; 2 uses
  %.not29.not.i86.i.i.i.i = icmp eq ptr %i.oe, %44
  br i1 %.not29.not.i86.i.i.i.i, label %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i, label %.lr.ph.i87.i.i.i.i

.lr.ph.i87.i.i.i.i:                               ; preds = %.preheader127.i.i.i.i, %bb.au
  %.sroa.017.030.i88.i.i.i.i = phi ptr [ %.sroa.017.0.i93.i.i.i.i, %bb.au ], [ %i.oe, %.preheader127.i.i.i.i ] ; 3 uses
  %i.op = getelementptr inbounds i8, ptr %.sroa.017.030.i88.i.i.i.i, i64 -24
  %i.oq = load i8, ptr %i.op, align 8, !tbaa !209
  switch i8 %i.oq, label %bb.au [
    i8 88, label %bb.as
    i8 42, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
    i8 36, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
  ]

bb.as:                                            ; preds = %.lr.ph.i87.i.i.i.i
  %i.or = getelementptr inbounds i8, ptr %.sroa.017.030.i88.i.i.i.i, i64 -56
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i90.i.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i90.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ot = load i8, ptr %i.os, align 8, !tbaa !209
  %i.ou = icmp eq i8 %i.ot, 14
  br i1 %i.ou, label %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i91.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i91.i.i.i.i: ; preds = %bb.at
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 32
  %i.ow = load i32, ptr %i.ov, align 8
  %i.ox = and i32 %i.ow, 8192
  %.not27.i92.i.i.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not27.i92.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i91.i.i.i.i, %.lr.ph.i87.i.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.017.030.i88.i.i.i.i, i64 8
  %.sroa.017.0.i93.i.i.i.i = load ptr, ptr %i.oy, align 8 ; 2 uses
  %.not.not.i94.i.i.i.i = icmp eq ptr %.sroa.017.0.i93.i.i.i.i, %44
  br i1 %.not.not.i94.i.i.i.i, label %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i, label %.lr.ph.i87.i.i.i.i

_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i: ; preds = %bb.au, %.preheader127.i.i.i.i
  %i.oz = call { ptr, i64 } @_ZNK4llvm10BasicBlock16getFirstNonPHIItEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ob) #18
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i64 } %i.oz, 0 ; 2 uses
  %.not29.not.i101.i.i.i.i = icmp eq ptr %.fca.0.extract.i.i.i.i, %.pn.i.i.i
  br i1 %.not29.not.i101.i.i.i.i, label %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit110.i.i.i.i, label %.lr.ph.i102.i.i.i.i

.lr.ph.i102.i.i.i.i:                              ; preds = %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i, %bb.ax
  %.sroa.017.030.i103.i.i.i.i = phi ptr [ %.sroa.017.0.i108.i.i.i.i, %bb.ax ], [ %.fca.0.extract.i.i.i.i, %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i ] ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %.sroa.017.030.i103.i.i.i.i, i64 -24
  %i.pb = load i8, ptr %i.pa, align 8, !tbaa !209
  switch i8 %i.pb, label %bb.ax [
    i8 88, label %bb.av
    i8 42, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
    i8 36, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i
  ]

bb.av:                                            ; preds = %.lr.ph.i102.i.i.i.i
  %i.pc = getelementptr inbounds i8, ptr %.sroa.017.030.i103.i.i.i.i, i64 -56
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !97 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i105.i.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i105.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pe = load i8, ptr %i.pd, align 8, !tbaa !209
  %i.pf = icmp eq i8 %i.pe, 14
  br i1 %i.pf, label %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i106.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i

_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i106.i.i.i.i: ; preds = %bb.aw
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  %i.ph = load i32, ptr %i.pg, align 8
  %i.pi = and i32 %i.ph, 8192
  %.not27.i107.i.i.i.i = icmp eq i32 %i.pi, 0
  br i1 %.not27.i107.i.i.i.i, label %_ZL20simplifySuspendPointPN4llvm15CoroSuspendInstEPNS_13CoroBeginInstE.exit.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm3isaIJNS_13IntrinsicInstEENS_11InstructionEEEbRKT0_.exit.i106.i.i.i.i, %.lr.ph.i102.i.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.017.030.i103.i.i.i.i, i64 8
  %.sroa.017.0.i108.i.i.i.i = load ptr, ptr %i.pj, align 8 ; 2 uses
  %.not.not.i109.i.i.i.i = icmp eq ptr %.sroa.017.0.i108.i.i.i.i, %.pn.i.i.i
  br i1 %.not.not.i109.i.i.i.i, label %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit110.i.i.i.i, label %.lr.ph.i102.i.i.i.i

_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit110.i.i.i.i: ; preds = %bb.ax, %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit95.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store ptr %.ptr115.i.i.i.i.i, ptr %28, align 8, !tbaa !752
  store i32 8, ptr %i.cv, align 8, !tbaa !754
  store i8 1, ptr %i.cx, align 8, !tbaa !755
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store ptr %i.cy, ptr %29, align 8, !tbaa !164
  store i32 8, ptr %i.da, align 4, !tbaa !166
  store i32 1, ptr %i.cw, align 4, !tbaa !756, !noalias !765
  store ptr %i.nz, ptr %.ptr115.i.i.i.i.i, align 8, !tbaa !230, !noalias !765
  store ptr %i.ob, ptr %i.cy, align 8
  br label %.lr.ph128.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i
  %i.pk = load i32, ptr %i.cz, align 8, !tbaa !165 ; 2 uses
  %.not.i32.i.i.i.i.i = icmp eq i32 %i.pk, 0
  br i1 %.not.i32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph128.i.i.i.i.i, !llvm.loop !678

.lr.ph128.i.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i.i, %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit110.i.i.i.i
  %i.pl = phi i32 [ %i.pk, %.loopexit.i.i.i.i.i ], [ 1, %_ZL22hasCallsInBlockBetweenN4llvm14iterator_rangeINS_21ilist_iterator_w_bitsINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvLb1ENS_10BasicBlockEEELb0ELb0EEEEE.exit110.i.i.i.i ] ; 2 uses
  %i.pm = load ptr, ptr %29, align 8, !tbaa !164
  %i.pn = zext i32 %i.pl to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.pn
  %i.pp = getelementptr inbounds i8, ptr %i.po, i64 -8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !352 ; 4 uses
  %i.pr = add i32 %i.pl, -1
  store i32 %i.pr, ptr %i.cz, align 8, !tbaa !165
  %i.ps = load i8, ptr %i.cx, align 8, !tbaa !755, !range !77, !noalias !766, !noundef !78
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.ay, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i33.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph128.i.i.i.i.i
  %i.pu = load ptr, ptr %28, align 8, !tbaa !752, !noalias !766 ; 2 uses
  %i.pv = load i32, ptr %i.cw, align 4, !tbaa !756, !noalias !766 ; 4 uses
  %i.pw = zext i32 %i.pv to i64
  %.idx.i.i48.i.i.i.i.i = shl nuw nsw i64 %i.pw, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.idx.i.i48.i.i.i.i.i ; 2 uses
  %.not22.i.i49.i.i.i.i.i = icmp eq i32 %i.pv, 0
  br i1 %.not22.i.i49.i.i.i.i.i, label %._crit_edge.i.i55.i.i.i.i.i, label %.lr.ph.i.i50.i.i.i.i.i

.lr.ph.i.i50.i.i.i.i.i:                           ; preds = %bb.ay, %.critedge.i.i53.i.i.i.i.i
  %.023.i.i51.i.i.i.i.i = phi ptr [ %i.pz, %.critedge.i.i53.i.i.i.i.i ], [ %i.pu, %bb.ay ] ; 2 uses
  %i.py = load ptr, ptr %.023.i.i51.i.i.i.i.i, align 8, !tbaa !230, !noalias !766
  %.not15.i.i52.i.i.i.i.i = icmp eq ptr %i.py, %i.pq
  br i1 %.not15.i.i52.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i, label %.critedge.i.i53.i.i.i.i.i

.critedge.i.i53.i.i.i.i.i:                        ; preds = %.lr.ph.i.i50.i.i.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %.023.i.i51.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i54.i.i.i.i.i = icmp eq ptr %i.pz, %i.px
  br i1 %.not.i.i54.i.i.i.i.i, label %._crit_edge.i.i55.i.i.i.i.i, label %.lr.ph.i.i50.i.i.i.i.i

._crit_edge.i.i55.i.i.i.i.i:                      ; preds = %.critedge.i.i53.i.i.i.i.i, %bb.ay
  %i.qa = load i32, ptr %i.cv, align 8, !tbaa !754, !noalias !766
  %i.qb = icmp ult i32 %i.pv, %i.qa
  br i1 %i.qb, label %bb.az, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i33.i.i.i.i.i

bb.az:                                            ; preds = %._crit_edge.i.i55.i.i.i.i.i
  %i.qc = add nuw i32 %i.pv, 1
  store i32 %i.qc, ptr %i.cw, align 4, !tbaa !756, !noalias !766
  store ptr %i.pq, ptr %i.px, align 8, !tbaa !230, !noalias !766
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i33.i.i.i.i.i: ; preds = %._crit_edge.i.i55.i.i.i.i.i, %.lr.ph128.i.i.i.i.i
  %i.qd = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %28, ptr noundef %i.pq) #18, !noalias !766 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i

_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i: ; preds = %.lr.ph.i.i50.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i33.i.i.i.i.i, %bb.az
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %.sroa.099.0123.i.i.i.i.i = load ptr, ptr %i.qe, align 8, !tbaa !92 ; 2 uses
  %.not124.i.i.i.i.i = icmp eq ptr %.sroa.099.0123.i.i.i.i.i, null
  br i1 %.not124.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph126.i.i.i.i.i

.lr.ph126.i.i.i.i.i:                              ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i
  %.sroa.099.0125.i.i.i.i.i = phi ptr [ %.sroa.099.0.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i ], [ %.sroa.099.0123.i.i.i.i.i, %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit60.i.i.i.i.i ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.099.0125.i.i.i.i.i, i64 24
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !208
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 40
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !99 ; 4 uses
  %i.qj = load i8, ptr %i.cx, align 8, !tbaa !755, !range !77, !noundef !78
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %bb.ba, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.i.i.i.i.i

bb.ba:                                            ; preds = %.lr.ph126.i.i.i.i.i
  %i.ql = load ptr, ptr %28, align 8, !tbaa !752  ; 2 uses
  %i.qm = load i32, ptr %i.cw, align 4, !tbaa !756 ; 2 uses
  %i.qn = zext i32 %i.qm to i64
  %.idx.i.i62.i.i.i.i.i = shl nuw nsw i64 %i.qn, 3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %.idx.i.i62.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not17.i.i.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i, label %.lr.ph.i.i63.i.i.i.i.i

bb.bb:                                            ; preds = %.lr.ph.i.i63.i.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i65.i.i.i.i.i = icmp eq ptr %i.qp, %i.qo
  br i1 %.not.i.i65.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i, label %.lr.ph.i.i63.i.i.i.i.i

.lr.ph.i.i63.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bb
  %.01218.i.i.i.i.i.i.i = phi ptr [ %i.qp, %bb.bb ], [ %i.ql, %bb.ba ] ; 2 uses
  %i.qq = load ptr, ptr %.01218.i.i.i.i.i.i.i, align 8, !tbaa !230
  %.not15.i.i64.i.i.i.i.i = icmp eq ptr %i.qq, %i.qi
  br i1 %.not15.i.i64.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i, label %bb.bb

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.i.i.i.i.i: ; preds = %.lr.ph126.i.i.i.i.i
  %i.qr = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %28, ptr noundef %i.qi) #18
  %.not116.i.i.i.i.i = icmp eq ptr %i.qr, null
  br i1 %.not116.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i: ; preds = %bb.bb, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.i.i.i.i.i, %bb.ba
  %i.qs = load i32, ptr %i.cz, align 8, !tbaa !165 ; 2 uses
  %i.qt = load i32, ptr %i.da, align 4, !tbaa !166
  %.not.i66.i.i.i.i.i = icmp ult i32 %i.qs, %i.qt
  br i1 %.not.i66.i.i.i.i.i, label %bb.bd, label %bb.bc, !prof !204

bb.bc:                                            ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef %i.qi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i

bb.bd:                                            ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.thread.i.i.i.i.i
  %i.qu = zext i32 %i.qs to i64
  %i.qv = load ptr, ptr %29, align 8, !tbaa !164
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qu
  store ptr %i.qi, ptr %i.qw, align 1
  %i.qx = load i32, ptr %i.cz, align 8, !tbaa !165
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.cz, align 8, !tbaa !165
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit67.i.i.i.i.i: ; preds = %.lr.ph.i.i63.i.i.i.i.i, %bb.bd, %bb.bc, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE8containsEPKS1_.exit.i.i.i.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.099.0125.i.i.i.i.i, i64 8
  %.sroa.099.0.i.i.i.i.i = load ptr, ptr %i.qz, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i44.i = icmp eq ptr %.sroa.099.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i44.i, label %.loopexit.i.i.i.i.i, label %.lr.ph126.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.loopexit.i.i.i.i.i
  %.pre137.i.i.i.i.i = load i8, ptr %i.cx, align 8, !tbaa !755, !range !77
  %i.ra = trunc nuw i8 %.pre137.i.i.i.i.i to i1
  br i1 %i.ra, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.rb = load ptr, ptr %28, align 8, !tbaa !752  ; 3 uses
  %i.rc = load i32, ptr %i.cw, align 4, !tbaa !756 ; 3 uses
  %i.rd = zext i32 %i.rc to i64
  %.idx.i.i68.i.i.i.i.i = shl nuw nsw i64 %i.rd, 3
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.idx.i.i68.i.i.i.i.i
  %.not1923.i.i.i.i.i.i.i = icmp eq i32 %i.rc, 0
  br i1 %.not1923.i.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i.i.i.i.i, label %.lr.ph.i.i69.i.i.i.i.i

.lr.ph.i.i69.i.i.i.i.i:                           ; preds = %bb.be, %.critedge.i.i70.i.i.i.i.i
  %.01524.i.i.i.i.i.i.i = phi ptr [ %i.rg, %.critedge.i.i70.i.i.i.i.i ], [ %i.rb, %bb.be ] ; 3 uses
  %i.rf = load ptr, ptr %.01524.i.i.i.i.i.i.i, align 8, !tbaa !230
  %.not20.i.i.i.i.i.i.i = icmp eq ptr %i.rf, %i.nz
  br i1 %.not20.i.i.i.i.i.i.i, label %bb.bf, label %.critedge.i.i70.i.i.i.i.i

.critedge.i.i70.i.i.i.i.i:                        ; preds = %.lr.ph.i.i69.i.i.i.i.i
  %i.rg = getelementptr inbounds nuw i8, ptr %.01524.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not19.i.i.i.i.i.i.i = icmp eq ptr %i.rg, %i.re
  br i1 %.not19.i.i.i.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5eraseES2_.exit.i.i.i.i.i, label %.lr.ph.i.i69.i.i.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i69.i.i.i.i.i
  %i.rh = add i32 %i.rc, -1                       ; 2 uses
  store i32 %i.rh, ptr %i.cw, align 4, !tbaa !756
end_hunk_0
