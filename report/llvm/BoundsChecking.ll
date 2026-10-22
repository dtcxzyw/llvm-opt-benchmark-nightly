Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BoundsChecking?download=true
inline.NumInlined: 988
inline.NumDeleted: 682
begin_hunk_0_@_ZN4llvm18BoundsCheckingPass3runERNS_8FunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.ln = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.lm) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store ptr %i.ln, ptr %11, align 8, !tbaa !130
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !19
  store i32 0, ptr %i.hl, align 8, !tbaa !20
  store i32 8, ptr %i.hm, align 4, !tbaa !117
  %i.lo = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 45) #18 ; 0 uses
  br i1 %i.li, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lp = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef 40) #18 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !190
  %i.ls = call ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextEjRKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.ln, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(88) %11) #18
  %i.lt = call noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ln) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.hn, ptr %10, align 8, !tbaa !19
  store i32 0, ptr %i.ho, align 8, !tbaa !20
  store i32 0, ptr %i.hp, align 4, !tbaa !117
  %i.lu = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.lt, ptr nonnull %i.hn, i64 0, i1 noundef zeroext false) #18
  %i.lv = call { ptr, ptr } @_ZN4llvm6Module19getOrInsertFunctionENS_9StringRefEPNS_12FunctionTypeENS_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(1288) %i.lr, ptr %i.lj, i64 %i.lk, ptr noundef %i.lu, ptr %i.ls) #18 ; 2 uses
  %i.lw = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.hn
  br i1 %i.lx, label %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefENS_13AttributeListEPNS_4TypeEDpT_.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.lw) #18
  br label %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefENS_13AttributeListEPNS_4TypeEDpT_.exit.i.i.i.i

_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefENS_13AttributeListEPNS_4TypeEDpT_.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.ly = extractvalue { ptr, ptr } %i.lv, 0
  %i.lz = extractvalue { ptr, ptr } %i.lv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store i16 257, ptr %i.hq, align 8
  %i.ma = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCallEPNS_12FunctionTypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef %i.ly, ptr noundef %i.lz, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.mb = load ptr, ptr %i.hj, align 8, !tbaa !19 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.hk
  br i1 %i.mc, label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefENS_13AttributeListEPNS_4TypeEDpT_.exit.i.i.i.i
  call void @free(ptr noundef %i.mb) #18
  br label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i

bb.az:                                            ; preds = %bb.at
  %.sroa.06.0.copyload.i.i.i = load i16, ptr %i.hf, align 1 ; 2 uses
  %.sroa.017.0.extract.trunc.i.i.i.i = zext i16 %.sroa.06.0.copyload.i.i.i to i64
  br i1 %i.le, label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread.i.i.i, label %bb.ba

_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread.i.i.i: ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i16 257, ptr %i.hh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.md = call noundef ptr @_ZN4llvm13IRBuilderBase29CreateIntrinsicWithoutFoldingEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(120) %28, i32 noundef 381, ptr null, i64 0, ptr null, i64 0, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.me = and i16 %.sroa.06.0.copyload.i.i.i, 256
  %.not.i.i20.i.i = icmp eq i16 %i.me, 0
  br i1 %.not.i.i20.i.i, label %bb.bb, label %_ZNRSt8optionalIaE5valueEv.exit.i.i.i.i

_ZNRSt8optionalIaE5valueEv.exit.i.i.i.i:          ; preds = %bb.ba
  %sext.i.i.i.i = shl i64 %.sroa.017.0.extract.trunc.i.i.i.i, 56
  %i.mf = ashr exact i64 %sext.i.i.i.i, 56
  br label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !184 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 80 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !120 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.mk, %i.mi
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi i64 [ %i.mn, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.bb ]
  %.sroa.02.05.i.i.i.i.i.i.i = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i ], [ %i.mk, %bb.bb ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i.i, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !120 ; 2 uses
  %i.mn = add nuw nsw i64 %.06.i.i.i.i.i.i.i, 1   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mm, %i.mi
  br i1 %.not.i.i.i.i.i.i.i, label %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !108

_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.bb, %_ZNRSt8optionalIaE5valueEv.exit.i.i.i.i
  %i.mo = phi i64 [ %i.mf, %_ZNRSt8optionalIaE5valueEv.exit.i.i.i.i ], [ 0, %bb.bb ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i ]
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.mo, i64 255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.mp = load ptr, ptr %i.gp, align 8, !tbaa !147, !nonnull !16, !align !48
  %i.mq = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.mp) #18
  %i.mr = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.mq, i64 noundef %spec.store.select.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #18
  store ptr %i.mr, ptr %i.a, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i16 257, ptr %i.hg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ms = call noundef ptr @_ZN4llvm13IRBuilderBase29CreateIntrinsicWithoutFoldingEjNS_8ArrayRefIPNS_4TypeEEENS1_IPNS_5ValueEEENS_9FMFSourceERKNS_5TwineENS1_INS_17OperandBundleDefTIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(120) %28, i32 noundef 388, ptr null, i64 0, ptr nonnull %i.a, i64 1, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bc

