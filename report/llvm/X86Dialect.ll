Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86Dialect?download=true
inline.NumInlined: 15878
inline.NumDeleted: 5154
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4mlir3x866avx51214MaskCompressOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS1_6detail32MaskCompressOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  br i1 %i.aj, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.w, i64 noundef 1, i64 noundef 8) #26
  %.pre.i.i.i = load i32, ptr %i.x, align 8, !tbaa !104 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.pre.i.i.i, 1
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, %bb.d
  %.pre-phi.i.i.in9.i = phi i32 [ %.pre.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i ], [ 0, %bb.d ]
  %.pre-phi.i.i.i = zext i32 %.pre-phi.i.i.in9.i to i64 ; 2 uses
  %i.ak = load ptr, ptr %9, align 8, !tbaa !101
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %.pre-phi.i.i.i
  %i.am = shl nuw nsw i64 %.pre-phi.i.i.i, 3
  %i.an = sub nsw i64 8, %i.am
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.an, i1 false), !tbaa !137
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  store i32 1, ptr %i.x, align 8, !tbaa !104
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i: ; preds = %.sink.split.i.i.i, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.ao = icmp ult i64 %3, 2
  br i1 %i.ao, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i
  %i.ap = call ptr @_ZN4mlir10ValueRange20dereference_iteratorERKN4llvm12PointerUnionIJPKNS_5ValueEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS3_EEEEEl(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1) #26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %9, align 8, !tbaa !101   ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.au = load i32, ptr %i.x, align 8, !tbaa !104 ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !104 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.av            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !103
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ugt i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.f, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull %i.bf, i64 noundef %i.ba, i64 noundef 8) #26
  %.pre8.pre.i.i = load i32, ptr %i.ax, align 8, !tbaa !104
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %.pre8.i.i = phi i32 [ %i.ay, %bb.e ], [ %.pre8.pre.i.i, %bb.f ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.bh = zext i32 %.pre8.i.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 8 %i.at, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.ax, align 8, !tbaa !104
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.g
  %i.bj = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.g ]
  %i.bk = add i32 %i.bj, %i.au
  store i32 %i.bk, ptr %i.ax, align 8, !tbaa !104
  %i.bl = load ptr, ptr %9, align 8, !tbaa !101   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.w
  br i1 %i.bm, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bl) #26
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.6, i1 noundef zeroext true) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3x866avx51214MaskCompressOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS1_6detail32MaskCompressOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.513") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.87, i64 24) #26
  call void @_ZN4mlir3x866avx51214MaskCompressOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS1_6detail32MaskCompressOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.513") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #26 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3x866avx51214MaskCompressOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3x866avx51214MaskCompressOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS1_6detail32MaskCompressOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.513", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.87, i64 24) #26
  call void @_ZN4mlir3x866avx51214MaskCompressOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS1_6detail32MaskCompressOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.513") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3x866avx51214MaskCompressOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir3x866avx51214MaskCompressOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %class.anon.1014, align 8           ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 14 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %9 = alloca %"class.mlir::VectorType", align 8  ; 4 uses
  %10 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %.sroa.042.0.copyload = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.b, ptr %4, align 8, !tbaa !228
  %i.i = ptrtoint ptr %4 to i64
  %i.j = call fastcc i8 @_ZL37__mlir_ods_local_attr_constraint_X861N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr readonly %.sroa.042.0.copyload, ptr nonnull @.str.19, i64 12, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL37__mlir_ods_local_attr_constraint_X861PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit, label %.thread282

_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8612PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.l, ptr %i.r, ptr nonnull @.str.7, i64 7, i32 noundef 0)
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.lr.ph.i.i.preheader, label %.thread282

.lr.ph.i.i.preheader:                             ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.0.0.copyload.i.i.i60 = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i60, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8613PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.u, ptr %i.aa, ptr nonnull @.str.7, i64 7, i32 noundef 1)
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.i.i62.preheader, label %.thread282

