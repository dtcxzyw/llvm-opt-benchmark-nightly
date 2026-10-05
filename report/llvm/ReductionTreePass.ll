Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReductionTreePass?download=true
inline.NumInlined: 2256
inline.NumDeleted: 1375
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE4growEm:bb.a
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.j, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !41
  %i.q = load i64, ptr %i.k, align 8, !tbaa !43
  store i64 %i.q, ptr %i.i, align 8, !tbaa !43
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !42
  store ptr %i.k, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !41
  store i64 0, ptr %i.r, align 8, !tbaa !42
  store i8 0, ptr %i.k, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !19  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !44 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.w = zext i32 %.pre3.i to i64
  %.idx2.i = shl nuw nsw i64 %i.w, 5
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.x, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.y
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.ae = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i ] ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ag = icmp eq ptr %i.ae, %i.b
  br i1 %i.ag, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE19moveElementsForGrowEPS6_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  %i.ah = trunc i64 %i.af to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN4mlir23FrozenRewritePatternSetC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117ReductionTreePassD2Ev(ptr noundef nonnull align 8 dead_on_return(1104) dereferenceable(1104) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_117ReductionTreePassE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #22
  tail call void @_ZN4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEED2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117ReductionTreePassD0Ev(ptr noundef nonnull align 8 dereferenceable(1104) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_117ReductionTreePassE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  tail call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #22, !inline_history !249
  tail call void @_ZN4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEED2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1104) %0) #22, !inline_history !249
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1104) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.14, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.15, i64 14 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir4impl21ReductionTreePassBaseIN12_GLOBAL__N_117ReductionTreePassEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.16, i64 46 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117ReductionTreePass14runOnOperationEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Region::OpIterator", align 8 ; 4 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %4 = alloca %"class.mlir::ModuleOp", align 8    ; 4 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SpecificBumpPtrAllocator", align 8 ; 13 uses
  %8 = alloca %"class.std::vector.222", align 8   ; 7 uses
  %9 = alloca %"class.mlir::ReductionNode", align 8 ; 16 uses
  %10 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %11 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %12 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %13 = alloca %"class.mlir::ModuleOp", align 8   ; 6 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %18 = alloca %"class.llvm::SmallVector.144", align 8 ; 10 uses
  %19 = alloca %"class.llvm::iterator_range.153", align 8 ; 6 uses
  %20 = alloca %"class.mlir::Region::OpIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %.not.i73 = icmp eq ptr %i.e, null
  br i1 %.not.i73, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit.preheader

_ZN4mlir9Operation11getParentOpEv.exit.preheader: ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.e) #22
  %.not119 = icmp eq ptr %i.f, null
  br i1 %.not119, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit42

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %_ZN4mlir9Operation11getParentOpEv.exit42
  %i.g = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #22
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit42, !llvm.loop !250

_ZN4mlir9Operation11getParentOpEv.exit42:         ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.preheader, %_ZN4mlir9Operation11getParentOpEv.exit
  %i.h = phi ptr [ %i.k, %_ZN4mlir9Operation11getParentOpEv.exit ], [ %i.d, %_ZN4mlir9Operation11getParentOpEv.exit.preheader ]
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254, !nonnull !72, !noundef !72
  %i.j = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.i) #22 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !254  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4mlir9Operation11getParentOpEv.exit42._ZN4mlir9Operation11getParentOpEv.exit.thread.loopexit_crit_edge, label %_ZN4mlir9Operation11getParentOpEv.exit, !llvm.loop !250

_ZN4mlir9Operation11getParentOpEv.exit42._ZN4mlir9Operation11getParentOpEv.exit.thread.loopexit_crit_edge: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit42
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread, !llvm.loop !250

