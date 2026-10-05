Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SCFToGPUPass?download=true
inline.NumInlined: 1150
inline.NumDeleted: 840
begin_hunk_0_@_ZN4mlir4impl31createConvertAffineForToGPUPassENS_32ConvertAffineForToGPUPassOptionsE:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113, !noalias !111
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.aa) #22, !noalias !111, !inline_history !110
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113ForLoopMapperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_113ForLoopMapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt8functionIFvRKjEEclES1_.exit.i2.i.i.i, %_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_113ForLoopMapperE, i64 16), ptr %i.c, align 8, !tbaa !19, !noalias !111
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir34createConvertParallelLoopToGpuPassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #21, !noalias !119 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !noalias !119
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZZN4mlir4impl32ConvertParallelLoopToGpuPassBaseIN12_GLOBAL__N_121ParallelLoopToGpuPassEE13resolveTypeIDEvE2id, ptr %i.c, align 8, !tbaa !14, !noalias !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false), !noalias !119
  store ptr %i.f, ptr %i.e, align 16, !tbaa !16, !noalias !119
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.g, align 4, !tbaa !17, !noalias !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.i, ptr %i.h, align 16, !tbaa !16, !noalias !119
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.j, align 4, !tbaa !17, !noalias !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.k, i8 0, i64 64, i1 false), !noalias !119
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_121ParallelLoopToGpuPassE, i64 16), ptr %i.a, align 16, !tbaa !19, !noalias !119
  store ptr %i.a, ptr %0, align 8, !tbaa !27, !alias.scope !118
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEED2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) initializes((0, 8), (536, 544)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEEE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #22, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %i.a, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = load i8, ptr %i.f, align 8, !tbaa !36, !range !37, !noundef !38
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.j) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.l) #22
  br label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit

_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %i.o, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i.i2, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.s = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3) #22, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i2

_ZNSt14_Function_baseD2Ev.exit.i.i2:              ; preds = %bb.e, %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %i.o, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = load i8, ptr %i.t, align 8, !tbaa !36, !range !37, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.x) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3:    ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit.i.i2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3
  tail call void @free(ptr noundef %i.z) #22
  br label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit4

_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit4: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3, %bb.g
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113ForLoopMapperD0Ev(ptr noundef nonnull align 8 dereferenceable(736) initializes((0, 8), (536, 544)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEED2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.6, i64 25 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.80", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !41
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3gpu10GPUDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !33
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3gpu10GPUDialectEvE2idE, ptr nonnull @.str.7, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #22, !inline_history !1 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_3gpu10GPUDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.8, i64 25 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 46 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113ForLoopMapper14runOnOperationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(736) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Region::OpIterator", align 8 ; 4 uses
  %.sroa.07 = alloca [40 x i8], align 8           ; 4 uses
  %2 = alloca %"class.llvm::iterator_range.121", align 8 ; 6 uses
  %3 = alloca %"class.llvm::early_inc_iterator_impl", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4mlir13InterfacePassINS_19FunctionOpInterfaceEE12getOperationEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN4mlir13InterfacePassINS_19FunctionOpInterfaceEE12getOperationEv.exit

_ZN4mlir13InterfacePassINS_19FunctionOpInterfaceEE12getOperationEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = and i32 %i.f, 8388607
  %i.h = icmp ne i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = lshr i32 %i.f, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = lshr i32 %i.f, 21
  %i.n = and i32 %i.m, 2040
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !137
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.s ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.t, i1 noundef zeroext false) #22, !noalias !138
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN4mlir6Region10OpIteratorC1EPS0_b(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(28) %i.t, i1 noundef zeroext true) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6.24.copyload = load ptr, ptr %.sroa.6.24..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !141  ; 3 uses
  %.not9 = icmp eq ptr %i.w, %.sroa.6.24.copyload
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir13InterfacePassINS_19FunctionOpInterfaceEE12getOperationEv.exit
  %.not10 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 656
  br i1 %.not10, label %.lr.ph.split.us, label %bb.c

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %4 = phi ptr [ %7, %.lr.ph.split.us ], [ %i.w, %.lr.ph ]
  %5 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #22, !noalias !142 ; 0 uses
  %6 = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %4) #22 ; 0 uses
  %7 = load ptr, ptr %i.v, align 8, !tbaa !141    ; 2 uses
  %.not.us = icmp eq ptr %7, %.sroa.6.24.copyload
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.f, %.lr.ph.split.us, %_ZN4mlir13InterfacePassINS_19FunctionOpInterfaceEE12getOperationEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.z = phi ptr [ %i.al, %bb.f ], [ %i.w, %.lr.ph ]
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4mlir6Region10OpIteratorppEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #22, !noalias !142 ; 0 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.z) #22 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = icmp eq ptr %i.ae, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  br i1 %i.af, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !53
  %i.ah = load i32, ptr %i.y, align 8, !tbaa !53
  %i.ai = call i8 @_ZN4mlir32convertAffineLoopNestToGPULaunchENS_6affine11AffineForOpEjj(ptr nonnull %i.ab, i32 noundef %i.ag, i32 noundef %i.ah) #22
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.ak = or i64 %.0.copyload.i.i.i.i, 4
  store i64 %i.ak, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %i.al, %.sroa.6.24.copyload
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13InterfacePassINS_19FunctionOpInterfaceEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #22
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 25) #22
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id) #22
  br label %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i

