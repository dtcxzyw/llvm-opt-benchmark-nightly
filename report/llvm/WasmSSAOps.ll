Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmSSAOps?download=true
inline.NumInlined: 25934
inline.NumDeleted: 4043
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4mlir7wasmssa4EqOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4EqOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.216, i64 10) #24
  call void @_ZN4mlir7wasmssa4EqOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4EqOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4EqOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.216, i64 10) #24
  call void @_ZN4mlir7wasmssa4EqOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4EqOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4EqOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4EqOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4EqOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4EqOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4EqOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4EqOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_0
begin_hunk_1_@_ZN4mlir7wasmssa4GeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4GeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.233, i64 10) #24
  call void @_ZN4mlir7wasmssa4GeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4GeOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4GeOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.233, i64 10) #24
  call void @_ZN4mlir7wasmssa4GeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4GeOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4GeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4GeOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4GeOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4GeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4GeOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4GeOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_1
begin_hunk_2_@_ZN4mlir7wasmssa6GeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GeSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.234, i64 13) #24
  call void @_ZN4mlir7wasmssa6GeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GeSIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GeSIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.234, i64 13) #24
  call void @_ZN4mlir7wasmssa6GeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GeSIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GeSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6GeSIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GeSIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6GeSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6GeSIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6GeSIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_2
begin_hunk_3_@_ZN4mlir7wasmssa6GeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GeUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.235, i64 13) #24
  call void @_ZN4mlir7wasmssa6GeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GeUIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GeUIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.235, i64 13) #24
  call void @_ZN4mlir7wasmssa6GeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GeUIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GeUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6GeUIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GeUIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6GeUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6GeUIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6GeUIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_3
begin_hunk_4_@_ZN4mlir7wasmssa4GtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4GtOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.245, i64 10) #24
  call void @_ZN4mlir7wasmssa4GtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4GtOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4GtOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.245, i64 10) #24
  call void @_ZN4mlir7wasmssa4GtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4GtOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4GtOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4GtOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4GtOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4GtOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4GtOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4GtOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_4
begin_hunk_5_@_ZN4mlir7wasmssa6GtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GtSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.246, i64 13) #24
  call void @_ZN4mlir7wasmssa6GtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GtSIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GtSIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.246, i64 13) #24
  call void @_ZN4mlir7wasmssa6GtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GtSIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GtSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6GtSIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GtSIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6GtSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6GtSIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6GtSIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_5
begin_hunk_6_@_ZN4mlir7wasmssa6GtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GtUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.247, i64 13) #24
  call void @_ZN4mlir7wasmssa6GtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GtUIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6GtUIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.247, i64 13) #24
  call void @_ZN4mlir7wasmssa6GtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6GtUIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GtUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6GtUIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6GtUIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6GtUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6GtUIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6GtUIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_6
begin_hunk_7_@_ZN4mlir7wasmssa4LeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4LeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.250, i64 10) #24
  call void @_ZN4mlir7wasmssa4LeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4LeOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4LeOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.250, i64 10) #24
  call void @_ZN4mlir7wasmssa4LeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4LeOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4LeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4LeOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4LeOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4LeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4LeOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4LeOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_7
begin_hunk_8_@_ZN4mlir7wasmssa6LeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LeSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.251, i64 13) #24
  call void @_ZN4mlir7wasmssa6LeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LeSIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LeSIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.251, i64 13) #24
  call void @_ZN4mlir7wasmssa6LeSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LeSIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LeSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6LeSIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LeSIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6LeSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6LeSIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6LeSIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_8
begin_hunk_9_@_ZN4mlir7wasmssa6LeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LeUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.252, i64 13) #24
  call void @_ZN4mlir7wasmssa6LeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LeUIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LeUIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.252, i64 13) #24
  call void @_ZN4mlir7wasmssa6LeUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LeUIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LeUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6LeUIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LeUIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6LeUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6LeUIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6LeUIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_9