_ZN4mlir9Operation11getParentOpEv.exit.thread:    ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation11getParentOpEv.exit.preheader, %_ZN4mlir9Operation11getParentOpEv.exit42._ZN4mlir9Operation11getParentOpEv.exit.thread.loopexit_crit_edge, %bb.a
  %.031.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZN4mlir9Operation11getParentOpEv.exit.preheader ], [ %i.j, %_ZN4mlir9Operation11getParentOpEv.exit42._ZN4mlir9Operation11getParentOpEv.exit.thread.loopexit_crit_edge ], [ %i.j, %_ZN4mlir9Operation11getParentOpEv.exit ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.031.lcssa, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %21 = icmp ne ptr %i.o, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %.not118 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i.not = or i1 %.not118, %21
  br i1 %spec.select.i.i.i.i.not, label %bb.b, label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit

bb.b:                                             ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %.0.copyload.i.i.i.i43 = load i64, ptr %i.a, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i43, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.r, align 8
  call void @_ZN4mlir9emitErrorENS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %17, ptr %.sroa.0.0.copyload.i) #22
  %i.s = load ptr, ptr %17, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 3, ptr %16, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.17, ptr %i.u, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 37, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !44   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20
  %.not.i.i.i.i.i = icmp ult i32 %i.w, %i.y
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !87

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %16)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false)
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !44
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !44
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %.pr = load ptr, ptr %17, align 8, !tbaa !83
  %.not.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i44, label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %17) #22
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !88, !range !89, !noundef !72
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.ae, align 8, !tbaa !88
  br i1 %i.ag, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ah) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA38_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %.0.copyload.i.i.i.i45 = load i64, ptr %i.a, align 8
  %i.ai = or i64 %.0.copyload.i.i.i.i45, 4
  store i64 %i.ai, ptr %i.a, align 8
  br label %bb.ap

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.aj, ptr %18, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 2 uses
  store i32 8, ptr %i.al, align 4, !tbaa !20
  %.0.copyload.i.i.i.i46 = load i64, ptr %i.a, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i46, -8
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 33
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 36
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %19, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge86, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit
  %i.cc = phi i32 [ %i.hs, %._crit_edge86 ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir9OperationELb1EE9push_backES3_.exit ] ; 2 uses
  %i.cd = load ptr, ptr %18, align 8, !tbaa !19
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !91 ; 5 uses
  %i.ci = add i32 %i.cc, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.ak, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 44 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 3 uses
  %i.cl = and i32 %i.ck, 8388607                  ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %._crit_edge86, label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  %i.co = lshr i32 %i.ck, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.co, 1
  %i.cp = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = lshr i32 %i.ck, 21
  %i.cs = and i32 %i.cr, 2040
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !255
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %i.cx ; 2 uses
  %i.cz = shl nuw nsw i32 %i.cl, 5
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.da
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation10getRegionsEv.exit, %bb.ak
  %.03377 = phi ptr [ %i.hb, %bb.ak ], [ %i.cy, %_ZN4mlir9Operation10getRegionsEv.exit ] ; 7 uses
  %i.dc = load ptr, ptr %.03377, align 8, !tbaa !256
  %i.dd = icmp eq ptr %.03377, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %.031.lcssa, ptr %13, align 8
  %i.de = load i32, ptr %i.ao, align 8, !tbaa !97
  %cond.i = icmp eq i32 %i.de, 0
  br i1 %cond.i, label %bb.j, label %bb.ad

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.031.lcssa, ptr %4, align 8
  %i.df = call { i32, i64 } @_ZNK4mlir6Tester13isInterestingEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef %.031.lcssa) #22
  %i.dg = extractvalue { i32, i64 } %i.df, 0
  %.not.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i8 1, ptr %i.az, align 8, !tbaa !100
  store i8 1, ptr %i.ba, align 1, !tbaa !101
  call void @_ZN4mlir7OpState9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(34) %6) #22
  %i.dh = load ptr, ptr %5, align 8, !tbaa !83
  %.not.i.i.i.i.i49 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i49, label %_ZNO4mlir18InFlightDiagnosticlsIRA40_KcEEOS0_OT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 3, ptr %3, align 8, !tbaa !86
  store ptr @.str.19, ptr %i.bc, align 8, !tbaa !24
  store i64 39, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !26
  %i.di = load i32, ptr %i.bd, align 8, !tbaa !44 ; 2 uses
  %i.dj = load i32, ptr %i.be, align 4, !tbaa !20
  %.not.i.i.i.i.i.i.i.i = icmp ult i32 %i.di, %i.dj
end_hunk_0
