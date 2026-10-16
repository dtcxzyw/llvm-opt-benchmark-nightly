Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleTranslation?download=true
inline.NumInlined: 11128
inline.NumDeleted: 6131
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4mlir4LLVM17ModuleTranslation24convertGlobalsAndAliasesEv:bb.a
.thread931:                                       ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit452, %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit382
  %i.amm = load ptr, ptr %0, align 8, !tbaa !332  ; 3 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 44
  %i.amo = load i32, ptr %i.amn, align 4          ; 3 uses
  %i.amp = and i32 %i.amo, 8388607
  %i.amq = icmp ne i32 %i.amp, 0
  call void @llvm.assume(i1 %i.amq)
  %i.amr = lshr i32 %i.amo, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i453 = and i32 %i.amr, 1
  %i.ams = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i453 to i64
  %i.amt = getelementptr inbounds nuw [16 x i8], ptr %i.amm, i64 %i.ams
  %i.amu = lshr i32 %i.amo, 21
  %i.amv = and i32 %i.amu, 2040
  %i.amw = zext nneg i32 %i.amv to i64
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amm, i64 40
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !391
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [32 x i8], ptr %i.amx, i64 %i.ana
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 72
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !366 ; 3 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 40
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 32 ; 2 uses
  %.sroa.0688.01093 = load ptr, ptr %i.ane, align 8, !tbaa !366 ; 3 uses
  %.not9771094 = icmp eq ptr %.sroa.0688.01093, %i.anf
  br i1 %.not9771094, label %._crit_edge1097, label %.lr.ph1096

.lr.ph1096:                                       ; preds = %.thread931
  %i.ang = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ank = getelementptr inbounds nuw i8, ptr %27, i64 88 ; 3 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %27, i64 104 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 4 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.ano = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.anp = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.anq = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.anr = getelementptr inbounds nuw i8, ptr %27, i64 68
  %i.ans = getelementptr inbounds nuw i8, ptr %27, i64 69
  %i.ant = getelementptr inbounds nuw i8, ptr %27, i64 70
  %i.anu = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.anv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.anw = getelementptr inbounds nuw i8, ptr %27, i64 96
  %i.anx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.any = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.anz = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.aoa = getelementptr inbounds nuw i8, ptr %29, i64 33
  br label %bb.db

._crit_edge1097.loopexit:                         ; preds = %bb.dl
  %.pre1177 = load ptr, ptr %0, align 8, !tbaa !332 ; 3 uses
  %.phi.trans.insert1178 = getelementptr inbounds nuw i8, ptr %.pre1177, i64 44
  %.pre1179 = load i32, ptr %.phi.trans.insert1178, align 4 ; 2 uses
  %.phi.trans.insert1180 = getelementptr inbounds nuw i8, ptr %.pre1177, i64 40
  %.pre1181 = load i32, ptr %.phi.trans.insert1180, align 8, !tbaa !391
  %.pre1183 = lshr i32 %.pre1179, 23
  %.pre1185 = and i32 %.pre1183, 1
  %.pre1186 = zext nneg i32 %.pre1185 to i64
  %.pre1188 = lshr i32 %.pre1179, 21
  %.pre1190 = and i32 %.pre1188, 2040
  %.pre1192 = zext nneg i32 %.pre1190 to i64
  %.pre1194 = zext i32 %.pre1181 to i64
  %.phi.trans.insert1534 = getelementptr inbounds nuw [16 x i8], ptr %.pre1177, i64 %.pre1186
  %.phi.trans.insert1535 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1534, i64 %.pre1192
  %.phi.trans.insert1536 = getelementptr inbounds nuw [32 x i8], ptr %.phi.trans.insert1535, i64 %.pre1194
  %.phi.trans.insert1537 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1536, i64 72
  %.pre1538 = load ptr, ptr %.phi.trans.insert1537, align 8, !tbaa !366 ; 2 uses
  %.phi.trans.insert1539 = getelementptr inbounds nuw i8, ptr %.pre1538, i64 40
  %.pre1540 = load ptr, ptr %.phi.trans.insert1539, align 8, !tbaa !366, !noalias !1090
  br label %._crit_edge1097

._crit_edge1097:                                  ; preds = %._crit_edge1097.loopexit, %.thread931
  %i.aob = phi ptr [ %.pre1540, %._crit_edge1097.loopexit ], [ %.sroa.0688.01093, %.thread931 ] ; 3 uses
  %i.aoc = phi ptr [ %.pre1538, %._crit_edge1097.loopexit ], [ %i.and, %.thread931 ]
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 32 ; 6 uses
  %.not1.i.i.i.i.i455 = icmp eq ptr %i.aob, %i.aod
  br i1 %.not1.i.i.i.i.i455, label %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467, label %.lr.ph.i.i.i.i.i456

.lr.ph.i.i.i.i.i456:                              ; preds = %._crit_edge1097, %bb.da
  %.sroa.010.0.i457 = phi ptr [ %i.aok, %bb.da ], [ %i.aob, %._crit_edge1097 ] ; 3 uses
  %i.aoe = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.010.0.i457) #22, !noalias !1090
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i458 = load ptr, ptr %i.aof, align 8, !tbaa !394, !noalias !1090
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i458, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !395, !noalias !1090
  %i.aoi = icmp eq ptr %i.aoh, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8GlobalOpEvE2idE
  br i1 %i.aoi, label %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i456
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i457, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !366, !noalias !1090 ; 3 uses
  %.not.i.i.i.i.i459 = icmp eq ptr %i.aok, %i.aod
  br i1 %.not.i.i.i.i.i459, label %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467, label %.lr.ph.i.i.i.i.i456, !llvm.loop !7

_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467: ; preds = %.lr.ph.i.i.i.i.i456, %bb.da, %._crit_edge1097
  %.sroa.010.1.i460 = phi ptr [ %i.aob, %._crit_edge1097 ], [ %.sroa.010.0.i457, %.lr.ph.i.i.i.i.i456 ], [ %i.aok, %bb.da ] ; 2 uses
  %.not9781098 = icmp eq ptr %.sroa.010.1.i460, %i.aod
  br i1 %.not9781098, label %._crit_edge1101, label %.lr.ph1100

