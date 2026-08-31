Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorDialect?download=true
inline.NumInlined: 37170
inline.NumDeleted: 12811
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4mlir13sparse_tensor18ExtractIterSpaceOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
bb.g:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bc) #30
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.h:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.174, i1 noundef zeroext true) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.842") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.366, i64 37) #30
  call void @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.842") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !418
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !420
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor18ExtractIterSpaceOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.842", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.366, i64 37) #30
  call void @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.842") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor18ExtractIterSpaceOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.2031, align 8           ; 4 uses
  %2 = alloca %class.anon.2031, align 8           ; 4 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !602    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.e, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = lshr i32 %i.e, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !158
  store ptr @.str.175, ptr %4, align 8, !tbaa !86
  store i8 3, ptr %i.m, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #30
  %i.o = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #30
  %i.p = load ptr, ptr %3, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !67, !range !68, !noundef !69
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !67
  br i1 %i.s, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.thread113

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !158
  store ptr @.str.176, ptr %6, align 8, !tbaa !86
  store i8 3, ptr %i.x, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #30
  %i.z = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  %i.aa = load ptr, ptr %5, align 8, !tbaa !47
  %.not.i36 = icmp eq ptr %i.aa, null
  br i1 %.not.i36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !67, !range !68, !noundef !69
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !67
  br i1 %i.ad, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit37

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit37

_ZN4mlir18InFlightDiagnosticD2Ev.exit37:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.thread113

bb.k:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.v to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.c, ptr %2, align 8, !tbaa !1240
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = call fastcc i8 @_ZL49__mlir_ods_local_attr_constraint_SparseTensorOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.af, ptr nonnull @.str.171, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL49__mlir_ods_local_attr_constraint_SparseTensorOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread113

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !602
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr %i.aj, ptr %1, align 8, !tbaa !1240
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = call fastcc i8 @_ZL49__mlir_ods_local_attr_constraint_SparseTensorOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.k, ptr nonnull @.str.169, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL49__mlir_ods_local_attr_constraint_SparseTensorOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit, label %.thread113

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.an = load ptr, ptr %0, align 8, !tbaa !602   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !505
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !509
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  store i32 1, ptr %i.a, align 4, !tbaa !79
  %i.au = call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SparseTensorOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.an, ptr %i.at, ptr nonnull @.str.177, i64 7, i32 noundef 0)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i.preheader, label %.thread105

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !602   ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 8388608
  %.not.i.i.i42 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i42, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47.thread, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47, !prof !410

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47: ; preds = %.lr.ph.i.i.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !508 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !505
  %i.be = zext i32 %i.bb to i64
  %i.bf = add nsw i64 %i.be, -1                   ; 3 uses
  %i.bg = icmp ugt i64 %i.bf, 1
  br i1 %i.bg, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47
  %.not115118 = icmp eq i32 %i.bb, 1
  br i1 %.not115118, label %._crit_edge, label %.lr.ph

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47.thread: ; preds = %.lr.ph.i.i.preheader, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47
  %i.bh = phi i64 [ %i.bf, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47 ], [ -1, %.lr.ph.i.i.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !158
  store ptr @.str.178, ptr %8, align 8, !tbaa !86
  store i8 3, ptr %i.bi, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #30
  %i.bk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, ptr noundef nonnull align 1 dereferenceable(37) @.str.179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !61
  %i.bm = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bm) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.thread105

9:                                                ; preds = %.lr.ph
  %10 = add i32 %12, 1
  %11 = add nuw nsw i64 %.sroa.474.0119, 1        ; 2 uses
  %.not115 = icmp eq i64 %11, %i.bf
  br i1 %.not115, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %9
  %12 = phi i32 [ %10, %9 ], [ 1, %.preheader ]   ; 2 uses
  %.sroa.474.0119 = phi i64 [ %11, %9 ], [ 0, %.preheader ] ; 2 uses
  %13 = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %.sroa.474.0119
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 56
  %.sroa.0.0.copyload.i.i.i52 = load ptr, ptr %14, align 8, !tbaa !509
  %i.bo = load ptr, ptr %0, align 8, !tbaa !602
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i52, i64 8
  %.0.copyload.i.i.i.i.i53 = load i64, ptr %15, align 8
  %16 = and i64 %.0.copyload.i.i.i.i.i53, -8
  %17 = inttoptr i64 %16 to ptr
  %18 = call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SparseTensorOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bo, ptr %17, ptr nonnull @.str.177, i64 7, i32 noundef %12)
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %9, label %bb.m

