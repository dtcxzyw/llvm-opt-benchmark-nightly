Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVOpAvailability?download=true
inline.NumInlined: 8118
inline.NumDeleted: 71
begin_hunk_0_@_ZN4mlir5spirv14EndPrimitiveOp15getCapabilitiesEv:_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv14EndPrimitiveOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv14EndPrimitiveOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv14EndPrimitiveOp13getMinVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv14EndPrimitiveOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv12EntryPointOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv12EntryPointOp17getExecutionModelEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14ExecutionModelE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv12EntryPointOp17getExecutionModelEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4mlir5spirv15getCapabilitiesENS0_14ExecutionModelE(ptr dead_on_unwind writable sret(%"class.std::optional.26") align 8, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv12EntryPointOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv12EntryPointOp13getMinVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv12EntryPointOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv17ExecutionModeIdOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv17ExecutionModeIdOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_13ExecutionModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv17ExecutionModeIdOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4mlir5spirv15getCapabilitiesENS0_13ExecutionModeE(ptr dead_on_unwind writable sret(%"class.std::optional.26") align 8, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv17ExecutionModeIdOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv17ExecutionModeIdOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_13ExecutionModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare void @_ZN4mlir5spirv13getExtensionsENS0_13ExecutionModeE(ptr dead_on_unwind writable sret(%"class.std::optional.34") align 8, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv17ExecutionModeIdOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv17ExecutionModeIdOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_13ExecutionModeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 2)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967298, i64 %i.e
  ret i64 %.sroa.033.1
}

declare i64 @_ZN4mlir5spirv13getMinVersionENS0_13ExecutionModeE(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv17ExecutionModeIdOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv15ExecutionModeOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv15ExecutionModeOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_13ExecutionModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv15ExecutionModeOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv15ExecutionModeOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv15ExecutionModeOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_13ExecutionModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv15ExecutionModeOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv15ExecutionModeOp16getExecutionModeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_13ExecutionModeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %i.d = and i64 %i.b, 8589934591
  %spec.select = select i1 %.not, i64 4294967296, i64 %i.d
  ret i64 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv15ExecutionModeOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv20ExperimentalMLCallOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv20ExperimentalMLCallOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv20ExperimentalMLCallOp13getMinVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv20ExperimentalMLCallOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv6FAddOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv6FAddOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv6FAddOp13getMinVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv6FAddOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
end_hunk_0
begin_hunk_1_@_ZN4mlir5spirv14GroupIMulKHROp15getCapabilitiesEv:_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv14GroupIMulKHROp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv14GroupIMulKHROp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.060.0.extract.trunc66 = trunc i64 %i.b to i32
  %spec.select = select i1 %.not, i32 0, i32 %.sroa.060.0.extract.trunc66 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv14GroupIMulKHROp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not92 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not92, i32 %spec.select, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv14GroupIMulKHROp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv25GroupNonUniformAllEqualOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv25GroupNonUniformAllEqualOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv25GroupNonUniformAllEqualOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv25GroupNonUniformAllEqualOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv25GroupNonUniformAllEqualOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv25GroupNonUniformAllEqualOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv25GroupNonUniformAllEqualOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv25GroupNonUniformAllEqualOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv20GroupNonUniformAllOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv20GroupNonUniformAllOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv20GroupNonUniformAllOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv20GroupNonUniformAllOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv20GroupNonUniformAllOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv20GroupNonUniformAllOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv20GroupNonUniformAllOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv20GroupNonUniformAllOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv20GroupNonUniformAnyOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv20GroupNonUniformAnyOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv20GroupNonUniformAnyOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv20GroupNonUniformAnyOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv20GroupNonUniformAnyOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv20GroupNonUniformAnyOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv20GroupNonUniformAnyOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv20GroupNonUniformAnyOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv31GroupNonUniformBallotBitCountOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv31GroupNonUniformBallotBitCountOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv30GroupNonUniformBallotFindLSBOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv30GroupNonUniformBallotFindLSBOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv30GroupNonUniformBallotFindMSBOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv30GroupNonUniformBallotFindMSBOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv23GroupNonUniformBallotOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv23GroupNonUniformBallotOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv23GroupNonUniformBallotOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv23GroupNonUniformBallotOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv23GroupNonUniformBallotOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv23GroupNonUniformBallotOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv23GroupNonUniformBallotOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv23GroupNonUniformBallotOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv27GroupNonUniformBitwiseAndOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv27GroupNonUniformBitwiseAndOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv26GroupNonUniformBitwiseOrOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv26GroupNonUniformBitwiseOrOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv27GroupNonUniformBitwiseXorOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv27GroupNonUniformBitwiseXorOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv31GroupNonUniformBroadcastFirstOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv31GroupNonUniformBroadcastFirstOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformBroadcastOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv26GroupNonUniformBroadcastOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBroadcastOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformBroadcastOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformBroadcastOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv26GroupNonUniformBroadcastOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformBroadcastOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv26GroupNonUniformBroadcastOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv22GroupNonUniformElectOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv22GroupNonUniformElectOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv22GroupNonUniformElectOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv22GroupNonUniformElectOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv22GroupNonUniformElectOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv22GroupNonUniformElectOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv22GroupNonUniformElectOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv22GroupNonUniformElectOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFAddOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformFAddOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFAddOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformFAddOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformFAddOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMaxOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformFMaxOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMaxOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformFMaxOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformFMaxOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMinOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformFMinOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMinOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformFMinOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformFMinOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMulOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformFMulOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformFMulOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformFMulOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformFMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformFMulOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformIAddOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformIAddOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformIAddOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformIAddOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIAddOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformIAddOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformIMulOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformIMulOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformIMulOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformIMulOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformIMulOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformIMulOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv27GroupNonUniformLogicalAndOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv27GroupNonUniformLogicalAndOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv26GroupNonUniformLogicalOrOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv26GroupNonUniformLogicalOrOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv27GroupNonUniformLogicalXorOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv27GroupNonUniformLogicalXorOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv25GroupNonUniformQuadSwapOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv25GroupNonUniformQuadSwapOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformRotateKHROp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv26GroupNonUniformRotateKHROp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformRotateKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformRotateKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformRotateKHROp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv26GroupNonUniformRotateKHROp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformRotateKHROp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv26GroupNonUniformRotateKHROp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformSMaxOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformSMaxOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformSMaxOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformSMaxOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformSMaxOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformSMinOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformSMinOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformSMinOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformSMinOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformSMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformSMinOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv28GroupNonUniformShuffleDownOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv28GroupNonUniformShuffleDownOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv24GroupNonUniformShuffleOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv24GroupNonUniformShuffleOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv24GroupNonUniformShuffleOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv24GroupNonUniformShuffleOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv24GroupNonUniformShuffleOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv24GroupNonUniformShuffleOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv24GroupNonUniformShuffleOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv24GroupNonUniformShuffleOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv26GroupNonUniformShuffleUpOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv26GroupNonUniformShuffleUpOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv27GroupNonUniformShuffleXorOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i2 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i2, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit4: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.09.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.09.0.extract.trunc, i32 3)
  %i.d = zext i32 %.sroa.speculated to i64
  %i.e = or disjoint i64 %i.d, 4294967296
  %.sroa.033.1 = select i1 %.not, i64 4294967299, i64 %i.e
  ret i64 %.sroa.033.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv27GroupNonUniformShuffleXorOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformUMaxOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformUMaxOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformUMaxOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformUMaxOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformUMaxOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformUMinOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv21GroupNonUniformUMinOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv21GroupNonUniformUMinOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv21GroupNonUniformUMinOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.030.0.extract.trunc = trunc i64 %i.b to i32
  %.sroa.speculated36 = tail call i32 @llvm.umax.i32(i32 %.sroa.030.0.extract.trunc, i32 3)
  %.sroa.060.1 = select i1 %.not, i32 3, i32 %.sroa.speculated36 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv21GroupNonUniformUMinOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not91 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.060.1, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not91, i32 %.sroa.060.1, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv21GroupNonUniformUMinOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv11GroupSMaxOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv11GroupSMaxOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i3 = icmp ult i32 %i.h, %i.i
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5: ; preds = %bb.c, %bb.b, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.p = call noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %3, i32 noundef %i.p) #7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20, !range !21, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  %i.t = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i6 = icmp ult i32 %i.t, %i.u
  br i1 %.not.i6, label %bb.f, label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv10CapabilityEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %0, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !27
  %i.z = load i32, ptr %i.b, align 8, !tbaa !16
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit8: ; preds = %bb.f, %bb.e, %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

