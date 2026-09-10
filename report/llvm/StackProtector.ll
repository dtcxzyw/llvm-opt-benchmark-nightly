Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StackProtector?download=true
inline.NumInlined: 2260
inline.NumDeleted: 1478
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL21InsertStackProtectorsRKN4llvm14TargetLoweringERKNS_19LibcallLoweringInfoEPNS_8FunctionEPNS_14DomTreeUpdaterERbSA_:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 33
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %30, i64 88 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %30, i64 96 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %30, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %30, i64 68
  %i.cv = getelementptr inbounds nuw i8, ptr %30, i64 69
  %i.cw = getelementptr inbounds nuw i8, ptr %30, i64 70
  %i.cx = getelementptr inbounds nuw i8, ptr %30, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i138 = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.dd = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 33
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph211, %.thread179
  %.0209 = phi i8 [ %i.r, %.lr.ph211 ], [ %.3.ph, %.thread179 ] ; 6 uses
  %.092207 = phi ptr [ null, %.lr.ph211 ], [ %.4.ph, %.thread179 ] ; 8 uses
  %.0158205 = phi ptr [ null, %.lr.ph211 ], [ %.3160.ph, %.thread179 ] ; 5 uses
  %.sroa.0152.0204 = phi ptr [ %i.t, %.lr.ph211 ], [ %i.dh, %.thread179 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0152.0204, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !99 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.0152.0204, i64 -24 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %.092207
  br i1 %i.dj, label %.thread179, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0152.0204, i64 24 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -24 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !40
  %.not = icmp eq i8 %i.dn, 31
  br i1 %.not, label %.thread174, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20DisableCheckNoReturn, i64 120), align 8, !tbaa !158, !range !23, !noundef !24
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %.thread179, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0152.0204, i64 32
  %.sroa.0148.0199 = load ptr, ptr %i.dq, align 8, !tbaa !100 ; 2 uses
  %.not195200 = icmp eq ptr %.sroa.0148.0199, %i.dk
  br i1 %.not195200, label %.thread179, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread
  %.sroa.0148.0201 = phi ptr [ %.sroa.0148.0, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread ], [ %.sroa.0148.0199, %bb.h ] ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0148.0201, i64 -24 ; 5 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !40
  switch i8 %i.ds, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread [
    i8 88, label %bb.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0148.0201, i64 -56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !40
  %i.dw = icmp eq i8 %i.dv, 14
  br i1 %i.dw, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.j
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = and i32 %i.dy, 8192
  %.not.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !415
  %i.ec = icmp eq i32 %i.eb, 89
  br i1 %i.ec, label %.thread174, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit: ; preds = %.lr.ph, %.lr.ph, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, %bb.j, %bb.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0148.0201, i64 48 ; 2 uses
  %i.ee = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i32 noundef 40) #21
  br i1 %i.ee, label %_ZNK4llvm8CallBase13doesNotReturnEv.exit.thread, label %_ZNK4llvm8CallBase13doesNotReturnEv.exit

_ZNK4llvm8CallBase13doesNotReturnEv.exit:         ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit
  %i.ef = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, i32 noundef 40) #21
  br i1 %i.ef, label %_ZNK4llvm8CallBase13doesNotReturnEv.exit.thread, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread

_ZNK4llvm8CallBase13doesNotReturnEv.exit.thread:  ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit, %_ZNK4llvm8CallBase13doesNotReturnEv.exit
  %i.eg = call noundef zeroext i1 @_ZNK4llvm13AttributeList9hasFnAttrENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, i32 noundef 45) #21
  br i1 %i.eg, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread, label %_ZNK4llvm8CallBase12doesNotThrowEv.exit

_ZNK4llvm8CallBase12doesNotThrowEv.exit:          ; preds = %_ZNK4llvm8CallBase13doesNotReturnEv.exit.thread
  %i.eh = call noundef zeroext i1 @_ZNK4llvm8CallBase25hasFnAttrOnCalledFunctionENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %i.dr, i32 noundef 45) #21
  br i1 %i.eh, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread, label %.thread174

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.thread: ; preds = %.lr.ph, %_ZNK4llvm8CallBase13doesNotReturnEv.exit.thread, %_ZNK4llvm8CallBase13doesNotReturnEv.exit, %_ZNK4llvm8CallBase12doesNotThrowEv.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0148.0201, i64 8
  %.sroa.0148.0 = load ptr, ptr %i.ei, align 8, !tbaa !100 ; 2 uses
  %.not195 = icmp eq ptr %.sroa.0148.0, %i.dk
  br i1 %.not195, label %.thread179, label %.lr.ph

