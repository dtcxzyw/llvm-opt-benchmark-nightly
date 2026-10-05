Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GPUToSPIRVPass?download=true
inline.NumInlined: 1538
inline.NumDeleted: 1134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEED2Ev:bb.a
  %i.g = load i8, ptr %i.f, align 8, !tbaa !91, !range !92, !noundef !93
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.j) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.l) #22
  br label %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit

_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, %bb.d
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114GPUToSPIRVPassD0Ev(ptr noundef nonnull align 8 dereferenceable(544) initializes((0, 8), (336, 344)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #22, !inline_history !188 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %i.a, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.g = load i8, ptr %i.f, align 8, !tbaa !91, !range !92, !noundef !93
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.j) #22, !inline_history !189
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i:   ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.l) #22, !inline_history !189
  br label %_ZN4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEED2Ev.exit

_ZN4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i.i, %bb.d
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(544) %0) #22, !inline_history !189
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 544) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.12, i64 17 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.68", align 8  ; 8 uses
  %3 = alloca %"class.std::function.68", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !193
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_4func11FuncDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !90
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_4func11FuncDialectEvE2idE, ptr nonnull @.str.13, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #22, !inline_history !190 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5spirv12SPIRVDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.f, align 8, !tbaa !193
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5spirv12SPIRVDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.e, align 8, !tbaa !90
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_5spirv12SPIRVDialectEvE2idE, ptr nonnull @.str.14, i64 5, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !90   ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i2, label %_ZN4mlir15DialectRegistry6insertINS_5spirv12SPIRVDialectEEEvv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #22, !inline_history !191 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_5spirv12SPIRVDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_5spirv12SPIRVDialectEEEvv.exit: ; preds = %_ZN4mlir15DialectRegistry6insertINS_4func11FuncDialectEEEvv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.15, i64 20 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ConvertGPUToSPIRVBaseIN12_GLOBAL__N_114GPUToSPIRVPassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.16, i64 37 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEv(ptr noundef nonnull align 8 dereferenceable(544) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.461, align 8            ; 4 uses
  %2 = alloca %"class.mlir::spirv::TargetEnv", align 8 ; 12 uses
  %3 = alloca %class.anon.296, align 8            ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.132", align 8 ; 9 uses
  %5 = alloca %"class.mlir::OpBuilder", align 8   ; 6 uses
  %6 = alloca %class.anon.137, align 8            ; 5 uses
  %7 = alloca %class.anon.138, align 8            ; 6 uses
  %8 = alloca %"class.std::function.176", align 8 ; 8 uses
  %9 = alloca %"class.mlir::spirv::MemorySpaceToStorageClassConverter", align 8 ; 8 uses
  %10 = alloca %"class.std::unique_ptr.211", align 8 ; 5 uses
  %11 = alloca %class.anon.225, align 8           ; 5 uses
  %12 = alloca %"class.std::unique_ptr.226", align 8 ; 4 uses
  %13 = alloca %"struct.mlir::SPIRVConversionOptions", align 4 ; 9 uses
  %14 = alloca %"class.mlir::SPIRVTypeConverter", align 8 ; 25 uses
  %15 = alloca %"class.mlir::RewritePatternSet", align 8 ; 24 uses
  %16 = alloca %"struct.mlir::ScfToSPIRVContext", align 8 ; 7 uses
  %17 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %18 = alloca %"struct.mlir::ConversionConfig", align 8 ; 5 uses
  %19 = alloca %class.anon.295, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #22 ; 3 uses
  %.0.copyload.i.i.i.i.i29 = load i64, ptr %i.a, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i29, -8
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.e, ptr %5, align 8, !tbaa !197
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %0, ptr %6, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %6, ptr %7, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %i.m, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %7, ptr %3, align 8, !tbaa !98
  %i.n = ptrtoint ptr %3 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS1_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.n, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.o = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.p = load i32, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %.not60 = icmp eq i32 %i.p, 0
  br i1 %.not60, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = ptrtoint ptr %11 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 528
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 13
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 52
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 41
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 44
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 600 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 648 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 664 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 616 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 520 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 552 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 568 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 536 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit52
  %.061 = phi ptr [ %i.o, %.lr.ph ], [ %i.ed, %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit52 ] ; 2 uses
  %i.bj = load ptr, ptr %.061, align 8, !tbaa !201 ; 6 uses
  %i.bk = call fastcc ptr @_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvOrDefaultEN4mlir3gpu11GPUModuleOpE(ptr %i.bj) ; 2 uses
  %i.bl = load i8, ptr %i.s, align 8, !tbaa !89, !range !92, !noundef !93
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.c, label %_ZNSt10unique_ptrIN4mlir21SPIRVConversionTargetESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !104
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !105
  %i.bq = icmp eq ptr %i.bp, @_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE
  %spec.select.i.i = select i1 %i.bq, ptr %i.bj, ptr null
  %i.br = call fastcc ptr @_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvOrDefaultEN4mlir3gpu11GPUModuleOpE(ptr %spec.select.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir5spirv9TargetEnvC1ENS0_13TargetEnvAttrE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr %i.br) #22
  %i.bs = call noundef zeroext i1 @_ZNK4mlir5spirv9TargetEnv6allowsENS0_10CapabilityE(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 6) #22
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef %i.bt)
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !18  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.w
  br i1 %i.bv, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.bu) #22
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i: ; preds = %bb.d, %bb.c
  %i.bw = load ptr, ptr %i.z, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.bw)
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aa
  br i1 %i.by, label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit", label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.bx) #22
  br label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit"