bb.db:                                            ; preds = %.lr.ph1096, %bb.dl
  %.sroa.0688.01095 = phi ptr [ %.sroa.0688.01093, %.lr.ph1096 ], [ %.sroa.0688.0, %bb.dl ] ; 2 uses
  %i.aol = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0688.01095) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.aom, align 8, !tbaa !394
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !395 ; 2 uses
  %i.aop = icmp eq ptr %i.aoo, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM13GlobalCtorsOpEvE2idE ; 2 uses
  %spec.select.i.i468 = select i1 %i.aop, ptr %i.aol, ptr null
  store ptr %spec.select.i.i468, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.aoq = icmp eq ptr %i.aoo, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM13GlobalDtorsOpEvE2idE ; 2 uses
  %spec.select.i.i470 = select i1 %i.aoq, ptr %i.aol, ptr null
  store ptr %spec.select.i.i470, ptr %24, align 8
  br i1 %i.aop, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.aoq, label %.critedge, label %bb.dl

.critedge:                                        ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.aor = call ptr @_ZN4mlir4LLVM13GlobalCtorsOp8getCtorsEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #22
  store ptr %i.aor, ptr %25, align 8
  %i.aos = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #22
  %i.aot = extractvalue { ptr, i64 } %i.aos, 1
  %i.aou = icmp eq i64 %i.aot, 0
  br i1 %i.aou, label %.critedge31, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.dd
  %.pr = load ptr, ptr %24, align 8, !tbaa !413
  %i.aov = icmp eq ptr %.pr, null
  br i1 %i.aov, label %.critedge33, label %bb.de

bb.de:                                            ; preds = %.critedge, %thread-pre-split
  %i.aow = call ptr @_ZN4mlir4LLVM13GlobalDtorsOp8getDtorsEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #22
  store ptr %i.aow, ptr %26, align 8
  %i.aox = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %26) #22
  %i.aoy = extractvalue { ptr, i64 } %i.aox, 1
  %i.aoz = icmp eq i64 %i.aoy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br i1 %i.aoz, label %bb.df, label %bb.dg

.critedge31:                                      ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.df

bb.df:                                            ; preds = %.critedge31, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.apa = load ptr, ptr %i.ani, align 8, !tbaa !110 ; 2 uses
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !214, !nonnull !54, !align !76
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 296 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %28, align 8, !tbaa !103
  store ptr %i.apc, ptr %i.anj, align 8, !tbaa !511
  store ptr null, ptr %27, align 8, !tbaa !512
  store ptr %i.apb, ptr %i.anm, align 8, !tbaa !481
  store ptr %i.ank, ptr %i.ann, align 8, !tbaa !513
  store ptr %i.anl, ptr %i.ano, align 8, !tbaa !514
  store ptr null, ptr %i.anp, align 8, !tbaa !515
  store i32 0, ptr %i.anq, align 8, !tbaa !479
  store i8 0, ptr %i.anr, align 4, !tbaa !516
  store i8 2, ptr %i.ans, align 1, !tbaa !517
  store i8 7, ptr %i.ant, align 2, !tbaa !518
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.anv, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anu, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.ank, align 8, !tbaa !103
  store ptr %i.apc, ptr %i.anw, align 8, !tbaa !511
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm24IRBuilderDefaultInserterE, i64 16), ptr %i.anl, align 8, !tbaa !103
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #22
  %i.apd = load ptr, ptr %i.anm, align 8, !tbaa !1091, !nonnull !54, !align !76
  %i.ape = call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.apd) #22 ; 2 uses
  %i.apf = load ptr, ptr %i.anm, align 8, !tbaa !1091, !nonnull !54, !align !76
  %i.apg = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.apf, i32 noundef 0) #22
  %i.aph = load ptr, ptr %i.anm, align 8, !tbaa !1091, !nonnull !54, !align !76
  %i.api = call noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aph, i32 noundef 0) #22
  %i.apj = load ptr, ptr %i.ape, align 8, !tbaa !75, !nonnull !54, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %i.ape, ptr %i.a, align 8, !tbaa !66
  store ptr %i.apg, ptr %i.anx, align 8, !tbaa !66
  store ptr %i.api, ptr %i.any, align 8, !tbaa !66
  %i.apk = call noundef ptr @_ZN4llvm10StructType3getERNS_11LLVMContextENS_8ArrayRefIPNS_4TypeEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.apj, ptr nonnull %i.a, i64 3, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.apl = call noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef %i.apk, i64 noundef 0) #22
  %i.apm = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.apl) #22 ; 2 uses
  %i.apn = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 96, i32 1) #22
  %i.apo = load ptr, ptr %i.ani, align 8, !tbaa !110
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !456
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.apr = load ptr, ptr %23, align 8, !tbaa !413
  store i8 1, ptr %i.aoa, align 1, !tbaa !40
  %.not987 = icmp eq ptr %i.apr, null
  %.str.11..str.12 = select i1 %.not987, ptr @.str.12, ptr @.str.11
  store ptr %.str.11..str.12, ptr %29, align 8, !tbaa !41
  store i8 3, ptr %i.anz, align 8, !tbaa !42
  call void @_ZN4llvm14GlobalVariableC1ERNS_6ModuleEPNS_4TypeEbNS_11GlobalValue12LinkageTypesEPNS_8ConstantERKNS_5TwineEPS0_NS5_15ThreadLocalModeESt8optionalIjEb(ptr noundef nonnull align 8 dereferenceable(89) %i.apn, ptr noundef nonnull align 8 dereferenceable(1288) %i.apo, ptr noundef %i.apq, i1 noundef zeroext false, i32 noundef 6, ptr noundef nonnull %i.apm, ptr noundef nonnull align 8 dereferenceable(34) %29, ptr noundef null, i32 noundef 0, i64 0, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN4llvm24IRBuilderDefaultInserterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.anl) #22
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ank) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.dl

