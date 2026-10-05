Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DLTITransformOps?download=true
inline.NumInlined: 3434
inline.NumDeleted: 1947
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4mlir9transform7QueryOp15writePropertiesERNS_21DialectBytecodeWriterE:bb.a
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.h = load ptr, ptr %1, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %.sroa.0.0.copyload) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.201, align 1            ; 3 uses
  %6 = alloca %class.anon.203, align 1            ; 3 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %3, ptr %7, align 8
  %i.a = ptrtoint ptr %7 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !108
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.d, align 8, !tbaa !54
  store ptr %i.e, ptr %i.b, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.f = ptrtoint ptr %5 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.g, align 8, !tbaa !114
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = ptrtoint ptr %6 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.i, align 8, !tbaa !114
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %.not = icmp ult i32 %i.m, %i.o
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.p = zext i32 %i.m to i64
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.r, i64 noundef %i.q, i64 noundef 8) #22
  %.pre8.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.c
  %.pre8.i.i = phi i32 [ %i.m, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit ], [ %.pre8.pre.i.i, %bb.c ]
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.t = zext i32 %.pre8.i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %2, ptr %i.u, align 1
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !47
  %i.v = add i32 %.pre.i.i, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !47
  ret void
}

declare void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304), i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nsw i64 %2, %i.d                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load i32, ptr %i.f, align 4, !tbaa !48
  %i.h = zext i32 %i.g to i64
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef 8) #22
  %.pre8.pre.i = load i32, ptr %i.b, align 8, !tbaa !47
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %.pre8.i = phi i32 [ %i.c, %bb.a ], [ %.pre8.pre.i, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.l = zext i32 %.pre8.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 8 %1, i64 %.idx, i1 false)
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !47
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE6appendIPKS2_vEEvT_S7_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i, %bb.c
  %i.n = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i ], [ %.pre.i, %bb.c ]
  %i.o = trunc i64 %2 to i32
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %i.b, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.201, align 1            ; 3 uses
  %6 = alloca %class.anon.203, align 1            ; 3 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.15, i64 20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %3, ptr %7, align 8
  %i.a = ptrtoint ptr %7 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %i.a, i64 1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.e = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !108
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.d, align 8, !tbaa !54
  store ptr %i.e, ptr %i.b, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.f = ptrtoint ptr %5 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.g, align 8, !tbaa !114
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 280
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = ptrtoint ptr %6 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.i, align 8, !tbaa !114
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 296
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i: ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %.not.i = icmp ult i32 %i.m, %i.o
  br i1 %.not.i, label %_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_9ArrayAttrE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i
  %i.p = zext i32 %i.m to i64
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.r, i64 noundef %i.q, i64 noundef 8) #22
  %.pre8.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !47
  br label %_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_9ArrayAttrE.exit

_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_9ArrayAttrE.exit: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i, %bb.c
  %.pre8.i.i.i = phi i32 [ %i.m, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit.i ], [ %.pre8.pre.i.i.i, %bb.c ]
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.t = zext i32 %.pre8.i.i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %2, ptr %i.u, align 1
  %.pre.i.i.i = load i32, ptr %i.l, align 8, !tbaa !47
  %i.v = add i32 %.pre.i.i.i, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.w = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #22 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
  %i.aa = icmp eq ptr %i.z, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i = select i1 %i.aa, ptr %i.w, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret ptr %spec.select.i.i
}

declare void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304), ptr, ptr, i64) unnamed_addr #1

declare noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_20ImplicitLocOpBuilderENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @_ZN4mlir9transform7QueryOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.0.0.copyload.i, ptr %1, ptr %2, ptr %3)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueENS_9ArrayAttrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %class.anon.201, align 1            ; 3 uses
  %7 = alloca %class.anon.203, align 1            ; 3 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %8, align 8
  %i.a = ptrtoint ptr %8 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !108
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.d, align 8, !tbaa !54
  store ptr %i.e, ptr %i.b, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.f = ptrtoint ptr %6 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.g, align 8, !tbaa !114
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.h = ptrtoint ptr %7 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.i, align 8, !tbaa !114
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  store ptr %5, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = add i64 %3, %i.n                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = zext i32 %i.q to i64
  %i.s = icmp ugt i64 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.t, i64 noundef %i.o, i64 noundef 8) #22
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !47 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.c, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %.pre-phi.i.i = phi i64 [ %i.n, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit ], [ %.pre28.i.i, %bb.c ]
  %i.u = phi i32 [ %i.m, %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit ], [ %.pre.i.i, %bb.c ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.x = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #22
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !119
  %i.z = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.z, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.l, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ab = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.u, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ac = trunc i64 %3 to i32
  %i.ad = add i32 %i.ab, %i.ac
  store i32 %i.ad, ptr %i.l, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueENS_9ArrayAttrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr %4, ptr %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_5ValueENS_9ArrayAttrE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %5, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueENS_9ArrayAttrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %5, i64 %1, i64 %2, ptr %3, ptr %4)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %5) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::function_ref", align 8 ; 4 uses
  %8 = alloca %class.anon.201, align 1            ; 3 uses
  %9 = alloca %class.anon.203, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #22
  %.sroa.06.0.copyload = load ptr, ptr %6, align 8, !tbaa !122
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !104 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.b, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.27.0.copyload, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nsw i64 %.sroa.27.0.copyload, %i.e   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  %i.i = zext i32 %i.h to i64
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef 16) #22
  %.pre8.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !47
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.27.0.copyload, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.m = zext i32 %.pre8.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %.sroa.06.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.c, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.o = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.p = trunc i64 %.sroa.27.0.copyload to i32
  %i.q = add i32 %i.o, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = add i64 %3, %i.u                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !48
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.aa, i64 noundef %i.v, i64 noundef 8) #22
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !47 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.u, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ab = phi i32 [ %i.t, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ae = tail call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #22
  %i.af = ptrtoint ptr %i.ae to i64
  store i64 %i.af, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !119
  %i.ag = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.s, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.ai = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ab, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.aj = trunc i64 %3 to i32
  %i.ak = add i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.s, align 8, !tbaa !47
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  br i1 %.not.i, label %bb.f, label %._ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit_crit_edge

._ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit_crit_edge: ; preds = %bb.e
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %i.an, align 8, !tbaa !54
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 3 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !108
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.an, align 8, !tbaa !54
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ap = ptrtoint ptr %8 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.aq, align 8, !tbaa !114
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.ap, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ar = ptrtoint ptr %9 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.as, align 8, !tbaa !114
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %._ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit_crit_edge, %bb.f
  %.sroa.2.0.copyload.i = phi ptr [ %i.am, %._ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit_crit_edge ], [ %i.ao, %bb.f ]
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %._ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit_crit_edge ], [ @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !123 ; 3 uses
  %i.av = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #22
  %i.aw = call ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %i.av) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr null, ptr %7, align 8
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call i8 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr nonnull %i.au, ptr %.sroa.0.0.copyload.i, ptr nonnull %.sroa.2.0.copyload.i, ptr %i.aw, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %7) #22, !inline_history !251
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.7, i1 noundef zeroext true) #24
  unreachable