.lr.ph.i.i62.preheader:                           ; preds = %.lr.ph.i.i.preheader
  %.pre = load ptr, ptr %0, align 8, !tbaa !20    ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre318 = load i32, ptr %.phi.trans.insert, align 4
  %.pre320 = and i32 %.pre318, 8388608
  %.not.i.i.i69 = icmp eq i32 %.pre320, 0
  br i1 %.not.i.i.i69, label %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75.thread, label %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75, !prof !128

_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75: ; preds = %.lr.ph.i.i62.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 68
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = zext i32 %i.ae to i64
  %i.ai = add nsw i64 %i.ah, -2                   ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1
  br i1 %i.aj, label %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75.thread, label %.preheader

.preheader:                                       ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75
  %.not294306 = icmp eq i32 %i.ae, 2
  br i1 %.not294306, label %._crit_edge, label %.lr.ph309.preheader

.lr.ph309.preheader:                              ; preds = %.preheader
  %13 = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %.sroa.0.0.copyload.i.i.i85 = load ptr, ptr %13, align 8, !tbaa !36
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i85, i64 8
  %.0.copyload.i.i.i.i.i86 = load i64, ptr %14, align 8
  %15 = and i64 %.0.copyload.i.i.i.i.i86, -8
  %16 = inttoptr i64 %15 to ptr
  %17 = call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8613PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %.pre, ptr %16, ptr nonnull @.str.7, i64 7, i32 noundef 2)
  %18 = trunc nuw i8 %17 to i1
  br i1 %18, label %._crit_edge.loopexit, label %.thread282

_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75.thread: ; preds = %.lr.ph.i.i62.preheader, %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75
  %i.ak = phi i64 [ %i.ai, %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75 ], [ -2, %.lr.ph.i.i62.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.am, align 1, !tbaa !41
  store ptr @.str.22, ptr %6, align 8, !tbaa !44
  store i8 3, ptr %i.al, align 8, !tbaa !45
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #26
  %i.an = load ptr, ptr %5, align 8, !tbaa !46
  %.not.i.i76 = icmp eq ptr %i.an, null
  br i1 %.not.i.i76, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 5, ptr %3, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !103
  %.not.i.i.i.i.i = icmp ult i32 %i.ar, %i.at
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !105

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.au = zext i32 %i.ar to i64
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !104
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aq, align 8, !tbaa !104
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.pr = load ptr, ptr %5, align 8, !tbaa !46
  %.not.i.i77 = icmp eq ptr %.pr, null
  br i1 %.not.i.i77, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 3, ptr %2, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.23, ptr %i.az, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !108
  %i.ba = load i32, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.bb = load i32, ptr %i.as, align 4, !tbaa !103
  %.not.i.i.i.i.i78 = icmp ult i32 %i.ba, %i.bb
  br i1 %.not.i.i.i.i.i78, label %bb.g, label %bb.f, !prof !105

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = zext i32 %i.ba to i64
  %i.bd = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bf = load i32, ptr %i.aq, align 8, !tbaa !104
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aq, align 8, !tbaa !104
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pr278 = load ptr, ptr %5, align 8, !tbaa !46
  %.not.i.i79 = icmp eq ptr %.pr278, null
  br i1 %.not.i.i79, label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 5, ptr %1, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ak, ptr %i.bh, align 8, !tbaa !44
  %i.bi = load i32, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %i.bj = load i32, ptr %i.as, align 4, !tbaa !103
  %.not.i.i.i.i.i80 = icmp ult i32 %i.bi, %i.bj
  br i1 %.not.i.i.i.i.i80, label %bb.j, label %bb.i, !prof !105

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.bk = zext i32 %i.bi to i64
  %i.bl = load ptr, ptr %i.ao, align 8, !tbaa !101
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bn = load i32, ptr %i.aq, align 8, !tbaa !104
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.aq, align 8, !tbaa !104
  br label %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i:  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit:  ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit75.thread, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendImEERS0_OT_.exit.i.i
  %i.bp = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  %i.bq = load ptr, ptr %5, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !55, !range !56, !noundef !57
  %i.bt = trunc nuw i8 %i.bs to i1
  store i8 0, ptr %i.br, align 8, !tbaa !55
  br i1 %i.bt, label %bb.m, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bu) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread282

