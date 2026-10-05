Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AffineParallelize?download=true
inline.NumInlined: 912
inline.NumDeleted: 599
begin_hunk_0_@_ZN4mlir6affine4impl23createAffineParallelizeENS0_24AffineParallelizeOptionsE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 456 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.v, align 8, !tbaa !23, !noalias !111
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33, !noalias !111
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i, label %_ZNKSt8functionIFvRKjEEclES1_.exit.i.i.i.i

_ZNKSt8functionIFvRKjEEclES1_.exit.i.i.i.i:       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !113, !noalias !111
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.v) #20, !noalias !111, !inline_history !109
  br label %_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i

_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i: ; preds = %_ZNKSt8functionIFvRKjEEclES1_.exit.i.i.i.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 656 ; 2 uses
  store i8 %.sroa.2.0.extract.trunc.i.i.i, ptr %i.ab, align 8, !tbaa !25, !noalias !111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 704
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33, !noalias !111
  %.not.i.i.not.i1.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i1.i.i.i, label %_ZNSt10unique_ptrIN12_GLOBAL__N_117AffineParallelizeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i:       ; preds = %_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115, !noalias !111
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %i.ab) #20, !noalias !111, !inline_history !110
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_117AffineParallelizeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_117AffineParallelizeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i, %_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEEaSIjEERjOT_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_117AffineParallelizeE, i64 16), ptr %i.c, align 8, !tbaa !18, !noalias !111
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

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
define internal void @_ZN4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEED2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) initializes((0, 8), (536, 544)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEEE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.e = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #20, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.g = load i8, ptr %i.f, align 8, !tbaa !36, !range !37, !noundef !38
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.j) #20
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i:     ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i
  tail call void @free(ptr noundef %i.l) #20
  br label %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit

_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i1, label %_ZNSt14_Function_baseD2Ev.exit.i.i2, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.s = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef 3) #20, !inline_history !1 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i2

_ZNSt14_Function_baseD2Ev.exit.i.i2:              ; preds = %bb.e, %_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %i.o, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.u = load i8, ptr %i.t, align 8, !tbaa !36, !range !37, !noundef !38
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.x) #20
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3:    ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit.i.i2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3
  tail call void @free(ptr noundef %i.z) #20
  br label %_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit

_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i.i3, %bb.g
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117AffineParallelizeD0Ev(ptr noundef nonnull align 8 dereferenceable(736) initializes((0, 8), (536, 544)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEED2Ev(ptr noundef nonnull align 8 dead_on_return(736) dereferenceable(736) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 736) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 17 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.10, i64 18 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.11, i64 47 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117AffineParallelize14runOnOperationEv(ptr noundef nonnull align 8 dereferenceable(736) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.118, align 8            ; 4 uses
  %2 = alloca %"class.std::vector.78", align 8    ; 9 uses
  %3 = alloca %class.anon.83, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %3, ptr %1, align 8, !tbaa !44
  %i.e = ptrtoint ptr %1 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr nonnull @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE0ENS1_15ForwardIteratorEZN12_GLOBAL__N_117AffineParallelize14runOnOperationEvE3$_0NS1_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_", i64 %i.e, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.val8 = load ptr, ptr %2, align 8, !tbaa !119  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !119 ; 2 uses
  %.not2025 = icmp eq ptr %.val8, %.val
  br i1 %.not2025, label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %4 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine16AffineParallelOpEvE2idE
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %bb.d

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !47    ; 3 uses
  %.pre28 = load ptr, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre28
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.i) #20
  br label %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre28
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %2, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i

_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i: ; preds = %bb.a, %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exitthread-pre-split.i, %._crit_edge
  %.val.i = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %.val8, %bb.a ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.n = ptrtoint ptr %.val1.i to i64
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.p) #21
  br label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.d:                                             ; preds = %.lr.ph27, %bb.i
  %.sroa.018.026 = phi ptr [ %.val8, %.lr.ph27 ], [ %i.au, %bb.i ] ; 4 uses
  %i.q = load i64, ptr %.sroa.018.026, align 8
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !133  ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.critedge, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.d
  %i.u = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.t) #20 ; 2 uses
  %.not21 = icmp eq ptr %i.u, null
  br i1 %.not21, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4mlir9Operation11getParentOpEv.exit14
  %.023 = phi i32 [ %spec.select, %_ZN4mlir9Operation11getParentOpEv.exit14 ], [ 0, %_ZN4mlir9Operation11getParentOpEv.exit ] ; 2 uses
  %storemerge22 = phi ptr [ %i.an, %_ZN4mlir9Operation11getParentOpEv.exit14 ], [ %i.u, %_ZN4mlir9Operation11getParentOpEv.exit ] ; 2 uses
  %i.v = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.e, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit, !prof !134