_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i: ; preds = %bb.ay, %_ZN4llvm6Module19getOrInsertFunctionIJEEENS_14FunctionCalleeENS_9StringRefENS_13AttributeListEPNS_4TypeEDpT_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.le, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i
  %i.mt = phi ptr [ %i.ms, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread42.i.i.i ], [ %i.ma, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 72 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !57
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !83, !nonnull !16, !align !48
  %i.my = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.mu, ptr noundef nonnull align 8 dereferenceable(8) %i.mx, i32 noundef -1, i32 noundef 35) #18
  store ptr %i.my, ptr %i.mu, align 8, !tbaa !85
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread.i.i.i
  %i.mz = phi ptr [ %i.md, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.thread.i.i.i ], [ %i.mt, %bb.bc ], [ %i.ma, %_ZL10InsertTrapRN4llvm9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEbSt8optionalIaE.exit.i.i.i ] ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 72 ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !57
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !83, !nonnull !16, !align !48
  %i.ne = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull align 8 dereferenceable(8) %i.nd, i32 noundef -1, i32 noundef 45) #18
  store ptr %i.ne, ptr %i.na, align 8, !tbaa !85
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  store ptr %i.kx, ptr %i.nf, align 8, !tbaa !140
  %i.ng = load i8, ptr %i.bf, align 1, !tbaa !28, !range !15, !noundef !16
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.be, label %.thread.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.ni = load i8, ptr %i.hi, align 1, !tbaa !65, !range !15, !noundef !16
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.bf, label %.thread.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.nk = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #18 ; 3 uses
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.nk, ptr noundef %i.kp, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i16 257, ptr %i.hs, align 8
  %i.nl = load ptr, ptr %i.gr, align 8, !tbaa !61, !nonnull !16, !align !48 ; 2 uses
  %.sroa.0.0.copyload.i.i33.i.i.i = load ptr, ptr %i.ha, align 8
  %.sroa.2.0.copyload.i.i35.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i89.i, align 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !9
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(8) %i.nl, ptr noundef nonnull %i.nk, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.sroa.0.0.copyload.i.i33.i.i.i, i64 %.sroa.2.0.copyload.i.i35.i.i.i) #18, !inline_history !109
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull %i.nk) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bg

.thread.i.i.i:                                    ; preds = %bb.be, %bb.bd
  %i.np = load ptr, ptr %i.nb, align 8, !tbaa !57
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !83, !nonnull !16, !align !48
  %i.nr = call ptr @_ZNK4llvm13AttributeList19addAttributeAtIndexERNS_11LLVMContextEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.na, ptr noundef nonnull align 8 dereferenceable(8) %i.nq, i32 noundef -1, i32 noundef 40) #18
  store ptr %i.nr, ptr %i.na, align 8, !tbaa !85
  %i.ns = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 0) #18 ; 3 uses
  %i.nt = load ptr, ptr %i.gp, align 8, !tbaa !147, !nonnull !16, !align !48
  call void @_ZN4llvm15UnreachableInstC1ERNS_11LLVMContextENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.ns, ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr null, i64 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i16 257, ptr %i.hr, align 8
  %i.nu = load ptr, ptr %i.gr, align 8, !tbaa !61, !nonnull !16, !align !48 ; 2 uses
  %.sroa.0.0.copyload.i.i36.i.i.i = load ptr, ptr %i.ha, align 8
  %.sroa.2.0.copyload.i.i38.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i89.i, align 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !9
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef nonnull %i.ns, ptr noundef nonnull align 8 dereferenceable(34) %4, ptr %.sroa.0.0.copyload.i.i36.i.i.i, i64 %.sroa.2.0.copyload.i.i38.i.i.i) #18, !inline_history !110
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull %i.ns) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.bg

