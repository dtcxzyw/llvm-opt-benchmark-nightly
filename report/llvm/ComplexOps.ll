Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComplexOps?download=true
inline.NumInlined: 13917
inline.NumDeleted: 2493
begin_hunk_0_@_ZN4mlir7complex7EqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.z, ptr %6, align 8, !tbaa !116
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1) #20
  %i.ap = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !61  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !61 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !62
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #20
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !61
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !61
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !61
  %i.bh = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #20
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7complex7EqualOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.562") align 8 captures(none) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.80, i64 10) #20
  call void @_ZN4mlir7complex7EqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.562") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7complex7EqualOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7complex7EqualOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.562", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.80, i64 10) #20
  call void @_ZN4mlir7complex7EqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.562") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7complex7EqualOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7complex7EqualOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.17, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.17, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !25
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #20
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.18, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !38
  store ptr @.str.38, ptr %2, align 8, !tbaa !39
  store i8 3, ptr %i.ak, align 8, !tbaa !40
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #20
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  %i.an = load ptr, ptr %1, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !50, !range !51, !noundef !52
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !50
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #20
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit70, %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit, %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit43 ], [ 0, %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit ], [ 0, %bb.a ], [ 1, %_ZN4mlir7complex7EqualOp14getODSOperandsEj.exit70 ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 3 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  store ptr %1, ptr %9, align 8
  %i.a = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1) #20
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !38
  store ptr %2, ptr %11, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %i.d, align 8, !tbaa !39
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #20
  %i.e = load ptr, ptr %10, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 3, ptr %8, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.64, ptr %i.g, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 12 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !63

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !61
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.pr = load ptr, ptr %10, align 8, !tbaa !49
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 5, ptr %7, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = zext i32 %4 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !39
  %i.s = load i32, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.t = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i.i.i.i.i5 = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g, !prof !63

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.x = load i32, ptr %i.h, align 8, !tbaa !61
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.h, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.pr12 = load ptr, ptr %10, align 8, !tbaa !49
  %.not.i.i6 = icmp eq ptr %.pr12, null
  br i1 %.not.i.i6, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 3, ptr %6, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.81, ptr %i.z, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !59
  %i.aa = load i32, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i.i.i.i.i8 = icmp ult i32 %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i8, label %bb.k, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.af = load i32, ptr %i.h, align 8, !tbaa !61
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.h, align 8, !tbaa !61
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr14.pr = load ptr, ptr %10, align 8, !tbaa !49
  %.not.i.i9 = icmp eq ptr %.pr14.pr, null
  br i1 %.not.i.i9, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !66
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %.sroa.0.0.copyload.i.i.i.i) #20
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !61  ; 2 uses
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !62
  %.not.i.i.i.i.i10 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i10, label %bb.n, label %bb.m, !prof !63

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.am = load i32, ptr %i.h, align 8, !tbaa !61
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.h, align 8, !tbaa !61
  br label %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit, %bb.b, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRNS_4TypeEEERS0_OT_.exit.i.i
  %i.ao = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #20
  %i.ap = load ptr, ptr %10, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !50, !range !51, !noundef !52
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !50
  br i1 %i.as, label %bb.q, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.at) #20
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.ao, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7complex7EqualOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7complex7EqualOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

declare ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7complex7EqualOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #2 align 2 {
end_hunk_0
begin_hunk_1_@_ZN4mlir7complex10NotEqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a

bb.e:                                             ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.z, ptr %6, align 8, !tbaa !116
  %i.ao = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1) #20
  %i.ap = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !61  ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !61 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.ar            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !62
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef 8) #20
  %.pre8.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !61
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.au, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.bd = zext i32 %.pre8.i.i to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !61
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bf = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bg = add i32 %i.bf, %i.aq
  store i32 %i.bg, ptr %i.at, align 8, !tbaa !61
  %i.bh = load ptr, ptr %9, align 8, !tbaa !64    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.w
  br i1 %i.bi, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bh) #20
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7complex10NotEqualOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.562") align 8 captures(none) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.89, i64 11) #20
  call void @_ZN4mlir7complex10NotEqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.562") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_7complex10NotEqualOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir7complex10NotEqualOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr %4, i64 %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.562", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.89, i64 11) #20
  call void @_ZN4mlir7complex10NotEqualOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS_15EmptyPropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.562") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_7complex10NotEqualOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7complex10NotEqualOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.a, ptr %i.g, ptr nonnull @.str.17, i64 7, i32 noundef 0)
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit43, label %.thread152

