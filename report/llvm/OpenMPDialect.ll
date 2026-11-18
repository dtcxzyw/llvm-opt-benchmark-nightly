Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenMPDialect?download=true
inline.NumInlined: 86000
inline.NumDeleted: 22767
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 325
begin_hunk_0_@_ZL20verifyPrivateVarListIN4mlir3omp6SimdOpEEN4llvm13LogicalResultERT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 1, ptr %i.cv, align 8, !tbaa !128
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.cw, align 1, !tbaa !129
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %20) #32
  %i.cx = load ptr, ptr %19, align 8, !tbaa !273
  %.not.i.i26 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i26, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i32 3, ptr %11, align 8, !tbaa !287
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.1342, ptr %i.cz, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 45, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i27, align 8, !tbaa !140
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 9 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !136 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 36 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !137
  %.not.i.i.i.i.i28 = icmp ult i32 %i.db, %i.dd
  br i1 %.not.i.i.i.i.i28, label %bb.ad, label %bb.ac, !prof !138

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.de = zext i32 %i.db to i64
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !135
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.dh = load i32, ptr %i.da, align 8, !tbaa !136
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.da, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %.pr89 = load ptr, ptr %19, align 8, !tbaa !273
  %.not.i.i29 = icmp eq ptr %.pr89, null
  br i1 %.not.i.i29, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %.sroa.0.0.copyload.i) #32
  %i.dj = load i32, ptr %i.da, align 8, !tbaa !136 ; 2 uses
  %i.dk = load i32, ptr %i.dc, align 4, !tbaa !137
  %.not.i.i.i.i.i30 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i.i.i.i.i30, label %bb.ag, label %bb.af, !prof !138

bb.af:                                            ; preds = %bb.ae
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dl = zext i32 %i.dj to i64
  %i.dm = load ptr, ptr %i.cy, align 8, !tbaa !135
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.do = load i32, ptr %i.da, align 8, !tbaa !136
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.da, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.pr91 = load ptr, ptr %19, align 8, !tbaa !273
  %.not.i.i31 = icmp eq ptr %.pr91, null
  br i1 %.not.i.i31, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  store i32 3, ptr %9, align 8, !tbaa !287
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.128, ptr %i.dq, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i32, align 8, !tbaa !140
  %i.dr = load i32, ptr %i.da, align 8, !tbaa !136 ; 2 uses
  %i.ds = load i32, ptr %i.dc, align 4, !tbaa !137
  %.not.i.i.i.i.i33 = icmp ult i32 %i.dr, %i.ds
  br i1 %.not.i.i.i.i.i33, label %bb.aj, label %bb.ai, !prof !138

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dt = zext i32 %i.dr to i64
  %i.du = load ptr, ptr %i.cy, align 8, !tbaa !135
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.dw = load i32, ptr %i.da, align 8, !tbaa !136
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.da, align 8, !tbaa !136
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %bb.aa, %_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRNS_13SymbolRefAttrEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
  %i.dy = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #32
  %i.dz = load ptr, ptr %19, align 8, !tbaa !273
  %.not.i34 = icmp eq ptr %i.dz, null
  br i1 %.not.i34, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %19) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %19, i64 200 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !274, !range !275, !noundef !122
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.am, label %.thread105

bb.am:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.ea, align 8, !tbaa !274
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ed) #32
  br label %.thread105

.thread105:                                       ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.thread107

_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp15PrivateClauseOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 44
  %i.ef = load i32, ptr %i.ee, align 4            ; 3 uses
  %i.eg = and i32 %i.ef, 8388607                  ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp15PrivateClauseOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit
  %i.ei = zext nneg i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.ek = lshr i32 %i.ef, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i36 = and i32 %i.ek, 1
  %i.el = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i36 to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.el
  %i.en = lshr i32 %i.ef, 21
  %i.eo = and i32 %i.en, 2040
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.es = load i32, ptr %i.er, align 8, !tbaa !306
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.et
  br label %_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i