_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !14 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i = phi ptr [ %i.f, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.j = lshr i64 %.017.i.i.i.i.i.i.i, 1          ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i, i64 %i.j ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.l = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = xor i64 %i.j, -1
  %i.o = add nsw i64 %.017.i.i.i.i.i.i.i, %i.n
  %.112.i.i.i.i.i.i.i = select i1 %i.l, ptr %i.m, ptr %.01116.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i = select i1 %i.l, i64 %i.o, i64 %i.j ; 2 uses
  %i.p = icmp sgt i64 %.1.i.i.i.i.i.i.i, 0
  br i1 %i.p, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i, !llvm.loop !2

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i
  %.pre-phi.i.i.i.i = phi i64 [ 0, %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i ], [ %i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.f, %_ZN4mlir6TypeID3getINS_19FunctionOpInterfaceEEES0_v.exit.i ], [ %.112.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i, %i.q
  br i1 %.not.i.i.i.i, label %_ZNK4mlir13OperationName12hasInterfaceINS_19FunctionOpInterfaceEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i
  %i.r = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !47
  %i.s = icmp eq ptr %i.r, %.sroa.01.0.copyload.i.i.i
  br i1 %i.s, label %bb.e, label %_ZNK4mlir13OperationName12hasInterfaceINS_19FunctionOpInterfaceEEEbv.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = icmp ne ptr %i.u, null
  br label %_ZNK4mlir13OperationName12hasInterfaceINS_19FunctionOpInterfaceEEEbv.exit

_ZNK4mlir13OperationName12hasInterfaceINS_19FunctionOpInterfaceEEEbv.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i, %bb.d, %bb.e
  %i.w = phi i1 [ %i.v, %bb.e ], [ false, %bb.d ], [ false, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i ]
  ret i1 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13InterfacePassINS_19FunctionOpInterfaceEE13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_19FunctionOpInterfaceENS_6detail34FunctionOpInterfaceInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %1)
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_113ForLoopMapperESt14default_deleteIS1_EED2Ev.exit:
  %2 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %3 = alloca %"struct.llvm::cl::initializer", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %5 = alloca %"struct.llvm::cl::initializer", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(736) ptr @_Znwm(i64 noundef 736) #21, !noalias !147, !inline_history !145 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !14, !noalias !147
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !147
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.g, align 8, !tbaa !14, !noalias !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i8 0, ptr %i.h, align 8, !tbaa !30, !noalias !147
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false), !noalias !147
  store ptr %i.k, ptr %i.j, align 8, !tbaa !16, !noalias !147
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 0, ptr %i.l, align 8, !tbaa !31, !noalias !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 4, ptr %i.m, align 4, !tbaa !17, !noalias !147
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr %i.o, ptr %i.n, align 8, !tbaa !16, !noalias !147
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i32 0, ptr %i.p, align 8, !tbaa !31, !noalias !147
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store i32 4, ptr %i.q, align 4, !tbaa !17, !noalias !147
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !noalias !147
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEEE, i64 16), ptr %i.c, align 8, !tbaa !19, !noalias !147
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !147
  store ptr @.str.1, ptr %2, align 8, !tbaa !21, !noalias !147
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 42, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !23, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !147
  store i32 1, ptr %i.a, align 4, !tbaa !24, !noalias !147
  store ptr %i.a, ptr %3, align 8, !noalias !147
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  call void @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC2IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str, i64 14, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !147, !inline_history !146
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 16), ptr %i.s, align 8, !tbaa !19, !noalias !147
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 144), ptr %i.u, align 8, !tbaa !19, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !147
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !147
  store ptr @.str.3, ptr %4, align 8, !tbaa !21, !noalias !147
  %.sroa.2.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 43, ptr %.sroa.2.0..sroa_idx.i2.i.i.i, align 8, !tbaa !23, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !147
  store i32 1, ptr %i.b, align 4, !tbaa !24, !noalias !147
  store ptr %i.b, ptr %5, align 8, !noalias !147
  call void @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC2IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str.2, i64 15, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !147, !inline_history !146
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 16), ptr %i.v, align 8, !tbaa !19, !noalias !147
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 144), ptr %i.w, align 8, !tbaa !19, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !147
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_113ForLoopMapperE, i64 16), ptr %i.c, align 8, !tbaa !19, !noalias !147
  store ptr %i.c, ptr %0, align 8, !tbaa !27
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #7

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN4mlir4impl29ConvertAffineForToGPUPassBaseIN12_GLOBAL__N_113ForLoopMapperEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @llvm.trap() #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassIvE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
end_hunk_0