"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit": ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %_ZN4mlir5spirv34mapMemorySpaceToOpenCLStorageClassENS_9AttributeE._ZN4mlir5spirv34mapMemorySpaceToVulkanStorageClassENS_9AttributeE = select i1 %i.bs, ptr @_ZN4mlir5spirv34mapMemorySpaceToOpenCLStorageClassENS_9AttributeE, ptr @_ZN4mlir5spirv34mapMemorySpaceToVulkanStorageClassENS_9AttributeE
  store i64 0, ptr %i.ac, align 8
  store ptr %_ZN4mlir5spirv34mapMemorySpaceToOpenCLStorageClassENS_9AttributeE._ZN4mlir5spirv34mapMemorySpaceToVulkanStorageClassENS_9AttributeE, ptr %8, align 8, !tbaa !98
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN4mlir5spirv12StorageClassEENS1_9AttributeEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN4mlir5spirv12StorageClassEENS1_9AttributeEEPS6_E9_M_invokeERKSt9_Any_dataOS5_>, ptr %i.ab, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN4mlir5spirv34MemorySpaceToStorageClassConverterC1ERKSt8functionIFSt8optionalINS0_12StorageClassEENS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(544) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #22
  call void @_ZN4mlir5spirv26convertMemRefTypesAndAttrsEPNS_9OperationERNS0_34MemorySpaceToStorageClassConverterE(ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(544) %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN4mlir5spirv34getMemorySpaceToStorageClassTargetERNS_11MLIRContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.211") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %10, ptr %11, align 8, !tbaa !202
  store ptr %0, ptr %i.ad, align 8, !tbaa !113
  %i.bz = call i32 @_ZN4mlir6detail4walkINS_15ForwardIteratorEEENS_10WalkResultEPNS_9OperationEN4llvm12function_refIFS3_S5_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr nonnull @"_ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_1EES2_lS4_", i64 %i.ae, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ca = load ptr, ptr %10, align 8, !tbaa !115  ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir16ConversionTargetEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir16ConversionTargetEEclEPS1_.exit.i: ; preds = %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit"
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(160) %i.ca) #22, !inline_history !194
  br label %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit: ; preds = %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit", %_ZNKSt14default_deleteIN4mlir16ConversionTargetEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir5spirv34MemorySpaceToStorageClassConverterE, i64 16), ptr %9, align 8, !tbaa !22
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit
  %i.cf = call noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3) #22, !inline_history !1 ; 0 uses
  br label %_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev.exit