.thread105:                                       ; preds = %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47.thread
  %.sroa.032.7.ph = phi i8 [ %i.bn, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit47.thread ], [ 0, %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp14getODSOperandsEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread113

bb.m:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread113

._crit_edge.loopexit:                             ; preds = %9
  %.pre = load ptr, ptr %0, align 8, !tbaa !602
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bp = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.aw, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16
  %i.br = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 0) #30
  %i.bs = load ptr, ptr %0, align 8, !tbaa !602
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SparseTensorOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bs, ptr %i.bv, ptr nonnull @.str.180, i64 6, i32 noundef 0)
  br label %.thread113

.thread113:                                       ; preds = %._crit_edge, %_ZN4mlir18InFlightDiagnosticD2Ev.exit37, %bb.k, %bb.l, %.thread105, %bb.m, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.032.12 = phi i8 [ %i.o, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.z, %_ZN4mlir18InFlightDiagnosticD2Ev.exit37 ], [ 0, %bb.m ], [ 0, %bb.k ], [ %.sroa.032.7.ph, %.thread105 ], [ 0, %bb.l ], [ %i.bw, %._crit_edge ]
  ret i8 %.sroa.032.12
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SparseTensorOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::RankedTensorType", align 8 ; 5 uses
  %10 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !257
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %1, ptr %9, align 8
  %i.d = call ptr @_ZNK4mlir16RankedTensorType11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor24SparseTensorEncodingAttrEvE2idE
  br i1 %i.g, label %bb.d, label %_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE.exit.thread

_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE.exit.thread: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.h = load ptr, ptr %1, align 8, !tbaa !257    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !609

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.388, i64 49), i64 16) #30
  store ptr %i.m, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !8 ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !66   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.t = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = xor i64 %i.r, -1
  %i.w = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.r ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !610

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.q, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !420
  %i.aa = icmp eq ptr %i.z, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.h, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !611
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.h
  %i.ad = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.h ], [ null, %bb.g ]
  store ptr %1, ptr %10, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #30
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !257
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br i1 %.not, label %bb.i, label %bb.y

.critedge:                                        ; preds = %_ZN4mlir13sparse_tensor23getSparseTensorEncodingENS_4TypeE.exit.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 5, ptr %i.ai, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.aj, align 1, !tbaa !158
  store ptr %2, ptr %12, align 8, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %3, ptr %i.ak, align 8, !tbaa !86
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #30
  %i.al = load ptr, ptr %11, align 8, !tbaa !47
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i32 3, ptr %8, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.382, ptr %i.an, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 12 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64
  %.not.i.i.i.i.i7 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i7, label %bb.l, label %bb.k, !prof !65

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.l:                                             ; preds = %bb.j
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.av = load i32, ptr %i.ao, align 8, !tbaa !62
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !62
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pr = load ptr, ptr %11, align 8, !tbaa !47
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i32 5, ptr %7, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = zext i32 %4 to i64
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !86
  %i.az = load i32, ptr %i.ao, align 8, !tbaa !62 ; 2 uses
  %i.ba = load i32, ptr %i.aq, align 4, !tbaa !64
  %.not.i.i.i.i.i9 = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i.i.i.i.i9, label %bb.o, label %bb.n, !prof !65

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = zext i32 %i.az to i64
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !66
end_hunk_0
begin_hunk_1_@_ZN4mlir13sparse_tensor10PushBackOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail28PushBackOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  store i32 2, ptr %i.x, align 8, !tbaa !62
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i: ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.z, ptr %7, align 8, !tbaa !652
  %i.ar = icmp ult i64 %3, 2
  br i1 %i.ar, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i
  %i.as = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1) #30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  %i.au = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call ptr @_ZN4mlir7Builder12getIndexTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  %i.ax = load ptr, ptr %10, align 8, !tbaa !66   ; 3 uses
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !413
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !413
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.az = load i32, ptr %i.x, align 8, !tbaa !62  ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, %i.ba            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ugt i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.g, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull %i.bk, i64 noundef %i.bf, i64 noundef 8) #30
  %.pre8.pre.i.i = load i32, ptr %i.bc, align 8, !tbaa !62
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %.pre8.i.i = phi i32 [ %i.bd, %bb.f ], [ %.pre8.pre.i.i, %bb.g ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !66
  %i.bm = zext i32 %.pre8.i.i to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 8 %i.ax, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.bc, align 8, !tbaa !62
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.h
  %i.bo = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.h ]
  %i.bp = add i32 %i.bo, %i.az
  store i32 %i.bp, ptr %i.bc, align 8, !tbaa !62
  %i.bq = load ptr, ptr %10, align 8, !tbaa !66   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.w
  br i1 %i.br, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  ret void

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.174, i1 noundef zeroext true) #35
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir13sparse_tensor10PushBackOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS0_6detail28PushBackOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.842") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.440, i64 23) #30
  call void @_ZN4mlir13sparse_tensor10PushBackOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail28PushBackOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.842") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #30 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !418
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !420
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10PushBackOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir13sparse_tensor10PushBackOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS0_6detail28PushBackOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.842", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.440, i64 23) #30
  call void @_ZN4mlir13sparse_tensor10PushBackOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail28PushBackOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.842") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #30 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !418
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10PushBackOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir13sparse_tensor10PushBackOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %class.anon.2042, align 8           ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !602    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.056.0.copyload = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.a, ptr %4, align 8, !tbaa !1310
  %i.h = ptrtoint ptr %4 to i64
  %i.i = call fastcc i8 @_ZL49__mlir_ods_local_attr_constraint_SparseTensorOps3N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.056.0.copyload, ptr nonnull @.str.267, i64 8, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL49__mlir_ods_local_attr_constraint_SparseTensorOps3PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit, label %.thread359

