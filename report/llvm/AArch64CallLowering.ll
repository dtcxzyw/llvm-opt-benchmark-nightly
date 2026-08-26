Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64CallLowering?download=true
inline.NumInlined: 2125
inline.NumDeleted: 1059
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm19AArch64CallLowering9lowerCallERNS_16MachineIRBuilderERNS_12CallLowering16CallLoweringInfoE:bb.a
  %i.bh = extractvalue { ptr, ptr } %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !243
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !235
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !232
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !111, !nonnull !94, !align !223
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.bn) #18
  %i.bp = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #18
  store ptr %i.bp, ptr %i.bb, align 8, !tbaa !262
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.0174289, i64 160 ; 2 uses
  %.not179 = icmp eq ptr %i.bq, %i.ac
  br i1 %.not179, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %._crit_edge
  %i.br = load i32, ptr %2, align 8, !tbaa !742
  call void @_ZNK4llvm12CallLowering17splitToValueTypesERKNS0_7ArgInfoERNS_15SmallVectorImplIS1_EERKNS_10DataLayoutEjPNS4_INS_8TypeSizeEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(156) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(912) %i.g, i32 noundef %i.br, ptr noundef null) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.bs = call noundef zeroext i1 @_ZNK4llvm19AArch64CallLowering33isEligibleForTailCallOptimizationERNS_16MachineIRBuilderERNS_12CallLowering16CallLoweringInfoERNS_15SmallVectorImplINS3_7ArgInfoEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(5424) %2, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 5384
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !786, !range !93, !noundef !94
  %i.bv = trunc nuw i8 %i.bu to i1
  %.not = xor i1 %i.bv, true
  %or.cond = or i1 %i.bs, %.not
  br i1 %or.cond, label %bb.j, label %bb.br

bb.j:                                             ; preds = %bb.i
  %i.bw = zext i1 %i.bs to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 5385
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !760
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = call noundef zeroext i1 @_ZNK4llvm19AArch64CallLowering13lowerTailCallERNS_16MachineIRBuilderERNS_12CallLowering16CallLoweringInfoERNS_15SmallVectorImplINS3_7ArgInfoEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(5424) %2, ptr noundef nonnull align 8 dereferenceable(16) %15)
  br label %bb.br

bb.l:                                             ; preds = %bb.j
  %i.bz = load i32, ptr %2, align 8, !tbaa !742   ; 2 uses
  %i.ca = call noundef ptr @_ZNK4llvm21AArch64TargetLowering17CCAssignFnForCallEjb(ptr noundef nonnull align 8 dereferenceable(518448) %i.i, i32 noundef %i.bz, i1 noundef zeroext false) #18 ; 2 uses
  %i.cb = call noundef ptr @_ZNK4llvm21AArch64TargetLowering17CCAssignFnForCallEjb(ptr noundef nonnull align 8 dereferenceable(518448) %i.i, i32 noundef %i.bz, i1 noundef zeroext true) #18 ; 2 uses
  %i.cc = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 364) #18 ; 2 uses
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1
  %i.cf = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr %i.cd, ptr %i.ce) #18 ; 2 uses
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 5344 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !805 ; 6 uses
  %.not180 = icmp eq ptr %i.cj, null
  br i1 %.not180, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !806
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !330
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !259
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = and i32 %i.cq, 255
  %i.cs = icmp eq i32 %i.cr, 7
  br i1 %i.cs, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !noalias !819
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i: ; preds = %bb.n
  %i.cw = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cj) #18, !noalias !819
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %.pr.i.i.i = load i32, ptr %i.ct, align 4, !noalias !819
  %i.cy = icmp slt i32 %.pr.i.i.i, 0
  br i1 %i.cy, label %bb.o, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i

bb.o:                                             ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i
  %i.cz = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cj) #18, !noalias !819 ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  %i.dd = ptrtoint ptr %i.dc to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i: ; preds = %bb.o, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i, %bb.n
  %.0.i.i3.i.i.i = phi ptr [ %i.cx, %bb.o ], [ %i.cx, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i ], [ null, %bb.n ]
  %.0.i.i1.i.i.i = phi i64 [ %i.dd, %bb.o ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i ], [ 0, %bb.n ]
  %i.de = ptrtoint ptr %.0.i.i3.i.i.i to i64
  %i.df = sub i64 %.0.i.i1.i.i.i, %i.de           ; 2 uses
  %i.dg = and i64 %i.df, 68719476720
  %.not12.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not12.i.i, label %.loopexit, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i
  %i.dh = lshr exact i64 %i.df, 4
  %i.di = and i64 %i.dh, 4294967295
  br label %.critedge.i.i

bb.p:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.di
  br i1 %.not.i.i, label %.loopexit, label %.critedge.i.i, !llvm.loop !822