_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit, %bb.f
  call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(544) %9) #22, !inline_history !116
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cg = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.not.i30 = icmp eq ptr %i.cg, null
  br i1 %.not.i30, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev.exit
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #22, !inline_history !2 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt10unique_ptrIN4mlir21SPIRVConversionTargetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir21SPIRVConversionTargetESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN4mlir21SPIRVConversionTarget3getENS_5spirv13TargetEnvAttrE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.226") align 8 %12, ptr %i.bk) #22
  %i.ci = load ptr, ptr %12, align 8, !tbaa !204  ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store i32 8, ptr %13, align 4, !tbaa !207
  store i8 1, ptr %i.ah, align 4, !tbaa !208
  store i32 0, ptr %i.ai, align 4, !tbaa !209
  store i8 1, ptr %i.aj, align 4, !tbaa !210
  %i.cj = load i8, ptr %i.al, align 8, !tbaa !117, !range !92, !noundef !93
  store i8 %i.cj, ptr %i.ak, align 1, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZN4mlir18SPIRVTypeConverterC1ENS_5spirv13TargetEnvAttrERKNS_22SPIRVConversionOptionsE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr %i.bk, ptr noundef nonnull align 4 dereferenceable(14) %13) #22
  call void @_ZN4mlir42populateMMAToSPIRVCoopMatrixTypeConversionERNS_18SPIRVTypeConverterE(ptr noundef nonnull align 8 dereferenceable(712) %14) #22
  call void @_ZN4mlir44populateGPUNamedBarrierToSPIRVTypeConversionERNS_18SPIRVTypeConverterE(ptr noundef nonnull align 8 dereferenceable(712) %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.e, ptr %15, align 8, !tbaa !228
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i8 0, i64 32, i1 false)
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !18
  store i32 0, ptr %i.ap, align 8, !tbaa !19
  store i32 6, ptr %i.aq, align 4, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.as, align 8, !tbaa !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.at, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.au, align 8, !tbaa !229
  call void @_ZN4mlir26populateGPUToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @_ZN4mlir53populateGpuWMMAToSPIRVCoopMatrixKHRConversionPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZN4mlir17ScfToSPIRVContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  call void @_ZN4mlir26populateSCFToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17ScfToSPIRVContextERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @_ZN4mlir5arith28populateArithToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @_ZN4mlir29populateMemRefToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @_ZN4mlir27populateFuncToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @_ZN4mlir29populateVectorToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712) %14, ptr noundef nonnull align 8 dereferenceable(176) %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(176) %15, ptr null, i64 0, ptr null, i64 0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, i8 0, i64 56, i1 false)
  store i8 1, ptr %i.av, align 8, !tbaa !235
  store i8 1, ptr %i.aw, align 1, !tbaa !236
  store i32 1, ptr %i.ax, align 4, !tbaa !237
  %i.ck = call i8 @_ZN4mlir19applyFullConversionEPNS_9OperationERKNS_16ConversionTargetERKNS_23FrozenRewritePatternSetENS_16ConversionConfigE(ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(160) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull byval(%"struct.mlir::ConversionConfig") align 8 %18) #22
  %i.cl = trunc nuw i8 %i.ck to i1
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %i.cl, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4mlir21SPIRVConversionTargetESt14default_deleteIS1_EED2Ev.exit
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.cm = or i64 %.0.copyload.i.i.i.i, 4
  store i64 %i.cm, ptr %i.a, align 8
  call void @_ZN4mlir17ScfToSPIRVContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ay) #22
  %i.cn = load ptr, ptr %i.am, align 8, !tbaa !238 ; 3 uses
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !239 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ct, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cn, %bb.h ] ; 2 uses
  %i.cp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(96) %i.cp) #22, !inline_history !195
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.co
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !196

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %bb.h
  %i.cu = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cn, %bb.h ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i1.i.i, label %_ZN4mlir17RewritePatternSetD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cv = load ptr, ptr %i.ba, align 8, !tbaa !242
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #23
  br label %_ZN4mlir17RewritePatternSetD2Ev.exit

_ZN4mlir17RewritePatternSetD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir18SPIRVTypeConverterE, i64 16), ptr %14, align 8, !tbaa !22
  %i.cz = load ptr, ptr %i.bd, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef %i.cz), !inline_history !124
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.be
  br i1 %i.db, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i32, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir17RewritePatternSetD2Ev.exit
  call void @free(ptr noundef %i.da) #22, !inline_history !124
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i32

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i32: ; preds = %bb.j, %_ZN4mlir17RewritePatternSetD2Ev.exit
  %i.dc = load ptr, ptr %i.bh, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef %i.dc), !inline_history !124
  %i.dd = load ptr, ptr %i.bf, align 8, !tbaa !18 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bi
  br i1 %i.de, label %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit35, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i32
  call void @free(ptr noundef %i.dd) #22, !inline_history !124
  br label %_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN4mlir16ConversionTargetESt14default_deleteIS1_EED2Ev.exit35: ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i32, %bb.k
  call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(712) %14) #22, !inline_history !124
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvOrDefaultEN4mlir3gpu11GPUModuleOpE:bb.a
  br i1 %i.w, label %_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvInTargetsEN4mlir3gpu11GPUModuleOpE.exit, label %bb.c