_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !602    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !505
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !509
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = call fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps12PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.k, ptr %i.q, ptr nonnull @.str.177, i64 7, i32 noundef 0)
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.thread359

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !602    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !505
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.0.0.copyload.i.i.i76 = load ptr, ptr %i.w, align 8, !tbaa !509
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i76, i64 8
  %.0.copyload.i.i.i.i.i77 = load i64, ptr %i.x, align 8
  %i.y = and i64 %.0.copyload.i.i.i.i.i77, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = call fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps20PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.t, ptr %i.z, ptr nonnull @.str.177, i64 7, i32 noundef 1)
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i.i78.preheader, label %.thread359

.lr.ph.i.i78.preheader:                           ; preds = %.lr.ph.i.i.preheader
  %.pre = load ptr, ptr %0, align 8, !tbaa !602   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !505
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %.sroa.0.0.copyload.i.i.i96 = load ptr, ptr %i.ae, align 8, !tbaa !509
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i96, i64 8
  %.0.copyload.i.i.i.i.i97 = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i97, -8
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = call fastcc i8 @_ZL49__mlir_ods_local_type_constraint_SparseTensorOps4PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %.pre, ptr %i.ah, ptr nonnull @.str.177, i64 7, i32 noundef 2)
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i98.preheader, label %.thread359

.lr.ph.i.i98.preheader:                           ; preds = %.lr.ph.i.i78.preheader
  %.pre421 = load ptr, ptr %0, align 8, !tbaa !602 ; 4 uses
  %.phi.trans.insert422 = getelementptr inbounds nuw i8, ptr %.pre421, i64 44
  %.pre423 = load i32, ptr %.phi.trans.insert422, align 4
  %.pre426 = and i32 %.pre423, 8388608
  %.not.i.i.i105 = icmp eq i32 %.pre426, 0
  br i1 %.not.i.i.i105, label %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111.thread, label %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111, !prof !410

_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111: ; preds = %.lr.ph.i.i98.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre421, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !508 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre421, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !505
  %i.ao = zext i32 %i.al to i64
  %i.ap = add nsw i64 %i.ao, -3                   ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, 1
  br i1 %i.aq, label %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111
  %.not380402 = icmp eq i32 %i.al, 3
  br i1 %.not380402, label %._crit_edge, label %.lr.ph405

