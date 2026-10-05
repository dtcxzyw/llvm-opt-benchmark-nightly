Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaFolders?download=true
inline.NumInlined: 4910
inline.NumDeleted: 2923
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4mlir4tosa42populateTosaFoldConstantReciprocalPatternsEPNS_11MLIRContextERNS_17RewritePatternSetE:bb.a
vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = and i64 %i.ah, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %i.am = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.an = getelementptr i8, ptr %i.t, i64 %i.al
  %bound0 = icmp ult ptr %i.ae, %i.an
  %bound1 = icmp ult ptr %i.t, %i.am
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
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.as = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !84, !alias.scope !391, !noalias !389
  %wide.load7 = load <2 x i64>, ptr %i.as, align 8, !tbaa !84, !alias.scope !391, !noalias !389
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !84, !alias.scope !392, !noalias !391
  store <2 x i64> %wide.load7, ptr %i.at, align 8, !tbaa !84, !alias.scope !392, !noalias !391
  %i.au = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !84, !alias.scope !391, !noalias !389
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !84, !alias.scope !391, !noalias !389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !385

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
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !390, !noalias !389
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !389, !noalias !390
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !84, !alias.scope !390, !noalias !389
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.p
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126TosaFoldConstantReciprocalES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !79
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bc) #19
  br label %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126TosaFoldConstantReciprocalES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126TosaFoldConstantReciprocalES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !83
  store ptr %i.az, ptr %i.o, align 8, !tbaa !78
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.bd, ptr %i.q, align 8, !tbaa !79
  br label %_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_126TosaFoldConstantReciprocalEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit

_ZN4mlir17RewritePatternSet3addIJN12_GLOBAL__N_126TosaFoldConstantReciprocalEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS0_IN12_GLOBAL__N_126TosaFoldConstantReciprocalES3_ISA_EEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceAllOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa11ReduceAllOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceAllOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %8 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %11 = alloca %class.anon, align 8               ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon, align 8               ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon, align 8               ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon, align 8               ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceAllOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceAllOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !393
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bv

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !71, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceAllOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !393
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAllOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bv

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit148, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit146, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_0
begin_hunk_1_@_ZN4llvm11raw_ostreamlsENS_9StringRefE:bb.a
bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store ptr %i.k, ptr %i.c, align 8, !tbaa !180
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.0
}

declare void @_ZNK4mlir12ElementsAttr13getValuesImplENS_6TypeIDE(ptr dead_on_unwind writable sret(%"class.llvm::FailureOr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr) local_unnamed_addr #2

declare void @_ZNK4mlir9Attribute5printERN4llvm11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef i64 @_ZN4mlir12ElementsAttr14getNumElementsES0_(ptr, ptr) local_unnamed_addr #2

declare void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

declare ptr @_ZN4mlir4tosa7ConstOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_12ElementsAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNK4mlir17DenseElementsAttrcvNS_12ElementsAttrEEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4llvm15cast_if_presentIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDaRKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, !prof !149

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 49), i64 18) #17
  store ptr %i.g, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !108  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.l = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.l ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.n = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = xor i64 %i.l, -1
  %i.q = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.p
  %.112.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, ptr %i.o, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.n, i64 %i.q, i64 %i.l ; 2 uses
  %i.r = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.k, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %_ZN4mlir6detail9InterfaceINS_12ElementsAttrENS_9AttributeENS0_27ElementsAttrInterfaceTraitsES3_NS_14AttributeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.u = icmp eq ptr %i.t, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i

_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i: ; preds = %bb.f, %bb.e, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i
  %i.x = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.f ], [ null, %bb.e ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %i.x, 1
  br label %_ZN4llvm15cast_if_presentIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDaRKT0_.exit

_ZN4llvm15cast_if_presentIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDaRKT0_.exit: ; preds = %bb.a, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4llvm4castIN4mlir12ElementsAttrENS1_17DenseElementsAttrEEEDcRKT0_.exit.i ], [ zeroinitializer, %bb.a ]
  ret { ptr, ptr } %.pn.i
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceAnyOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa11ReduceAnyOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceAnyOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %8 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %11 = alloca %class.anon.261, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.261, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon.261, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.261, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceAnyOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceAnyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !477
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bv

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !91, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceAnyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !477
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bv

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit148, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit146, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_1
begin_hunk_2_@_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceAnyOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE:bb.a