_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvInTargetsEN4mlir3gpu11GPUModuleOpE.exit: ; preds = %_ZN4llvm8dyn_castIN4mlir5spirv13TargetEnvAttrENS1_9AttributeEEEDcRT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.x = call ptr @_ZN4mlir5spirv24lookupTargetEnvOrDefaultEPNS_9OperationE(ptr noundef %0) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvInTargetsEN4mlir3gpu11GPUModuleOpE.exit, %.loopexit
  %.sroa.01.0 = phi ptr [ %i.p, %_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvInTargetsEN4mlir3gpu11GPUModuleOpE.exit ], [ %i.x, %.loopexit ]
  ret ptr %.sroa.01.0
}

declare i64 @_ZN4mlir5spirv34mapMemorySpaceToOpenCLStorageClassENS_9AttributeE(ptr) #4

declare i64 @_ZN4mlir5spirv34mapMemorySpaceToVulkanStorageClassENS_9AttributeE(ptr) #4

declare void @_ZN4mlir5spirv34MemorySpaceToStorageClassConverterC1ERKSt8functionIFSt8optionalINS0_12StorageClassEENS_9AttributeEEE(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4mlir5spirv26convertMemRefTypesAndAttrsEPNS_9OperationERNS0_34MemorySpaceToStorageClassConverterE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(544)) local_unnamed_addr #4

declare void @_ZN4mlir5spirv34getMemorySpaceToStorageClassTargetERNS_11MLIRContextE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.211") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir5spirv34MemorySpaceToStorageClassConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(544) dereferenceable(544) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir5spirv34MemorySpaceToStorageClassConverterE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #22, !inline_history !2 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(508) %0) #22
  ret void
}

declare void @_ZN4mlir21SPIRVConversionTarget3getENS_5spirv13TargetEnvAttrE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.226") align 8, ptr) local_unnamed_addr #4

declare void @_ZN4mlir18SPIRVTypeConverterC1ENS_5spirv13TargetEnvAttrERKNS_22SPIRVConversionOptionsE(ptr noundef nonnull align 8 dereferenceable(712), ptr, ptr noundef nonnull align 4 dereferenceable(14)) unnamed_addr #4

declare void @_ZN4mlir42populateMMAToSPIRVCoopMatrixTypeConversionERNS_18SPIRVTypeConverterE(ptr noundef nonnull align 8 dereferenceable(712)) local_unnamed_addr #4

declare void @_ZN4mlir44populateGPUNamedBarrierToSPIRVTypeConversionERNS_18SPIRVTypeConverterE(ptr noundef nonnull align 8 dereferenceable(712)) local_unnamed_addr #4

declare void @_ZN4mlir26populateGPUToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir53populateGpuWMMAToSPIRVCoopMatrixKHRConversionPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir17ScfToSPIRVContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4mlir26populateSCFToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17ScfToSPIRVContextERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir5arith28populateArithToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir29populateMemRefToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir27populateFuncToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare void @_ZN4mlir29populateVectorToSPIRVPatternsERKNS_18SPIRVTypeConverterERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(712), ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

declare i8 @_ZN4mlir19applyFullConversionEPNS_9OperationERKNS_16ConversionTargetERKNS_23FrozenRewritePatternSetENS_16ConversionConfigE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef byval(%"struct.mlir::ConversionConfig") align 8) local_unnamed_addr #4

declare void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN4mlir17ScfToSPIRVContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18SPIRVTypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(712) dereferenceable(712) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir18SPIRVTypeConverterE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.e) #22
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir5spirv9TargetEnvD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i
  tail call void @free(ptr noundef %i.l) #22
  br label %_ZN4mlir5spirv9TargetEnvD2Ev.exit

