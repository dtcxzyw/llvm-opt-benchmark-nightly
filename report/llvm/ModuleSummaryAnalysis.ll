Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleSummaryAnalysis?download=true
inline.NumInlined: 6745
inline.NumDeleted: 3963
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm23buildModuleSummaryIndexERKNS_6ModuleESt8functionIFPNS_18BlockFrequencyInfoERKNS_8FunctionEEEPNS_18ProfileSummaryInfoES3_IFPKNS_15StackSafetyInfoES8_EE:bb.a
  br i1 %.not.i37.i, label %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0293.0396, i64 24
  %i.mf = load i8, ptr %i.me, align 8
  %i.mg = trunc i8 %i.mf to i1
  br i1 %i.mg, label %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i, label %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.thread.i

_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.thread.i: ; preds = %bb.ah
  %.val93.i = load ptr, ptr %20, align 8, !tbaa !33 ; 2 uses
  %i.mh = zext i32 %i.md to i64
  %.idx.i94.i = shl nuw nsw i64 %i.mh, 3
  %i.mi = getelementptr inbounds nuw i8, ptr %.val93.i, i64 %.idx.i94.i
  br label %.lr.ph.i.i117

_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i: ; preds = %bb.ah
  %i.mj = getelementptr inbounds i8, ptr %.sroa.0293.0396, i64 -96
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !176
  call fastcc void @_ZL16findFuncPointersPKN4llvm8ConstantEmRKNS_6ModuleERNS_18ModuleSummaryIndexERSt6vectorINS_14VirtFuncOffsetESaIS9_EERKNS_14GlobalVariableE(ptr noundef %i.mk, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(89) %i.lh)
  %.val36.pre.i = load i32, ptr %i.fx, align 8, !tbaa !73 ; 2 uses
  %.val.i = load ptr, ptr %20, align 8, !tbaa !33 ; 2 uses
  %i.ml = zext i32 %.val36.pre.i to i64
  %.idx.i.i120 = shl nuw nsw i64 %i.ml, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i.i120
  %.not7.i.i = icmp eq i32 %.val36.pre.i, 0
  br i1 %.not7.i.i, label %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i, label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.thread.i
  %i.mn = phi ptr [ %i.mi, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.thread.i ], [ %i.mm, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i ]
  %.val96.i = phi ptr [ %.val93.i, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.thread.i ], [ %.val.i, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i ]
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i, %.lr.ph.i.i117
  %.08.i.i = phi ptr [ %.val96.i, %.lr.ph.i.i117 ], [ %i.oq, %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i ] ; 2 uses
  %i.mo = load ptr, ptr %.08.i.i, align 8, !tbaa !178 ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -16 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8            ; 2 uses
  %i.mr = and i64 %i.mq, 2
  %.not.i.i.i.i118 = icmp eq i64 %i.mr, 0
  br i1 %.not.i.i.i.i118, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ms = getelementptr inbounds i8, ptr %i.mo, i64 -32
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !33
  br label %_ZNK4llvm6MDNode10getOperandEj.exit20.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.mu = lshr i64 %i.mq, 2
  %i.mv = and i64 %i.mu, 15
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mp, i64 %i.mw
  br label %_ZNK4llvm6MDNode10getOperandEj.exit20.i.i

_ZNK4llvm6MDNode10getOperandEj.exit20.i.i:        ; preds = %bb.ak, %bb.aj
  %.pn.i.i = phi ptr [ %i.mx, %bb.ak ], [ %i.mt, %bb.aj ] ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.my = load ptr, ptr %.in.i.i, align 8, !tbaa !181 ; 2 uses
  %i.mz = load ptr, ptr %.pn.i.i, align 8, !tbaa !181
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 136
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !55 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !57
  %i.nf = icmp ult i32 %i.ne, 65
  %i.ng = load ptr, ptr %i.nc, align 8
  %spec.select.i.i.i38.i = select i1 %i.nf, ptr %i.nc, ptr %i.ng
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i38.i, align 8, !tbaa !47 ; 2 uses
  %i.nh = load i8, ptr %i.my, align 4, !tbaa !182
  %.not6.i.i = icmp eq i8 %i.nh, 0
  br i1 %.not6.i.i, label %bb.al, label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i