declare noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv11GroupSMaxOp13getExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.34", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  %i.d = tail call noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv13getExtensionsENS0_14GroupOperationE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.34") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !30, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !17
  %.not.i = icmp ult i32 %i.h, %i.i
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_8ArrayRefIN4mlir5spirv9ExtensionEEELb1EE18growAndEmplaceBackIJRS5_EEES8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !27
  %i.n = load i32, ptr %i.b, align 8, !tbaa !16
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.b, align 8, !tbaa !16
  br label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv9ExtensionEEEE12emplace_backIJRS5_EEES8_DpOT_.exit: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 4294967296, 8589934592) i64 @_ZN4mlir5spirv11GroupSMaxOp13getMinVersionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.b = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_5ScopeE(i32 noundef %i.a) #7 ; 2 uses
  %i.c = and i64 %i.b, 4294967296
  %.not = icmp eq i64 %i.c, 0
  %.sroa.060.0.extract.trunc66 = trunc i64 %i.b to i32
  %spec.select = select i1 %.not, i32 0, i32 %.sroa.060.0.extract.trunc66 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4mlir5spirv11GroupSMaxOp17getGroupOperationEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %i.e = tail call i64 @_ZN4mlir5spirv13getMinVersionENS0_14GroupOperationE(i32 noundef %i.d) #7 ; 2 uses
  %i.f = and i64 %i.e, 4294967296
  %.not92 = icmp eq i64 %i.f, 0
  %.sroa.011.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %.sroa.011.0.extract.trunc)
  %.sroa.060.2 = select i1 %.not92, i32 %spec.select, i32 %.sroa.speculated
  %.sroa.060.0.insert.ext = zext i32 %.sroa.060.2 to i64
  %.sroa.060.0.insert.insert = or disjoint i64 %.sroa.060.0.insert.ext, 4294967296
  ret i64 %.sroa.060.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZN4mlir5spirv11GroupSMaxOp13getMaxVersionEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
bb.a:
  ret i64 4294967302
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5spirv11GroupSMinOp15getCapabilitiesEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit:
  %2 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %3 = alloca %"class.std::optional.26", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr @_ZZN4mlir5spirv11GroupSMinOp15getCapabilitiesEvE4caps, ptr %i.a, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !26
  store i32 1, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call noundef i32 @_ZN4mlir5spirv11GroupSMinOp17getExecutionScopeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4mlir5spirv15getCapabilitiesENS0_5ScopeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.26") align 8 %2, i32 noundef %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.a, label %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit5

bb.a:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8ArrayRefIN4mlir5spirv10CapabilityEEEE12emplace_backIJRS5_EEES8_DpOT_.exit
end_hunk_1