._crit_edge.loopexit:                             ; preds = %.lr.ph309.preheader
  %.pre319 = load ptr, ptr %0, align 8, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bv = phi ptr [ %.pre319, %._crit_edge.loopexit ], [ %.pre, %.preheader ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -16
  %i.bx = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 noundef 0) #26
  %i.by = load ptr, ptr %0, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.0.copyload.i.i.i.i.i93 = load i64, ptr %i.bz, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i93, -8
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = call fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8613PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.by, ptr %i.cb, ptr nonnull @.str.8, i64 6, i32 noundef 0)
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %.lr.ph.i.i94.preheader, label %.thread282

.lr.ph.i.i94.preheader:                           ; preds = %._crit_edge
  %i.ce = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %.sroa.0.0.copyload.i.i.i110 = load ptr, ptr %i.ch, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i110, i64 8
  %.0.copyload.i.i.i.i.i111 = load i64, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 -16
  %i.ck = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 noundef 0) #26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.0.copyload.i.i.i.i.i117 = load i64, ptr %i.cl, align 8
  %i.cm = xor i64 %.0.copyload.i.i.i.i.i117, %.0.copyload.i.i.i.i.i111
  %i.cn = icmp ult i64 %i.cm, 8
  br i1 %i.cn, label %._crit_edge.i.i130, label %.thread292

._crit_edge.i.i130:                               ; preds = %.lr.ph.i.i94.preheader
  %i.co = load ptr, ptr %0, align 8, !tbaa !20
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -16
  %i.cq = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 noundef 0) #26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.0.copyload.i.i.i.i.i123 = load i64, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %.sroa.0.0.copyload.i.i.i140 = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i140, i64 8
  %.0.copyload.i.i.i.i.i141 = load i64, ptr %i.cw, align 8
  %i.cx = xor i64 %.0.copyload.i.i.i.i.i141, %.0.copyload.i.i.i.i.i123
  %i.cy = icmp ugt i64 %i.cx, 7
  br i1 %i.cy, label %.thread292, label %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit163

.thread292:                                       ; preds = %.lr.ph.i.i94.preheader, %._crit_edge.i.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.da, align 1, !tbaa !41
  store ptr @.str.24, ptr %8, align 8, !tbaa !44
  store i8 3, ptr %i.cz, align 8, !tbaa !45
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.db = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  %i.dc = load ptr, ptr %7, align 8, !tbaa !46
  %.not.i142 = icmp eq ptr %i.dc, null
  br i1 %.not.i142, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread292
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread292
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !55, !range !56, !noundef !57
  %i.df = trunc nuw i8 %i.de to i1
  store i8 0, ptr %i.dd, align 8, !tbaa !55
  br i1 %i.df, label %bb.p, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit143

bb.p:                                             ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.dg) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit143

_ZN4mlir18InFlightDiagnosticD2Ev.exit143:         ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread282

_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit163: ; preds = %._crit_edge.i.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.dh = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %i.di = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i64 noundef 0) #26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.0.copyload.i.i.i.i.i149 = load i64, ptr %i.dj, align 8
  %i.dk = and i64 %.0.copyload.i.i.i.i.i149, -8
  %i.dl = inttoptr i64 %i.dk to ptr
  store ptr %i.dl, ptr %9, align 8
  %i.dm = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  %i.dn = extractvalue { ptr, i64 } %i.dm, 0
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !108
  store i64 %i.do, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.dp = load ptr, ptr %0, align 8, !tbaa !20
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -16
  %i.dr = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 noundef 0) #26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.0.copyload.i.i.i.i.i155 = load i64, ptr %i.ds, align 8
  %i.dt = and i64 %.0.copyload.i.i.i.i.i155, -8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %10, align 8
  %i.dv = call noundef ptr @_ZNK4mlir4Type10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.dw = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.dv, i32 noundef 1, i32 noundef 0) #26
  %i.dx = call ptr @_ZN4mlir10VectorType3getEN4llvm8ArrayRefIlEENS_4TypeENS2_IbEE(ptr nonnull %i.a, i64 1, ptr %i.dw, ptr null, i64 0) #26
  %i.dy = load ptr, ptr %0, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.sroa.0.0.copyload.i.i.i166 = load ptr, ptr %i.eb, align 8, !tbaa !36
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i166, i64 8
  %.0.copyload.i.i.i.i.i167 = load i64, ptr %i.ec, align 8
  %i.ed = and i64 %.0.copyload.i.i.i.i.i167, -8
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = icmp eq ptr %i.dx, %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.ef, label %.thread282, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.eh, align 1, !tbaa !41
  store ptr @.str.25, ptr %12, align 8, !tbaa !44
  store i8 3, ptr %i.eg, align 8, !tbaa !45
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #26
  %i.ei = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
  %i.ej = load ptr, ptr %11, align 8, !tbaa !46
  %.not.i169 = icmp eq ptr %i.ej, null
  br i1 %.not.i169, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !55, !range !56, !noundef !57
  %i.em = trunc nuw i8 %i.el to i1
  store i8 0, ptr %i.ek, align 8, !tbaa !55
  br i1 %i.em, label %bb.t, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit170

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.en) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit170