_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit43: ; preds = %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.0.0.copyload.i.i.i48 = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i48, i64 8
  %.0.copyload.i.i.i.i.i49 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i49, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.j, ptr %i.p, ptr nonnull @.str.17, i64 7, i32 noundef 1)
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %.thread152

bb.a:                                             ; preds = %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit43
  %i.s = load ptr, ptr %0, align 8, !tbaa !25
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = tail call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 noundef 0) #20
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.copyload.i.i.i.i.i56 = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i56, -8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call fastcc i8 @_ZL44__mlir_ods_local_type_constraint_ComplexOps5PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.v, ptr %i.y, ptr nonnull @.str.18, i64 6, i32 noundef 0)
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit70, label %.thread152

_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit70: ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.0.0.copyload.i.i.i64 = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i64, i64 8
  %.0.copyload.i.i.i.i.i65 = load i64, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.0.0.copyload.i.i.i73 = load ptr, ptr %i.ag, align 8, !tbaa !71
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i73, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ah, align 8
  %i.ai = xor i64 %.0.copyload.i.i.i.i.i74, %.0.copyload.i.i.i.i.i65
  %i.aj = icmp ult i64 %i.ai, 8
  br i1 %i.aj, label %.thread152, label %.thread171

.thread171:                                       ; preds = %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.al, align 1, !tbaa !38
  store ptr @.str.38, ptr %2, align 8, !tbaa !39
  store i8 3, ptr %i.ak, align 8, !tbaa !40
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #20
  %i.am = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  %i.an = load ptr, ptr %1, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.thread171
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread171
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !50, !range !51, !noundef !52
  %i.aq = trunc nuw i8 %i.ap to i1
  store i8 0, ptr %i.ao, align 8, !tbaa !50
  br i1 %i.aq, label %bb.d, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ar) #20
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.thread152

.thread152:                                       ; preds = %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit70, %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit, %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit43, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.030.10 = phi i8 [ %i.am, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit43 ], [ 0, %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit ], [ 0, %bb.a ], [ 1, %_ZN4mlir7complex10NotEqualOp14getODSOperandsEj.exit70 ]
  ret i8 %.sroa.030.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir7complex10NotEqualOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7complex10NotEqualOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir7complex10NotEqualOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.632", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.mlir::Type", align 8        ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.601", align 8 ; 6 uses
  %7 = alloca %"class.mlir::ComplexType", align 8 ; 6 uses
  %8 = alloca %"class.mlir::Type", align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %2, ptr %3, align 8, !tbaa !134
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %5, ptr %6, align 8, !tbaa !138
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !139
  %i.c = load ptr, ptr %0, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.g = load ptr, ptr %0, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 736
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i8 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, i1 noundef zeroext true) #20
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i8 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0) #20 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 736
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i8 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #20
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %0, align 8, !tbaa !82
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0) #20 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ae = load ptr, ptr %0, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 520
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.ad) #20
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %0, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call i8 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !123
  %i.ao = call i8 @_ZN4mlir9AsmParser9parseTypeINS_11ComplexTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %7, align 8, !tbaa !66
  store i64 %i.aq, ptr %5, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ar = load ptr, ptr %0, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.av = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 noundef 1) #20
  store ptr %i.av, ptr %8, align 8, !tbaa !66
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %8, i64 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ax = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.critedge.i.i, label %.loopexit

.critedge.i.i:                                    ; preds = %bb.g
  %i.az = load ptr, ptr %6, align 8, !tbaa !138
  %.sroa.04.0.copyload = load ptr, ptr %i.az, align 8, !tbaa !66
  %i.ba = load ptr, ptr %0, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 760
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call i8 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #20, !inline_history !11
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i.i, %bb.g
  %.sroa.051.1 = phi i8 [ 0, %bb.g ], [ %i.bd, %.critedge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.thread, %bb.e, %bb.c, %bb.b, %bb.a, %.loopexit
  %.sroa.051.3 = phi i8 [ %.sroa.051.1, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %.thread ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i8 %.sroa.051.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir7complex10NotEqualOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.633", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) #20, !inline_history !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !152  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !153
  %.not.i.i = icmp ult ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 noundef zeroext 32) #20 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.j, ptr %i.e, align 8, !tbaa !152
  store i8 32, ptr %i.f, align 1, !tbaa !39
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.b, %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.o = load ptr, ptr %1, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #20, !inline_history !5
  %i.r = load ptr, ptr %1, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %1) #20, !inline_history !10 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !152  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.23, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  store i8 44, ptr %i.y, align 1
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !152
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.d, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
end_hunk_1