bb.h:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEERT_v.exit, %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit
  ret void
}

declare ptr @_ZNK4mlir13NamedAttrList13getDictionaryEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.84") align 8 %6)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.84") align 8 %5)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25QueryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %class.anon.207, align 1            ; 3 uses
  %9 = alloca %class.anon.209, align 1            ; 3 uses
  tail call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.a, align 8, !tbaa !54
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  store ptr %6, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.b = ptrtoint ptr %8 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState13usePropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_E_EEvlS2_, ptr %i.c, align 8, !tbaa !114
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.b, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.d = ptrtoint ptr %9 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState13usePropertiesINS1_9transform6detail25QueryOpGenericAdaptorBase10PropertiesEEEvRT_EUlS2_S2_E_EEvlS2_S2_, ptr %i.e, align 8, !tbaa !114
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !122
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !104 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !48
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #22
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !47
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !48
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #22
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !47 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #22
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !119
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !47
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25QueryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25QueryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.84") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #22 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir9transform7QueryOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25QueryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.84") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.15, i64 20) #22
  call void @_ZN4mlir9transform7QueryOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail25QueryOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.84") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_9transform7QueryOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir9transform7QueryOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %class.anon.194, align 8           ; 4 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !58
  store ptr @.str.8, ptr %15, align 8, !tbaa !59
  store i8 3, ptr %i.j, align 8, !tbaa !60
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %15) #22
  %i.l = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  %i.m = load ptr, ptr %14, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %14) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !70, !range !71, !noundef !72
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !70
  br i1 %i.p, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.thread101

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.a, ptr %13, align 8, !tbaa !125
  %i.s = ptrtoint ptr %13 to i64
  %i.t = call fastcc i8 @_ZL50__mlir_ods_local_attr_constraint_DLTITransformOps1N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.r, ptr nonnull @.str.5, i64 4, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL50__mlir_ods_local_attr_constraint_DLTITransformOps1PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN4mlir9transform7QueryOp14getODSOperandsEj.exit, label %.thread101

_ZN4mlir9transform7QueryOp14getODSOperandsEj.exit: ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 33
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i7.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !127
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ak, align 8
  %i.al = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, !prof !131

bb.g:                                             ; preds = %_ZN4mlir9transform7QueryOp14getODSOperandsEj.exit
  %i.ar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.18, i64 49), i64 45) #22
  store ptr %i.as, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZN4mlir9transform7QueryOp14getODSOperandsEj.exit
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !54 ; 2 uses
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !47 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ax = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ax ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !54
  %i.az = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = xor i64 %i.ax, -1
  %i.bc = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i, %i.bb
  %.112.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.az, ptr %i.ba, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.az, i64 %i.bc, i64 %i.ax ; 2 uses
  %i.bd = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %i.aw, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZN4mlir6detail9InterfaceINS_9transform28TransformHandleTypeInterfaceENS_4TypeENS2_6detail43TransformHandleTypeInterfaceInterfaceTraitsES4_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.pre-phi.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !117
  %i.bg = icmp eq ptr %i.bf, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bg, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !133
  %.not.i31 = icmp eq ptr %i.bi, null
  br i1 %.not.i31, label %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i, label %_ZL50__mlir_ods_local_type_constraint_DLTITransformOps1PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj.exit.thread

_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.i, %bb.i, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i8 5, ptr %i.y, align 8, !tbaa !60
  store i8 1, ptr %i.z, align 1, !tbaa !58
  store ptr @.str.9, ptr %12, align 8, !tbaa !59
  store i64 7, ptr %i.aa, align 8, !tbaa !59
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %12) #22
  %i.bj = load ptr, ptr %11, align 8, !tbaa !69
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_4TypeEEEOS0_OT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm3isaIJN4mlir9transform28TransformHandleTypeInterfaceEENS1_4TypeEEEbRKT0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store i32 3, ptr %10, align 8, !tbaa !100
  store ptr @.str.16, ptr %i.ac, align 8, !tbaa !102
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !104
  %i.bk = load i32, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.bl = load i32, ptr %i.ae, align 4, !tbaa !48
  %.not.i.i.i.i.i.i = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !prof !55

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA3_KcEEOS0_OT_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i32 %i.bk to i64
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.bp = load i32, ptr %i.ad, align 8, !tbaa !47
  %i.bq = add i32 %i.bp, 1
end_hunk_0