_ZN4mlir18InFlightDiagnosticD2Ev.exit170:         ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.thread282

.thread282:                                       ; preds = %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit, %.lr.ph.i.i.preheader, %.lr.ph309.preheader, %._crit_edge, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit163, %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit170, %_ZN4mlir18InFlightDiagnosticD2Ev.exit143
  %.sroa.044.15 = phi i8 [ 1, %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit163 ], [ %i.db, %_ZN4mlir18InFlightDiagnosticD2Ev.exit143 ], [ %i.ei, %_ZN4mlir18InFlightDiagnosticD2Ev.exit170 ], [ 0, %._crit_edge ], [ 0, %.lr.ph309.preheader ], [ 0, %bb.a ], [ %i.bp, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %.lr.ph.i.i.preheader ], [ 0, %_ZN4mlir3x866avx51214MaskCompressOp14getODSOperandsEj.exit ]
  ret i8 %.sroa.044.15
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL38__mlir_ods_local_type_constraint_X8612PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %12 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %13 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %14 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !171
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %10, align 8
  %i.d = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !100

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.75, i64 49), i64 16) #26
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !123 ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !101  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !104  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.q = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.q ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !123
  %i.s = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = xor i64 %i.q, -1
  %i.v = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.u
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.s, ptr %i.t, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.s, i64 %i.v, i64 %i.q ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !174

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.x
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !166
  %i.z = icmp eq ptr %i.y, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.z, label %bb.g, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !175
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ac = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.ab, %bb.g ], [ null, %bb.f ]
  store ptr %1, ptr %11, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.ae, ptr %9, align 8
  %i.af = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br i1 %i.af, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !171
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i10 = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.ai = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i10, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  br i1 %i.ai, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %12, align 8
  %i.aj = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #26
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  store ptr %1, ptr %13, align 8
  %i.am = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #26 ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  %i.ap = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.an, i64 %i.ao) #26
  %i.aq = icmp eq i64 %i.ap, 16
  br i1 %i.aq, label %.critedge6, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %14, align 8
  %i.ar = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #26 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  %i.au = call noundef i64 @_ZN4mlir10ShapedType14getNumElementsEN4llvm8ArrayRefIlEE(ptr %i.as, i64 %i.at) #26
  %.not = icmp eq i64 %i.au, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br i1 %.not, label %bb.ab, label %bb.l

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.a, %bb.b, %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 5, ptr %i.av, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aw, align 1, !tbaa !41
  store ptr %2, ptr %16, align 8, !tbaa !44
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %3, ptr %i.ax, align 8, !tbaa !44
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %16) #26
  %i.ay = load ptr, ptr %15, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 3, ptr %8, align 8, !tbaa !111
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.65, ptr %i.ba, align 8, !tbaa !126
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !108
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 12 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !103
  %.not.i.i.i.i.i14 = icmp ult i32 %i.bc, %i.be
  br i1 %.not.i.i.i.i.i14, label %bb.o, label %bb.n, !prof !105

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !104
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bb, align 8, !tbaa !104
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit: ; preds = %bb.n, %bb.o
end_hunk_0