_ZN4mlir5spirv9TargetEnvD2Ev.exit:                ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i, %bb.c
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(508) %0) #22
  ret void
}

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #22, !inline_history !290
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #22 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !155 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !155 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #22
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #22, !inline_history !290
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS1_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::spirv::TargetEnv", align 8 ; 12 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvOrDefaultEN4mlir3gpu11GPUModuleOpE(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4mlir5spirv9TargetEnvC1ENS0_13TargetEnvAttrE(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr %i.f) #22
  %i.g = call noundef zeroext i1 @_ZNK4mlir5spirv9TargetEnv6allowsENS0_10CapabilityE(ptr noundef nonnull align 8 dereferenceable(184) %2, i32 noundef 6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.l) #22
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.r)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.s) #22
  br label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i"

"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i": ; preds = %bb.d, %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292, !nonnull !93, !align !156 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = and i32 %i.y, 8388607
  %i.aa = icmp ne i32 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = lshr i32 %i.y, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.ab, 1
  %i.ac = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ac
  %i.ae = lshr i32 %i.y, 21
  %i.af = and i32 %i.ae, 2040
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !168
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !155 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !155
  br label %bb.g

bb.f:                                             ; preds = %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i"
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !169
  %i.at = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink6.i.i = phi ptr [ %i.as, %bb.f ], [ %i.ao, %bb.e ]
  %.sink.i.i = phi ptr [ %i.at, %bb.f ], [ %i.aq, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sink6.i.i, ptr %i.au, align 8, !tbaa !174
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %.sink.i.i, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !293, !nonnull !93, !align !156 ; 4 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !292, !nonnull !93, !align !156
  %i.az = call noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %1) #22 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  %.not.i.i.i = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !294

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.az)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

bb.i:                                             ; preds = %bb.g
  %i.be = zext i32 %i.bb to i64
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  store ptr %i.az, ptr %i.bg, align 1
  %i.bh = load i32, ptr %i.ba, align 8, !tbaa !19
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.ba, align 8, !tbaa !19
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_0NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit": ; preds = %bb.a, %bb.h, %bb.i
  ret void
}

declare noundef ptr @_ZN4mlir9OpBuilder5cloneERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = load i32, ptr %i.a, align 8, !tbaa !19
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !19
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !19
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @_ZN4mlir5spirv24lookupTargetEnvOrDefaultEPNS_9OperationE(ptr noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4mlir9ArrayAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4mlir5spirv9TargetEnvC1ENS0_13TargetEnvAttrE(ptr noundef nonnull align 8 dereferenceable(184), ptr) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4mlir5spirv9TargetEnv6allowsENS0_10CapabilityE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNSt17_Function_handlerIFSt8optionalIN4mlir5spirv12StorageClassEENS1_9AttributeEEPS6_E9_M_invokeERKSt9_Any_dataOS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !152
  %i.b = tail call i64 %i.a(ptr %.sroa.0.0.copyload.i.i) #22, !inline_history !297
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN4mlir5spirv12StorageClassEENS1_9AttributeEEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFSt8optionalIN4mlir5spirv12StorageClassEENS2_9AttributeEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFSt8optionalIN4mlir5spirv12StorageClassEENS2_9AttributeEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
end_hunk_1
begin_hunk_2_@_ZN4mlir16PDLPatternModuleD2Ev:bb.a
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !354
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ae = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #22, !inline_history !344 ; 0 uses
  br label %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8

_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8: ; preds = %bb.h, %bb.g
  %i.af = add i64 %i.aa, 41
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 noundef %i.af, i64 noundef 8) #22
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm14StringMapEntryISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i8, %.lr.ph.i4
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i5, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, %i.y
  br i1 %.not.i9, label %.loopexit.loopexit.i10, label %.lr.ph.i4

.loopexit.loopexit.i10:                           ; preds = %bb.i
  %.pre.i11 = load ptr, ptr %i.r, align 8, !tbaa !349
  br label %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12