bb.al:                                            ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit20.i.i
  %i.ni = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.my) #23 ; 2 uses
  %i.nj = extractvalue { ptr, i64 } %i.ni, 0
  %i.nk = extractvalue { ptr, i64 } %i.ni, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.nl = call { ptr, i64 } @_ZN4llvm17UniqueStringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr %i.nj, i64 %i.nk) #23 ; 2 uses
  %i.nm = extractvalue { ptr, i64 } %i.nl, 0
  store ptr %i.nm, ptr %7, align 8
  %i.nn = extractvalue { ptr, i64 } %i.nl, 1
  store i64 %i.nn, ptr %i.gk, align 8
  %i.no = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIN4llvm9StringRefESt6vectorINS0_22TypeIdOffsetVtableInfoESaIS3_EESt4lessIvESaISt4pairIKS1_S5_EEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.np = call i64 @_ZN4llvm18ModuleSummaryIndex20getOrInsertValueInfoEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(89) %i.lh) ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 4 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !641 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !185
  %.not.i.i22.i.i = icmp eq ptr %i.nr, %i.nt
  br i1 %.not.i.i22.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i64 %.0.i.i.i.i, ptr %i.nr, align 8, !tbaa !141
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i64 %i.np, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !47
  %i.nu = load ptr, ptr %i.nq, align 8, !tbaa !641
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store ptr %i.nv, ptr %i.nq, align 8, !tbaa !641
  br label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.nw = load ptr, ptr %i.no, align 8, !tbaa !186 ; 5 uses
  %i.nx = ptrtoint ptr %i.nr to i64
  %i.ny = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.nz = sub i64 %i.nx, %i.ny                    ; 3 uses
  %i.oa = icmp eq i64 %i.nz, 9223372036854775792
  br i1 %i.oa, label %bb.ao, label %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #26
  unreachable

_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.an
  %i.ob = ashr exact i64 %i.nz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ob, i64 1)
  %i.oc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ob ; 2 uses
  %i.od = icmp ult i64 %i.oc, %i.ob
  %i.oe = call i64 @llvm.umin.i64(i64 %i.oc, i64 576460752303423487)
  %i.of = select i1 %i.od, i64 576460752303423487, i64 %i.oe ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.of, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.og = shl nuw nsw i64 %i.of, 4
  %i.oh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.og) #25 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.nz ; 2 uses
  store i64 %.0.i.i.i.i, ptr %i.oi, align 8, !tbaa !141
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i64 %i.np, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !tbaa !47
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.nw, %i.nr
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.oh, %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.oj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.nw, %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !642, !alias.scope !643
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.oj, %i.nr
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !481

_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.oh, %_ZNKSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.ok, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  %i.om = load ptr, ptr %i.ns, align 8, !tbaa !185
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = sub i64 %i.on, %i.ny
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef %i.oo) #24
  br label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  store ptr %i.oh, ptr %i.no, align 8, !tbaa !186
  store ptr %i.ol, ptr %i.nq, align 8, !tbaa !641
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %i.of
  store ptr %i.op, ptr %i.ns, align 8, !tbaa !185
  br label %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i

_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i: ; preds = %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, %bb.am, %_ZNK4llvm6MDNode10getOperandEj.exit20.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %.not.i39.i = icmp eq ptr %i.oq, %i.mn
  br i1 %.not.i39.i, label %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i, label %bb.ai