bb.e:                                             ; preds = %.lr.ph
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.12, i64 49), i64 33) #20
  store ptr %i.y, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge22, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11AffineScopeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !13
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !135 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr %.sroa.01.0.copyload.i.i.i.i.i) #20, !inline_history !116
  br i1 %i.ae, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.g, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit, %_ZN4mlir9Operation11getParentOpEv.exit14, %bb.d, %_ZN4mlir9Operation11getParentOpEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZN4mlir9Operation11getParentOpEv.exit ], [ 0, %bb.d ], [ %spec.select, %bb.g ], [ %spec.select, %_ZN4mlir9Operation11getParentOpEv.exit14 ], [ %.023, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit ]
  %i.af = load i32, ptr %i.g, align 8, !tbaa !59
  %i.ag = icmp ult i32 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11AffineScopeEEEbv.exit
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = icmp eq ptr %i.ai, @_ZN4mlir6detail14TypeIDResolverINS_6affine16AffineParallelOpEvE2idE
  %spec.select.i.i.i.i.i = and i1 %4, %i.aj
  %i.ak = zext i1 %spec.select.i.i.i.i.i to i32
  %spec.select = add i32 %.023, %i.ak             ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge22, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !133 ; 2 uses
  %.not.i13 = icmp eq ptr %i.am, null
  br i1 %.not.i13, label %.critedge, label %_ZN4mlir9Operation11getParentOpEv.exit14

_ZN4mlir9Operation11getParentOpEv.exit14:         ; preds = %bb.g
  %i.an = call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.am) #20 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !117