._crit_edge.i:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit33.i, %_ZNK4mlir6detail17ElementsAttrRangeINS0_20ElementsAttrIteratorIN4llvm5APIntEEEEixEm.exit.i
  %i.rn = load i8, ptr %i.hw, align 8, !tbaa !164, !range !144, !noalias !518, !noundef !145
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.i
  %i.rp = load ptr, ptr %i.hx, align 8, !tbaa !170, !noalias !518 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i34.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i34.i: ; preds = %bb.bn
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !45
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(8) %i.rp) #17, !inline_history !516
  br label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i

_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i34.i, %bb.bn, %._crit_edge.i
  %i.rt = load i8, ptr %8, align 8, !tbaa !164, !range !144, !noalias !518, !noundef !145
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i
  %i.rv = load ptr, ptr %i.hh, align 8, !tbaa !170, !noalias !518 ; 3 uses
  %.not.i.i.i.i1.i36.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i.i1.i36.i, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i37.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i37.i: ; preds = %bb.bo
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !45
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(8) %i.rv) #17, !inline_history !516
  br label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i

_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i37.i, %bb.bo, %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17, !noalias !518
  %i.rz = load ptr, ptr %7, align 8, !tbaa !108, !noalias !518 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.hb
  br i1 %i.sa, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @free(ptr noundef %i.rz) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.bp, %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !518
  %i.sb = load ptr, ptr %6, align 8, !tbaa !108, !noalias !518 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.gw
  br i1 %i.sc, label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceAnyOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.sb) #17
  br label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceAnyOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit

_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceAnyOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !518
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.sd = load ptr, ptr %25, align 8, !tbaa !108
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %.099 ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !157
  %i.sh = icmp ult i32 %i.sg, 65
  br i1 %i.sh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceAnyOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.si = load ptr, ptr %i.se, align 8, !tbaa !122 ; 2 uses
  %i.sj = icmp eq ptr %i.si, null
  br i1 %i.sj, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.si) #19
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.bs, %bb.br, %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceAnyOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sk = load i64, ptr %26, align 8
  store i64 %i.sk, ptr %i.se, align 8
  %i.sl = load i32, ptr %i.hk, align 8, !tbaa !157
  store i32 %i.sl, ptr %i.sf, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %i.sm = add nuw nsw i64 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.sm, %.05.lcssa.i.i.i86
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !517

bb.bt:                                            ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit55
  %.sroa.017.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit55 ], [ 1, %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit29
  %.sroa.017.1 = phi i8 [ %.sroa.017.0, %bb.bt ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.017.2 = phi i8 [ %.sroa.017.1, %bb.bu ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit22 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceAnyOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  ret i8 %.sroa.017.2
}

declare noundef i32 @_ZN4mlir4tosa11ReduceAnyOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceAnyOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !546, !nonnull !145, !align !171
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

declare void @_ZN4llvm5APInt16orAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMaxOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa11ReduceMaxOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMaxOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %11 = alloca %class.anon.325, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.325, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon.325, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.325, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceMaxOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMaxOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !547
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bw

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !95, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMaxOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !547
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bw

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMaxOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE:bb.a
._crit_edge.i:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit32.i, %_ZNK4mlir6detail17ElementsAttrRangeINS0_20ElementsAttrIteratorIN4llvm5APIntEEEEixEm.exit.i
  %i.rm = load i8, ptr %i.hw, align 8, !tbaa !164, !range !144, !noalias !586, !noundef !145
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i
  %i.ro = load ptr, ptr %i.hx, align 8, !tbaa !170, !noalias !586 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i: ; preds = %bb.bo
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !45
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(8) %i.ro) #17, !inline_history !584
  br label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i

_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i, %bb.bo, %._crit_edge.i
  %i.rs = load i8, ptr %7, align 8, !tbaa !164, !range !144, !noalias !586, !noundef !145
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  %i.ru = load ptr, ptr %i.hh, align 8, !tbaa !170, !noalias !586 ; 3 uses
  %.not.i.i.i.i1.i35.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i1.i35.i, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i: ; preds = %bb.bp
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.ru) #17, !inline_history !584
  br label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i