_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12: ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit, %bb.f, %.loopexit.loopexit.i10
  %i.ah = phi ptr [ %.pre.i11, %.loopexit.loopexit.i10 ], [ %.pre13.i1, %bb.f ], [ %.pre13.i1, %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit ]
  tail call void @free(ptr noundef %i.ah) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !355 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !356
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 4
  %i.ap = add nuw nsw i64 %i.an, 31
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = and i64 %i.aq, 1073741820
  %i.as = add nuw nsw i64 %i.ar, %i.ao
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.am, i64 noundef %i.as, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEED2Ev.exit12, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.ax = zext i32 %i.aw to i64
  %.idx.i13 = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i13
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.az, %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.ay, %.lr.ph.i.preheader.i ]
  %i.az = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !358 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !18 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !19 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.k
  %i.be = zext i32 %i.bd to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.be, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.preheader.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !360 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #22, !inline_history !345
  br label %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir16PDLPatternConfigEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bg
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !346

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, %bb.k
  %i.bl = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @free(ptr noundef %i.bl) #22
  br label %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i: ; preds = %bb.l, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir16PDLPatternConfigESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #23
  br label %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir19PDLPatternConfigSetEEclEPS1_.exit.i.i.i, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.au, %i.az
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !347

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS1_EED2Ev.exit.i.i
  %.pre.i14 = load ptr, ptr %i.at, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.bo = phi ptr [ %.pre.i14, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.au, %_ZN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i
  tail call void @free(ptr noundef %i.bo) #22
  br label %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit

_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.m
  %i.br = load ptr, ptr %0, align 8, !tbaa !181   ; 2 uses
  %.not.i15 = icmp eq ptr %i.br, null
  br i1 %.not.i15, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit
  tail call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.br) #22
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %_ZN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EED2Ev.exit, %bb.n
  ret void
}

declare void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18SPIRVTypeConverterD0Ev(ptr noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4mlir18SPIRVTypeConverterE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d), !inline_history !124
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.e) #22, !inline_history !124
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  tail call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k), !inline_history !124
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir18SPIRVTypeConverterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.l) #22, !inline_history !124
  br label %_ZN4mlir18SPIRVTypeConverterD2Ev.exit

_ZN4mlir18SPIRVTypeConverterD2Ev.exit:            ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i, %bb.c
  tail call void @_ZN4mlir13TypeConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(508) dereferenceable(712) %0) #22, !inline_history !124
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 712) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_2NS1_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.463, align 8            ; 4 uses
  %3 = alloca %"class.mlir::spirv::TargetEnv", align 8 ; 12 uses
  %4 = alloca %class.anon.462, align 8            ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_2NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @_ZN12_GLOBAL__N_114GPUToSPIRVPass24lookupTargetEnvOrDefaultEN4mlir3gpu11GPUModuleOpE(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4mlir5spirv9TargetEnvC1ENS0_13TargetEnvAttrE(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr %i.f) #22
  %i.g = call noundef zeroext i1 @_ZNK4mlir5spirv9TargetEnv6allowsENS0_10CapabilityE(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef 6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv10CapabilityES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.l) #22
  br label %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i

_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  call void @_ZNSt8_Rb_treeIN4mlir5spirv9ExtensionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef %i.r)
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.s) #22
  br label %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i"

"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i": ; preds = %bb.d, %_ZN4llvm8SmallSetIN4mlir5spirv10CapabilityELj8ESt4lessIS3_EED2Ev.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.g, label %bb.e, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_2NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