bb.h:                                             ; preds = %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !31
  %i.as = zext i32 %i.ar to i64
  %i.at = call i8 @_ZN4mlir6affine17affineParallelizeENS0_11AffineForOpEN4llvm8ArrayRefINS0_13LoopReductionEEEPNS0_16AffineParallelOpE(ptr %i.r, ptr %i.ap, i64 %i.as, ptr noundef null) #20 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 72 ; 2 uses
  %.not20 = icmp eq ptr %i.au, %.val
  br i1 %.not20, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.not.i.i = icmp eq i64 %i.d, %.sroa.4.0.copyload
  %or.cond = select i1 %i.f, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i = call i32 @bcmp(ptr %i.c, ptr %.sroa.0.0.copyload, i64 %i.d)
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(736) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_117AffineParallelizeESt14default_deleteIS1_EED2Ev.exit:
  %2 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %3 = alloca %"struct.llvm::cl::initializer", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.llvm::cl::desc", align 8   ; 5 uses
  %5 = alloca %"struct.llvm::cl::initializer.51", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(736) ptr @_Znwm(i64 noundef 736) #19, !noalias !140, !inline_history !138 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !13, !noalias !140
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.g, align 8, !tbaa !13, !noalias !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i8 0, ptr %i.h, align 8, !tbaa !30, !noalias !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false), !noalias !140
  store ptr %i.k, ptr %i.j, align 8, !tbaa !15, !noalias !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i32 0, ptr %i.l, align 8, !tbaa !31, !noalias !140
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store i32 4, ptr %i.m, align 4, !tbaa !16, !noalias !140
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store ptr %i.o, ptr %i.n, align 8, !tbaa !15, !noalias !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store i32 0, ptr %i.p, align 8, !tbaa !31, !noalias !140
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store i32 4, ptr %i.q, align 4, !tbaa !16, !noalias !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEEE, i64 16), ptr %i.c, align 8, !tbaa !18, !noalias !140
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 336 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !140
  store ptr @.str.1, ptr %2, align 8, !tbaa !20, !noalias !140
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 85, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !22, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !140
  store i32 -1, ptr %i.a, align 4, !tbaa !23, !noalias !140
  store ptr %i.a, ptr %3, align 8, !noalias !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  call void @_ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC2IJNS4_4descENS4_11initializerIjEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.s, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str, i64 10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3), !noalias !140, !inline_history !139
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 16), ptr %i.s, align 8, !tbaa !18, !noalias !140
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIjN4llvm2cl6parserIjEEEE, i64 144), ptr %i.u, align 8, !tbaa !18, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !140
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 536 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !140
  store ptr @.str.3, ptr %4, align 8, !tbaa !20, !noalias !140
  %.sroa.2.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 58, ptr %.sroa.2.0..sroa_idx.i2.i.i.i, align 8, !tbaa !22, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !140
  store i8 0, ptr %i.b, align 1, !tbaa !25, !noalias !140
  store ptr %i.b, ptr %5, align 8, !noalias !140
  call void @_ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC2IJNS4_4descENS4_11initializerIbEEEEERS1_NS3_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(193) %i.v, ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr nonnull @.str.2, i64 19, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5), !noalias !140, !inline_history !139
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mlir4Pass6OptionIbN4llvm2cl6parserIbEEEE, i64 16), ptr %i.v, align 8, !tbaa !18, !noalias !140
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4mlir4Pass6OptionIbN4llvm2cl6parserIbEEEE, i64 144), ptr %i.w, align 8, !tbaa !18, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_117AffineParallelizeE, i64 16), ptr %i.c, align 8, !tbaa !18, !noalias !140
  store ptr %i.c, ptr %0, align 8, !tbaa !28
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #7

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define internal void @_ZN4mlir6affine4impl21AffineParallelizeBaseIN12_GLOBAL__N_117AffineParallelizeEED0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !143  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

end_hunk_0
begin_hunk_1_@_ZNK4llvm2cl3sub5applyINS0_3optIbLb0ENS0_6parserIbEEEEEEvRT_:bb.a
  store i32 %i.p, ptr %i.g, align 4, !tbaa !88, !noalias !177
  store ptr %i.a, ptr %i.j, align 8, !tbaa !44, !noalias !177
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %i.q = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.a) #20, !noalias !177 ; 0 uses
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 3 uses
  %.not11 = icmp eq ptr %i.s, null
  br i1 %.not11, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  %i.w = zext i32 %i.v to i64
  %.idx = shl nuw nsw i64 %i.w, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not1225 = icmp eq i32 %i.v, 0
  br i1 %.not1225, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22
  %.026 = phi ptr [ %i.t, %.lr.ph ], [ %i.ap, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22 ] ; 2 uses
  %i.ac = load ptr, ptr %.026, align 8, !tbaa !90 ; 3 uses
  %i.ad = load i8, ptr %i.z, align 8, !tbaa !36, !range !37, !noalias !178, !noundef !38
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !39, !noalias !178 ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !88, !noalias !178 ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %.idx.i.i.i14 = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i.i14 ; 2 uses
  %.not22.i.i.i15 = icmp eq i32 %i.ag, 0
  br i1 %.not22.i.i.i15, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %bb.h, %.critedge.i.i.i19
  %.023.i.i.i17 = phi ptr [ %i.ak, %.critedge.i.i.i19 ], [ %i.af, %bb.h ] ; 2 uses
  %i.aj = load ptr, ptr %.023.i.i.i17, align 8, !tbaa !44, !noalias !178
  %.not15.i.i.i18 = icmp eq ptr %i.aj, %i.ac
  br i1 %.not15.i.i.i18, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, label %.critedge.i.i.i19