_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i, %bb.bp, %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !586
  %i.ry = load ptr, ptr %6, align 8, !tbaa !108, !noalias !586 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.hb
  br i1 %i.rz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @free(ptr noundef %i.ry) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.bq, %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !586
  %i.sa = load ptr, ptr %5, align 8, !tbaa !108, !noalias !586 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.gw
  br i1 %i.sb, label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMaxOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.sa) #17
  br label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMaxOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit

_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMaxOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.sc = load ptr, ptr %25, align 8, !tbaa !108
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %.099 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !157
  %i.sg = icmp ult i32 %i.sf, 65
  br i1 %i.sg, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMaxOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sh = load ptr, ptr %i.sd, align 8, !tbaa !122 ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZdaPv(ptr noundef nonnull %i.sh) #19
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.bt, %bb.bs, %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMaxOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sj = load i64, ptr %26, align 8
  store i64 %i.sj, ptr %i.sd, align 8
  %i.sk = load i32, ptr %i.hk, align 8, !tbaa !157
  store i32 %i.sk, ptr %i.se, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %i.sl = add nuw nsw i64 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.sl, %.05.lcssa.i.i.i86
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !585

bb.bu:                                            ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit55
  %.sroa.017.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit55 ], [ 1, %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit29
  %.sroa.017.1 = phi i8 [ %.sroa.017.0, %bb.bu ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.017.2 = phi i8 [ %.sroa.017.1, %bb.bv ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit22 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMaxOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  ret i8 %.sroa.017.2
}

declare noundef i32 @_ZN4mlir4tosa11ReduceMaxOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMaxOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !612, !nonnull !145, !align !171
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt13compareSignedERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMinOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa11ReduceMinOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMinOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %11 = alloca %class.anon.389, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.389, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon.389, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.389, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceMinOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMinOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !613
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bw

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !99, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMinOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !613
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bw

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceMinOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE:bb.a
  %i.rl = icmp slt i64 %i.rj, %i.rk
  br i1 %i.rl, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !649

._crit_edge.i:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit32.i, %_ZNK4mlir6detail17ElementsAttrRangeINS0_20ElementsAttrIteratorIN4llvm5APIntEEEEixEm.exit.i
  %i.rm = load i8, ptr %i.hw, align 8, !tbaa !164, !range !144, !noalias !652, !noundef !145
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i
  %i.ro = load ptr, ptr %i.hx, align 8, !tbaa !170, !noalias !652 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i: ; preds = %bb.bo
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !45
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8
  call void %i.rr(ptr noundef nonnull align 8 dereferenceable(8) %i.ro) #17, !inline_history !650
  br label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i

_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i, %bb.bo, %._crit_edge.i
  %i.rs = load i8, ptr %7, align 8, !tbaa !164, !range !144, !noalias !652, !noundef !145
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  %i.ru = load ptr, ptr %i.hh, align 8, !tbaa !170, !noalias !652 ; 3 uses
  %.not.i.i.i.i1.i35.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i1.i35.i, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i: ; preds = %bb.bp
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %i.ru) #17, !inline_history !650
  br label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i

_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i, %bb.bp, %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !652
  %i.ry = load ptr, ptr %6, align 8, !tbaa !108, !noalias !652 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.hb
  br i1 %i.rz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @free(ptr noundef %i.ry) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.bq, %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !652
  %i.sa = load ptr, ptr %5, align 8, !tbaa !108, !noalias !652 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.gw
  br i1 %i.sb, label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMinOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.sa) #17
  br label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMinOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit

_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMinOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.sc = load ptr, ptr %25, align 8, !tbaa !108
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %.099 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !157
  %i.sg = icmp ult i32 %i.sf, 65
  br i1 %i.sg, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMinOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sh = load ptr, ptr %i.sd, align 8, !tbaa !122 ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZdaPv(ptr noundef nonnull %i.sh) #19
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.bt, %bb.bs, %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa11ReduceMinOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sj = load i64, ptr %26, align 8
  store i64 %i.sj, ptr %i.sd, align 8
  %i.sk = load i32, ptr %i.hk, align 8, !tbaa !157
  store i32 %i.sk, ptr %i.se, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %i.sl = add nuw nsw i64 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.sl, %.05.lcssa.i.i.i86
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !651

bb.bu:                                            ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit55
  %.sroa.017.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit55 ], [ 1, %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit29
  %.sroa.017.1 = phi i8 [ %.sroa.017.0, %bb.bu ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.017.2 = phi i8 [ %.sroa.017.1, %bb.bv ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit22 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceMinOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  ret i8 %.sroa.017.2
}

declare noundef i32 @_ZN4mlir4tosa11ReduceMinOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceMinOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !678, !nonnull !145, !align !171
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa15ReduceProductOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa15ReduceProductOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa15ReduceProductOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %11 = alloca %class.anon.447, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.447, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon.447, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.447, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceProductOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa15ReduceProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !679
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bu

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !103, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa15ReduceProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !679
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bu

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_4
begin_hunk_5_@_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa15ReduceProductOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE:bb.a

._crit_edge.i:                                    ; preds = %_ZN4llvm5APIntD2Ev.exit32.i, %_ZNK4mlir6detail17ElementsAttrRangeINS0_20ElementsAttrIteratorIN4llvm5APIntEEEEixEm.exit.i
  %i.rh = load i8, ptr %i.hw, align 8, !tbaa !164, !range !144, !noalias !716, !noundef !145
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i
  %i.rj = load ptr, ptr %i.hx, align 8, !tbaa !170, !noalias !716 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i.i.i.i.i70, label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i: ; preds = %bb.bm
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !45
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(8) %i.rj) #17, !inline_history !714
  br label %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i

_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i.i33.i, %bb.bm, %._crit_edge.i
  %i.rn = load i8, ptr %7, align 8, !tbaa !164, !range !144, !noalias !716, !noundef !145
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  %i.rp = load ptr, ptr %i.hh, align 8, !tbaa !170, !noalias !716 ; 3 uses
  %.not.i.i.i.i1.i35.i = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i.i1.i35.i, label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i

_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i: ; preds = %bb.bn
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !45
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(8) %i.rp) #17, !inline_history !714
  br label %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i

_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4mlir6detail19ElementsAttrIndexer18NonContiguousState18OpaqueIteratorBaseEEclEPS4_.exit.i.i.i.i2.i36.i, %bb.bn, %_ZN4mlir6detail20ElementsAttrIteratorIN4llvm5APIntEED2Ev.exit.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !716
  %i.rt = load ptr, ptr %6, align 8, !tbaa !108, !noalias !716 ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.hb
  br i1 %i.ru, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @free(ptr noundef %i.rt) #17
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.bo, %_ZN4llvm14iterator_rangeIN4mlir6detail20ElementsAttrIteratorINS_5APIntEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !716
  %i.rv = load ptr, ptr %5, align 8, !tbaa !108, !noalias !716 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.gw
  br i1 %i.rw, label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa15ReduceProductOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.rv) #17
  br label %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa15ReduceProductOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit

_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa15ReduceProductOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !716
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.rx = load ptr, ptr %25, align 8, !tbaa !108
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.rx, i64 %.099 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !157
  %i.sb = icmp ult i32 %i.sa, 65
  br i1 %i.sb, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa15ReduceProductOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.sc = load ptr, ptr %i.ry, align 8, !tbaa !122 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, null
  br i1 %i.sd, label %_ZN4llvm5APIntD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_ZdaPv(ptr noundef nonnull %i.sc) #19
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.br, %bb.bq, %_ZN12_GLOBAL__N_121calculateReducedValueIN4mlir4tosa15ReduceProductOpEEEN4llvm5APIntERKNS1_12ElementsAttrENS4_8ArrayRefIlEEll.exit
  %i.se = load i64, ptr %26, align 8
  store i64 %i.se, ptr %i.ry, align 8
  %i.sf = load i32, ptr %i.hk, align 8, !tbaa !157
  store i32 %i.sf, ptr %i.rz, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  %i.sg = add nuw nsw i64 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.sg, %.05.lcssa.i.i.i86
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !715