_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111.thread: ; preds = %.lr.ph.i.i98.preheader, %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111
  %i.ar = phi i64 [ %i.ap, %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111 ], [ -3, %.lr.ph.i.i98.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.at, align 1, !tbaa !158
  store ptr @.str.178, ptr %6, align 8, !tbaa !86
  store i8 3, ptr %i.as, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #30
  %i.au = load ptr, ptr %5, align 8, !tbaa !47
  %.not.i.i112 = icmp eq ptr %i.au, null
  br i1 %.not.i.i112, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111.thread
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store i32 5, ptr %3, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.aw, align 8, !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64
  %.not.i.i.i.i.i = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !65

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !62
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ax, align 8, !tbaa !62
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.pr = load ptr, ptr %5, align 8, !tbaa !47
  %.not.i.i113 = icmp eq ptr %.pr, null
  br i1 %.not.i.i113, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 3, ptr %2, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.179, ptr %i.bg, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !64
  %.not.i.i.i.i.i114 = icmp ult i32 %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i114, label %bb.g, label %bb.f, !prof !65

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = zext i32 %i.bh to i64
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bm = load i32, ptr %i.ax, align 8, !tbaa !62
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ax, align 8, !tbaa !62
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.pr355 = load ptr, ptr %5, align 8, !tbaa !47
  %.not.i.i115 = icmp eq ptr %.pr355, null
  br i1 %.not.i.i115, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store i32 5, ptr %1, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ar, ptr %i.bo, align 8, !tbaa !86
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !62 ; 2 uses
  %i.bq = load i32, ptr %i.az, align 4, !tbaa !64
  %.not.i.i.i.i.i116 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not.i.i.i.i.i116, label %bb.j, label %bb.i, !prof !65

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.br = zext i32 %i.bp to i64
  %i.bs = load ptr, ptr %i.av, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bu = load i32, ptr %i.ax, align 8, !tbaa !62
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ax, align 8, !tbaa !62
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit111.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bw = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  %i.bx = load ptr, ptr %5, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !67, !range !68, !noundef !69
  %i.ca = trunc nuw i8 %i.bz to i1
  store i8 0, ptr %i.by, align 8, !tbaa !67
  br i1 %i.ca, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.cb) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.thread359

.lr.ph405:                                        ; preds = %.preheader, %20
  %.6404 = phi i32 [ %21, %20 ], [ 3, %.preheader ] ; 2 uses
  %.sroa.4289.0403 = phi i64 [ %22, %20 ], [ 0, %.preheader ] ; 2 uses
  %12 = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %.sroa.4289.0403
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 120
  %.sroa.0.0.copyload.i.i.i121 = load ptr, ptr %13, align 8, !tbaa !509
  %14 = load ptr, ptr %0, align 8, !tbaa !602
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i121, i64 8
  %.0.copyload.i.i.i.i.i122 = load i64, ptr %15, align 8
  %16 = and i64 %.0.copyload.i.i.i.i.i122, -8
  %17 = inttoptr i64 %16 to ptr
  %18 = call fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps12PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %14, ptr %17, ptr nonnull @.str.177, i64 7, i32 noundef %.6404)
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %20, label %.thread359

20:                                               ; preds = %.lr.ph405
  %21 = add i32 %.6404, 1
  %22 = add nuw nsw i64 %.sroa.4289.0403, 1       ; 2 uses
  %.not380 = icmp eq i64 %22, %i.ap
  br i1 %.not380, label %._crit_edge.loopexit, label %.lr.ph405

._crit_edge.loopexit:                             ; preds = %20
  %.pre424 = load ptr, ptr %0, align 8, !tbaa !602
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cc = phi ptr [ %.pre424, %._crit_edge.loopexit ], [ %.pre421, %.preheader ]
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.ce = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 noundef 0) #30
  %i.cf = load ptr, ptr %0, align 8, !tbaa !602
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.0.copyload.i.i.i.i.i129 = load i64, ptr %i.cg, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i129, -8
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = call fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps20PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cf, ptr %i.ci, ptr nonnull @.str.180, i64 6, i32 noundef 0)
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.n, label %.thread359

bb.n:                                             ; preds = %._crit_edge
  %i.cl = load ptr, ptr %0, align 8, !tbaa !602
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -16
  %i.cn = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 noundef 1) #30
  %i.co = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 noundef 0) #30
  %i.cp = load ptr, ptr %0, align 8, !tbaa !602
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.0.copyload.i.i.i.i.i137 = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i137, -8
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = call fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps12PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cp, ptr %i.cs, ptr nonnull @.str.180, i64 6, i32 noundef 1)
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %._crit_edge.i.i144, label %.thread359