_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i: ; preds = %_ZNSt6vectorIN4llvm22TypeIdOffsetVtableInfoESaIS1_EE9push_backEOS1_.exit.i.i, %_ZL18computeVTableFuncsRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERKNS_6ModuleERSt6vectorINS_14VirtFuncOffsetESaIS9_EE.exit.i, %bb.ag, %bb.af
  %i.or = getelementptr inbounds i8, ptr %.sroa.0293.0396, i64 -16
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !644
  %.not.i119 = icmp eq ptr %i.os, null
  br i1 %.not.i119, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i
  %i.ot = load i32, ptr %.phi.trans.insert.i, align 8
  %i.ou = and i32 %i.ot, 15
  %i.ov = icmp eq i32 %i.ou, 6
  br i1 %i.ov, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ow = call noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(89) %i.lh, i1 noundef zeroext true) #23
  br i1 %i.ow, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ox = load i32, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.oy = and i32 %i.ox, 15
  %i.oz = icmp eq i32 %i.oy, 1
  br i1 %i.oz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pa = and i32 %i.ox, 768
  %i.pb = icmp ne i32 %i.pa, 512
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i
  %i.pc = phi i1 [ false, %bb.as ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %_ZL38recordTypeIdCompatibleVtableReferencesRN4llvm18ModuleSummaryIndexERKNS_14GlobalVariableERNS_15SmallVectorImplIPNS_6MDNodeEEE.exit.i ], [ %i.pb, %bb.at ] ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.0293.0396, i64 24
  %i.pe = load i8, ptr %i.pd, align 8
  %i.pf = trunc i8 %i.pe to i1                    ; 2 uses
  %not..i = xor i1 %i.pf, true
  %i.pg = and i1 %i.pc, %not..i
  %i.ph = call noundef i32 @_ZNK4llvm12GlobalObject18getVCallVisibilityEv(ptr noundef nonnull align 8 dereferenceable(89) %i.lh) #23
  %i.pi = zext i1 %i.pc to i32
  %i.pj = select i1 %i.pg, i32 2, i32 0
  %i.pk = shl i32 %i.ph, 3
  %i.pl = and i32 %i.pk, 24
  %35 = select i1 %i.pf, i32 4, i32 %i.pj
  %i.pm = or disjoint i32 %i.pl, %i.pi
  %.sroa.062.0.insert.ext.i = or disjoint i32 %i.pm, %35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.pn = load i32, ptr %i.gl, align 8, !tbaa !189, !noalias !645 ; 3 uses
  %i.po = icmp eq i32 %i.pn, 0
  br i1 %i.po, label %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pp = shl i32 %i.pn, 2
  %i.pq = load i32, ptr %i.gm, align 4, !tbaa !190, !noalias !645 ; 5 uses
  %i.pr = icmp ult i32 %i.pp, %i.pq
  %i.ps = icmp ugt i32 %i.pq, 64
  %or.cond.i.i.i.i = and i1 %i.pr, %i.ps
  br i1 %or.cond.i.i.i.i, label %_ZNK4llvm8DenseMapINS_9ValueInfoENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i.i, label %bb.az

_ZNK4llvm8DenseMapINS_9ValueInfoENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i.i: ; preds = %bb.av
  %i.pt = add i32 %i.pn, -1
  %i.pu = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pt, i1 false)
  %i.pv = sub nuw nsw i32 33, %i.pu
  %i.pw = shl nuw i32 1, %i.pv                    ; 2 uses
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.pw, i32 64) ; 3 uses
  %.not.i51.i = icmp eq i32 %i.pw, %i.pq
  br i1 %.not.i51.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK4llvm8DenseMapINS_9ValueInfoENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i.i
  store i32 0, ptr %i.gl, align 8, !tbaa !189, !noalias !645
  %i.px = load ptr, ptr %i.gn, align 8, !tbaa !191, !noalias !645
  %i.py = zext i32 %.sroa.speculated.i.i.i to i64
  %i.pz = add nuw nsw i64 %i.py, 31
  %i.qa = lshr i64 %i.pz, 3
  %i.qb = and i64 %i.qa, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.px, i8 0, i64 %i.qb, i1 false), !noalias !645
  br label %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i

bb.ax:                                            ; preds = %_ZNK4llvm8DenseMapINS_9ValueInfoENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i.i
  %.sroa.39.0.insert.ext.i.i.i = zext i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.qc = load ptr, ptr %8, align 8, !tbaa !192, !noalias !645
  %i.qd = zext i32 %i.pq to i64                   ; 2 uses
  %i.qe = shl nuw nsw i64 %i.qd, 3
  %i.qf = add nuw nsw i64 %i.qd, 31
  %i.qg = lshr i64 %i.qf, 3
  %i.qh = and i64 %i.qg, 1073741820
  %i.qi = add nuw nsw i64 %i.qh, %i.qe
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qc, i64 noundef %i.qi, i64 noundef 8) #23, !noalias !645
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 16, i1 false), !noalias !645
  store i32 %.sroa.speculated.i.i.i, ptr %i.gm, align 4, !tbaa !190, !noalias !645
  %i.qj = shl nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 3
  %i.qk = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i.i, 31
  %i.ql = lshr i64 %i.qk, 3
  %i.qm = and i64 %i.ql, 1073741820
  %i.qn = add nuw nsw i64 %i.qm, %i.qj
  %i.qo = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.qn, i64 noundef 8) #23, !noalias !645 ; 2 uses
  %i.qp = load i32, ptr %i.gm, align 4, !tbaa !190, !noalias !645 ; 2 uses
  %i.qq = zext i32 %i.qp to i64                   ; 2 uses
  %i.qr = shl nuw nsw i64 %i.qq, 3
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qr ; 2 uses
  store ptr %i.qo, ptr %8, align 8, !tbaa !192, !noalias !645
  store ptr %i.qs, ptr %i.gn, align 8, !tbaa !191, !noalias !645
  store i32 0, ptr %i.gl, align 8, !tbaa !189, !noalias !645
  %.not.i.i.i52.i = icmp eq i32 %i.qp, 0
  br i1 %.not.i.i.i52.i, label %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.qt = add nuw nsw i64 %i.qq, 31
  %i.qu = lshr i64 %i.qt, 3
  %i.qv = and i64 %i.qu, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qs, i8 0, i64 %i.qv, i1 false), !noalias !645
  br label %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i