_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i: ; preds = %bb.an, %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp15PrivateClauseOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit
  %.sroa.0.0.i.i.i37 = phi ptr [ %i.eu, %bb.an ], [ null, %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp15PrivateClauseOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.ei, %bb.an ], [ 0, %_ZN4mlir11SymbolTable23lookupNearestSymbolFromINS_3omp15PrivateClauseOpEEET_PNS_9OperationENS_13SymbolRefAttrE.exit ]
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.0.0.i.i.i37, i64 %.sroa.4.0.i.i.i) #32
  %.fca.0.load.i.i = load i64, ptr %7, align 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i64 %.fca.0.load.i.i, ptr %8, align 8
  store i64 0, ptr %i.ck, align 8
  %.not30.i = icmp eq i64 %.fca.1.load.i.i, 0
  br i1 %.not30.i, label %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i, %bb.ao
  %storemerge31.i = phi i64 [ %i.fa, %bb.ao ], [ 0, %_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i ]
  %i.ev = call noundef ptr @_ZN4mlir11RegionRange20dereference_iteratorERKN4llvm12PointerUnionIJPNS_6RegionEPKSt10unique_ptrIS3_St14default_deleteIS3_EEPS4_EEEl(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %storemerge31.i) #32
  %i.ew = call { ptr, ptr } @_ZN4mlir6Region16getArgumentTypesEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ev) #32 ; 2 uses
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0      ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1
  %.not29.i = icmp eq ptr %i.ex, %i.ey
  br i1 %.not29.i, label %bb.ao, label %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit

bb.ao:                                            ; preds = %.lr.ph.i
  %i.ez = load i64, ptr %i.ck, align 8, !tbaa !336
  %i.fa = add nsw i64 %i.ez, 1                    ; 3 uses
  store i64 %i.fa, ptr %i.ck, align 8
  %.not.i38 = icmp eq i64 %i.fa, %.fca.1.load.i.i
  br i1 %.not.i38, label %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit.thread, label %.lr.ph.i

_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit.thread: ; preds = %bb.ao, %_ZN4mlir7OpTrait6detail20MultiRegionTraitBaseINS_3omp15PrivateClauseOpENS0_8NRegionsILj3EE4ImplEE10getRegionsEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.bi

_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload.i16.i = load ptr, ptr %i.ex, align 8, !tbaa !284
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i16.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.fb, align 8
  %i.fc = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.fd = icmp ne i64 %i.fc, 0
  %i.fe = icmp ne i64 %i.co, %i.fc
  %or.cond = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.bi

bb.ap:                                            ; preds = %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cq, i64 44 ; 2 uses
  %i.fg = inttoptr i64 %i.co to ptr
  %i.fh = inttoptr i64 %i.fc to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 1, ptr %i.fi, align 8, !tbaa !128
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.fj, align 1, !tbaa !129
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %22) #32
  %i.fk = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i.i39 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i39, label %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit.thread, label %bb.aq

_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit.thread: ; preds = %bb.ap
  %23 = load i32, ptr %i.ff, align 4
  %.not.i.i.i.i161 = icmp ugt i32 %23, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i161)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i32 3, ptr %6, align 8, !tbaa !287
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.1343, ptr %i.fm, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i40 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 24, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i40, align 8, !tbaa !140
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !136 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %21, i64 36
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !137
  %.not.i.i.i.i.i41 = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i.i.i.i.i41, label %bb.as, label %bb.ar, !prof !138

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit

bb.as:                                            ; preds = %bb.aq
  %i.fr = zext i32 %i.fo to i64
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !135
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.fu = load i32, ptr %i.fn, align 8, !tbaa !136
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.fn, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.pre = load ptr, ptr %21, align 8, !tbaa !273
  %i.fw = icmp eq ptr %.pre, null
  %i.fx = load i32, ptr %i.ff, align 4            ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.fx, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  br i1 %i.fw, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.fz = lshr i32 %i.fx, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.fz, 1
  %i.ga = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.ga
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !316
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !339
  %i.ge = icmp eq i32 %i.gd, 0
  %i.gf = select i1 %i.ge, ptr @.str.41, ptr @.str.42
  %i.gg = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.gh, align 1, !tbaa !129
  store ptr %i.gf, ptr %5, align 8, !tbaa !130
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.gi, align 8, !tbaa !128
  %i.gj = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.gg, ptr noundef nonnull align 8 dereferenceable(34) %5) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.pr94 = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i.i44 = icmp eq ptr %.pr94, null
  br i1 %.not.i.i44, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57, label %bb.at