begin_hunk_10_@_ZN4mlir7wasmssa4LtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4LtOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.259, i64 10) #24
  call void @_ZN4mlir7wasmssa4LtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4LtOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4LtOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.259, i64 10) #24
  call void @_ZN4mlir7wasmssa4LtOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4LtOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4LtOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4LtOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4LtOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4LtOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4LtOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4LtOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_10
begin_hunk_11_@_ZN4mlir7wasmssa6LtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LtSIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.260, i64 13) #24
  call void @_ZN4mlir7wasmssa6LtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LtSIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LtSIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.260, i64 13) #24
  call void @_ZN4mlir7wasmssa6LtSIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LtSIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LtSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6LtSIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LtSIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6LtSIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6LtSIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6LtSIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_11
begin_hunk_12_@_ZN4mlir7wasmssa6LtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LtUIOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.261, i64 13) #24
  call void @_ZN4mlir7wasmssa6LtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LtUIOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa6LtUIOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.261, i64 13) #24
  call void @_ZN4mlir7wasmssa6LtUIOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa6LtUIOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LtUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa6LtUIOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa6LtUIOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa6LtUIOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa6LtUIOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa6LtUIOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_12
begin_hunk_13_@_ZN4mlir7wasmssa4NeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.z, ptr %6, align 8, !tbaa !147
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #24
  %i.ap = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #24
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !86
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !83
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !83
  %i.bh = load ptr, ptr %9, align 8, !tbaa !86    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4NeOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.44") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.268, i64 10) #24
  call void @_ZN4mlir7wasmssa4NeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4NeOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7wasmssa4NeOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.44", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.268, i64 10) #24
  call void @_ZN4mlir7wasmssa4NeOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.44") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7wasmssa4NeOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4NeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.2, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit43:   ; preds = %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.2, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !102
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #24
  %i.v = load ptr, ptr %0, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_WasmSSAOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.3, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit70:   ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !104
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !107
  store ptr @.str.28, ptr %2, align 8, !tbaa !108
  store i8 3, ptr %i.ak, align 8, !tbaa !109
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #24
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  %i.an = load ptr, ptr %1, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !87, !range !88, !noundef !89
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !87
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #24
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit, %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit70, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit70 ], [ 0, %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit43 ], [ 0, %bb.a ], [ 0, %_ZN4mlir7wasmssa4NeOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7wasmssa4NeOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7wasmssa4NeOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7wasmssa4NeOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.101", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.78", align 8 ; 6 uses
  %7 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 6 uses
  %9 = alloca %"class.mlir::IntegerType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !112
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %5, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.g = load ptr, ptr %0, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #24
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !119
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 736
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call i8 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !94
  %i.z = load ptr, ptr %0, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #24, !inline_history !2
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %8, align 8, !tbaa !95
  store i64 %i.ae, ptr %5, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.af = load ptr, ptr %0, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr null, ptr %9, align 8, !tbaa !94
  %i.ak = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11IntegerTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %.thread57

.thread57:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = load i64, ptr %9, align 8, !tbaa !95
  store i64 %i.am, ptr %7, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.an = load ptr, ptr %0, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0) #24 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.as = load ptr, ptr %0, align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 520
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ar) #24
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %7, i64 1)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ay = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ax)
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.critedge.i.i, label %.critedge

.critedge.i.i:                                    ; preds = %bb.h
  %i.ba = load ptr, ptr %6, align 8, !tbaa !116
  %.sroa.05.0.copyload = load ptr, ptr %i.ba, align 8, !tbaa !95
  %i.bb = load ptr, ptr %0, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 760
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !6
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i.i, %bb.g, %bb.h, %.thread57, %bb.e, %.thread, %bb.c, %bb.b, %bb.a
  %.sroa.056.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ], [ 0, %.thread57 ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.be, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i8 %.sroa.056.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7wasmssa4NeOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.102", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !123
  store i8 32, ptr %i.f, align 1, !tbaa !108
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.o = load ptr, ptr %1, align 8, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !4
  %i.r = load ptr, ptr %1, align 8, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #24, !inline_history !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  %.not.i.i20 = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 noundef zeroext 32) #24 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !123
end_hunk_13