bb.bs:                                            ; preds = %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit55
  %.sroa.017.0 = phi i8 [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit55 ], [ 1, %_ZN4llvm11SmallVectorINS_5APIntELj3EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit29
  %.sroa.017.1 = phi i8 [ %.sroa.017.0, %bb.bs ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit
  %.sroa.017.2 = phi i8 [ %.sroa.017.1, %bb.bt ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit22 ], [ 0, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa15ReduceProductOpEEEN4llvm13LogicalResultEOT_PKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  ret i8 %.sroa.017.2
}

declare noundef i32 @_ZN4mlir4tosa15ReduceProductOp7getAxisEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa15ReduceProductOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !740, !nonnull !145, !align !171
  %i.c = tail call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(34) %i.b) #17 ; 0 uses
  ret void
}

declare void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceSumOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #17
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_4tosa11ReduceSumOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126ReduceConstantOptimizationIN4mlir4tosa11ReduceSumOpEE15matchAndRewriteES3_RNS1_15PatternRewriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %5 = alloca %"class.mlir::detail::ElementsAttrIterator", align 8 ; 8 uses
  %6 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %7 = alloca %"class.llvm::SmallVector.153", align 8 ; 10 uses
  %8 = alloca %"class.mlir::detail::ElementsAttrRange", align 8 ; 11 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %11 = alloca %class.anon.505, align 8           ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.505, align 8           ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %class.anon.505, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.505, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::tosa::ReduceSumOp", align 8 ; 5 uses
  %20 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %21 = alloca %"class.mlir::tosa::ConstOp", align 8 ; 5 uses
  %22 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %23 = alloca %"class.mlir::ElementsAttr", align 8 ; 6 uses
  %24 = alloca %"class.mlir::ShapedType", align 8 ; 6 uses
  %25 = alloca %"class.llvm::SmallVector.99", align 8 ; 17 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  store ptr %1, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !113
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %20, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.d = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118
  %i.h = icmp eq ptr %i.g, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %21, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !121
  store ptr @.str.6, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.i, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #17
  br i1 %i.m, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i18 = load ptr, ptr %i.n, align 8
  %i.o = ptrtoint ptr %17 to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr %.sroa.0.0.copyload.i.i.i.i18, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceSumOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.o) #17, !inline_history !741
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.c, %bb.d, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %bb.bw

bb.e:                                             ; preds = %bb.b
  store ptr %i.d, ptr %21, align 8
  %i.s = load ptr, ptr %20, align 8, !tbaa !135
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !138  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread, label %_ZNK4mlir5Value9hasOneUseEv.exit

_ZNK4mlir5Value9hasOneUseEv.exit:                 ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNK4mlir5Value9hasOneUseEv.exit.thread

_ZNK4mlir5Value9hasOneUseEv.exit.thread:          ; preds = %bb.e, %_ZNK4mlir5Value9hasOneUseEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i8, ptr %i.w, align 8, !tbaa !107, !range !144, !noundef !145
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !121
  store ptr @.str.7, ptr %16, align 8, !tbaa !122
  store i8 3, ptr %i.z, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr %16, ptr %15, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i19, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #17
  br i1 %i.ad, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i21 = load ptr, ptr %i.ae, align 8
  %i.af = ptrtoint ptr %15 to i64
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr %.sroa.0.0.copyload.i.i.i.i21, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa11ReduceSumOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.af) #17, !inline_history !741
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit22

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa11ReduceSumOpEEEN4llvm13LogicalResultEOT_PKc.exit22: ; preds = %bb.f, %bb.g, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bw