bb.bg:                                            ; preds = %.thread.i.i.i, %bb.bf
  %i.ny = phi i1 [ false, %.thread.i.i.i ], [ true, %bb.bf ] ; 2 uses
  %i.nz = load i8, ptr %i.bf, align 1, !tbaa !28, !range !15, !noundef !16
  %i.oa = trunc nuw i8 %i.nz to i1
  br i1 %i.oa, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ob = load i8, ptr %i.ht, align 1, !tbaa !155, !range !15, !noundef !16
  %i.oc = trunc nuw i8 %i.ob to i1
  %or.cond.i.i.i = and i1 %i.ny, %i.oc
  br i1 %or.cond.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.od = getelementptr inbounds nuw i8, ptr %i.mz, i64 2 ; 2 uses
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !141
  %i.of = and i16 %i.oe, -4093
  %i.og = or disjoint i16 %i.of, 60
  store i16 %i.og, ptr %i.od, align 2, !tbaa !141
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.not.i.i98.i = xor i1 %i.ny, true
  %i.oh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL12SingleTrapBB, i64 120), align 8, !range !15
  %i.oi = and i8 %i.oh, %i.ld
  %30 = trunc nuw i8 %i.oi to i1
  %or.cond45.not.i.i.i = select i1 %.not.i.i98.i, i1 %30, i1 false
  %spec.select.i = select i1 %or.cond45.not.i.i.i, ptr %i.lb, ptr null
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread.i.i
  %.1145.i = phi ptr [ %.0144166.i, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread.i.i ], [ %spec.select.i, %bb.bj ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.0144166.i, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.thread.i.i ], [ %i.lb, %bb.bj ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.ky, ptr %i.gx, align 8, !tbaa !139
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ha, align 8
  store i16 %.sroa.2.0.extract.trunc.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i89.i, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %i.oj
  br i1 %.not.i.i.i.i.i.i, label %"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i", label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ok = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 -24
  %i.ol = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm11Instruction17getStableDebugLocEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ok) #18 ; 0 uses
  br label %"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i"

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.gx, i8 0, i64 18, i1 false)
  br label %"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i"

"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i": ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.om = ptrtoint ptr %i.kz to i64
  store i64 %i.om, ptr %28, align 8, !tbaa !140
  br i1 %.not23.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i"
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.ko) #18
  %i.on = load ptr, ptr %15, align 8
  %i.oo = load i64, ptr %i.hu, align 8
  %i.op = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 1) #18
  call void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.op, ptr noundef nonnull %.0.i.i.i, ptr %i.on, i64 %i.oo) #18
  br label %"_ZL17insertBoundsCheckIZL17addBoundsCheckingRN4llvm8FunctionERNS0_17TargetLibraryInfoERNS0_15ScalarEvolutionERKNS0_18BoundsCheckingPass7OptionsEE3$_0EvPNS0_5ValueERNS0_9IRBuilderINS0_12TargetFolderE18NoSanitizeInserterEET_.exit.i"

bb.bp:                                            ; preds = %"_ZZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsEENK3$_0clERNS_9IRBuilderINS_12TargetFolderE18NoSanitizeInserterEEPNS_10BasicBlockE.exit.i.i"
  call void @_ZN4llvm14InsertPositionC1EPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.ko) #18
  %i.oq = load ptr, ptr %16, align 8
  %i.or = load i64, ptr %i.hv, align 8
  %i.os = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #18
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.os, ptr noundef %i.kf, ptr noundef nonnull %.0.i.i.i, ptr noundef %i.kp, ptr %i.oq, i64 %i.or) #18
  br label %"_ZL17insertBoundsCheckIZL17addBoundsCheckingRN4llvm8FunctionERNS0_17TargetLibraryInfoERNS0_15ScalarEvolutionERKNS0_18BoundsCheckingPass7OptionsEE3$_0EvPNS0_5ValueERNS0_9IRBuilderINS0_12TargetFolderE18NoSanitizeInserterEET_.exit.i"