._crit_edge.i.i144:                               ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cv = load ptr, ptr %0, align 8, !tbaa !602
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !505
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.sroa.0.0.copyload.i.i.i154 = load ptr, ptr %i.cy, align 8, !tbaa !509
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i154, i64 8
  %.0.copyload.i.i.i.i.i155 = load i64, ptr %i.cz, align 8
  %i.da = and i64 %.0.copyload.i.i.i.i.i155, -8   ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %.not.i.i.i.i.i156 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i156, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !257 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.p, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !609

bb.p:                                             ; preds = %bb.o
  %i.dg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.388, i64 49), i64 16) #30
  store ptr %i.dh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !8 ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dl, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dm = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.dm ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !tbaa !8
  %i.do = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = xor i64 %i.dm, -1
  %i.dr = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.dq
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.do, ptr %i.dp, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dr, i64 %i.dm ; 2 uses
  %i.ds = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ds, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !610

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.dl, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.di, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.dt
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.du = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !420
  %i.dv = icmp eq ptr %i.du, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dv, label %bb.s, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !611
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit: ; preds = %._crit_edge.i.i144, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.r, %bb.s
  %i.dy = phi ptr [ null, %._crit_edge.i.i144 ], [ %i.dx, %bb.s ], [ null, %bb.r ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.db, ptr %7, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.dy, ptr %i.dz, align 8
  %i.ea = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #30
  %i.eb = load ptr, ptr %0, align 8, !tbaa !602   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !505 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %.sroa.0.0.copyload.i.i.i173 = load ptr, ptr %i.ee, align 8, !tbaa !509
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i173, i64 8
  %.0.copyload.i.i.i.i.i174 = load i64, ptr %i.ef, align 8
  %i.eg = and i64 %.0.copyload.i.i.i.i.i174, -8
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = icmp eq ptr %i.ea, %i.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br i1 %i.ei, label %.lr.ph.i.i178.preheader, label %bb.t

.lr.ph.i.i178.preheader:                          ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %.sroa.0.0.copyload.i.i.i194 = load ptr, ptr %i.ej, align 8, !tbaa !509
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i194, i64 8
  %.0.copyload.i.i.i.i.i195 = load i64, ptr %i.ek, align 8
  %i.el = getelementptr inbounds i8, ptr %i.eb, i64 -16
  %i.em = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 noundef 0) #30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.0.copyload.i.i.i.i.i201 = load i64, ptr %i.en, align 8
  %i.eo = xor i64 %.0.copyload.i.i.i.i.i201, %.0.copyload.i.i.i.i.i195
  %i.ep = icmp ult i64 %i.eo, 8
  br i1 %i.ep, label %._crit_edge.i.i214, label %.thread377

bb.t:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.er, align 1, !tbaa !158
  store ptr @.str.269, ptr %9, align 8, !tbaa !86
  store i8 3, ptr %i.eq, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %9) #30
  %i.es = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #30
  %i.et = load ptr, ptr %8, align 8, !tbaa !47
  %.not.i176 = icmp eq ptr %i.et, null
  br i1 %.not.i176, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !67, !range !68, !noundef !69
  %i.ew = trunc nuw i8 %i.ev to i1
  store i8 0, ptr %i.eu, align 8, !tbaa !67
  br i1 %i.ew, label %bb.w, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit177

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ex) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit177

_ZN4mlir18InFlightDiagnosticD2Ev.exit177:         ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.thread359

._crit_edge.i.i214:                               ; preds = %.lr.ph.i.i178.preheader
  %i.ey = load ptr, ptr %0, align 8, !tbaa !602
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -16
  %i.fa = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 noundef 0) #30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.0.copyload.i.i.i.i.i207 = load i64, ptr %i.fb, align 8
  %i.fc = load ptr, ptr %0, align 8, !tbaa !602
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !505
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %.sroa.0.0.copyload.i.i.i224 = load ptr, ptr %i.ff, align 8, !tbaa !509
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i224, i64 8
  %.0.copyload.i.i.i.i.i225 = load i64, ptr %i.fg, align 8
  %i.fh = xor i64 %.0.copyload.i.i.i.i.i225, %.0.copyload.i.i.i.i.i207
  %i.fi = icmp ugt i64 %i.fh, 7
  br i1 %i.fi, label %.thread377, label %.thread359