.critedge.i.i.i19:                                ; preds = %.lr.ph.i.i.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.023.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i20, label %._crit_edge.i.i.i21, label %.lr.ph.i.i.i16

._crit_edge.i.i.i21:                              ; preds = %.critedge.i.i.i19, %bb.h
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !89, !noalias !178
  %i.am = icmp ult i32 %i.ag, %i.al
  br i1 %i.am, label %bb.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13

bb.i:                                             ; preds = %._crit_edge.i.i.i21
  %i.an = add nuw i32 %i.ag, 1
  store i32 %i.an, ptr %i.aa, align 4, !tbaa !88, !noalias !178
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !44, !noalias !178
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13: ; preds = %._crit_edge.i.i.i21, %bb.g
  %i.ao = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.y, ptr noundef nonnull align 8 dereferenceable(160) %i.ac) #20, !noalias !178 ; 0 uses
  br label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22: ; preds = %.lr.ph.i.i.i16, %bb.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i13
  %i.ap = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.ap, %i.x
  br i1 %.not12, label %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit, label %bb.g

_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm2cl6Option13addSubCommandERNS0_10SubCommandE.exit22, %bb.f, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKbEZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS8_4descENS8_11initializerIbEEEEERS5_NS7_9StringRefEDpOT_EUlRKT_E_E9_M_invokeERKSt9_Any_dataS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i8 1, ptr %i.b, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKbEZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS8_4descENS8_11initializerIbEEEEERS5_NS7_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !44
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !92
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !100
  store i64 %i.a, ptr %0, align 8, !tbaa !100
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS6_4descENS6_11initializerIbEEEEERS3_NS5_9StringRefEDpOT_EUlRKT_E_E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare i8 @_ZN4mlir6affine17affineParallelizeENS0_11AffineForOpEN4llvm8ArrayRefINS0_13LoopReductionEEEPNS0_16AffineParallelOpE(ptr, ptr, i64, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #20, !inline_history !181
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #20 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !182 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !182 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #20
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #20, !inline_history !181
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE0ENS1_15ForwardIteratorEZN12_GLOBAL__N_117AffineParallelize14runOnOperationEvE3$_0NS1_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_"(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.107", align 8 ; 10 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %3 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6affine11AffineForOpEvE2idE
  %spec.select.i.i.i.i.not.i = or i1 %3, %i.e
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %spec.select.i.i.i.i.not.i
  br i1 %.not.i, label %"_ZZN4mlir6detail4walkILNS_9WalkOrderE0ENS_15ForwardIteratorEZN12_GLOBAL__N_117AffineParallelize14runOnOperationEvE3$_0NS_6affine11AffineForOpEvEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.val, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 2, ptr %i.i, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  %i.k = load i8, ptr %i.j, align 8, !tbaa !97, !range !37, !noundef !38
  %i.l = trunc nuw i8 %i.k to i1
  %..i.i = select i1 %i.l, ptr %2, ptr null
  %i.m = call noundef zeroext i1 @_ZN4mlir6affine14isLoopParallelENS0_11AffineForOpEPN4llvm15SmallVectorImplINS0_13LoopReductionEEE(ptr nonnull %1, ptr noundef %..i.i) #20
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12emplace_backIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEERS1_DpOT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !184, !nonnull !38, !align !185 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48   ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.u, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 2, ptr %i.w, align 4, !tbaa !16
  %i.x = load i32, ptr %i.h, align 8, !tbaa !31
  %.not.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir6affine13LoopReductionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i

_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !48
  br label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12emplace_backIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEERS1_DpOT_.exit.i.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !47 ; 6 uses
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = ptrtoint ptr %.val.i.i.i.i to i64       ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.af = sdiv exact i64 %i.ad, 72                ; 3 uses
  %i.ag = icmp eq ptr %i.q, %.val.i.i.i.i         ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ag, i64 1, i64 %i.af
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.af ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 128102389400760775)
  %i.ak = select i1 %i.ai, i64 128102389400760775, i64 %i.aj ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 72
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #19 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad ; 5 uses
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 0, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 2, ptr %i.ar, align 4, !tbaa !16
  %i.as = load i32, ptr %i.h, align 8, !tbaa !31
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir6affine13LoopReductionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  br label %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i