bb.h:                                             ; preds = %_ZNK4mlir5Value9hasOneUseEv.exit.thread, %_ZNK4mlir5Value9hasOneUseEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #17
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -16
  %i.ak = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 0) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.al, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i23, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.j:                                             ; preds = %bb.i
  %i.as = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 49), i64 16) #17
  store ptr %i.at, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ay ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !150
  %i.ba = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = xor i64 %i.ay, -1
  %i.bd = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.bc
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, ptr %i.bb, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ba, i64 %i.bd, i64 %i.ay ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ax, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bh, label %bb.m, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !152
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit: ; preds = %bb.h, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m
  %i.bk = phi ptr [ null, %bb.h ], [ %i.bj, %bb.m ], [ null, %bb.l ], [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ]
  store ptr %i.an, ptr %22, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = call noundef zeroext i1 @_ZNK4mlir10ShapedType7hasRankEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17
  br i1 %i.bm, label %bb.n, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.thread

bb.n:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_10TensorTypeEEEDcRKT0_.exit
  %i.bn = call { ptr, i64 } @_ZNK4mlir10ShapedType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(16) %22) #17 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 3 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = lshr i64 %i.bp, 2                       ; 2 uses
  %.not.i.i.i24 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i24, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %bb.r
  %.047.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.r ], [ %i.bs, %bb.n ] ; 2 uses
  %.02946.i.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.r ], [ %i.bo, %bb.n ] ; 9 uses
  %i.bt = load i64, ptr %.02946.i.i.i.i.i.i.i, align 8, !tbaa !72
  %.not.i.i25 = icmp eq i64 %i.bt, -9223372036854775808
  br i1 %.not.i.i25, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !72
  %.not1.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not1.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit147, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !72
  %.not2.i.i = icmp eq i64 %i.bx, -9223372036854775808
  br i1 %.not2.i.i, label %_ZNK4mlir10ShapedType14hasStaticShapeEv.exit.loopexit.split.loop.exit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !72
  %.not3.i.i = icmp eq i64 %i.bz, -9223372036854775808
end_hunk_5
begin_hunk_6_@_ZNK12_GLOBAL__N_126TosaFoldConstantReciprocal15matchAndRewriteEN4mlir4tosa12ReciprocalOpERNS1_15PatternRewriterE:_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit
  %8 = alloca %"class.llvm::APFloat", align 8     ; 9 uses
  %9 = alloca %"class.mlir::ShapedType", align 8  ; 5 uses
  %10 = alloca %"class.std::optional.720", align 8 ; 4 uses
  %11 = alloca %class.anon.1142, align 8          ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %class.anon.1142, align 8          ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %15 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %16 = alloca %"class.mlir::Value", align 8      ; 4 uses
  %17 = alloca %class.anon.1137, align 8          ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %class.anon.1137, align 8          ; 4 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.mlir::Value", align 8      ; 5 uses
  %22 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %23 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %24 = alloca %"struct.mlir::detail::constant_op_binder.1134", align 8 ; 5 uses
  %25 = alloca %class.anon.1137, align 8          ; 4 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %27 = alloca %"class.mlir::TensorType", align 8 ; 5 uses
  %28 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 9 uses
  %29 = alloca %"struct.mlir::detail::constant_op_binder.1134", align 8 ; 4 uses
  %30 = alloca %"class.mlir::DenseElementsAttr", align 8 ; 5 uses
  %31 = alloca %"class.std::function", align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !113 ; 4 uses
  %i.e = tail call noundef ptr @_ZN4mlir11OpInterfaceINS_4tosa6TosaOpENS1_6detail21TosaOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %27, align 8
  %i.i = call ptr @_ZNK4mlir10TensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #17
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.a, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !149

bb.a:                                             ; preds = %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 15) #17
  store ptr %i.o, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a, %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !150 ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !108  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !150
  %i.v = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = xor i64 %i.t, -1
  %i.y = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.x
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.w, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.v, i64 %i.y, i64 %i.t ; 2 uses
  %i.z = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !0

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.s, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %_ZN4mlir6detail9InterfaceINS_9FloatTypeENS_4TypeENS0_24FloatTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !118
  %i.ac = icmp eq ptr %i.ab, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ac, label %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.i.i, label %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.thread.i.i

_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.thread.i.i: ; preds = %bb.c, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br label %bb.d