bb.at:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i32 3, ptr %4, align 8, !tbaa !287
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.1344, ptr %i.gl, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 43, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i45, align 8, !tbaa !140
  %i.gm = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 12 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !136 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 36 ; 4 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !137
  %.not.i.i.i.i.i46 = icmp ult i32 %i.gn, %i.gp
  br i1 %.not.i.i.i.i.i46, label %bb.av, label %bb.au, !prof !138

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA44_KcEEOS0_OT_.exit

bb.av:                                            ; preds = %bb.at
  %i.gq = zext i32 %i.gn to i64
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !135
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.gt = load i32, ptr %i.gm, align 8, !tbaa !136
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gm, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA44_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA44_KcEEOS0_OT_.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.pr96 = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i.i47 = icmp eq ptr %.pr96, null
  br i1 %.not.i.i47, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57, label %bb.aw

bb.aw:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA44_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.fg) #32
  %i.gv = load i32, ptr %i.gm, align 8, !tbaa !136 ; 2 uses
  %i.gw = load i32, ptr %i.go, align 4, !tbaa !137
  %.not.i.i.i.i.i49 = icmp ult i32 %i.gv, %i.gw
  br i1 %.not.i.i.i.i.i49, label %bb.ay, label %bb.ax, !prof !138

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gx = zext i32 %i.gv to i64
  %i.gy = load ptr, ptr %i.gk, align 8, !tbaa !135
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %i.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.gz, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ha = load i32, ptr %i.gm, align 8, !tbaa !136
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gm, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr98.pr = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i.i50 = icmp eq ptr %.pr98.pr, null
  br i1 %.not.i.i50, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57, label %bb.az

bb.az:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store i32 3, ptr %2, align 8, !tbaa !287
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.1345, ptr %i.hc, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i51 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i51, align 8, !tbaa !140
  %i.hd = load i32, ptr %i.gm, align 8, !tbaa !136 ; 2 uses
  %i.he = load i32, ptr %i.go, align 4, !tbaa !137
  %.not.i.i.i.i.i52 = icmp ult i32 %i.hd, %i.he
  br i1 %.not.i.i.i.i.i52, label %bb.bb, label %bb.ba, !prof !138

bb.ba:                                            ; preds = %bb.az
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit

bb.bb:                                            ; preds = %bb.az
  %i.hf = zext i32 %i.hd to i64
  %i.hg = load ptr, ptr %i.gk, align 8, !tbaa !135
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.hf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.hi = load i32, ptr %i.gm, align 8, !tbaa !136
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.gm, align 8, !tbaa !136
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit: ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pr100 = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i.i53 = icmp eq ptr %.pr100, null
  br i1 %.not.i.i53, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57, label %bb.bc

bb.bc:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.fh) #32
  %i.hk = load i32, ptr %i.gm, align 8, !tbaa !136 ; 2 uses
  %i.hl = load i32, ptr %i.go, align 4, !tbaa !137
  %.not.i.i.i.i.i55 = icmp ult i32 %i.hk, %i.hl
  br i1 %.not.i.i.i.i.i55, label %bb.be, label %bb.bd, !prof !138

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i56