_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  br i1 %i.ag, label %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_124ParallelizationCandidateES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_124ParallelizationCandidateES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i.i: ; preds = %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i, %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %i.am, %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i ] ; 8 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i.i ] ; 5 uses
  %i.av = load i64, ptr %.0810.i.i.i.i.i.i.i.i.i, align 8
  store i64 %i.av, ptr %.011.i.i.i.i.i.i.i.i.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  store i32 0, ptr %i.az, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 20
  store i32 2, ptr %i.ba, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !31 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bc, 0
  %i.bd = icmp eq ptr %.011.i.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.bd, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.be = icmp ugt i32 %i.bc, 2
  br i1 %i.be, label %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.bf = zext i32 %i.bc to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull %i.ay, i64 noundef %i.bf, i64 noundef 24) #20
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !15
  br label %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.bg = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ay, %bb.i ]
  %i.bh = phi i32 [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %bb.i ]
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !15
  %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.bi, 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 8 %i.bj, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt4copyIPKN4mlir6affine13LoopReductionEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !31
  br label %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 72
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !183

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bq, %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i ], [ %.val.i.i.i.i, %_ZSt10_ConstructIN12_GLOBAL__N_124ParallelizationCandidateEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.bn) #20
  br label %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i6.i.i.i = icmp eq ptr %i.bq, %i.q
  br i1 %.not.i.i.i6.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.loopexit.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_124ParallelizationCandidateEEvPT_.exit.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 144
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.i.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.loopexit.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_124ParallelizationCandidateES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i.i
  %i.bs = phi ptr [ %i.au, %_ZSt34__uninitialized_move_if_noexcept_aIPN12_GLOBAL__N_124ParallelizationCandidateES2_SaIS1_EET0_T_S5_S4_RT1_.exit40.i.thread.i.i.i ], [ %i.br, %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.loopexit.i.i.i ]
  %.not.i41.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i41.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE17_M_realloc_insertIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.i.i.i
  %i.bt = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bv) #21
  br label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE17_M_realloc_insertIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE17_M_realloc_insertIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPN12_GLOBAL__N_124ParallelizationCandidateEEvT_S3_.exit.i.i.i.i
  store ptr %i.am, ptr %i.o, align 8, !tbaa !47
  store ptr %i.bs, ptr %i.p, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bw, ptr %i.r, align 8, !tbaa !50
  br label %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12emplace_backIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEERS1_DpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12emplace_backIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEERS1_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE17_M_realloc_insertIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %_ZN12_GLOBAL__N_124ParallelizationCandidateC2EN4mlir6affine11AffineForOpEON4llvm11SmallVectorINS2_13LoopReductionELj2EEE.exit.i.i.i, %bb.b
  %i.bx = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.g
  br i1 %i.by, label %"_ZZN12_GLOBAL__N_117AffineParallelize14runOnOperationEvENK3$_0clEN4mlir6affine11AffineForOpE.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_124ParallelizationCandidateESaIS1_EE12emplace_backIJRN4mlir6affine11AffineForOpEN4llvm11SmallVectorINS6_13LoopReductionELj2EEEEEERS1_DpOT_.exit.i.i
  call void @free(ptr noundef %i.bx) #20
end_hunk_1
