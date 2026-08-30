Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLVMDialect?download=true
inline.NumInlined: 202581
inline.NumDeleted: 56661
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN4mlir4LLVM14ExtractValueOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueEN4llvm8ArrayRefIlEE:bb.a

bb.e:                                             ; preds = %_ZL32getInsertExtractValueElementTypeN4mlir4TypeEN4llvm8ArrayRefIlEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.v = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr null, ptr %i.v, align 8, !tbaa !96
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.u, align 8, !tbaa !56
  store ptr %i.v, ptr %i.s, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.w = ptrtoint ptr %5 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.x, align 8, !tbaa !168
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.w, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.y = ptrtoint ptr %6 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.z, align 8, !tbaa !168
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit.i

_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit.i: ; preds = %bb.e, %_ZL32getInsertExtractValueElementTypeN4mlir4TypeEN4llvm8ArrayRefIlEE.exit
  %i.aa = phi ptr [ %i.v, %bb.e ], [ %i.t, %_ZL32getInsertExtractValueElementTypeN4mlir4TypeEN4llvm8ArrayRefIlEE.exit ]
  store ptr %i.q, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !27 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %.not.i7 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i7, label %_ZN4mlir4LLVM14ExtractValueOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_6detail18DenseArrayAttrImplIlEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit.i
  %i.ag = zext i32 %i.ad to i64
  %i.ah = add nuw nsw i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.ai, i64 noundef %i.ah, i64 noundef 8) #29
  %.pre8.pre.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN4mlir4LLVM14ExtractValueOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_6detail18DenseArrayAttrImplIlEE.exit

_ZN4mlir4LLVM14ExtractValueOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_6detail18DenseArrayAttrImplIlEE.exit: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit.i, %bb.f
  %.pre8.i.i.i = phi i32 [ %i.ad, %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit.i ], [ %.pre8.pre.i.i.i, %bb.f ]
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ak = zext i32 %.pre8.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  store ptr %.sroa.010.0.lcssa.i, ptr %i.al, align 1
  %.pre.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !27
  %i.am = add i32 %.pre.i.i.i, 1
  store i32 %i.am, ptr %i.ac, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM14ExtractValueOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_6detail18DenseArrayAttrImplIlEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.18920, align 1          ; 3 uses
  %6 = alloca %class.anon.18922, align 1          ; 3 uses
  %7 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %3, ptr %7, align 8
  %i.a = ptrtoint ptr %7 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !96
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.d, align 8, !tbaa !56
  store ptr %i.e, ptr %i.b, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.f = ptrtoint ptr %5 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefEEE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_E_EEvlS2_, ptr %i.g, align 8, !tbaa !168
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %i.f, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.h = ptrtoint ptr %6 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr @_ZN4llvm12function_refIFvN4mlir11PropertyRefES2_EE11callback_fnIZNS1_14OperationState18getOrAddPropertiesINS1_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_vEUlS2_S2_E_EEvlS2_S2_, ptr %i.i, align 8, !tbaa !168
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit

_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  %.not = icmp ult i32 %i.m, %i.o
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit
  %i.p = zext i32 %i.m to i64
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull %i.r, i64 noundef %i.q, i64 noundef 8) #29
  %.pre8.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !27
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit, %bb.c
  %.pre8.i.i = phi i32 [ %i.m, %_ZN4mlir14OperationState18getOrAddPropertiesINS_4LLVM6detail32ExtractValueOpGenericAdaptorBase10PropertiesEEERT_v.exit ], [ %.pre8.pre.i.i, %bb.c ]
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.t = zext i32 %.pre8.i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %2, ptr %i.u, align 1
  %.pre.i.i = load i32, ptr %i.l, align 8, !tbaa !27
  %i.v = add i32 %.pre.i.i, 1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4LLVM13InsertValueOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.13", align 8 ; 4 uses
  %3 = alloca %"class.mlir::PatternBenefit", align 2 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !572
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30, !noalias !575 ; 10 uses
  call void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2) %3, i32 noundef 1) #29, !noalias !575
  %i.b = load i16, ptr %3, align 2, !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !575
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !575
  call void @_ZN4mlir7PatternC2EN4llvm9StringRefENS_14PatternBenefitEPNS_11MLIRContextENS1_8ArrayRefIS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr nonnull @.str.1510, i64 16, i16 %i.b, ptr noundef %1, ptr noundef nonnull byval(%"class.llvm::ArrayRef.13") align 8 %2) #29, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !575
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN12_GLOBAL__N_125ResolveExtractValueSourceE, i64 16), ptr %i.a, align 8, !tbaa !8, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !572
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !116, !noalias !572
  %i.d = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.d, label %bb.b, label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr getelementptr inbounds nuw (i8, ptr @.str.1848, i64 49), ptr %i.e, align 8, !tbaa !115, !noalias !572
  store i64 48, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !116, !noalias !572
  br label %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i