.thread377:                                       ; preds = %.lr.ph.i.i178.preheader, %._crit_edge.i.i214
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.fk, align 1, !tbaa !158
  store ptr @.str.270, ptr %11, align 8, !tbaa !86
  store i8 3, ptr %i.fj, align 8, !tbaa !155
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %11) #30
  %i.fl = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #30
  %i.fm = load ptr, ptr %10, align 8, !tbaa !47
  %.not.i226 = icmp eq ptr %i.fm, null
  br i1 %.not.i226, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread377
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread377
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !67, !range !68, !noundef !69
  %i.fp = trunc nuw i8 %i.fo to i1
  store i8 0, ptr %i.fn, align 8, !tbaa !67
  br i1 %i.fp, label %bb.z, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit227

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.fq) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit227

_ZN4mlir18InFlightDiagnosticD2Ev.exit227:         ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.thread359

.thread359:                                       ; preds = %.lr.ph405, %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i78.preheader, %._crit_edge, %bb.n, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %._crit_edge.i.i214, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit227, %_ZN4mlir18InFlightDiagnosticD2Ev.exit177
  %.sroa.058.23 = phi i8 [ 1, %._crit_edge.i.i214 ], [ %i.es, %_ZN4mlir18InFlightDiagnosticD2Ev.exit177 ], [ %i.fl, %_ZN4mlir18InFlightDiagnosticD2Ev.exit227 ], [ 0, %_ZN4mlir13sparse_tensor10PushBackOp14getODSOperandsEj.exit ], [ 0, %.lr.ph.i.i.preheader ], [ 0, %bb.a ], [ 0, %.lr.ph.i.i78.preheader ], [ %i.bw, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.n ], [ 0, %._crit_edge ], [ 0, %.lr.ph405 ]
  ret i8 %.sroa.058.23
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL50__mlir_ods_local_type_constraint_SparseTensorOps20PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 6 uses
  %10 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %12 = alloca %"class.mlir::MemRefType", align 8 ; 5 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !257    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !609

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.388, i64 49), i64 16) #30
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !8 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.m = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.m ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.o = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = xor i64 %i.m, -1
  %i.r = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.q
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.o, ptr %i.p, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.m ; 2 uses
  %i.s = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !610

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !420
  %i.v = icmp eq ptr %i.u, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.v, label %bb.f, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !611
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.y = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.f ], [ null, %bb.e ]
  store ptr %1, ptr %9, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !257
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !257   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8, !prof !609

bb.h:                                             ; preds = %bb.g
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.388, i64 49), i64 16) #30
  store ptr %i.ai, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !8 ; 2 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !66 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i10 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i10, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11
  %.017.i.i.i.i.i.i.i.i.i.i.i.i13 = phi i64 [ %i.am, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11 ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i19, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i14 = phi ptr [ %i.aj, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i11 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i18, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 2 uses
  %i.an = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i13, 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i14, i64 %i.an ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i17 = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.ap = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i17, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = xor i64 %i.an, -1
  %i.as = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i13, %i.ar
  %.112.i.i.i.i.i.i.i.i.i.i.i.i18 = select i1 %i.ap, ptr %i.aq, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i14 ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i19 = select i1 %i.ap, i64 %i.as, i64 %i.an ; 2 uses
  %i.at = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i19, 0
  br i1 %i.at, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, !llvm.loop !610

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8
  %.pre-phi.i.i.i.i.i.i.i.i.i21 = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8 ], [ %i.am, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22 = phi ptr [ %i.aj, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i8 ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i18, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i12 ] ; 3 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %.pre-phi.i.i.i.i.i.i.i.i.i21
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20
  %i.av = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, align 8, !tbaa !420
  %i.aw = icmp eq ptr %i.av, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i9
  br i1 %i.aw, label %bb.k, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i22, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !611
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20, %bb.j, %bb.k
  %i.az = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i20 ], [ %i.ay, %bb.k ], [ null, %bb.j ]
  store ptr %1, ptr %10, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #30
  br i1 %i.bb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit27
  %i.bc = load ptr, ptr %1, align 8, !tbaa !257   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30, !prof !609

bb.m:                                             ; preds = %bb.l
  %i.bg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i.i.i.i.i.i.i.i48 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i48, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.388, i64 49), i64 16) #30
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !8 ; 2 uses
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i42, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i30
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i34, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i33
end_hunk_1