.critedge33:                                      ; preds = %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.dg

bb.dg:                                            ; preds = %.critedge33, %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.aps = load ptr, ptr %23, align 8, !tbaa !413
  %.not985 = icmp eq ptr %i.aps, null
  br i1 %.not985, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.apt = call ptr @_ZN4mlir4LLVM13GlobalCtorsOp8getCtorsEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #22
  %i.apu = call ptr @_ZN4mlir4LLVM13GlobalCtorsOp13getPrioritiesEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #22
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.apv = call ptr @_ZN4mlir4LLVM13GlobalDtorsOp8getDtorsEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #22
  %i.apw = call ptr @_ZN4mlir4LLVM13GlobalDtorsOp13getPrioritiesEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #22
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %storemerge1335.in = phi ptr [ %i.apu, %bb.dh ], [ %i.apw, %bb.di ]
  %storemerge.in = phi ptr [ %i.apt, %bb.dh ], [ %i.apv, %bb.di ]
  %storemerge1335 = ptrtoint ptr %storemerge1335.in to i64
  store i64 %storemerge1335, ptr %30, align 8
  %storemerge = ptrtoint ptr %storemerge.in to i64
  store i64 %storemerge, ptr %i.ang, align 8
  %i.apx = load ptr, ptr %23, align 8, !tbaa !413
  %.not986 = icmp eq ptr %i.apx, null
  %_ZN4llvm19appendToGlobalCtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE._ZN4llvm19appendToGlobalDtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE = select i1 %.not986, ptr @_ZN4llvm19appendToGlobalDtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE, ptr @_ZN4llvm19appendToGlobalCtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE
  %i.apy = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ang) #22, !noalias !1092
  %i.apz = extractvalue { ptr, i64 } %i.apy, 0    ; 2 uses
  %i.aqa = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #22, !noalias !1092
  %i.aqb = extractvalue { ptr, i64 } %i.aqa, 0    ; 2 uses
  %i.aqc = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ang) #22, !noalias !1093 ; 2 uses
  %i.aqd = extractvalue { ptr, i64 } %i.aqc, 0
  %i.aqe = extractvalue { ptr, i64 } %i.aqc, 1
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqd, i64 %i.aqe ; 2 uses
  %i.aqg = call { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #22, !noalias !1093 ; 2 uses
  %i.aqh = extractvalue { ptr, i64 } %i.aqg, 0
  %i.aqi = extractvalue { ptr, i64 } %i.aqg, 1
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %i.aqi ; 2 uses
  %i.aqk = icmp ne ptr %i.apz, %i.aqf
  %i.aql = icmp ne ptr %i.aqb, %i.aqj
  %.not3.i1087 = select i1 %i.aqk, i1 %i.aql, i1 false
  br i1 %.not3.i1087, label %.lr.ph1091, label %._crit_edge1092

._crit_edge1092:                                  ; preds = %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.dl

.lr.ph1091:                                       ; preds = %bb.dj, %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit
  %.sroa.0676.01089 = phi ptr [ %i.are, %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit ], [ %i.aqb, %bb.dj ] ; 2 uses
  %.sroa.7.01088 = phi ptr [ %i.ard, %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit ], [ %i.apz, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %.sroa.0.0.copyload.i473 = load ptr, ptr %.sroa.7.01088, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i473, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aqm = call ptr @_ZNK4mlir13SymbolRefAttr16getRootReferenceEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #22
  store ptr %i.aqm, ptr %1, align 8
  %i.aqn = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.aqo = extractvalue { ptr, i64 } %i.aqn, 0    ; 2 uses
  %i.aqp = extractvalue { ptr, i64 } %i.aqn, 1    ; 2 uses
  %i.aqq = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %i.aqo, i64 %i.aqp) #22
  %i.aqr = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.anh, ptr %i.aqo, i64 %i.aqp, i32 noundef %i.aqq) #22 ; 2 uses
  %i.aqs = icmp eq i32 %i.aqr, -1
  %i.aqt = load ptr, ptr %i.anh, align 8, !tbaa !216
  br i1 %i.aqs, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit, label %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %.lr.ph1091
  %i.aqu = sext i32 %i.aqr to i64                 ; 2 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !217
  %.pre6.i.i = zext i32 %.pre.i.i to i64
  %i.aqv = icmp eq i64 %i.aqu, %.pre6.i.i
  br i1 %i.aqv, label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %i.aqu
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !219
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !223
  br label %_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit

_ZNK4mlir4LLVM17ModuleTranslation14lookupFunctionEN4llvm9StringRefE.exit: ; preds = %.lr.ph1091, %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i, %bb.dk
  %.0.i.i = phi ptr [ %i.aqz, %bb.dk ], [ null, %_ZNK4llvm9StringMapIPNS_8FunctionENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i ], [ null, %.lr.ph1091 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.ara = load ptr, ptr %i.ani, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %.sroa.0.0.copyload.i474 = load ptr, ptr %.sroa.0676.01089, align 8, !tbaa !68
  store ptr %.sroa.0.0.copyload.i474, ptr %32, align 8
  %i.arb = call noundef i64 @_ZNK4mlir11IntegerAttr6getIntEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #22
  %i.arc = trunc i64 %i.arb to i32
  call void %_ZN4llvm19appendToGlobalCtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE._ZN4llvm19appendToGlobalDtorsERNS_6ModuleEPNS_8FunctionEiPNS_8ConstantE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ara, ptr noundef %.0.i.i, i32 noundef %i.arc, ptr noundef null) #22, !callees !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.7.01088, i64 8 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.0676.01089, i64 8 ; 2 uses
  %i.arf = icmp ne ptr %i.ard, %i.aqf
  %i.arg = icmp ne ptr %i.are, %i.aqj
  %.not3.i = select i1 %i.arf, i1 %i.arg, i1 false
  br i1 %.not3.i, label %.lr.ph1091, label %._crit_edge1092