"_ZL17insertBoundsCheckIZL17addBoundsCheckingRN4llvm8FunctionERNS0_17TargetLibraryInfoERNS0_15ScalarEvolutionERKNS0_18BoundsCheckingPass7OptionsEE3$_0EvPNS0_5ValueERNS0_9IRBuilderINS0_12TargetFolderE18NoSanitizeInserterEET_.exit.i": ; preds = %bb.bp, %bb.bo, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.i.i
  %.2.i = phi ptr [ %.1145.i, %bb.bp ], [ %.1145.i, %bb.bo ], [ %.0144166.i, %_ZN4llvm16dyn_cast_or_nullINS_11ConstantIntENS_5ValueEEEDaPT0_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @_ZN4llvm24IRBuilderDefaultInserterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gn) #18
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.gm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  %i.ot = getelementptr inbounds nuw i8, ptr %.067167.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ot, %i.gk
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.aq

_ZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsE.exit: ; preds = %_ZN4llvm25ObjectSizeOffsetEvaluatorD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueENS_24SizeOffsetWeakTrackingVHENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv.exit.i.i, %bb.ap
  %i.ou = getelementptr inbounds nuw i8, ptr %18, i64 128
  call void @_ZN4llvm25IRBuilderCallbackInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.ou) #18
  %i.ov = getelementptr inbounds nuw i8, ptr %18, i64 112
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ov) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br i1 %.not.i85.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsE.exit.thread, %_ZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsE.exit
  %.ptr1.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %.ptr1.i, ptr %0, align 8, !tbaa !17, !alias.scope !191
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.ow, align 8, !tbaa !192, !alias.scope !191
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.oy, align 8, !tbaa !14, !alias.scope !191
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.pa, ptr %i.oz, align 8, !tbaa !17, !alias.scope !191
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.pb, align 8, !tbaa !192, !alias.scope !191
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.pc, align 4, !tbaa !193, !alias.scope !191
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.pd, align 8, !tbaa !14, !alias.scope !191
  store i32 1, ptr %i.ox, align 4, !tbaa !193, !alias.scope !191, !noalias !194
  store ptr @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE, ptr %.ptr1.i, align 8, !tbaa !195, !alias.scope !191, !noalias !194
  br label %bb.bs

bb.br:                                            ; preds = %_ZL17addBoundsCheckingRN4llvm8FunctionERNS_17TargetLibraryInfoERNS_15ScalarEvolutionERKNS_18BoundsCheckingPass7OptionsE.exit
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.pe, i8 0, i64 64, i1 false), !alias.scope !196
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.pf, ptr %0, align 8, !tbaa !17, !alias.scope !196
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %i.pg, align 8, !tbaa !192, !alias.scope !196
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ph, align 4, !tbaa !193, !alias.scope !196
  store i8 1, ptr %i.pe, align 8, !tbaa !14, !alias.scope !196
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.pj, ptr %i.pi, align 8, !tbaa !17, !alias.scope !196
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.pk, align 8, !tbaa !192, !alias.scope !196
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.pl, align 8, !tbaa !14, !alias.scope !196
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18BoundsCheckingPass13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES4_EEE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(7) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call { ptr, i64 } %2(i64 noundef %3, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.18, i64 55), i64 18) #18, !inline_history !197 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 27 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202  ; 3 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.b, i64 noundef %i.c) #18 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !202
  br label %_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.b, i64 %i.c, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !202
  br label %_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit

_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %_ZN4llvm13PassInfoMixinINS_18BoundsCheckingPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit
  store i8 60, ptr %i.o, align 1
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.f, align 8, !tbaa !202
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28, !range !15, !noundef !16
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.x = load i8, ptr %0, align 1, !tbaa !64, !range !15, !noundef !16
  %i.y = trunc nuw i8 %i.x to i1
  %.pre34 = load ptr, ptr %i.f, align 8, !tbaa !202 ; 3 uses
  br i1 %i.y, label %bb.h, label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.pre34 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 4
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 4) #18 ; 0 uses
  %.pre33 = load ptr, ptr %i.f, align 8, !tbaa !202
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

bb.j:                                             ; preds = %bb.h
  store i32 762210669, ptr %.pre34, align 1
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !202
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit14

_ZN4llvm11raw_ostreamlsEPKc.exit14:               ; preds = %bb.j, %bb.i, %bb.g
  %i.ah = phi ptr [ %i.ag, %bb.j ], [ %.pre33, %bb.i ], [ %.pre34, %bb.g ] ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !201
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit14
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.4, i64 noundef 2) #18 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17
end_hunk_0