_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

bb.c:                                             ; preds = %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull %i.m, i64 noundef %i.k, i64 noundef 16) #29
  %.pre8.pre.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !27
  br label %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i: ; preds = %bb.c, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i
  %.pre8.i.i.i.i = phi i32 [ %i.g, %_ZN4mlir14RewritePattern6createIN12_GLOBAL__N_125ResolveExtractValueSourceEJRPNS_11MLIRContextEEEESt10unique_ptrIT_St14default_deleteIS8_EEDpOT0_.exit.i.i ], [ %.pre8.pre.i.i.i.i, %bb.c ]
  store i32 %.pre8.i.i.i.i, ptr %i.f, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !578  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !581
  %.not.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  store ptr %i.a, ptr %i.p, align 8, !tbaa !582
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.o, align 8, !tbaa !578
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_125ResolveExtractValueSourceEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE7reserveEm.exit.i.i.i.i
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !585  ; 10 uses
  %i.u = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1849) #33
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.y = ashr exact i64 %i.w, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 1152921504606846975)
  %i.ac = select i1 %i.aa, i64 1152921504606846975, i64 %i.ab ; 3 uses
  %.not.i.i.i4.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i4.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #30 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store ptr %i.a, ptr %i.af, align 8, !tbaa !582
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ag = add i64 %i.u, -8
  %i.ah = sub i64 %i.ag, %i.v                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.u, -8
  %i.al = sub i64 %i.ak, %i.v
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.an
  %scevgep5 = getelementptr i8, ptr %i.t, i64 %i.an
  %bound0 = icmp ult ptr %i.ae, %scevgep5
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.ar ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.t, i64 %i.ar ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.as = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !591, !alias.scope !592, !noalias !586
  %wide.load7 = load <2 x i64>, ptr %i.as, align 8, !tbaa !591, !alias.scope !592, !noalias !586
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !591, !alias.scope !595, !noalias !592
  store <2 x i64> %wide.load7, ptr %i.at, align 8, !tbaa !591, !alias.scope !595, !noalias !592
  %i.au = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !591, !alias.scope !592, !noalias !586
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !591, !alias.scope !592, !noalias !586
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !597

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.i.preheader9:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader9 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !586)
  call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !591, !alias.scope !589, !noalias !586
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !591, !alias.scope !586, !noalias !589
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !591, !alias.scope !589, !noalias !586
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !598

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_125ResolveExtractValueSourceES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !581
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bc) #31
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_125ResolveExtractValueSourceES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_125ResolveExtractValueSourceES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !585
  store ptr %i.az, ptr %i.o, align 8, !tbaa !578
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !581
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_125ResolveExtractValueSourceEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_125ResolveExtractValueSourceEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_125ResolveExtractValueSourceES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4LLVM13InsertValueOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::detail::DenseArrayAttrImpl.812", align 8 ; 4 uses
  %6 = alloca %class.anon.921, align 8            ; 4 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 21 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store ptr %0, ptr %6, align 8, !tbaa !599
  %i.a = ptrtoint ptr %6 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !76
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %5, align 8
  %i.j = call { ptr, i64 } @_ZNK4mlir6detail18DenseArrayAttrImplIlEcvN4llvm8ArrayRefIlEEEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = call fastcc ptr @_ZL32getInsertExtractValueElementTypeN4llvm12function_refIFN4mlir18InFlightDiagnosticENS_9StringRefEEEENS1_4TypeENS_8ArrayRefIlEE(ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticENS_9StringRefEEE11callback_fnIZNS1_4LLVM13InsertValueOp6verifyEvE3$_0EES2_lS3_", i64 %i.a, ptr %i.h, ptr %i.k, i64 %i.l) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.0.0.copyload.i.i.i.i5 = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i5, i64 8
  %.0.copyload.i.i.i.i.i6 = load i64, ptr %i.s, align 8
  %i.t = and i64 %.0.copyload.i.i.i.i.i6, -8
  %i.u = inttoptr i64 %i.t to ptr
  %.not = icmp eq ptr %i.m, %i.u
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 1, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !13
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #29
  %i.x = load ptr, ptr %7, align 8, !tbaa !104
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit24, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 3, ptr %4, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.61, ptr %i.z, align 8, !tbaa !115
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 29, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  %.not.i.i.i.i.i7 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i7, label %bb.f, label %bb.e, !prof !117

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !27
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !27
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pre = load ptr, ptr %7, align 8, !tbaa !104
  %i.aj = icmp eq ptr %.pre, null
  br i1 %i.aj, label %_ZNO4mlir18InFlightDiagnosticlsINS_4TypeEEEOS0_OT_.exit24, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA30_KcEEOS0_OT_.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
end_hunk_0