bb.az:                                            ; preds = %bb.av
  %i.qw = load ptr, ptr %i.gn, align 8, !tbaa !191, !noalias !645
  %i.qx = zext i32 %i.pq to i64
  %i.qy = add nuw nsw i64 %i.qx, 31
  %i.qz = lshr i64 %i.qy, 3
  %i.ra = and i64 %i.qz, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.qw, i8 0, i64 %i.ra, i1 false), !noalias !645
  store i32 0, ptr %i.gl, align 8, !tbaa !189, !noalias !645
  br label %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i

_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.au
  store ptr %i.go, ptr %11, align 8, !tbaa !33, !alias.scope !645
  store i32 0, ptr %i.gp, align 8, !tbaa !73, !alias.scope !645
  store i32 0, ptr %i.gq, align 4, !tbaa !74, !alias.scope !645
  %i.rb = load i32, ptr %i.gd, align 8, !tbaa !73, !noalias !645
  %.not.i.i.i40.i = icmp eq i32 %i.rb, 0
  br i1 %.not.i.i.i40.i, label %_ZN4llvm9SetVectorINS_9ValueInfoENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EE10takeVectorEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i
  %i.rc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_9ValueInfoEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.gb) ; 0 uses
  br label %_ZN4llvm9SetVectorINS_9ValueInfoENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EE10takeVectorEv.exit.i

_ZN4llvm9SetVectorINS_9ValueInfoENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EE10takeVectorEv.exit.i: ; preds = %bb.ba, %_ZN4llvm6detail12DenseSetImplINS_9ValueInfoENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5clearEv.exit.i.i
  %i.rd = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25, !noalias !646 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18GlobalValueSummaryE, i64 16), ptr %i.rd, align 8, !tbaa !28, !noalias !646
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store i32 2, ptr %i.re, align 8, !tbaa !201, !noalias !646
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 12 ; 3 uses
  store i32 %.masked.masked.masked.i.i, ptr %i.rf, align 4, !noalias !646
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 40 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, i8 0, i64 24, i1 false), !noalias !646
  store ptr %i.ri, ptr %i.rh, align 8, !tbaa !33, !noalias !646
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  store i32 0, ptr %i.rj, align 8, !tbaa !73, !noalias !646
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 52
  store i32 0, ptr %i.rk, align 4, !tbaa !74, !noalias !646
  %i.rl = load i32, ptr %i.gp, align 8, !tbaa !73, !noalias !646
  %.not.i.i.i.i.i41.i = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i.i.i.i41.i, label %_ZSt11make_uniqueIN4llvm16GlobalVarSummaryEJRNS0_18GlobalValueSummary7GVFlagsERNS1_9GVarFlagsENS0_11SmallVectorINS0_9ValueInfoELj0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm9SetVectorINS_9ValueInfoENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EE10takeVectorEv.exit.i
  %i.rm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_9ValueInfoEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.rh, ptr noundef nonnull align 8 dereferenceable(16) %11), !noalias !646 ; 0 uses
  br label %_ZSt11make_uniqueIN4llvm16GlobalVarSummaryEJRNS0_18GlobalValueSummary7GVFlagsERNS1_9GVarFlagsENS0_11SmallVectorINS0_9ValueInfoELj0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i