bb.dl:                                            ; preds = %bb.df, %._crit_edge1092, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.arh = getelementptr inbounds nuw i8, ptr %.sroa.0688.01095, i64 8
  %.sroa.0688.0 = load ptr, ptr %i.arh, align 8, !tbaa !366 ; 2 uses
  %.not977 = icmp eq ptr %.sroa.0688.0, %i.anf
  br i1 %.not977, label %._crit_edge1097.loopexit, label %bb.db

.lr.ph1100:                                       ; preds = %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478
  %.sroa.0656.01099 = phi ptr [ %.sroa.0656.2, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478 ], [ %.sroa.010.1.i460, %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467 ] ; 2 uses
  %i.ari = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0656.01099) #22
  %i.arj = call i8 @_ZN4mlir4LLVM17ModuleTranslation24convertDialectAttributesEPNS_9OperationEN4llvm8ArrayRefIPNS4_11InstructionEEE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef %i.ari, ptr null, i64 0)
  %i.ark = trunc nuw i8 %i.arj to i1
  br i1 %i.ark, label %bb.dm, label %.thread937

bb.dm:                                            ; preds = %.lr.ph1100
  %i.arl = getelementptr inbounds nuw i8, ptr %.sroa.0656.01099, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !366 ; 3 uses
  %.not1.i.i.i475 = icmp eq ptr %i.arm, %i.aod
  br i1 %.not1.i.i.i475, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478, label %.lr.ph.i.i.i476

.lr.ph.i.i.i476:                                  ; preds = %bb.dm, %bb.dn
  %.sroa.0656.1 = phi ptr [ %i.art, %bb.dn ], [ %i.arm, %bb.dm ] ; 3 uses
  %i.arn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.0656.1) #22
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i1433 = load ptr, ptr %i.aro, align 8, !tbaa !394
  %i.arp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i1433, i64 16
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !395
  %i.arr = icmp eq ptr %i.arq, @_ZN4mlir6detail14TypeIDResolverINS_4LLVM8GlobalOpEvE2idE
  br i1 %i.arr, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i476
  %i.ars = getelementptr inbounds nuw i8, ptr %.sroa.0656.1, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !366 ; 3 uses
  %.not.i.i.i477 = icmp eq ptr %i.art, %i.aod
  br i1 %.not.i.i.i477, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478, label %.lr.ph.i.i.i476, !llvm.loop !7

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478: ; preds = %.lr.ph.i.i.i476, %bb.dn, %bb.dm
  %.sroa.0656.2 = phi ptr [ %i.arm, %bb.dm ], [ %.sroa.0656.1, %.lr.ph.i.i.i476 ], [ %i.art, %bb.dn ] ; 2 uses
  %.not978 = icmp eq ptr %.sroa.0656.2, %i.aod
  br i1 %.not978, label %._crit_edge1101, label %.lr.ph1100

._crit_edge1101:                                  ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorIN4mlir6detail18op_filter_iteratorINS2_4LLVM8GlobalOpENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS2_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEPFS6_RSA_ES6_EESD_St26bidirectional_iterator_tagS6_lPS6_S6_EppEv.exit478, %_ZN4mlir5Block6getOpsINS_4LLVM8GlobalOpEEEN4llvm14iterator_rangeINS_6detail11op_iteratorIT_NS4_14ilist_iteratorINS4_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEEEEEEv.exit467
  %i.aru = load ptr, ptr %3, align 8, !tbaa !495, !noalias !1095
  %i.arv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !496, !noalias !1095 ; 4 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !497, !noalias !1095 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.asa = load i32, ptr %i.arz, align 8, !tbaa !500, !noalias !1095
  %i.asb = icmp eq i32 %i.asa, 0
  %i.asc = zext i32 %i.ary to i64                 ; 3 uses
  %.idx1419 = mul nuw nsw i64 %i.asc, 72          ; 2 uses
  %.not.i.not.i.i479 = icmp eq i32 %i.ary, 0
  %or.cond964 = select i1 %i.asb, i1 true, i1 %.not.i.not.i.i479
  br i1 %or.cond964, label %._crit_edge1105, label %bb.do

bb.do:                                            ; preds = %._crit_edge1101
  %i.asd = add nuw nsw i64 %i.asc, 31
  %i.ase = lshr i64 %i.asd, 5                     ; 4 uses
  %i.asf = load i32, ptr %i.arw, align 4, !tbaa !88, !noalias !1096 ; 2 uses
  %i.asg = icmp eq i32 %i.asf, 0
  br i1 %i.asg, label %.lr.ph.i.i.i484.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

.lr.ph.i.i.i484.preheader:                        ; preds = %bb.do
  %i.ash = icmp eq i64 %i.ase, 1
  br i1 %i.ash, label %._crit_edge1105, label %.lr.ph1780

.lr.ph.i.i.i484:                                  ; preds = %.lr.ph1780
  %i.asi = add nuw nsw i64 %i.ask, 1              ; 2 uses
  %i.asj = icmp eq i64 %i.asi, %i.ase
  br i1 %i.asj, label %._crit_edge1105, label %.lr.ph1780, !llvm.loop !1043

.lr.ph1780:                                       ; preds = %.lr.ph.i.i.i484.preheader, %.lr.ph.i.i.i484
  %i.ask = phi i64 [ %i.asi, %.lr.ph.i.i.i484 ], [ 1, %.lr.ph.i.i.i484.preheader ] ; 3 uses
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.ask
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !88, !noalias !1096 ; 2 uses
  %i.asn = icmp eq i32 %i.asm, 0
  br i1 %i.asn, label %.lr.ph.i.i.i484, label %._crit_edge.i.loopexit.i.i486, !llvm.loop !1043