bb.be:                                            ; preds = %bb.bc
  %i.hm = zext i32 %i.hk to i64
  %i.hn = load ptr, ptr %i.gk, align 8, !tbaa !135
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hn, i64 %i.hm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.hp = load i32, ptr %i.gm, align 8, !tbaa !136
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.gm, align 8, !tbaa !136
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i56

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i56: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA25_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA44_KcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i56
  %i.hr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #32
  %i.hs = load ptr, ptr %21, align 8, !tbaa !273
  %.not.i58 = icmp eq ptr %i.hs, null
  br i1 %.not.i58, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit57
  %i.ht = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !274, !range !275, !noundef !122
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.hw = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 0, ptr %i.ht, align 8, !tbaa !274
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.hw) #32
  br label %bb.bj

bb.bi:                                            ; preds = %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit, %_ZN4mlir3omp15PrivateClauseOp10getArgTypeEv.exit.thread
  %i.hx = add nuw nsw i64 %.sroa.8.0128, 1        ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.068.0129, i64 8
  %.not115 = icmp eq i64 %i.hx, %i.ac
  br i1 %.not115, label %.thread107, label %bb.y

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br label %.thread107

.thread107:                                       ; preds = %bb.bi, %bb.x, %bb.bj, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %.thread105, %bb.c, %bb.d
  %.sroa.013.5 = phi i8 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.cb, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.dy, %.thread105 ], [ %i.hr, %bb.bj ], [ 1, %bb.x ], [ 1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  ret i8 %.sroa.013.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir3omp6SimdOp17getLinearVarTypesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.d = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !264  ; 2 uses
  %.not = icmp ne ptr %i.h, null
  %spec.select = zext i1 %.not to i8
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %i.h, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %spec.select, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir3omp6SimdOp13verifyRegionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::Region::OpIterator", align 8 ; 4 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = and i32 %i.c, 8388607
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  %i.j = lshr i32 %i.c, 21
  %i.k = and i32 %i.j, 2040
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !306
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.p
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.q, i1 noundef zeroext false) #32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !328
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.s) #32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.u = call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp20LoopWrapperInterfaceENS1_6detail35LoopWrapperInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.t)
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.critedge, label %_ZN4mlir3omp6detail25LoopWrapperInterfaceTraitINS0_6SimdOpEE16getNestedWrapperEv.exit

_ZN4mlir3omp6detail25LoopWrapperInterfaceTraitINS0_6SimdOpEE16getNestedWrapperEv.exit: ; preds = %bb.a
  %i.v = call noundef ptr @_ZN4mlir11OpInterfaceINS_3omp20LoopWrapperInterfaceENS1_6detail35LoopWrapperInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !129
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #32
  %i.y = load ptr, ptr %3, align 8, !tbaa !273
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir3omp6detail25LoopWrapperInterfaceTraitINS0_6SimdOpEE16getNestedWrapperEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 3, ptr %1, align 8, !tbaa !287
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.130, ptr %i.aa, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 37, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !140
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !137
  %.not.i.i.i.i.i = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !136
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !136
  br label %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit: ; preds = %_ZN4mlir3omp6detail25LoopWrapperInterfaceTraitINS0_6SimdOpEE16getNestedWrapperEv.exit, %_ZN4mlir10Diagnostic6appendIRA38_KcEERS0_OT_.exit.i.i
  %i.ak = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #32
  %i.al = load ptr, ptr %3, align 8, !tbaa !273
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !274, !range !275, !noundef !122
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.am, align 8, !tbaa !274
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ap) #32
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ %i.ak, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir3omp12DistributeOp5buildERNS_9OpBuilderERNS_14OperationStateERKNS0_6detail7ClausesIJNS0_17AllocateClauseOpsENS0_21DistScheduleClauseOpsENS0_14OrderClauseOpsENS0_16PrivateClauseOpsEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %4 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  %5 = alloca %"class.mlir::ValueRange", align 8  ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !135
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !136
  %i.d = zext i32 %i.c to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.a, i64 %i.d) #32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load i32, ptr %i.g, align 8, !tbaa !136
  %i.i = zext i32 %i.h to i64
  call void @_ZN4mlir10ValueRangeC2EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.f, i64 %i.i) #32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.05.0.copyload = load ptr, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.04.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !284
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.03.0.copyload = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.02.0.copyload = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135
end_hunk_0