_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152
  %.not.i.i = icmp eq ptr %i.ae, null
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.i.i, %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.af = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %26, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !121
  store ptr @.str.42, ptr %26, align 8, !tbaa !122
  store i8 3, ptr %i.af, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  store ptr %26, ptr %25, align 8, !tbaa !125
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #17
  br i1 %i.aj, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i, label %_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8
  %i.al = ptrtoint ptr %25 to i64
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ai, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa6TosaOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.al) #17, !inline_history !1489
  br label %_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread

_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread: ; preds = %bb.d, %bb.e, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.am

bb.f:                                             ; preds = %_ZN4llvm3isaIJN4mlir9FloatTypeEENS1_4TypeEEEbRKT0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %22, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  store ptr null, ptr %23, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  store ptr %23, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %21, align 8
  %i.ap = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #17 ; 2 uses
  %.not.not.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.not.not.i.i.i, label %_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.thread.i.i, label %_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.i.i

_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.thread.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br label %bb.g

_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.i.i: ; preds = %bb.f
  %i.aq = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_17DenseElementsAttrEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  br i1 %i.aq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.i.i, %_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.as, align 1, !tbaa !121
  store ptr @.str.44, ptr %20, align 8, !tbaa !122
  store i8 3, ptr %i.ar, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store ptr %20, ptr %19, align 8, !tbaa !125
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i.i11.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i11.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit.i12.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.au) #17
  br i1 %i.av, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i13.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit.i12.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i13.i: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i14.i = load ptr, ptr %i.aw, align 8
  %i.ax = ptrtoint ptr %19 to i64
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.au, ptr %.sroa.0.0.copyload.i.i.i.i.i14.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa6TosaOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.ax) #17, !inline_history !1490
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit.i12.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit.i12.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i.i13.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread62

bb.i:                                             ; preds = %_ZN4mlir12matchPatternINS_6detail18constant_op_binderINS_17DenseElementsAttrEEEEEbNS_5ValueERKT_.exit.i.i
  %i.bb = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !115
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !118
  %i.bf = icmp eq ptr %i.be, @_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE
  br i1 %i.bf, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !121
  store ptr @.str.45, ptr %18, align 8, !tbaa !122
  store i8 3, ptr %i.bg, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr %18, ptr %17, align 8, !tbaa !125
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit6.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bj) #17
  br i1 %i.bk, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i4.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit6.i.i

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i4.i.i: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load ptr, ptr %i.bl, align 8
  %i.bm = ptrtoint ptr %17 to i64
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr %.sroa.0.0.copyload.i.i.i.i5.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa6TosaOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bm) #17, !inline_history !1490
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit6.i.i

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit6.i.i: ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i4.i.i, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread62

_ZN12_GLOBAL__N_134notifyIfNotConstantFloatTosaTensorEN4mlir6detail10TypedValueINS0_10TensorTypeEEENS0_4tosa6TosaOpERNS0_15PatternRewriterE.exit.thread62: ; preds = %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit.i12.i, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa6TosaOpEEEN4llvm13LogicalResultEOT_PKc.exit6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.am

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  store ptr null, ptr %28, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  store ptr %28, ptr %29, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %16, align 8
  %i.bq = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #17 ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.not.not.i, label %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef zeroext i1 @_ZN4mlir6detail18constant_op_binderINS_17DenseElementsAttrEE5matchEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %i.bq) ; 0 uses
  br label %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit16

_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit16: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  %i.bs = call noundef ptr @_ZN4mlir11OpInterfaceINS_4tosa6TosaOpENS1_6detail21TosaOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %1) ; 0 uses
  %.sroa.04.0.copyload = load ptr, ptr %28, align 8 ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bv = call noundef zeroext i1 @_ZN4mlir17DenseElementsAttr7classofENS_9AttributeE(ptr %.sroa.04.0.copyload) #17
  %spec.select.i.i.i.i.i.i = select i1 %i.bv, ptr %.sroa.04.0.copyload, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i.i, ptr %15, align 8
  %.not.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.thread.i, label %_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.i

_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.thread.i: ; preds = %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.n