._crit_edge.i.loopexit.i.i486:                    ; preds = %.lr.ph1780
  %i.aso = mul i64 %i.ask, 2304
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit: ; preds = %bb.do, %._crit_edge.i.loopexit.i.i486
  %.012.lcssa.i.i.i481 = phi i64 [ 0, %bb.do ], [ %i.aso, %._crit_edge.i.loopexit.i.i486 ]
  %.0.lcssa.i.i.i482 = phi i32 [ %i.asf, %bb.do ], [ %i.asm, %._crit_edge.i.loopexit.i.i486 ]
  %i.asp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i482, i1 true)
  %narrow = mul nuw nsw i32 %i.asp, 72
  %.idx1418 = zext nneg i32 %narrow to i64
  %i.asq = add i64 %.012.lcssa.i.i.i481, %.idx1418 ; 2 uses
  %.not9791102 = icmp eq i64 %i.asq, %.idx1419
  br i1 %.not9791102, label %._crit_edge1105, label %.lr.ph1104

.lr.ph1104:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.dq

._crit_edge1105:                                  ; preds = %.lr.ph.i.i.i484, %bb.dq, %_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit, %.lr.ph.i.i501.preheader, %.lr.ph.i.i501, %.lr.ph.i.i.i484.preheader, %._crit_edge1101, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit
  %i.ass = load ptr, ptr %4, align 8, !tbaa !529, !noalias !1097
  %i.ast = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !530, !noalias !1097 ; 4 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !531, !noalias !1097 ; 2 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.asy = load i32, ptr %i.asx, align 8, !tbaa !532, !noalias !1097
  %i.asz = icmp eq i32 %i.asy, 0
  %i.ata = zext i32 %i.asw to i64                 ; 3 uses
  %.idx1424 = mul nuw nsw i64 %i.ata, 72          ; 2 uses
  %.not.i.not.i.i487 = icmp eq i32 %i.asw, 0
  %or.cond965 = select i1 %i.asz, i1 true, i1 %.not.i.not.i.i487
  br i1 %or.cond965, label %._crit_edge1109, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge1105
  %i.atb = add nuw nsw i64 %i.ata, 31
  %i.atc = lshr i64 %i.atb, 5                     ; 4 uses
  %i.atd = load i32, ptr %i.asu, align 4, !tbaa !88, !noalias !1098 ; 2 uses
  %i.ate = icmp eq i32 %i.atd, 0
  br i1 %i.ate, label %.lr.ph.i.i.i492.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

.lr.ph.i.i.i492.preheader:                        ; preds = %bb.dp
  %i.atf = icmp eq i64 %i.atc, 1
  br i1 %i.atf, label %._crit_edge1109, label %.lr.ph1782

.lr.ph.i.i.i492:                                  ; preds = %.lr.ph1782
  %i.atg = add nuw nsw i64 %i.ati, 1              ; 2 uses
  %i.ath = icmp eq i64 %i.atg, %i.atc
  br i1 %i.ath, label %._crit_edge1109, label %.lr.ph1782, !llvm.loop !1048

.lr.ph1782:                                       ; preds = %.lr.ph.i.i.i492.preheader, %.lr.ph.i.i.i492
  %i.ati = phi i64 [ %i.atg, %.lr.ph.i.i.i492 ], [ 1, %.lr.ph.i.i.i492.preheader ] ; 3 uses
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !88, !noalias !1098 ; 2 uses
  %i.atl = icmp eq i32 %i.atk, 0
  br i1 %i.atl, label %.lr.ph.i.i.i492, label %._crit_edge.i.loopexit.i.i494, !llvm.loop !1048

._crit_edge.i.loopexit.i.i494:                    ; preds = %.lr.ph1782
  %i.atm = mul i64 %i.ati, 2304
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E5beginEv.exit: ; preds = %bb.dp, %._crit_edge.i.loopexit.i.i494
  %.012.lcssa.i.i.i489 = phi i64 [ 0, %bb.dp ], [ %i.atm, %._crit_edge.i.loopexit.i.i494 ]
  %.0.lcssa.i.i.i490 = phi i32 [ %i.atd, %bb.dp ], [ %i.atk, %._crit_edge.i.loopexit.i.i494 ]
  %i.atn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i490, i1 true)
  %narrow1425 = mul nuw nsw i32 %i.atn, 72
  %.idx1423 = zext nneg i32 %narrow1425 to i64
  %i.ato = add i64 %.012.lcssa.i.i.i489, %.idx1423 ; 2 uses
  %.not9801106 = icmp eq i64 %i.ato, %.idx1424
  br i1 %.not9801106, label %._crit_edge1109, label %.lr.ph1108

bb.dq:                                            ; preds = %.lr.ph1104, %_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit
  %.pn1422 = phi i64 [ %i.asq, %.lr.ph1104 ], [ %i.aur, %_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0647.01103 = getelementptr i8, ptr %i.aru, i64 %.pn1422 ; 3 uses
  %i.atp = load ptr, ptr %.sroa.0647.01103, align 8, !tbaa !1105
  %i.atq = load ptr, ptr %i.asr, align 8, !tbaa !110
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !214, !nonnull !54, !align !76
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0647.01103, i64 8
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !56
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.0647.01103, i64 16
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !57
  %i.atw = zext i32 %i.atv to i64
  %i.atx = call noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8) %i.atr, ptr %i.att, i64 %i.atw, i32 noundef 0, i1 noundef zeroext true) #22
  call void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(52) %i.atp, i32 noundef 6, ptr noundef %i.atx) #22
  %i.aty = add i64 %.pn1422, 72
  %i.atz = sdiv exact i64 %i.aty, 72              ; 3 uses
  %.not.i.i495 = icmp ult i64 %i.atz, %i.asc
  br i1 %.not.i.i495, label %bb.dr, label %._crit_edge1105

bb.dr:                                            ; preds = %bb.dq
  %i.aua = lshr i64 %i.atz, 5                     ; 3 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !88
  %i.aud = trunc nuw i64 %i.atz to i32
  %i.aue = and i32 %i.aud, 31
  %i.auf = shl nsw i32 -1, %i.aue
  %i.aug = and i32 %i.auc, %i.auf                 ; 2 uses
  %i.auh = icmp eq i32 %i.aug, 0
  br i1 %i.auh, label %.lr.ph.i.i501.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit

.lr.ph.i.i501.preheader:                          ; preds = %bb.dr
  %i.aui = add nuw nsw i64 %i.aua, 1              ; 2 uses
  %i.auj = icmp eq i64 %i.aui, %i.ase
  br i1 %i.auj, label %._crit_edge1105, label %.lr.ph1781

.lr.ph.i.i501:                                    ; preds = %.lr.ph1781
  %i.auk = add i64 %i.aum, 1                      ; 2 uses
  %i.aul = icmp eq i64 %i.auk, %i.ase
  br i1 %i.aul, label %._crit_edge1105, label %.lr.ph1781, !llvm.loop !1043

.lr.ph1781:                                       ; preds = %.lr.ph.i.i501.preheader, %.lr.ph.i.i501
  %i.aum = phi i64 [ %i.auk, %.lr.ph.i.i501 ], [ %i.aui, %.lr.ph.i.i501.preheader ] ; 3 uses
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !88 ; 2 uses
  %i.aup = icmp eq i32 %i.auo, 0
  br i1 %i.aup, label %.lr.ph.i.i501, label %_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit, !llvm.loop !1043

_ZN4llvm16DenseMapIteratorIPNS_13DICompileUnitENS_11SmallVectorIPNS_8MetadataELj6EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EELb0EEppEv.exit: ; preds = %.lr.ph1781, %bb.dr
  %.012.lcssa.i.i498 = phi i64 [ %i.aua, %bb.dr ], [ %i.aum, %.lr.ph1781 ]
  %.0.lcssa.i.i499 = phi i32 [ %i.aug, %bb.dr ], [ %i.auo, %.lr.ph1781 ]
  %i.auq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i499, i1 true)
  %.idx.i.i500 = mul i64 %.012.lcssa.i.i498, 2304
end_hunk_0
begin_hunk_1_@_ZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS_10DataLayoutESt8optionalINS_8LocationEE:bb.a
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp ult i64 %i.fb, 2
  br i1 %i.fc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.118, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128

bb.aa:                                            ; preds = %bb.y
  store i16 18221, ptr %i.ey, align 1
  %i.fe = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  store ptr %i.ff, ptr %i.t, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit128

_ZN4llvm11raw_ostreamlsEPKc.exit128:              ; preds = %bb.z, %bb.aa
  %.0.i.i127 = phi ptr [ %i.fd, %bb.z ], [ %14, %bb.aa ]
  %i.fg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i127, i64 noundef %.0.i125) #22 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %_ZN4llvm11raw_ostreamlsEPKc.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bb

_ZN4llvmeqENS_9StringRefES0_.exit122.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit113.thread, %_ZN4llvmeqENS_9StringRefES0_.exit122
  %i.fh = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #22 ; 2 uses
  %i.fi = extractvalue { ptr, i64 } %i.fh, 1
  %.not.i129 = icmp eq i64 %i.fi, 24
  br i1 %.not.i129, label %_ZN4llvmeqENS_9StringRefES0_.exit132, label %_ZN4llvmeqENS_9StringRefES0_.exit132.thread

_ZN4llvmeqENS_9StringRefES0_.exit132:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit122.thread
  %i.fj = extractvalue { ptr, i64 } %i.fh, 0      ; 2 uses
  %i.fk = load i128, ptr %i.fj, align 1
  %i.fl = xor i128 %i.fk, 148112325078464452284571547300657392740
  %i.fm = getelementptr i8, ptr %i.fj, i64 16
  %i.fn = load i64, ptr %i.fm, align 1
  %i.fo = zext i64 %i.fn to i128
  %i.fp = xor i128 %i.fo, 7305790156124944754
  %i.fq = or i128 %i.fl, %i.fp
  %i.fr = icmp ne i128 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ac, label %_ZN4llvmeqENS_9StringRefES0_.exit132.thread

bb.ac:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fu = call ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  store ptr %i.fu, ptr %21, align 8
  %i.fv = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #22 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !74
  %i.fy = icmp ult i32 %i.fx, 65
  %i.fz = load ptr, ptr %i.fv, align 8
  %spec.select.i134 = select i1 %i.fy, ptr %i.fv, ptr %i.fz
  %.0.i135 = load i64, ptr %spec.select.i134, align 8, !tbaa !41 ; 2 uses
  %i.ga = icmp eq i64 %.0.i135, 0
  br i1 %i.ga, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.gc = load ptr, ptr %i.t, align 8, !tbaa !663 ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = icmp ult i64 %i.gf, 2
  br i1 %i.gg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.119, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit138

bb.af:                                            ; preds = %bb.ad
  store i16 16685, ptr %i.gc, align 1
  %i.gi = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store ptr %i.gj, ptr %i.t, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit138

_ZN4llvm11raw_ostreamlsEPKc.exit138:              ; preds = %bb.ae, %bb.af
  %.0.i.i137 = phi ptr [ %i.gh, %bb.ae ], [ %14, %bb.af ]
  %i.gk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i137, i64 noundef %.0.i135) #22 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %_ZN4llvm11raw_ostreamlsEPKc.exit138
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bb

_ZN4llvmeqENS_9StringRefES0_.exit132.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit122.thread, %_ZN4llvmeqENS_9StringRefES0_.exit132
  %i.gl = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #22 ; 2 uses
  %i.gm = extractvalue { ptr, i64 } %i.gl, 1
  %.not.i139 = icmp eq i64 %i.gm, 20
  br i1 %.not.i139, label %_ZN4llvmeqENS_9StringRefES0_.exit142, label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread

_ZN4llvmeqENS_9StringRefES0_.exit142:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit132.thread
  %i.gn = extractvalue { ptr, i64 } %i.gl, 0      ; 2 uses
  %i.go = load i128, ptr %i.gn, align 1
  %i.gp = xor i128 %i.go, 146752024352555169263097948466215939172
  %i.gq = getelementptr i8, ptr %i.gn, i64 16
  %i.gr = load i32, ptr %i.gq, align 1
  %i.gs = zext i32 %i.gr to i128
  %i.gt = xor i128 %i.gs, 1953391981
  %i.gu = or i128 %i.gp, %i.gt
  %i.gv = icmp ne i128 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ah, label %_ZN4llvmeqENS_9StringRefES0_.exit142.thread