bb.e:                                             ; preds = %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !362, !nonnull !93, !align !156
  store ptr %i.w, ptr %4, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %4, ptr %2, align 8, !tbaa !98
  %i.x = ptrtoint ptr %2 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_2clENS1_3gpu11GPUModuleOpEEUlNSE_9GPUFuncOpEE_SG_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.x, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_2NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvE3$_2NS_3gpu11GPUModuleOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit": ; preds = %bb.a, %"_ZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_3clEN4mlir3gpu11GPUModuleOpE.exit.i.i", %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_2clENS1_3gpu11GPUModuleOpEEUlNSE_9GPUFuncOpEE_SG_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  %4 = alloca %"class.mlir::gpu::GPUFuncOp", align 8 ; 6 uses
  %5 = alloca %"class.mlir::func::FuncOp", align 8 ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.534", align 8 ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef.535", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_3gpu9GPUFuncOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.d
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_2clENS_3gpu11GPUModuleOpEEUlNS7_9GPUFuncOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %4, align 8
  %i.f = load ptr, ptr %.val, align 8, !tbaa !364, !nonnull !93, !align !156 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169
  %i.i = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.j, align 8, !tbaa !174
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.i, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %.val, align 8, !tbaa !364, !nonnull !93, !align !156
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.n = tail call ptr @_ZN4mlir11SymbolTable13getSymbolNameEPNS_9OperationE(ptr noundef nonnull %1) #22
  store ptr %i.n, ptr %3, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = call ptr @_ZN4mlir3gpu9GPUFuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.s = call ptr @_ZN4mlir4func6FuncOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_12FunctionTypeENS5_8ArrayRefINS_14NamedAttributeEEENS8_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.p, i64 %i.q, ptr %i.r, ptr noundef nonnull byval(%"class.llvm::ArrayRef.534") align 8 %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.535") align 8 %7) #22
  store ptr %i.s, ptr %5, align 8
  %i.t = call noundef ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE13addEntryBlockEv(ptr noundef nonnull align 1 dereferenceable(1) %5) ; 2 uses
  %i.u = load ptr, ptr %.val, align 8, !tbaa !364, !nonnull !93, !align !156 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.w, align 8, !tbaa !174
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.x, align 8
  %i.y = load ptr, ptr %.val, align 8, !tbaa !364, !nonnull !93, !align !156
  %i.z = load ptr, ptr %4, align 8, !tbaa !181
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i10.i.i = load ptr, ptr %i.aa, align 8
  %i.ab = call ptr @_ZN4mlir4func8ReturnOp6createERNS_9OpBuilderENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr %.sroa.0.0.copyload.i.i10.i.i) #22 ; 0 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !181   ; 2 uses
  %i.ad = load ptr, ptr %.val, align 8, !tbaa !364, !nonnull !93, !align !156
  %i.ae = call ptr @_ZN4mlir7Builder11getUnitAttrEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 5, ptr %i.ah, align 8, !tbaa !180
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !179
  store ptr @.str.19, ptr %2, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.aj, align 8, !tbaa !136
  %i.ak = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(34) %2) #22
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr %i.ak, ptr %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.al = load ptr, ptr %4, align 8, !tbaa !181
  call void @_ZN4mlir9Operation5eraseEv(ptr noundef nonnull align 8 dereferenceable(64) %i.al) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_2clENS_3gpu11GPUModuleOpEEUlNS7_9GPUFuncOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit"

"_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZN12_GLOBAL__N_114GPUToSPIRVPass14runOnOperationEvENK3$_2clENS_3gpu11GPUModuleOpEEUlNS7_9GPUFuncOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit": ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @_ZN4mlir4func6FuncOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_12FunctionTypeENS5_8ArrayRefINS_14NamedAttributeEEENS8_INS_14DictionaryAttrEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, ptr noundef byval(%"class.llvm::ArrayRef.534") align 8, ptr noundef byval(%"class.llvm::ArrayRef.535") align 8) local_unnamed_addr #4

declare ptr @_ZN4mlir3gpu9GPUFuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_4func6FuncOpEE13addEntryBlockEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %2 = alloca %"class.llvm::SmallVector.555", align 8 ; 15 uses
  %3 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.b, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store ptr %i.c, ptr %i.c, align 8, !tbaa !385
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %0, align 8, !tbaa !181    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = and i32 %i.h, 8388607
  %i.j = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.l = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.h, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !168
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u ; 4 uses
  tail call void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE13addNodeToListEPS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull %i.a) #22
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !385  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.v, ptr %i.y, align 8, !tbaa !155
  store ptr %i.x, ptr %i.w, align 8, !tbaa !385
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.z, align 8, !tbaa !155
  store ptr %i.w, ptr %i.v, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.aa = tail call ptr @_ZN4mlir4func6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  store ptr %i.aa, ptr %1, align 8
  %i.ab = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ae = load ptr, ptr %0, align 8, !tbaa !181
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.ai, align 4, !tbaa !20
  %i.aj = icmp ugt i64 %i.ad, 6
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.ag, i64 noundef %i.ad, i64 noundef 8) #22
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.al = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  %i.am = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.am
  %i.ao = and i64 %i.ad, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %index = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.an, %middle.block ] ; 2 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %middle.block ]
  store i64 %i.al, ptr %.09.i.i.i.i.i.i, align 8
  %i.as = add i64 %.068.i.i.i.i.i.i, -1           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !366

_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %bb.a
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt6fill_nIPN4mlir8LocationEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.au = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 6 uses
  store i64 %i.au, ptr %i.ag, align 8
  %.not.i.i.i.i.i = icmp eq i64 %i.ad, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.au, ptr %i.av, align 8
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.au, ptr %i.aw, align 8
  %.not.i.i.i.i.i.2 = icmp eq i64 %i.ad, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorIN4mlir8LocationELj6EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
end_hunk_2