_ZSt11make_uniqueIN4llvm16GlobalVarSummaryEJRNS0_18GlobalValueSummary7GVFlagsERNS1_9GVarFlagsENS0_11SmallVectorINS0_9ValueInfoELj0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.bb, %_ZN4llvm9SetVectorINS_9ValueInfoENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EE10takeVectorEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm16GlobalVarSummaryE, i64 16), ptr %i.rd, align 8, !tbaa !28, !noalias !646
  store ptr null, ptr %i.ri, align 8, !tbaa !204, !noalias !646
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rd, i64 64
  store i32 %.sroa.062.0.insert.ext.i, ptr %i.rn, align 8, !noalias !646
  %i.ro = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.go
  br i1 %i.rp, label %_ZN4llvm11SmallVectorINS_9ValueInfoELj0EED2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZSt11make_uniqueIN4llvm16GlobalVarSummaryEJRNS0_18GlobalValueSummary7GVFlagsERNS1_9GVarFlagsENS0_11SmallVectorINS0_9ValueInfoELj0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  call void @free(ptr noundef %i.ro) #23
  br label %_ZN4llvm11SmallVectorINS_9ValueInfoELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9ValueInfoELj0EED2Ev.exit.i: ; preds = %bb.bc, %_ZSt11make_uniqueIN4llvm16GlobalVarSummaryEJRNS0_18GlobalValueSummary7GVFlagsERNS1_9GVarFlagsENS0_11SmallVectorINS0_9ValueInfoELj0EEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %cond.fr91.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm11SmallVectorINS_9ValueInfoELj0EED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.rq = call noundef i64 @_ZNK4llvm11GlobalValue7getGUIDEv(ptr noundef nonnull align 8 dereferenceable(89) %i.lh) #23
  store i64 %i.rq, ptr %i.c, align 8, !tbaa !141
  %i.rr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !647 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN4llvm11SmallVectorINS_9ValueInfoELj0EED2Ev.exit.i
  br i1 %i.lm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.rs = load i16, ptr %i.rf, align 4
  %i.rt = or i16 %i.rs, 64
  store i16 %i.rt, ptr %i.rf, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ru = load ptr, ptr %10, align 8, !tbaa !648  ; 2 uses
  %i.rv = load ptr, ptr %i.gr, align 8, !tbaa !648 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EED2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rx = ptrtoint ptr %i.rv to i64
  %i.ry = ptrtoint ptr %i.ru to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 3 uses
  %i.sa = icmp ugt i64 %i.rz, 9223372036854775792
  br i1 %i.sa, label %bb.bi, label %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i, !prof !206

bb.bi:                                            ; preds = %bb.bh
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %bb.bh
  %i.sb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rz) #25 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz
  %i.sd = load ptr, ptr %10, align 8, !tbaa !648  ; 2 uses
  %i.se = load ptr, ptr %i.gr, align 8, !tbaa !648 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.sd, %i.se
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.sg, %.lr.ph.i.i.i.i.i.i ], [ %i.sb, %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.sf, %.lr.ph.i.i.i.i.i.i ], [ %i.sd, %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !207
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i43.i = icmp eq ptr %i.sf, %i.se
  br i1 %.not.i.i.i.i.i43.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !492

_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.sb, %_ZNSt12_Vector_baseIN4llvm14VirtFuncOffsetESaIS1_EEC2EmRKS2_.exit.i.i ], [ %i.sg, %.lr.ph.i.i.i.i.i.i ]
  %i.sh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25, !noalias !649 ; 4 uses
  store ptr %i.sb, ptr %i.sh, align 8, !tbaa !209, !noalias !649
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.si, align 8, !tbaa !210, !noalias !649
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  store ptr %i.sc, ptr %i.sj, align 8, !tbaa !211, !noalias !649
  %i.sk = load ptr, ptr %i.ri, align 8, !tbaa !212 ; 4 uses
  store ptr %i.sh, ptr %i.ri, align 8, !tbaa !212
  %.not.i.i.i.i.i44.i = icmp eq ptr %i.sk, null
  br i1 %.not.i.i.i.i.i44.i, label %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN4llvm14VirtFuncOffsetESaIS1_EEC2ERKS3_.exit.i
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !209 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIN4llvm14VirtFuncOffsetESaIS2_EEEclEPS4_.exit.i.i.i.i.i.i, label %bb.bk

end_hunk_0