bb.ah:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.gy = call ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  store ptr %i.gy, ptr %22, align 8
  %i.gz = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #22 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !74
  %i.hc = icmp ult i32 %i.hb, 65
  %i.hd = load ptr, ptr %i.gz, align 8
  %spec.select.i144 = select i1 %i.hc, ptr %i.gz, ptr %i.hd
  %.0.i145 = load i64, ptr %spec.select.i144, align 8, !tbaa !41 ; 2 uses
  %i.he = icmp eq i64 %.0.i145, 0
  br i1 %i.he, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hf = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.hg = load ptr, ptr %i.t, align 8, !tbaa !663 ; 2 uses
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp ult i64 %i.hj, 2
  br i1 %i.hk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.120, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit148

bb.ak:                                            ; preds = %bb.ai
  store i16 21293, ptr %i.hg, align 1
  %i.hm = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store ptr %i.hn, ptr %i.t, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit148

_ZN4llvm11raw_ostreamlsEPKc.exit148:              ; preds = %bb.aj, %bb.ak
  %.0.i.i147 = phi ptr [ %i.hl, %bb.aj ], [ %14, %bb.ak ]
  %i.ho = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i147, i64 noundef %.0.i145) #22 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %_ZN4llvm11raw_ostreamlsEPKc.exit148
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.bb

_ZN4llvmeqENS_9StringRefES0_.exit142.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit132.thread, %_ZN4llvmeqENS_9StringRefES0_.exit142
  %i.hp = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #22 ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 1
  %.not.i149 = icmp eq i64 %i.hq, 31
  br i1 %.not.i149, label %_ZN4llvmeqENS_9StringRefES0_.exit152, label %_ZN4llvmeqENS_9StringRefES0_.exit152.thread

_ZN4llvmeqENS_9StringRefES0_.exit152:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread
  %i.hr = extractvalue { ptr, i64 } %i.hp, 0      ; 2 uses
  %i.hs = load i128, ptr %i.hr, align 1
  %i.ht = xor i128 %i.hs, 148127780358772108994413304692553837668
  %i.hu = getelementptr i8, ptr %i.hr, i64 15
  %i.hv = load i128, ptr %i.hu, align 1
  %i.hw = xor i128 %i.hv, 154763657358897123457019368120041498991
  %i.hx = or i128 %i.ht, %i.hw
  %i.hy = icmp ne i128 %i.hx, 0
  %i.hz = zext i1 %i.hy to i32
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.am, label %_ZN4llvmeqENS_9StringRefES0_.exit152.thread

bb.am:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ib = call ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  store ptr %i.ib, ptr %23, align 8
  %i.ic = call noundef i64 @_ZNK4mlir28FunctionPointerAlignmentAttr12getAlignmentEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #22 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ie = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.if = load ptr, ptr %i.t, align 8, !tbaa !663 ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = icmp ult i64 %i.ii, 2
  br i1 %i.ij, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ik = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.121, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit156

bb.ap:                                            ; preds = %bb.an
  store i16 17965, ptr %i.if, align 1
  %i.il = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store ptr %i.im, ptr %i.t, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit156

_ZN4llvm11raw_ostreamlsEPKc.exit156:              ; preds = %bb.ao, %bb.ap
  %.0.i.i155 = phi ptr [ %i.ik, %bb.ao ], [ %14, %bb.ap ] ; 4 uses
  %i.in = call noundef zeroext i1 @_ZNK4mlir28FunctionPointerAlignmentAttr20getFunctionDependentEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #22 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !662
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i.i155, i64 32 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !663 ; 2 uses
  %i.is = icmp eq ptr %i.ip, %i.ir
  br i1 %i.is, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit156
  %.str.122..str.123 = select i1 %i.in, ptr @.str.122, ptr @.str.123
  %i.it = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i155, ptr noundef nonnull %.str.122..str.123, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159

bb.ar:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit156
  %29 = select i1 %i.in, i8 110, i8 105
  store i8 %29, ptr %i.ir, align 1
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !663
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  store ptr %i.iv, ptr %i.iq, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit159

_ZN4llvm11raw_ostreamlsEPKc.exit159:              ; preds = %bb.aq, %bb.ar
  %.0.i.i158 = phi ptr [ %i.it, %bb.aq ], [ %.0.i.i155, %bb.ar ]
  %i.iw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i158, i64 noundef %i.ic) #22 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %_ZN4llvm11raw_ostreamlsEPKc.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bb

_ZN4llvmeqENS_9StringRefES0_.exit152.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit142.thread, %_ZN4llvmeqENS_9StringRefES0_.exit152
  %i.ix = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #22 ; 2 uses
  %i.iy = extractvalue { ptr, i64 } %i.ix, 1
  %.not.i160 = icmp eq i64 %i.iy, 21
  br i1 %.not.i160, label %_ZN4llvmeqENS_9StringRefES0_.exit163, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit163:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit152.thread
  %i.iz = extractvalue { ptr, i64 } %i.ix, 0      ; 2 uses
  %i.ja = load i128, ptr %i.iz, align 1
  %i.jb = xor i128 %i.ja, 158673761207188983459579177659977198692
  %i.jc = getelementptr i8, ptr %i.iz, i64 5
  %i.jd = load i128, ptr %i.jc, align 1
  %i.je = xor i128 %i.jd, 153403579103523461453877474176340026732
  %i.jf = or i128 %i.jb, %i.je
  %i.jg = icmp ne i128 %i.jf, 0
  %i.jh = zext i1 %i.jg to i32
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.at, label %.critedge

bb.at:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit163
  %i.jj = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.jk = load ptr, ptr %i.t, align 8, !tbaa !663 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = icmp ult i64 %i.jn, 2
  br i1 %i.jo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.124, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

bb.av:                                            ; preds = %bb.at
  store i16 28205, ptr %i.jk, align 1
  %i.jq = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  store ptr %i.jr, ptr %i.t, align 8, !tbaa !663
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit166