.thread174:                                       ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit, %_ZNK4llvm8CallBase12doesNotThrowEv.exit, %bb.f
  %.5 = phi ptr [ %i.dm, %bb.f ], [ %i.dr, %_ZNK4llvm8CallBase12doesNotThrowEv.exit ], [ %i.dr, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit ] ; 7 uses
  %i.ej = load i8, ptr %4, align 1, !tbaa !112, !range !23, !noundef !24
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread174
  store i8 1, ptr %4, align 1, !tbaa !112
  %.val = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.el = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.el, align 8, !tbaa !100 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %i.em = getelementptr inbounds i8, ptr %.val.val, i64 -24
  %i.en = getelementptr inbounds i8, ptr %.val.val, i64 -16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !160
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !164, !nonnull !24, !align !159
  store ptr null, ptr %23, align 8, !tbaa !103
  store ptr %i.ep, ptr %i.x, align 8, !tbaa !416
  store ptr %i.v, ptr %i.y, align 8, !tbaa !417
  store ptr %i.w, ptr %i.z, align 8, !tbaa !418
  store ptr null, ptr %i.aa, align 8, !tbaa !419
  store i32 0, ptr %i.ab, align 8, !tbaa !176
  store i8 0, ptr %i.ac, align 4, !tbaa !177
  store i8 2, ptr %i.ad, align 1, !tbaa !420
  store i8 7, ptr %i.ae, align 2, !tbaa !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.v, align 8, !tbaa !15
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !422
  store ptr %i.er, ptr %i.ag, align 8, !tbaa !178
  store ptr %.val.val, ptr %i.ah, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.em) #21
  %i.et = load i64, ptr %i.es, align 8, !tbaa !423
  store i64 %i.et, ptr %23, align 8, !tbaa !423
  %i.eu = getelementptr inbounds nuw i8, ptr %.5, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !160
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !164, !nonnull !24, !align !159
  %i.ex = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i32 noundef 0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  store i8 1, ptr %i.aj, align 1, !tbaa !144
  store ptr @.str.12, ptr %24, align 8, !tbaa !96
  store i8 3, ptr %i.ai, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.ey = load ptr, ptr %i.ag, align 8, !tbaa !178
  %i.ez = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ey) #21 ; 2 uses
  %i.fa = call i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ez, ptr noundef %i.ex) #21
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !452
  %i.fd = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  store i16 257, ptr %i.ak, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @_ZN4llvm10AllocaInstC1EPNS_4TypeEjPNS_5ValueENS_5AlignERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef %i.ex, i32 noundef %i.fc, ptr noundef null, i8 %i.fa, ptr noundef nonnull align 8 dereferenceable(34) %21, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %22) #21
  %i.fe = load ptr, ptr %i.z, align 8, !tbaa !179, !nonnull !24, !align !159 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ah, align 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull %i.fd, ptr noundef nonnull align 8 dereferenceable(34) %24, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #21, !inline_history !389
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull %i.fd) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %i.fi = call fastcc noundef ptr @_ZL13getStackGuardRKN4llvm18TargetLoweringBaseERKNS_19LibcallLoweringInfoEPNS_6ModuleERNS_9IRBuilderINS_14ConstantFolderENS_24IRBuilderDefaultInserterEEEPb(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(3336) %1, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %i.fi, ptr %i.b, align 8, !tbaa !453
  store ptr %i.fd, ptr %i.al, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store i16 257, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr @_ZN4llvm12function_refIFvPNS_8CallInstEEE11callback_fnIZNS_13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_5ValueEEENS_9FMFSourceERKNS_5TwineES4_Ed_UlS2_E_EEvlS2_, ptr %20, align 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.fj = call noundef ptr @_ZN4llvm13IRBuilderBase15CreateIntrinsicEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEENS_12function_refIFvPNS_8CallInstEEEE(ptr noundef nonnull align 8 dereferenceable(88) %23, i32 noundef 366, ptr null, i64 0, ptr nonnull %i.b, i64 2, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %25, ptr noundef nonnull byval(%"class.llvm::ArrayRef.423") align 8 %19, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %20) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.fk = load i8, ptr %i.a, align 1, !tbaa !112, !range !23, !noundef !24
  %35 = trunc nuw i8 %i.fk to i1
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #21
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %36 = select i1 %35, i8 %.0209, i8 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread174
  %.1159 = phi ptr [ %.0158205, %.thread174 ], [ %i.fd, %bb.k ] ; 2 uses
  %.1 = phi i8 [ %.0209, %.thread174 ], [ %36, %bb.k ]
  %i.fl = trunc i8 %.1 to i1
  br i1 %i.fl, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not116 = icmp eq ptr %.1159, null
  br i1 %.not116, label %.lr.ph56.i, label %bb.p

.lr.ph56.i:                                       ; preds = %bb.m, %._crit_edge.i
  %.sroa.033.052.i.sink.in = phi ptr [ %i.gc, %._crit_edge.i ], [ %i.s, %bb.m ]
  %.sroa.033.052.i.sink = load ptr, ptr %.sroa.033.052.i.sink.in, align 8, !tbaa !99 ; 4 uses
  %.not53.i = icmp ne ptr %.sroa.033.052.i.sink, %i.u
  call void @llvm.assume(i1 %.not53.i)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.033.052.i.sink, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.033.052.i.sink, i64 24 ; 2 uses
  %.sroa.029.049.i = load ptr, ptr %i.fm, align 8, !tbaa !100 ; 2 uses
  %.not4750.i = icmp eq ptr %.sroa.029.049.i, %i.fn
  br i1 %.not4750.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph56.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i
  %.sroa.029.051.i = phi ptr [ %.sroa.029.0.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i ], [ %.sroa.029.049.i, %.lr.ph56.i ] ; 5 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -24
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !40
  %i.fq = icmp eq i8 %i.fp, 88
  br i1 %i.fq, label %bb.n, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.fr = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !40
  %i.fu = icmp eq i8 %i.ft, 14
  br i1 %i.fu, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i: ; preds = %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = and i32 %i.fw, 8192
  %.not.i.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !415
  %i.ga = icmp eq i32 %i.fz, 366
  br i1 %i.ga, label %_ZL27findStackProtectorIntrinsicRN4llvm8FunctionE.exit, label %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i

_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i, %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPKNS_11InstructionEvE10isPossibleERKS4_.exit.i.i.i, %bb.o, %bb.n, %.lr.ph.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 8
  %.sroa.029.0.i = load ptr, ptr %i.gb, align 8, !tbaa !100 ; 2 uses
  %.not47.i = icmp eq ptr %.sroa.029.0.i, %i.fn
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.thread.i, %.lr.ph56.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.033.052.i.sink, i64 8
  br label %.lr.ph56.i

_ZL27findStackProtectorIntrinsicRN4llvm8FunctionE.exit: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstEKNS_11InstructionEEEDcPT0_.exit.i
  %i.gd = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -20
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = and i32 %i.ge, 268435455
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr [32 x i8], ptr %.sroa.029.051.i, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !109
  br label %bb.p

bb.p:                                             ; preds = %_ZL27findStackProtectorIntrinsicRN4llvm8FunctionE.exit, %bb.m
  %.2 = phi ptr [ %i.gk, %_ZL27findStackProtectorIntrinsicRN4llvm8FunctionE.exit ], [ %.1159, %bb.m ] ; 4 uses
  store i8 1, ptr %5, align 1, !tbaa !112
  %i.gl = getelementptr inbounds nuw i8, ptr %.5, i64 24 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.5, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !422
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !100
  %i.gq = icmp eq ptr %i.gl, %i.gp
  %i.gr = load ptr, ptr %i.gl, align 8            ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -24 ; 3 uses
  br i1 %i.gq, label %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gt = load i8, ptr %i.gs, align 8, !tbaa !40
  %i.gu = icmp eq i8 %i.gt, 88
  br i1 %i.gu, label %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit, label %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit: ; preds = %bb.q
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 -22
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !134
  %i.gx = and i16 %i.gw, 3
  %i.gy = add nsw i16 %i.gx, -1
  %i.gz = icmp ult i16 %i.gy, 2
  br i1 %i.gz, label %bb.r, label %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread

bb.r:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit
  %i.ha = load ptr, ptr %i.ao, align 8, !tbaa !414, !nonnull !24, !align !159
  %i.hb = call noundef zeroext i1 @_ZN4llvm20isInTailCallPositionERKNS_8CallBaseERKNS_13TargetMachineEb(ptr noundef nonnull align 8 dereferenceable(88) %i.gs, ptr noundef nonnull align 8 dereferenceable(1728) %i.ha, i1 noundef zeroext false) #21
  %spec.select = select i1 %i.hb, ptr %i.gs, ptr %.5
  br label %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread

_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread: ; preds = %bb.p, %bb.q, %bb.r, %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit
  %.6 = phi ptr [ %.5, %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit ], [ %spec.select, %bb.r ], [ %.5, %bb.q ], [ %.5, %bb.p ] ; 8 uses
  %i.hc = call noundef ptr @_ZNK4llvm18TargetLoweringBase21getSSPStackGuardCheckERKNS_6ModuleERKNS_19LibcallLoweringInfoE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(1288) %i.e, ptr noundef nonnull align 8 dereferenceable(3336) %1) #21 ; 5 uses
  %.not118 = icmp eq ptr %i.hc, null
  br i1 %.not118, label %bb.s, label %_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit

_ZN4llvm14FunctionCalleeC2INS_8FunctionEMS2_KFPNS_12FunctionTypeEvEEEPT_.exit: ; preds = %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.hd = getelementptr inbounds nuw i8, ptr %.6, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !160
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !164, !nonnull !24, !align !159
  store ptr null, ptr %27, align 8, !tbaa !103
  store ptr %i.hf, ptr %i.ar, align 8, !tbaa !416
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !417
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !418
  store ptr null, ptr %i.au, align 8, !tbaa !419
  store i32 0, ptr %i.av, align 8, !tbaa !176
  store i8 0, ptr %i.aw, align 4, !tbaa !177
  store i8 2, ptr %i.ax, align 1, !tbaa !420
  store i8 7, ptr %i.ay, align 2, !tbaa !421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm14ConstantFolderE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16)>, ptr %i.ap, align 8, !tbaa !15
  %i.hg = getelementptr inbounds nuw i8, ptr %.6, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %.6, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !422
  store ptr %i.hi, ptr %i.ba, align 8, !tbaa !178
  store ptr %i.hg, ptr %i.bb, align 8
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.hj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %.6) #21
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !423
  store i64 %i.hk, ptr %27, align 8, !tbaa !423
  %i.hl = load ptr, ptr %i.ar, align 8, !tbaa !180, !nonnull !24, !align !159
  %i.hm = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, i32 noundef 0) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store i8 1, ptr %i.bd, align 1, !tbaa !144
  store ptr @.str.9, ptr %28, align 8, !tbaa !96
  store i8 3, ptr %i.bc, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.hn = load ptr, ptr %i.ba, align 8, !tbaa !178
  %i.ho = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm10BasicBlock13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(80) %i.hn) #21
  %i.hp = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.ho, ptr noundef %i.hm) #21
  %i.hq = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 80, i32 1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i8 1, ptr %i.be, align 8, !tbaa !143
  store i8 1, ptr %i.bf, align 1, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZN4llvm8LoadInstC1EPNS_4TypeEPNS_5ValueERKNS_5TwineEbNS_5AlignENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(73) %i.hq, ptr noundef %i.hm, ptr noundef %.2, ptr noundef nonnull align 8 dereferenceable(34) %8, i1 noundef zeroext true, i8 %i.hp, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %9) #21
  %i.hr = load ptr, ptr %i.at, align 8, !tbaa !179, !nonnull !24, !align !159 ; 2 uses
  %.sroa.0.0.copyload.i.i139 = load ptr, ptr %i.bb, align 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull %i.hq, ptr noundef nonnull align 8 dereferenceable(34) %28, ptr %.sroa.0.0.copyload.i.i139, i64 %.sroa.2.0.copyload.i.i) #21, !inline_history !1
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull %i.hq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.hq, ptr %i.c, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store i16 257, ptr %i.bg, align 8
  %i.hx = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef %i.hw, ptr noundef nonnull %i.hc, ptr nonnull %i.c, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %.sroa.0.0.copyload.i131 = load ptr, ptr %i.hy, align 8, !tbaa !182
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  store ptr %.sroa.0.0.copyload.i131, ptr %i.hz, align 8, !tbaa !182
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !134
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !134
  %i.ie = and i16 %i.id, -4093
  %i.if = lshr i16 %i.ib, 2
  %i.ig = and i16 %i.if, 4092
  %i.ih = or disjoint i16 %i.ie, %i.ig
  store i16 %i.ih, ptr %i.ic, align 2, !tbaa !134
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #21
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %.thread179

bb.s:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentINS_8CallInstENS_11InstructionEEEDaPT0_.exit.thread
  %.not119 = icmp eq ptr %.092207, null
  br i1 %.not119, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.ii = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.ij = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %2) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  store i8 1, ptr %i.bi, align 1, !tbaa !144
  store ptr @.str.13, ptr %13, align 8, !tbaa !96
  store i8 3, ptr %i.bh, align 8, !tbaa !143
  %i.ik = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24 ; 5 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.ik, ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull %2, ptr noundef null) #21
end_hunk_0
