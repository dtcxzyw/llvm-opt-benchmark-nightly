Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TranslateFromWasm?download=true
inline.NumInlined: 8637
inline.NumDeleted: 3056
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN12_GLOBAL__N_116WasmBinaryParser12parseSectionILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultEv:_ZN4llvmplERKNS_5TwineES2_.exit38
  br label %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit

bb.v:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit

_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.dz = trunc nuw i8 %.sroa.019.0.i to i1
  br i1 %i.dz, label %bb.a, label %.thread

._crit_edge:                                      ; preds = %bb.a, %.preheader
  %i.ea = load i32, ptr %i.x, align 4, !tbaa !105
  %i.eb = zext i32 %i.ea to i64
  %i.ec = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !86
  %.not56 = icmp ugt i64 %i.ec, %i.eb
  br i1 %.not56, label %bb.w, label %.thread

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ed = call ptr @_ZN4mlir14FileLineColLoc3getENS_10StringAttrEjj(ptr %i.s, i32 noundef 0, i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.ee = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.ef, align 1, !tbaa !66
  store ptr @.str.32, ptr %22, align 8, !tbaa !67
  store i8 3, ptr %i.ee, align 8, !tbaa !68
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %21, ptr %i.ed, ptr noundef nonnull align 8 dereferenceable(34) %22) #19
  %i.eg = load ptr, ptr %21, align 8, !tbaa !76
  %.not.i.i40 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i40, label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 4, ptr %i.ei, align 8, !tbaa !68
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.ej, align 1, !tbaa !66
  store ptr %16, ptr %1, align 8, !tbaa !67
  %i.ek = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.eh, ptr noundef nonnull align 8 dereferenceable(34) %1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit: ; preds = %bb.w, %bb.x
  %i.el = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #19
  %i.em = load ptr, ptr %21, align 8, !tbaa !76
  %.not.i41 = icmp eq ptr %i.em, null
  br i1 %.not.i41, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %21) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNO4mlir18InFlightDiagnosticlsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS0_OT_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 200 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !77, !range !78, !noundef !79
  %i.ep = trunc nuw i8 %i.eo to i1
  store i8 0, ptr %i.en, align 8, !tbaa !77
  br i1 %i.ep, label %bb.aa, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.eq) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit, %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit.thread, %._crit_edge, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.017.2 = phi i8 [ 1, %._crit_edge ], [ 0, %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit ], [ %i.el, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit.thread ], [ 0, %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE6EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE6EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit

_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE6EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit38, %.thread
  %.sroa.017.3 = phi i8 [ %.sroa.017.2, %.thread ], [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit38 ]
  %i.er = load ptr, ptr %16, align 8, !tbaa !118  ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE6EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit
  %i.et = load i64, ptr %i.a, align 8, !tbaa !67
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE6EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  ret i8 %.sroa.017.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZN12_GLOBAL__N_116WasmBinaryParser12parseSectionILNS_15WasmSectionTypeE10EEEN4llvm13LogicalResultEv(ptr noundef nonnull align 8 dereferenceable(1217) %0) unnamed_addr #0 align 2 {
_ZN4llvmplERKNS_5TwineES2_.exit38:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.mlir::wasmssa::FuncOp", align 8 ; 8 uses
  %3 = alloca %"class.llvm::SmallVector.553", align 8 ; 12 uses
  %4 = alloca %"class.llvm::FailureOr", align 8   ; 6 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 10 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.(anonymous namespace)::ParserHead", align 8 ; 11 uses
  %10 = alloca %"class.mlir::OpBuilder", align 8  ; 9 uses
  %11 = alloca %"class.llvm::FailureOr.521", align 8 ; 8 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %19 = alloca %"class.(anonymous namespace)::ParserHead", align 8 ; 10 uses
  %20 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 10 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.b, ptr %15, align 8, !tbaa !114
  store i32 1162104643, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 4, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 5, ptr %i.j, align 8, !tbaa !68, !alias.scope !449
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 3, ptr %i.k, align 1, !tbaa !66, !alias.scope !449
  store ptr %i.h, ptr %18, align 8, !tbaa !67, !alias.scope !449
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !67, !alias.scope !449
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @.str.27, ptr %i.m, align 8, !tbaa !67, !alias.scope !449
  store ptr %18, ptr %17, align 8, !alias.scope !450
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %15, ptr %i.n, align 8, !alias.scope !450
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 2, ptr %i.o, align 8, !tbaa !68, !alias.scope !450
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 4, ptr %i.p, align 1, !tbaa !66, !alias.scope !450
  store ptr %17, ptr %16, align 8, !alias.scope !451
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.28, ptr %i.q, align 8, !alias.scope !451
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 2, ptr %i.r, align 8, !tbaa !68, !alias.scope !451
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 3, ptr %i.s, align 1, !tbaa !66, !alias.scope !451
  %i.t = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(34) %16) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.val21 = load i32, ptr %i.u, align 8, !tbaa !20
  %.not.i.i = icmp eq i32 %.val21, 0
  br i1 %.not.i.i, label %_ZNK12_GLOBAL__N_116WasmBinaryParser15SectionRegistry20getContentForSectionILNS_15WasmSectionTypeE10EEENSt11conditionalIXclL_ZNS_21sectionShouldBeUniqueES3_ET_EESt8optionalIN4llvm9StringRefEENS6_8ArrayRefIS7_EEE4typeEv.exit, label %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit

_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit:  ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %.val = load ptr, ptr %i.v, align 8             ; 2 uses
  %.sroa.046.0.copyload = load ptr, ptr %.val, align 8, !tbaa !111
  %.sroa.447.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.447.0.copyload = load i64, ptr %.sroa.447.0..val.sroa_idx, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %.sroa.046.0.copyload, ptr %19, align 8, !tbaa !111
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %.sroa.447.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 28 ; 2 uses
  store i32 0, ptr %i.y, align 4, !tbaa !105
  %i.z = call fastcc range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIjEEN4llvm9FailureOrIT_EEv(ptr noundef nonnull align 8 dereferenceable(32) %19) ; 2 uses
  %.not57 = icmp samesign ult i64 %i.z, 4294967296
  br i1 %.not57, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNRSt8optionalIN4llvm9StringRefEE5valueEv.exit
  %i.aa = and i64 %i.z, 4294967295                ; 2 uses
  %.not59.not = icmp eq i64 %i.aa, 0
  br i1 %.not59.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 368
  %22 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6FuncOpEvE2idE
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.sink111.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sink111.i.sroa.gep8.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 33 ; 2 uses
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 33
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0..sroa_idx.i.i.i39 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 33
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.b

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_116WasmBinaryParser16parseSectionItemILNS_15WasmSectionTypeE10EEEN4llvm13LogicalResultERNS_10ParserHeadEm.exit
  %i.bf = add nuw nsw i64 %.01860, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !436

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.01860 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %bb.a ] ; 2 uses
  %i.bg = load i64, ptr %i.ab, align 8, !tbaa !61
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.bh = getelementptr [16 x i8], ptr %.val.i, i64 %.01860
  %i.bi = getelementptr [16 x i8], ptr %i.bh, i64 %i.bg
  %.sroa.04.0.copyload.i = load ptr, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.bk = call noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_13SymbolRefAttrE(ptr noundef %i.bj, ptr %.sroa.04.0.copyload.i) #19 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !130
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !133
  %i.bo = icmp eq ptr %i.bn, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6FuncOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %22, %i.bo
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i, ptr %i.bk, ptr null ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %spec.select.i.i.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ae, ptr %3, align 8, !tbaa !19
  store i32 0, ptr %i.af, align 8, !tbaa !20
  store i32 6, ptr %i.ag, align 4, !tbaa !21
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %i.bq = load i32, ptr %i.bp, align 4            ; 3 uses
  %i.br = and i32 %i.bq, 8388607
  %i.bs = icmp ne i32 %i.br, 0
  call void @llvm.assume(i1 %i.bs)
  %i.bt = lshr i32 %i.bq, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.bt, 1
  %i.bu = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i.i.i, i64 %i.bu
  %i.bw = lshr i32 %i.bq, 21
  %i.bx = and i32 %i.bw, 2040
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !101
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !126
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ch) #19
  %i.cj = call fastcc range(i64 0, 8589934592) i64 @_ZN12_GLOBAL__N_110ParserHead12parseLiteralIjEEN4llvm9FailureOrIT_EEv(ptr noundef nonnull align 8 dereferenceable(32) %19) ; 2 uses
  %.not73.i.i = icmp samesign ult i64 %i.cj, 4294967296
  br i1 %.not73.i.i, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ck = and i64 %i.cj, 4294967295
  call fastcc void @_ZN12_GLOBAL__N_110ParserHead13consumeNBytesEm(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.ck)
  %i.cl = load i8, ptr %i.ah, align 8, !tbaa !84, !range !78, !noundef !79
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.cn = load ptr, ptr %2, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.cq = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #19, !noalias !452 ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0      ; 3 uses
  %i.cs = extractvalue { ptr, i64 } %i.cq, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %.not.i.i.i.i = icmp eq ptr %i.cr, null
  store ptr %i.ai, ptr %8, align 8, !tbaa !114, !alias.scope !454
  br i1 %.not.i.i.i.i, label %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.thread.i.i, label %bb.e