_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.i: ; preds = %_ZN4mlir4tosa6TosaOpCI2NS_6detail9InterfaceIS1_PNS_9OperationENS0_6detail21TosaOpInterfaceTraitsENS_2OpIS1_JEEENS_7OpTrait9TraitBaseEEEINS0_12ReciprocalOpETnPNSt9enable_ifIXsr3std10is_base_ofINS3_IS1_S5_S7_S9_SB_E5TraitIT_EESG_EE5valueEvE4typeELPv0EEESG_.exit16
  %i.bw = call noundef zeroext i1 @_ZNK4mlir17DenseElementsAttr7isSplatEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br i1 %i.bw, label %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.i, %_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.thread.i
  %i.bx = load ptr, ptr %.sroa.0.0.copyload.i.i.i, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i17, label %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread65, label %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit

_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit: ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !143
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread, label %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread65

_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread65: ; preds = %bb.n, %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.cb, align 1, !tbaa !121
  store ptr @.str.40, ptr %14, align 8, !tbaa !122
  store i8 3, ptr %i.ca, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store ptr %14, ptr %13, align 8, !tbaa !125
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i18, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread65
  %i.ce = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cd) #17
  br i1 %i.ce, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i19 = load ptr, ptr %i.cf, align 8
  %i.cg = ptrtoint ptr %13 to i64
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(12) %i.cd, ptr %.sroa.0.0.copyload.i.i.i.i19, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa12ReciprocalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cg) #17, !inline_history !1491
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread65, %bb.o, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.al

_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread: ; preds = %_ZN4llvm3isaIJN4mlir17SplatElementsAttrEENS1_17DenseElementsAttrEEEbRKT0_.exit.i, %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.ck = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8
  %i.cl = xor i64 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i
  %.not = icmp ult i64 %i.cl, 8
  br i1 %.not, label %_ZNSt8functionIFN4llvm7APFloatERKS1_EEC2IPS4_vEEOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !121
  store ptr @.str.41, ptr %12, align 8, !tbaa !122
  store i8 3, ptr %i.cm, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr %12, ptr %11, align 8, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !133 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i20, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit23, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.cp) #17
  br i1 %i.cq, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21: ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.cr, align 8
  %i.cs = ptrtoint ptr %11 to i64
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(12) %i.cp, ptr %.sroa.0.0.copyload.i.i.i.i22, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_4tosa12ReciprocalOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.cs) #17, !inline_history !1491
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit23

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_4tosa12ReciprocalOpEEEN4llvm13LogicalResultEOT_PKc.exit23: ; preds = %bb.p, %bb.q, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.al

_ZNSt8functionIFN4llvm7APFloatERKS1_EEC2IPS4_vEEOT_.exit: ; preds = %_ZN12_GLOBAL__N_129constantUnaryOpShouldBeFoldedEN4mlir4tosa6TosaOpENS0_17DenseElementsAttrE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.cw = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  store ptr @_ZN4mlir4tosa12ReciprocalOp14calcOneElementERKN4llvm7APFloatE, ptr %31, align 8, !tbaa !166
  store ptr @_ZNSt17_Function_handlerIFN4llvm7APFloatERKS1_EPS4_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.cx, align 8, !tbaa !1505
  store ptr @_ZNSt17_Function_handlerIFN4llvm7APFloatERKS1_EPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.cy, align 8, !tbaa !1506
  %i.cz = call ptr @_ZNK4mlir17DenseElementsAttr14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %28) #17 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i24, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt8functionIFN4llvm7APFloatERKS1_EEC2IPS4_vEEOT_.exit
  %i.da = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.s, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit, !prof !149

bb.s:                                             ; preds = %bb.r
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i.i.i.i.i.i.i41 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i41, label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 15) #17
  store ptr %i.dd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit

_ZN4llvm4castIN4mlir9FloatTypeENS1_4TypeEEEDcRKT0_.exit: ; preds = %bb.r, %bb.s, %bb.t, %_ZNSt8functionIFN4llvm7APFloatERKS1_EEC2IPS4_vEEOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.de, ptr %5, align 8, !tbaa !108
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
end_hunk_6