.critedge.i.i:                                    ; preds = %bb.p, %.critedge.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.critedge.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 2 uses
  %i.dj = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cj) #18, !noalias !823
  %i.dk = extractvalue { ptr, i64 } %i.dj, 0
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !826, !noalias !829
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !100, !noalias !819
  %.not8.i.i = icmp eq i32 %i.do, 14
  br i1 %.not8.i.i, label %_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit, label %bb.p

_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit: ; preds = %.critedge.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 5376
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !832, !range !93, !noundef !94
  %i.dr = trunc nuw i8 %i.dq to i1
  %spec.select = select i1 %i.dr, i32 490, i32 493 ; 2 uses
  %i.ds = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %spec.select) #18 ; 2 uses
  %i.dt = extractvalue { ptr, ptr } %i.ds, 0
  %i.du = extractvalue { ptr, ptr } %i.ds, 1
  br label %bb.w

.loopexit:                                        ; preds = %bb.p, %bb.m, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i
  %.pr = load ptr, ptr %i.ci, align 8, !tbaa !805 ; 3 uses
  %.not181 = icmp eq ptr %.pr, null
  br i1 %.not181, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %.pr, i64 72
  %i.dw = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, i32 noundef 57) #18
  br i1 %i.dw, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit

_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit: ; preds = %bb.q
  %i.dx = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %.pr, i32 noundef 57) #18
  br i1 %i.dx, label %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, label %.thread

_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread: ; preds = %bb.q, %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 579
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !833, !range !93, !noundef !94
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !497
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 224
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !763, !range !93, !noundef !94
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit.thread277, label %.thread

_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit.thread277: ; preds = %bb.r
  %i.eg = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 492) #18 ; 2 uses
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1
  br label %bb.ad

.thread:                                          ; preds = %bb.l, %bb.r, %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit.thread, %_ZNK4llvm8CallBase9hasFnAttrENS_9Attribute8AttrKindE.exit, %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 8            ; 2 uses
  %i.el = and i32 %i.ek, 255
  %i.em = icmp eq i32 %i.el, 9
  br i1 %i.em, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !834
  %i.ep = call noundef zeroext i1 @_ZNK4llvm6Module14getRtLibUseGOTEv(ptr noundef nonnull align 8 dereferenceable(1288) %i.eo) #18
  br i1 %i.ep, label %bb.t, label %._crit_edge305

._crit_edge305:                                   ; preds = %bb.s
  %.pre = load i32, ptr %i.ej, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.eq = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder10buildInstrEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 76) ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.eq, 0
  store ptr %i.er, ptr %19, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.et = extractvalue { ptr, ptr } %i.eq, 1
  store ptr %i.et, ptr %i.es, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !95
  %i.ew = call i64 @_ZN4llvm13getLLTForTypeERNS_4TypeERKNS_10DataLayoutE(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr noundef nonnull align 8 dereferenceable(912) %i.g) #18
  store i64 %i.ew, ptr %20, align 8, !tbaa !235
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.ex, align 8, !tbaa !237
  call void @_ZNK4llvm5DstOp11addDefToMIBERNS_19MachineRegisterInfoERNS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(20) %20, ptr noundef nonnull align 8 dereferenceable(520) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !235
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !835
  %i.fb = load ptr, ptr %19, align 8, !tbaa !836
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.fc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.fc, align 8, !tbaa !304, !alias.scope !837
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !235, !alias.scope !837
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.fe, align 4, !tbaa !235, !alias.scope !837
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 0, ptr %i.ff, align 8, !tbaa !235, !alias.scope !837
  store i32 4105, ptr %14, align 8, !alias.scope !837
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fa, ptr noundef nonnull align 8 dereferenceable(1065) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !835
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !243
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !235
  store i32 0, ptr %i.ej, align 8, !tbaa !235
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.fk, ptr %.sroa.4257.0..sroa_idx, align 4, !tbaa !235
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5258.0..sroa_idx, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge305, %bb.t, %.thread
  %i.fl = phi i32 [ %.pre, %._crit_edge305 ], [ 0, %bb.t ], [ %i.ek, %.thread ]
  %i.fm = and i32 %i.fl, 255
  %i.fn = icmp ne i32 %i.fm, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 5376
  %.val = load i8, ptr %i.fo, align 8
  %i.fp = trunc nuw i8 %.val to i1                ; 2 uses
  %brmerge.i = or i1 %i.fn, %i.fp
  %.mux.i = select i1 %i.fp, i32 489, i32 2137
  br i1 %brmerge.i, label %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = call noundef i32 @_ZN4llvm16getBLRCallOpcodeERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1065) %i.c) #18
  br label %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit

_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit: ; preds = %bb.v, %bb.u
  %.0175 = phi i32 [ %i.fq, %bb.v ], [ %.mux.i, %bb.u ] ; 5 uses
  %i.fr = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %.0175) #18 ; 2 uses
  %i.fs = extractvalue { ptr, ptr } %i.fr, 0      ; 3 uses
  %i.ft = extractvalue { ptr, ptr } %i.fr, 1      ; 3 uses
  switch i32 %.0175, label %bb.ad [
    i32 493, label %bb.w
    i32 490, label %bb.w
  ]

bb.w:                                             ; preds = %_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit
  %i.fu = phi ptr [ %i.du, %_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit ], [ %i.ft, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ], [ %i.ft, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ] ; 3 uses
  %i.fv = phi ptr [ %i.dt, %_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit ], [ %i.fs, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ], [ %i.fs, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ] ; 3 uses
  %.0175276 = phi i32 [ %spec.select, %_ZN4llvm7objcarc23hasAttachedCallOpBundleEPKNS_8CallBaseE.exit ], [ %.0175, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ], [ %.0175, %_ZL13getCallOpcodeRKN4llvm15MachineFunctionEbbRSt8optionalINS_12CallLowering11PtrAuthInfoEERNS_19MachineRegisterInfoE.exit ]
  %i.fw = load ptr, ptr %i.ci, align 8, !tbaa !805 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 4, !noalias !840
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196: ; preds = %bb.w
  %i.ga = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fw) #18, !noalias !840
  %i.gb = extractvalue { ptr, i64 } %i.ga, 0      ; 2 uses
  %.pr.i.i.i197 = load i32, ptr %i.fx, align 4, !noalias !840
  %i.gc = icmp slt i32 %.pr.i.i.i197, 0
  br i1 %i.gc, label %bb.x, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184

bb.x:                                             ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196
  %i.gd = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fw) #18, !noalias !840 ; 2 uses
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gf
  %i.gh = ptrtoint ptr %i.gg to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184: ; preds = %bb.x, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196, %bb.w
  %.0.i.i3.i.i.i185 = phi ptr [ %i.gb, %bb.x ], [ %i.gb, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196 ], [ null, %bb.w ]
  %.0.i.i1.i.i.i186 = phi i64 [ %i.gh, %bb.x ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i196 ], [ 0, %bb.w ]
  %i.gi = ptrtoint ptr %.0.i.i3.i.i.i185 to i64
  %i.gj = sub i64 %.0.i.i1.i.i.i186, %i.gi        ; 2 uses
  %i.gk = and i64 %i.gj, 68719476720
  %.not12.i.i187 = icmp eq i64 %i.gk, 0
  br i1 %.not12.i.i187, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit, label %.critedge.preheader.i.i188

.critedge.preheader.i.i188:                       ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184
  %i.gl = lshr exact i64 %i.gj, 4
  %i.gm = and i64 %i.gl, 4294967295
  br label %.critedge.i.i189

bb.y:                                             ; preds = %.critedge.i.i189
  %indvars.iv.next.i.i192 = add nuw nsw i64 %indvars.iv.i.i190, 1 ; 2 uses
  %.not.i.i193 = icmp eq i64 %indvars.iv.next.i.i192, %i.gm
  br i1 %.not.i.i193, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit, label %.critedge.i.i189, !llvm.loop !822

.critedge.i.i189:                                 ; preds = %bb.y, %.critedge.preheader.i.i188
  %indvars.iv.i.i190 = phi i64 [ 0, %.critedge.preheader.i.i188 ], [ %indvars.iv.next.i.i192, %bb.y ] ; 2 uses
  %i.gn = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.fw) #18, !noalias !843
  %i.go = extractvalue { ptr, i64 } %i.gn, 0
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.i.i190 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !826, !noalias !846
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !100, !noalias !840
  %.not8.i.i191 = icmp eq i32 %i.gs, 14
  br i1 %.not8.i.i191, label %bb.z, label %bb.y

bb.z:                                             ; preds = %.critedge.i.i189
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !849, !noalias !846
  %i.gv = zext i32 %i.gu to i64
  %i.gw = load i32, ptr %i.fx, align 4, !noalias !846
  %i.gx = and i32 %i.gw, 268435455
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds [32 x i8], ptr %i.fw, i64 %i.gz
  %.idx6.i.i.i.i = shl nuw nsw i64 %i.gv, 5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx6.i.i.i.i
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !850
  br label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit

_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit: ; preds = %bb.y, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184, %bb.z
  %.sroa.01.0.i = phi ptr [ %i.hc, %bb.z ], [ undef, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i184 ], [ undef, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.hd, align 8, !tbaa !304, !alias.scope !854
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.01.0.i, ptr %i.he, align 8, !tbaa !235, !alias.scope !854
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.hf, align 4, !tbaa !235, !alias.scope !854
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 0, ptr %i.hg, align 8, !tbaa !235, !alias.scope !854
  store i32 10, ptr %13, align 8, !alias.scope !854
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.hh = load ptr, ptr %i.ci, align 8, !tbaa !805 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 4, !noalias !857
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i

_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i: ; preds = %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit
  %i.hl = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hh) #18, !noalias !857
  %i.hm = extractvalue { ptr, i64 } %i.hl, 0      ; 2 uses
  %.pr.i.i.i.i = load i32, ptr %i.hi, align 4, !noalias !857
  %i.hn = icmp slt i32 %.pr.i.i.i.i, 0
  br i1 %i.hn, label %bb.aa, label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i

bb.aa:                                            ; preds = %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i
  %i.ho = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hh) #18, !noalias !857 ; 2 uses
  %i.hp = extractvalue { ptr, i64 } %i.ho, 0
  %i.hq = extractvalue { ptr, i64 } %i.ho, 1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq
  %i.hs = ptrtoint ptr %i.hr to i64
  br label %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i

_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i: ; preds = %bb.aa, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i, %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit
  %.0.i.i3.i.i.i.i = phi ptr [ %i.hm, %bb.aa ], [ %i.hm, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ null, %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit ]
  %.0.i.i1.i.i.i.i = phi i64 [ %i.hs, %bb.aa ], [ 0, %_ZNK4llvm8CallBase20bundle_op_info_beginEv.exit.i.i.i.i ], [ 0, %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit ]
  %i.ht = ptrtoint ptr %.0.i.i3.i.i.i.i to i64
  %i.hu = sub i64 %.0.i.i1.i.i.i.i, %i.ht         ; 2 uses
  %i.hv = and i64 %i.hu, 68719476720
  %.not12.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not12.i.i.i, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i, label %.critedge.preheader.i.i.i

.critedge.preheader.i.i.i:                        ; preds = %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i
  %i.hw = lshr exact i64 %i.hu, 4
  %i.hx = and i64 %i.hw, 4294967295
  br label %.critedge.i.i.i

bb.ab:                                            ; preds = %.critedge.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.hx
  br i1 %.not.i.i.i, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i, label %.critedge.i.i.i, !llvm.loop !822

.critedge.i.i.i:                                  ; preds = %bb.ab, %.critedge.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.critedge.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ab ] ; 2 uses
  %i.hy = call { ptr, i64 } @_ZN4llvm4User13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(88) %i.hh) #18, !noalias !860
  %i.hz = extractvalue { ptr, i64 } %i.hy, 0
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !826, !noalias !863
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !100, !noalias !857
  %.not8.i.i.i = icmp eq i32 %i.id, 14
  br i1 %.not8.i.i.i, label %bb.ac, label %bb.ab

bb.ac:                                            ; preds = %.critedge.i.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !849, !noalias !863
  %i.ig = zext i32 %i.if to i64
  %i.ih = load i32, ptr %i.hi, align 4, !noalias !863
  %i.ii = and i32 %i.ih, 268435455
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = getelementptr inbounds [32 x i8], ptr %i.hh, i64 %i.ik
  %.idx6.i.i.i.i.i = shl nuw nsw i64 %i.ig, 5
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx6.i.i.i.i.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !850
  %i.io = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %i.in) #18 ; 2 uses
  %i.ip = extractvalue { ptr, i64 } %i.io, 1
  %.not.i.i198 = icmp eq i64 %i.ip, 33
  br i1 %.not.i.i198, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.ac
  %i.iq = extractvalue { ptr, i64 } %i.io, 0
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %i.iq, ptr noundef nonnull dereferenceable(33) @.str.5, i64 33)
  %i.ir = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ir, label %_ZN4llvm7objcarc31attachedCallOpBundleNeedsMarkerEPKNS_8CallBaseE.exit, label %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i

_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i: ; preds = %bb.ab, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.ac, %_ZNK4llvm8CallBase20getNumOperandBundlesEv.exit.i.i.i
  br label %_ZN4llvm7objcarc31attachedCallOpBundleNeedsMarkerEPKNS_8CallBaseE.exit

_ZN4llvm7objcarc31attachedCallOpBundleNeedsMarkerEPKNS_8CallBaseE.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i
  %.1.i = phi i64 [ 1, %_ZN4llvm7objcarc22getAttachedARCFunctionEPKNS_8CallBaseE.exit.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store i32 1, ptr %12, align 8, !alias.scope !866
  %i.is = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.is, align 8, !tbaa !304, !alias.scope !866
  %i.it = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %.1.i, ptr %i.it, align 8, !tbaa !235, !alias.scope !866
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fu, ptr noundef nonnull align 8 dereferenceable(1065) %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.af

end_hunk_0