_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.thread.i.i: ; preds = %bb.d
  store i64 0, ptr %i.aj, align 8, !tbaa !116, !alias.scope !454
  store i8 0, ptr %i.ai, align 8, !tbaa !67, !alias.scope !454
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !454
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !112, !noalias !454
  %i.ct = icmp ugt i64 %i.cs, 15
  br i1 %i.ct, label %bb.f, label %._crit_edge.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.cu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.cu, ptr %8, align 8, !tbaa !118, !alias.scope !454
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !112, !noalias !454
  store i64 %i.cv, ptr %i.ai, align 8, !tbaa !67, !alias.scope !454
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.f, %bb.e
  %i.cw = phi ptr [ %i.cu, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  switch i64 %i.cs, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.cx = load i8, ptr %i.cr, align 1, !tbaa !67
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !67
  br label %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr nonnull align 1 %i.cr, i64 %i.cs, i1 false)
  br label %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i

_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i:      ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !112, !noalias !454 ; 2 uses
  store i64 %i.cy, ptr %i.aj, align 8, !tbaa !116, !alias.scope !454
  %i.cz = load ptr, ptr %8, align 8, !tbaa !118, !alias.scope !454
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 0, ptr %i.da, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !454
  %.pre.i.i = load i64, ptr %i.aj, align 8, !tbaa !116, !noalias !455
  %i.db = and i64 %.pre.i.i, -2
  %i.dc = icmp eq i64 %i.db, 4611686018427387902
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  br i1 %i.dc, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.i:                                             ; preds = %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #22, !noalias !455
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.i.i, %_ZNK4mlir10StringAttr3strB5cxx11Ev.exit.thread.i.i
  %i.dd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.103, i64 noundef 2) #19, !noalias !455 ; 6 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !114, !alias.scope !455
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !118 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 5 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !116 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.de, ptr %7, align 8, !tbaa !118, !alias.scope !455
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !67
  store i64 %i.dl, ptr %i.ak, align 8, !tbaa !67, !alias.scope !455
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !116
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %i.dm = phi i64 [ %i.di, %bb.j ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dm, ptr %i.al, align 8, !tbaa !116, !alias.scope !455
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !118
  store i64 0, ptr %i.dn, align 8, !tbaa !116
  store i8 0, ptr %i.df, align 8, !tbaa !67
  store i8 4, ptr %i.am, align 8, !tbaa !68
  store i8 1, ptr %i.an, align 1, !tbaa !66
  store ptr %7, ptr %6, align 8, !tbaa !67
  %i.do = call { ptr, i64 } @_ZN4mlir7wasmssa6FuncOp10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19 ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.dr = load i8, ptr %i.am, align 8, !tbaa !68, !noalias !458 ; 3 uses
  switch i8 %i.dr, label %bb.l [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i
    i8 1, label %bb.k
  ]

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  store ptr %i.dp, ptr %5, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  %i.ds = load i8, ptr %i.an, align 1, !tbaa !66, !noalias !458
  %i.dt = icmp eq i8 %i.ds, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i.i.i = load ptr, ptr %6, align 8, !noalias !458
  %.sroa.56.0.copyload.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8, !noalias !458
  %.014.i.i.i.i = select i1 %i.dt, i8 %i.dr, i8 2
  %.sroa.05.0.i.i.i.i = select i1 %i.dt, ptr %.sroa.05.0.copyload.i.i.i.i, ptr %6
  %.sroa.56.0.i.i.i.i = select i1 %i.dt, i64 %.sroa.56.0.copyload.i.i.i.i, i64 undef
  store ptr %.sroa.05.0.i.i.i.i, ptr %5, align 8, !alias.scope !458
  store i64 %.sroa.56.0.i.i.i.i, ptr %.sink111.i.sroa.gep.i, align 8, !tbaa !67, !alias.scope !458
  store ptr %i.dp, ptr %i.ao, align 8, !alias.scope !458
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i

_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i:   ; preds = %bb.l, %bb.k
  %.sink111.i.sroa.phi.i = phi ptr [ %.sink111.i.sroa.gep.i, %bb.k ], [ %.sink111.i.sroa.gep8.i, %bb.l ]
  %.sink109.ph.i.i = phi i8 [ 5, %bb.k ], [ %.014.i.i.i.i, %bb.l ]
  %.sink.ph.i.i = phi i8 [ 1, %bb.k ], [ 5, %bb.l ]
  store i64 %i.dq, ptr %.sink111.i.sroa.phi.i, align 8, !tbaa !67
  br label %_ZN4llvmplERKNS_5TwineES2_.exit.i.i

_ZN4llvmplERKNS_5TwineES2_.exit.i.i:              ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  %.sink109.i.i = phi i8 [ %i.dr, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i ], [ %.sink109.ph.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i ]
  %.sink.i.i = phi i8 [ 1, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i ], [ %.sink.ph.i.i, %_ZN4llvmplERKNS_5TwineES2_.exit.sink.split.i.i ]
  store i8 %.sink109.i.i, ptr %i.ap, align 8, !tbaa !459
  store i8 %.sink.i.i, ptr %i.aq, align 1, !tbaa !459
  %i.du = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.dv = load ptr, ptr %7, align 8, !tbaa !118   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ak
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i.i
  %i.dx = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i
  %i.dz = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ai
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i

end_hunk_0