_ZN4llvm11raw_ostreamlsEPKc.exit166:              ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.js = call ptr @_ZNK4mlir24DataLayoutEntryInterface8getValueEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  store ptr %i.js, ptr %24, align 8
  %i.jt = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIiEcvN4llvm8ArrayRefIiEEEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #22 ; 2 uses
  %i.ju = extractvalue { ptr, i64 } %i.jt, 0      ; 3 uses
  %i.jv = extractvalue { ptr, i64 } %i.jt, 1      ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.jv, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 %.idx.i
  %i.jx = icmp eq i64 %i.jv, 0
  br i1 %i.jx, label %"_ZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit166
  %i.jy = load i32, ptr %i.ju, align 4, !tbaa !88
  %i.jz = sext i32 %i.jy to i64
  %i.ka = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %14, i64 noundef %i.jz) #22 ; 0 uses
  %.not16.i.i = icmp eq i64 %i.jv, 1
  br i1 %.not16.i.i, label %"_ZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aw
  %.015.i.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i", %.lr.ph.i.i
  %.017.i.i = phi ptr [ %.015.i.i, %.lr.ph.i.i ], [ %.0.i.i168, %"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i" ] ; 2 uses
  %i.kb = load ptr, ptr %i.s, align 8, !tbaa !662
  %i.kc = load ptr, ptr %i.t, align 8, !tbaa !663 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ke = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull @.str.125, i64 noundef 1) #22 ; 0 uses
  br label %"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"

bb.az:                                            ; preds = %bb.ax
  store i8 58, ptr %i.kc, align 1
  %i.kf = load ptr, ptr %i.t, align 8, !tbaa !663
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store ptr %i.kg, ptr %i.t, align 8, !tbaa !663
  br label %"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i"

"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i": ; preds = %bb.az, %bb.ay
  %i.kh = load i32, ptr %.017.i.i, align 4, !tbaa !88
  %i.ki = sext i32 %i.kh to i64
  %i.kj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %14, i64 noundef %i.ki) #22 ; 0 uses
  %.0.i.i168 = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i168, %i.jw
  br i1 %.not.i.i, label %"_ZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefE.exit", label %bb.ax, !llvm.loop !1549

"_ZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefE.exit": ; preds = %"_ZZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefEENKUlvE_clEv.exit.i.i", %_ZN4llvm11raw_ostreamlsEPKc.exit166, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.bb

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit152.thread, %_ZN4llvmeqENS_9StringRefES0_.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %.sroa.013.0.copyload = load ptr, ptr %12, align 8
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %25, ptr %.sroa.013.0.copyload) #22
  %i.kk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA29_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 1 dereferenceable(29) @.str.126) ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !51
  %.not.i.i169 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i169, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_10StringAttrEEEOS0_OT_.exit, label %bb.ba

bb.ba:                                            ; preds = %.critedge
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.0.0.copyload.i.i.i170 = load ptr, ptr %16, align 8
  %i.kn = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(192) %i.km, ptr %.sroa.0.0.copyload.i.i.i170) #22 ; 0 uses
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_10StringAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_10StringAttrEEEOS0_OT_.exit: ; preds = %.critedge, %bb.ba
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i8 0, ptr %i.ko, align 8, !tbaa !621
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.co

bb.bb:                                            ; preds = %bb.e, %"_ZN4llvm10interleaveINS_8ArrayRefIiEEZL19translateDataLayoutN4mlir23DataLayoutSpecInterfaceERKNS3_10DataLayoutESt8optionalINS3_8LocationEEE3$_0NS_18raw_string_ostreamEKiEEvRKT_RT1_T0_RKNS_9StringRefE.exit", %bb.as, %bb.al, %bb.ag, %bb.ab, %bb.w, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, %_ZN4llvm11raw_ostreamlsEPKc.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = getelementptr inbounds nuw i8, ptr %.0256, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kp, %i.r
  br i1 %.not, label %.critedge85, label %bb.e

.critedge85:                                      ; preds = %bb.bb, %bb.d
  %i.kq = call { ptr, i64 } @_ZNK4mlir23DataLayoutSpecInterface10getEntriesEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #22 ; 2 uses
  %i.kr = extractvalue { ptr, i64 } %i.kq, 0      ; 2 uses
  %i.ks = extractvalue { ptr, i64 } %i.kq, 1      ; 2 uses
  %.idx260 = shl nuw nsw i64 %i.ks, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.idx260
  %.not83257 = icmp eq i64 %i.ks, 0
  br i1 %.not83257, label %.critedge87, label %.lr.ph259

.lr.ph259:                                        ; preds = %.critedge85
  %i.ku = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ky = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.la = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 6 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph259, %bb.cm
  %.077258 = phi ptr [ %i.kr, %.lr.ph259 ], [ %i.pj, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %.077258, i64 16, i1 false)
  %i.lg = call i64 @_ZNK4mlir24DataLayoutEntryInterface6getKeyEv(ptr noundef nonnull align 8 dereferenceable(16) %26) #22 ; 2 uses
  %i.lh = and i64 %i.lg, 4
  %i.li = icmp ne i64 %i.lh, 0
  %i.lj = and i64 %i.lg, -5                       ; 2 uses
  %i.lk = inttoptr i64 %i.lj to ptr               ; 10 uses
  %i.ll = icmp eq i64 %i.lj, 0
  %i.lm = or i1 %i.li, %i.ll
  br i1 %i.lm, label %bb.cm, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ln = load ptr, ptr %i.lk, align 8, !tbaa !72
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.lp = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  br i1 %i.lp, label %bb.cm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lq = load ptr, ptr %i.ku, align 8, !tbaa !662
  %i.lr = load ptr, ptr %i.kv, align 8, !tbaa !663 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str.113, i64 noundef 1) #22 ; 0 uses
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  store i8 45, ptr %i.lr, align 1
  %i.lu = load ptr, ptr %i.kv, align 8, !tbaa !663
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  store ptr %i.lv, ptr %i.kv, align 8, !tbaa !663
  br label %bb.bh

end_hunk_1
