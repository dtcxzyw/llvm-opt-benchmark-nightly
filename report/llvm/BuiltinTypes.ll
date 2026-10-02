Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BuiltinTypes?download=true
inline.NumInlined: 1004
inline.NumDeleted: 492
begin_hunk_0_@mlirFunctionTypeGet:bb.a
  %i.ar = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.d
  br i1 %i.as, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZL10unwrapListIN4mlir4TypeEK8MlirTypeEN4llvm8ArrayRefIT_EEmPT0_RNS4_15SmallVectorImplIS6_EE.exit20
  call void @free(ptr noundef %i.ar) #9
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit: ; preds = %_ZL10unwrapListIN4mlir4TypeEK8MlirTypeEN4llvm8ArrayRefIT_EEmPT0_RNS4_15SmallVectorImplIS6_EE.exit20, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.at = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit21, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit
  call void @free(ptr noundef %i.at) #9
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit21

_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit21: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj4EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret ptr %i.aq
}

declare ptr @_ZN4mlir12FunctionType3getEPNS_11MLIRContextENS_9TypeRangeES3_(ptr noundef, i64, i64, i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @mlirFunctionTypeGetName() local_unnamed_addr #0 {
bb.a:
  ret { ptr, i64 } { ptr @.str.58, i64 16 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @mlirFunctionTypeGetNumInputs(ptr %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %0, ptr %1, align 8
  %i.a = call noundef i32 @_ZNK4mlir12FunctionType12getNumInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %i.b = zext i32 %i.a to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.b
}

declare noundef i32 @_ZNK4mlir12FunctionType12getNumInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @mlirFunctionTypeGetNumResults(ptr %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %0, ptr %1, align 8
  %i.a = call noundef i32 @_ZNK4mlir12FunctionType13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %i.b = zext i32 %i.a to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.b
}

declare noundef i32 @_ZNK4mlir12FunctionType13getNumResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @mlirFunctionTypeGetInput(ptr %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %0, ptr %2, align 8
  %i.a = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = and i64 %1, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i4 = load ptr, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret ptr %.sroa.0.0.copyload.i4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @mlirFunctionTypeGetResult(ptr %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %0, ptr %2, align 8
  %i.a = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = and i64 %1, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %.sroa.0.0.copyload.i4 = load ptr, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret ptr %.sroa.0.0.copyload.i4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @mlirOpaqueTypeGetTypeID() local_unnamed_addr #0 {
bb.a:
  ret ptr @_ZN4mlir6detail14TypeIDResolverINS_10OpaqueTypeEvE2idE
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @mlirTypeIsAOpaque(ptr nofree readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10OpaqueTypeEvE2idE
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @mlirOpaqueTypeGet(ptr %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !56
  store ptr %1, ptr %5, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !57
  %i.d = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #9
  %i.e = call ptr @_ZN4mlir10OpaqueType3getENS_10StringAttrEN4llvm9StringRefE(ptr %i.d, ptr %3, i64 %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret ptr %i.e
}

declare ptr @_ZN4mlir10OpaqueType3getENS_10StringAttrEN4llvm9StringRefE(ptr, ptr, i64) local_unnamed_addr #4

declare ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @mlirOpaqueTypeGetName() local_unnamed_addr #0 {
bb.a:
  ret { ptr, i64 } { ptr @.str.60, i64 14 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @mlirOpaqueTypeGetDialectNamespace(ptr %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %2 = alloca %"class.mlir::OpaqueType", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %0, ptr %2, align 8
  %i.a = call ptr @_ZNK4mlir10OpaqueType19getDialectNamespaceEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  store ptr %i.a, ptr %1, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret { ptr, i64 } %i.b
}

declare ptr @_ZNK4mlir10OpaqueType19getDialectNamespaceEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @mlirOpaqueTypeGetData(ptr %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %"class.mlir::OpaqueType", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr %0, ptr %1, align 8
  %i.a = call { ptr, i64 } @_ZNK4mlir10OpaqueType11getTypeDataEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret { ptr, i64 } %i.a
}

declare { ptr, i64 } @_ZNK4mlir10OpaqueType11getTypeDataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZNK4mlir11IntegerType13getSignednessEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4mlir9TupleType8getTypesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir11MLIRContext14getTypeUniquerEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef ptr @_ZN4mlir14StorageUniquer16getSingletonImplENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr) local_unnamed_addr #4

declare ptr @_ZN4mlir10VectorType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS1_8ArrayRefIlEENS_4TypeENS6_IbEE(ptr, i64, ptr, i64, ptr, ptr noundef byval(%"class.llvm::ArrayRef.239") align 8) local_unnamed_addr #4

declare void @_ZN4mlir6detail26getDefaultDiagnosticEmitFnERKNS_8LocationE(ptr dead_on_unwind writable sret(%"class.llvm::unique_function.318") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnINS_15unique_functionIS3_EEEES2_l(ptr dead_on_unwind noalias writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, i64 noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !65
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a) #9, !inline_history !60
  ret void
}

declare ptr @_ZN4mlir16RankedTensorType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS1_8ArrayRefIlEENS_4TypeENS_9AttributeE(ptr, i64, ptr, i64, ptr, ptr) local_unnamed_addr #4

declare ptr @_ZN4mlir18UnrankedTensorType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS_4TypeE(ptr, i64, ptr) local_unnamed_addr #4

declare ptr @_ZN4mlir10MemRefType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS1_8ArrayRefIlEENS_4TypeENS_25MemRefLayoutAttrInterfaceENS_9AttributeE(ptr, i64, ptr, i64, ptr, ptr noundef byval(%"class.mlir::MemRefLayoutAttrInterface") align 8, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare ptr @_ZN4mlir18UnrankedMemRefType10getCheckedEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS_4TypeENS_9AttributeE(ptr, i64, ptr, ptr) local_unnamed_addr #4

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #9
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !20
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !20
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !20
  ret void
}

declare void @_ZN4mlir9TypeRangeC2EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !21}
!1 = distinct !{null, null}
!2 = distinct !{!2, !21}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN4mlir12AbstractTypeE", !11, i64 0}
!13 = !{!"_ZTSN4mlir11TypeStorageE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !11, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 1, i32 1048575}
!18 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !11, i64 0, !8, i64 8, !8, i64 12}
!19 = !{!18, !11, i64 0}
!20 = !{!18, !8, i64 8}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"_ZTSN4mlir6TypeIDE", !15, i64 0}
!23 = !{!22, !15, i64 0}
!24 = !{!"_ZTSSt4pairIN4mlir6TypeIDEPvE", !22, i64 0, !11, i64 8}
!25 = !{!24, !11, i64 8}
!26 = !{!"long", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN4llvm6detail18UniqueFunctionBaseIN4mlir18InFlightDiagnosticEJEEE", !7, i64 0, !11, i64 24, !11, i64 32}
!29 = !{!28, !11, i64 32}
!30 = !{!"bool", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!"p1 _ZTSN4mlir17AbstractAttributeE", !11, i64 0}
!35 = !{!"_ZTSN4mlir16AttributeStorageE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!18, !8, i64 12}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!11, !11, i64 0}
!40 = !{!"p1 _ZTSN4mlir11TypeStorageE", !11, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !21}
!43 = distinct !{null, null}
!44 = distinct !{null, null}
!45 = !{!"p1 bool", !11, i64 0}
!46 = !{!"_ZTSN4llvm8ArrayRefIbEE", !45, i64 0, !26, i64 8}
!47 = !{!46, !45, i64 0}
!48 = !{!46, !26, i64 8}
!49 = distinct !{!49, !21}
!50 = distinct !{null, null}
!51 = distinct !{null, null}
!52 = distinct !{null, null}
!53 = !{!"_ZTSN4llvm5Twine8NodeKindE", !7, i64 0}
!54 = !{!"_ZTSN4llvm5TwineE", !7, i64 0, !7, i64 16, !53, i64 32, !53, i64 33}
!55 = !{!54, !53, i64 32}
!56 = !{!54, !53, i64 33}
!57 = !{!7, !7, i64 0}
!60 = distinct !{null}
!61 = !{!28, !11, i64 24}
!63 = distinct !{!63, i1 false, !"_ZN4llvm15unique_functionIFN4mlir18InFlightDiagnosticEvEEclEv"}
!64 = distinct !{!64, !63, !"_ZN4llvm15unique_functionIFN4mlir18InFlightDiagnosticEvEEclEv: argument 0"}
!65 = !{!64}
end_hunk_0
