inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl6Option6anchorEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl17basic_parser_impl6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIbE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserINS0_13boolOrDefaultEE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIiE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIjE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIyE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIdE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIfE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh2cl6parserIcE6anchorEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh2cl16AddLiteralOptionERNS0_6OptionENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.h = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i.i3 = icmp eq ptr %i.h, null
  br i1 %.not.i.i3, label %bb.d, label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl18TopLevelSubCommandE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.i = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE monotonic, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionEPNS2_10SubCommandENS1_9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull %i.i, ptr %1, i64 %2)
  br label %_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionENS1_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i32, ptr %i.o, align 8
  %.v.v.i4.i2.i.i = select i1 %i.n, i32 %i.d, i32 %i.p ; 2 uses
  %.v.i5.i3.i.i = zext i32 %.v.v.i4.i2.i.i to i64 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i5.i3.i.i, 3
  %i.q = getelementptr i8, ptr %i.l, i64 %.idx.i.i ; 4 uses
  %.not3.i4.i.i6.i4.i.i = icmp eq i32 %.v.v.i4.i2.i.i, 0
  br i1 %.not3.i4.i.i6.i4.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, label %.lr.ph.i5.i.i7.i5.i.i

.lr.ph.i5.i.i7.i5.i.i:                            ; preds = %bb.e, %.critedge2.i7.i.i9.i11.i.i
  %.sroa.0.3.i6.i.i = phi ptr [ %i.s, %.critedge2.i7.i.i9.i11.i.i ], [ %i.l, %bb.e ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.3.i6.i.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i.i = icmp ugt ptr %i.r, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i.i, label %.critedge2.i7.i.i9.i11.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i

.critedge2.i7.i.i9.i11.i.i:                       ; preds = %.lr.ph.i5.i.i7.i5.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i8.i.i10.i12.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, label %.lr.ph.i5.i.i7.i5.i.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i: ; preds = %.critedge2.i7.i.i9.i11.i.i, %.lr.ph.i5.i.i7.i5.i.i, %bb.e
  %.sroa.0.4.i8.i.i = phi ptr [ %i.l, %bb.e ], [ %i.q, %.critedge2.i7.i.i9.i11.i.i ], [ %.sroa.0.3.i6.i.i, %.lr.ph.i5.i.i7.i5.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.v.i5.i3.i.i ; 2 uses
  %.not15.i = icmp eq ptr %.sroa.0.4.i8.i.i, %i.t
  br i1 %.not15.i, label %_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionENS1_9StringRefE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i
  %.sroa.012.016.i = phi ptr [ %.sroa.012.2.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i ], [ %.sroa.0.4.i8.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.012.016.i, align 8, !tbaa !66
  tail call fastcc void @_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionEPNS2_10SubCommandENS1_9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef %i.u, ptr %1, i64 %2)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.012.016.i, i64 8 ; 3 uses
  %.not3.i3.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not3.i3.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.lr.ph.i, %.critedge2.i6.i.i
  %.sroa.012.1.i = phi ptr [ %i.x, %.critedge2.i6.i.i ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %i.w = load ptr, ptr %.sroa.012.1.i, align 8, !tbaa !66
  %switch.i5.i.i = icmp ugt ptr %i.w, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i.i, label %.critedge2.i6.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i

.critedge2.i6.i.i:                                ; preds = %.lr.ph.i4.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 8 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not.i7.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i, label %.lr.ph.i4.i.i, !llvm.loop !67

_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i: ; preds = %.critedge2.i6.i.i, %.lr.ph.i4.i.i, %.lr.ph.i
  %.sroa.012.2.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.x, %.critedge2.i6.i.i ], [ %.sroa.012.1.i, %.lr.ph.i4.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.012.2.i, %i.t
  br i1 %.not.i, label %_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionENS1_9StringRefE.exit, label %.lr.ph.i

_ZN12_GLOBAL__N_117CommandLineParser16addLiteralOptionERN4llvh2cl6OptionENS1_9StringRefE.exit: ; preds = %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i, %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh2cl9extrahelpC2ENS_9StringRefE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !57
  %i.a = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  store ptr %1, ptr %i.e, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx3, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.d, align 8, !tbaa !123
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !127  ; 5 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775792
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #30
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 4                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 576460752303423487) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !56
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx5, align 8, !tbaa !57
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !128, !alias.scope !129
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !133

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %i.c, align 8, !tbaa !127
  store ptr %i.v, ptr %i.d, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.f, align 8, !tbaa !126
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh2cl6Option14removeArgumentEv(ptr noundef nonnull align 8 dereferenceable(145) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.a, %bb.b
  %i.b = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.i = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %bb.d, label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl18TopLevelSubCommandE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE monotonic, align 8
  tail call fastcc void @_ZN12_GLOBAL__N_117CommandLineParser12removeOptionEPN4llvh2cl6OptionEPNS2_10SubCommandE(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  br label %_ZN12_GLOBAL__N_117CommandLineParser12removeOptionEPN4llvh2cl6OptionE.exit

bb.e:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 5 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %.v.v.i4.i2.i.i.i.i.i.i = select i1 %i.n, i32 %i.e, i32 %i.p ; 2 uses
  %.v.i5.i3.i.i.i.i.i.i = zext i32 %.v.v.i4.i2.i.i.i.i.i.i to i64 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %.v.i5.i3.i.i.i.i.i.i, 3
  %i.q = getelementptr i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i ; 4 uses
  %.not3.i4.i.i6.i4.i.i.i.i.i.i = icmp eq i32 %.v.v.i4.i2.i.i.i.i.i.i, 0
  br i1 %.not3.i4.i.i6.i4.i.i.i.i.i.i, label %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i.i.i.i

.lr.ph.i5.i.i7.i5.i.i.i.i.i.i:                    ; preds = %bb.e, %.critedge2.i7.i.i9.i11.i.i.i.i.i.i
  %.sroa.0.3.i6.i.i.i.i.i.i = phi ptr [ %i.s, %.critedge2.i7.i.i9.i11.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.3.i6.i.i.i.i.i.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i.i.i.i.i.i = icmp ugt ptr %i.r, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i.i.i.i.i.i, label %.critedge2.i7.i.i9.i11.i.i.i.i.i.i, label %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i

.critedge2.i7.i.i9.i11.i.i.i.i.i.i:               ; preds = %.lr.ph.i5.i.i7.i5.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i.i.i.i.i.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i8.i.i10.i12.i.i.i.i.i.i, label %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i.i.i.i, !llvm.loop !67

_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i: ; preds = %.critedge2.i7.i.i9.i11.i.i.i.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i.i.i.i, %bb.e
  %.sroa.0.4.i8.i.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.q, %.critedge2.i7.i.i9.i11.i.i.i.i.i.i ], [ %.sroa.0.3.i6.i.i.i.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.v.i5.i3.i.i.i.i.i.i ; 3 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.4.i8.i.i.i.i.i.i, %i.t
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i
  %.sroa.03.06.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.2.i.i.i.i.i.i.i.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.4.i8.i.i.i.i.i.i, %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i ] ; 3 uses
  %i.u = load ptr, ptr %.sroa.03.06.i.i.i.i.i.i.i.i, align 8, !tbaa !66
  %i.v = load atomic ptr, ptr @_ZN4llvh2cl14AllSubCommandsE acquire, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvh2cl6Option18isInAllSubCommandsEvEUlPKNS3_10SubCommandEE_EclINS2_19SmallPtrSetIteratorIPS5_EEEEbT_.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl14AllSubCommandsE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvh2cl6Option18isInAllSubCommandsEvEUlPKNS3_10SubCommandEE_EclINS2_19SmallPtrSetIteratorIPS5_EEEEbT_.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvh2cl6Option18isInAllSubCommandsEvEUlPKNS3_10SubCommandEE_EclINS2_19SmallPtrSetIteratorIPS5_EEEEbT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %i.w = load atomic ptr, ptr @_ZN4llvh2cl14AllSubCommandsE monotonic, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvh2cl6Option18isInAllSubCommandsEvEUlPKNS3_10SubCommandEE_EclINS2_19SmallPtrSetIteratorIPS5_EEEEbT_.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i3.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not3.i3.i.i.i.i.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i.i.i.i

.lr.ph.i4.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %.critedge2.i6.i.i.i.i.i.i.i.i.i
  %.sroa.03.1.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %.critedge2.i6.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.g ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.03.1.i.i.i.i.i.i.i.i, align 8, !tbaa !66
  %switch.i5.i.i.i.i.i.i.i.i.i = icmp ugt ptr %i.z, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i.i.i.i.i.i.i.i.i, label %.critedge2.i6.i.i.i.i.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i

.critedge2.i6.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i4.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i4.i.i.i.i.i.i.i.i.i, !llvm.loop !67

_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i: ; preds = %.critedge2.i6.i.i.i.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.03.2.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.g ], [ %.sroa.03.1.i.i.i.i.i.i.i.i, %.lr.ph.i4.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.critedge2.i6.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.03.2.i.i.i.i.i.i.i.i, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !134

_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvh2cl6Option18isInAllSubCommandsEvEUlPKNS3_10SubCommandEE_EclINS2_19SmallPtrSetIteratorIPS5_EEEEbT_.exit.i.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.t, %.sroa.03.06.i.i.i.i.i.i.i.i
  br i1 %.not.i, label %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 5 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.aj = load i32, ptr %i.ai, align 8
  %.v.v.i4.i2.i.i = select i1 %i.af, i32 %i.ah, i32 %i.aj ; 2 uses
  %.v.i5.i3.i.i = zext i32 %.v.v.i4.i2.i.i to i64 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.v.i5.i3.i.i, 3
  %i.ak = getelementptr i8, ptr %i.ad, i64 %.idx.i.i ; 4 uses
  %.not3.i4.i.i6.i4.i.i = icmp eq i32 %.v.v.i4.i2.i.i, 0
  br i1 %.not3.i4.i.i6.i4.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, label %.lr.ph.i5.i.i7.i5.i.i

.lr.ph.i5.i.i7.i5.i.i:                            ; preds = %bb.h, %.critedge2.i7.i.i9.i11.i.i
  %.sroa.0.3.i6.i.i = phi ptr [ %i.am, %.critedge2.i7.i.i9.i11.i.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.0.3.i6.i.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i.i = icmp ugt ptr %i.al, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i.i, label %.critedge2.i7.i.i9.i11.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i

.critedge2.i7.i.i9.i11.i.i:                       ; preds = %.lr.ph.i5.i.i7.i5.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i.i = icmp eq ptr %i.am, %i.ak
  br i1 %.not.i8.i.i10.i12.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, label %.lr.ph.i5.i.i7.i5.i.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i: ; preds = %.critedge2.i7.i.i9.i11.i.i, %.lr.ph.i5.i.i7.i5.i.i, %bb.h
  %.sroa.0.4.i8.i.i = phi ptr [ %i.ad, %bb.h ], [ %i.ak, %.critedge2.i7.i.i9.i11.i.i ], [ %.sroa.0.3.i6.i.i, %.lr.ph.i5.i.i7.i5.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.v.i5.i3.i.i ; 2 uses
  %.not4852.i = icmp eq ptr %.sroa.0.4.i8.i.i, %i.an
  br i1 %.not4852.i, label %_ZN12_GLOBAL__N_117CommandLineParser12removeOptionEPN4llvh2cl6OptionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i
  %.sroa.041.053.i = phi ptr [ %.sroa.041.2.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i ], [ %.sroa.0.4.i8.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i ] ; 2 uses
  %i.ao = load ptr, ptr %.sroa.041.053.i, align 8, !tbaa !66
  tail call fastcc void @_ZN12_GLOBAL__N_117CommandLineParser12removeOptionEPN4llvh2cl6OptionEPNS2_10SubCommandE(ptr noundef nonnull %0, ptr noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.041.053.i, i64 8 ; 3 uses
  %.not3.i3.i.i = icmp eq ptr %i.ap, %i.ak
  br i1 %.not3.i3.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i, label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.lr.ph.i, %.critedge2.i6.i.i
  %.sroa.041.1.i = phi ptr [ %i.ar, %.critedge2.i6.i.i ], [ %i.ap, %.lr.ph.i ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.041.1.i, align 8, !tbaa !66
  %switch.i5.i.i = icmp ugt ptr %i.aq, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i.i, label %.critedge2.i6.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i

.critedge2.i6.i.i:                                ; preds = %.lr.ph.i4.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.041.1.i, i64 8 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.ar, %i.ak
  br i1 %.not.i7.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i, label %.lr.ph.i4.i.i, !llvm.loop !67

_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i: ; preds = %.critedge2.i6.i.i, %.lr.ph.i4.i.i, %.lr.ph.i
  %.sroa.041.2.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ar, %.critedge2.i6.i.i ], [ %.sroa.041.1.i, %.lr.ph.i4.i.i ] ; 2 uses
  %.not48.i = icmp eq ptr %.sroa.041.2.i, %i.an
  br i1 %.not48.i, label %_ZN12_GLOBAL__N_117CommandLineParser12removeOptionEPN4llvh2cl6OptionE.exit, label %.lr.ph.i

_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i: ; preds = %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i.i.i.i.i.i.i, %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.i, %_ZN4llvh9adl_beginIRKNS_11SmallPtrSetIPNS_2cl10SubCommandELj4EEEEEDTclsr10adl_detailE9adl_beginclsr3stdE7forwardIT_Efp_EEEOS8_.exit.i.i.i
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !64  ; 5 uses
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load i32, ptr %i.d, align 4
  %i.aw = load i32, ptr %i.o, align 8
  %.v.v.i4.i2.i13.i = select i1 %i.au, i32 %i.av, i32 %i.aw ; 2 uses
  %.v.i5.i3.i14.i = zext i32 %.v.v.i4.i2.i13.i to i64 ; 2 uses
  %.idx.i15.i = shl nuw nsw i64 %.v.i5.i3.i14.i, 3
  %i.ax = getelementptr i8, ptr %i.as, i64 %.idx.i15.i ; 4 uses
  %.not3.i4.i.i6.i4.i16.i = icmp eq i32 %.v.v.i4.i2.i13.i, 0
  br i1 %.not3.i4.i.i6.i4.i16.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit25.i, label %.lr.ph.i5.i.i7.i5.i17.i

.lr.ph.i5.i.i7.i5.i17.i:                          ; preds = %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i, %.critedge2.i7.i.i9.i11.i23.i
  %.sroa.0.3.i6.i18.i = phi ptr [ %i.az, %.critedge2.i7.i.i9.i11.i23.i ], [ %i.as, %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i ] ; 3 uses
  %i.ay = load ptr, ptr %.sroa.0.3.i6.i18.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i19.i = icmp ugt ptr %i.ay, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i19.i, label %.critedge2.i7.i.i9.i11.i23.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit25.i

.critedge2.i7.i.i9.i11.i23.i:                     ; preds = %.lr.ph.i5.i.i7.i5.i17.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i18.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i24.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i8.i.i10.i12.i24.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit25.i, label %.lr.ph.i5.i.i7.i5.i17.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit25.i: ; preds = %.critedge2.i7.i.i9.i11.i23.i, %.lr.ph.i5.i.i7.i5.i17.i, %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i
  %.sroa.0.4.i8.i20.i = phi ptr [ %i.as, %_ZNK4llvh2cl6Option18isInAllSubCommandsEv.exit.thread.i ], [ %i.ax, %.critedge2.i7.i.i9.i11.i23.i ], [ %.sroa.0.3.i6.i18.i, %.lr.ph.i5.i.i7.i5.i17.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.v.i5.i3.i14.i ; 2 uses
  %.not4954.i = icmp eq ptr %.sroa.0.4.i8.i20.i, %i.ba
end_hunk_0
begin_hunk_1_@_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi:bb.a
_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit: ; preds = %.lr.ph.i67, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101, %.lr.ph.i87, %.lr.ph.i, %bb.v, %.thread.i, %bb.w, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81, %_ZN4llvhplERKNS_5TwineES2_.exit60, %bb.j, %bb.f
  %.1 = phi i1 [ true, %.lr.ph.i ], [ true, %_ZN4llvhplERKNS_5TwineES2_.exit60 ], [ true, %bb.f ], [ true, %bb.j ], [ %i.dh, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit101 ], [ true, %bb.w ], [ true, %_ZL29CommaSeparateAndAddOccurrencePN4llvh2cl6OptionEjNS_9StringRefES3_b.exit81 ], [ %i.bf, %.thread.i ], [ true, %.lr.ph.i87 ], [ false, %bb.v ], [ true, %.lr.ph.i67 ]
  ret i1 %.1
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

declare noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNK4llvh5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #18

declare { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111HelpPrinter12printOptionsERN4llvh11SmallVectorISt4pairIPKcPNS1_2cl6OptionEELj128EEEm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !178
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.07
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !349  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(145) %i.g, i64 noundef %2) #28
  %i.k = add nuw nsw i64 %.07, 1                  ; 2 uses
  %.not = icmp eq i64 %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !403
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111HelpPrinterD0Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122CategorizedHelpPrinter12printOptionsERN4llvh11SmallVectorISt4pairIPKcPNS1_2cl6OptionEELj128EEEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple.196", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.199", align 1    ; 3 uses
  %9 = alloca %"class.std::map", align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  store i32 0, ptr %i.a, align 8, !tbaa !404
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !411
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !412
  %i.f = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.a, %bb.b
  %i.g = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 4 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load i32, ptr %i.o, align 8
  %.v.v.i4.i2.i = select i1 %i.l, i32 %i.n, i32 %i.p ; 2 uses
  %.v.i5.i3.i = zext i32 %.v.v.i4.i2.i to i64
  %.idx.i = shl nuw nsw i64 %.v.i5.i3.i, 3
  %i.q = getelementptr i8, ptr %i.j, i64 %.idx.i  ; 4 uses
  %.not3.i4.i.i6.i4.i = icmp eq i32 %.v.v.i4.i2.i, 0
  br i1 %.not3.i4.i.i6.i4.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, label %.lr.ph.i5.i.i7.i5.i

.lr.ph.i5.i.i7.i5.i:                              ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit, %.critedge2.i7.i.i9.i11.i
  %.sroa.0.3.i6.i = phi ptr [ %i.s, %.critedge2.i7.i.i9.i11.i ], [ %i.j, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.0.3.i6.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i = icmp ugt ptr %i.r, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i, label %.critedge2.i7.i.i9.i11.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit

.critedge2.i7.i.i9.i11.i:                         ; preds = %.lr.ph.i5.i.i7.i5.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i = icmp eq ptr %i.s, %i.q
  br i1 %.not.i8.i.i10.i12.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, label %.lr.ph.i5.i.i7.i5.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit: ; preds = %.lr.ph.i5.i.i7.i5.i, %.critedge2.i7.i.i9.i11.i, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %.sroa.0.4.i8.i = phi ptr [ %i.j, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit ], [ %.sroa.0.3.i6.i, %.lr.ph.i5.i.i7.i5.i ], [ %i.q, %.critedge2.i7.i.i9.i11.i ] ; 2 uses
  %i.t = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i20 = icmp eq ptr %i.t, null
  br i1 %.not.i.i20, label %bb.c, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21

bb.c:                                             ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21: ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl14OptionCategoryEE5beginEv.exit, %bb.c
  %i.u = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ad = load i32, ptr %i.ac, align 8
  %.v.v.i.i = select i1 %i.z, i32 %i.ab, i32 %i.ad
  %.v.i.i = zext i32 %.v.v.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.v.i.i ; 2 uses
  %.not119131 = icmp eq ptr %.sroa.0.4.i8.i, %i.ae
  br i1 %.not119131, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit
  %i.af = ptrtoint ptr %.sroa.15.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21
  %.sroa.15.0.lcssa = phi i64 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %i.af, %._crit_edge.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0110.0.lcssa = phi ptr [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ], [ %.sroa.0110.1, %._crit_edge.loopexit ] ; 7 uses
  %i.ag = ptrtoint ptr %.sroa.9.0.lcssa to i64
  %i.ah = ptrtoint ptr %.sroa.0110.0.lcssa to i64 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 2
  br i1 %i.ak, label %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @qsort(ptr noundef nonnull %.sroa.0110.0.lcssa, i64 noundef %i.aj, i64 noundef 8, ptr noundef nonnull @_ZN12_GLOBAL__N_122CategorizedHelpPrinter21OptionCategoryCompareEPKPN4llvh2cl14OptionCategoryES6_) #28
  br label %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit

_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit: ; preds = %._crit_edge, %bb.d
  %.not120138 = icmp eq ptr %.sroa.0110.0.lcssa, %.sroa.9.0.lcssa ; 2 uses
  br i1 %.not120138, label %._crit_edge141, label %.lr.ph140

.lr.ph:                                           ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit
  %.sroa.0110.0135 = phi ptr [ %.sroa.0110.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 5 uses
  %.sroa.9.0134 = phi ptr [ %.sroa.9.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 4 uses
  %.sroa.15.0133 = phi ptr [ %.sroa.15.1, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ null, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 2 uses
  %.sroa.0106.0132 = phi ptr [ %.sroa.0106.2, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit ], [ %.sroa.0.4.i8.i, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit21 ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.0106.0132, align 8, !tbaa !66 ; 2 uses
  %.not.i.i22 = icmp eq ptr %.sroa.9.0134, %.sroa.15.0133
  br i1 %.not.i.i22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.al, ptr %.sroa.9.0134, align 8, !tbaa !381
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %.sroa.9.0134 to i64
  %i.an = ptrtoint ptr %.sroa.0110.0135 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.g, label %_ZNKSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #30
  unreachable

_ZNKSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.aq = ashr exact i64 %i.ao, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #31 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.ao ; 2 uses
  store ptr %i.al, ptr %i.av, align 8, !tbaa !381
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %.sroa.0110.0135, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0110.0135, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0135, i64 noundef %i.ao) #29
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %.sroa.15.1 = phi ptr [ %i.ax, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.15.0133, %bb.e ] ; 2 uses
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.9.0134, %bb.e ]
  %.sroa.0110.1 = phi ptr [ %i.au, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0110.0135, %bb.e ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0106.0132, i64 8 ; 3 uses
  %.not3.i3.i = icmp eq ptr %i.ay, %i.q
  br i1 %.not3.i3.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit, %.critedge2.i6.i
  %.sroa.0106.1 = phi ptr [ %i.ba, %.critedge2.i6.i ], [ %i.ay, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %i.az = load ptr, ptr %.sroa.0106.1, align 8, !tbaa !66
  %switch.i5.i = icmp ugt ptr %i.az, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i, label %.critedge2.i6.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0106.1, i64 8 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.ba, %i.q
  br i1 %.not.i7.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !67

_ZN4llvh19SmallPtrSetIteratorIPNS_2cl14OptionCategoryEEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit
  %.sroa.0106.2 = phi ptr [ %i.ay, %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0106.1, %.lr.ph.i4.i ], [ %i.ba, %.critedge2.i6.i ] ; 2 uses
  %.not119 = icmp eq ptr %.sroa.0106.2, %i.ae
  br i1 %.not119, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !413

._crit_edge141:                                   ; preds = %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit, %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !156 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.not19142 = icmp eq i32 %i.bc, 0
  br i1 %.not19142, label %.preheader, label %.lr.ph145

.lr.ph140:                                        ; preds = %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit
  %.sroa.0100.0139 = phi ptr [ %i.bu, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit ], [ %.sroa.0110.0.lcssa, %_ZN4llvh14array_pod_sortIN9__gnu_cxx17__normal_iteratorIPPNS_2cl14OptionCategoryESt6vectorIS5_SaIS5_EEEEEEvT_SB_PFiPKNSt15iterator_traitsISB_E10value_typeESG_E.exit ] ; 3 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !409 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph140
  %i.bf = load ptr, ptr %.sroa.0100.0139, align 8, !tbaa !381 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.j ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !381
  %i.bi = icmp ult ptr %i.bh, %i.bf               ; 3 uses
  %.19.i.i.i.i = select i1 %i.bi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bi, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i23, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i, label %bb.j, !llvm.loop !415

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i: ; preds = %bb.j
  %i.bj = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.bj, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bk = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !416
  %i.bl = icmp ult ptr %i.bf, %i.bk
  br i1 %i.bl, label %.critedge.i, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit

.critedge.i:                                      ; preds = %bb.k, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i, %.lr.ph140
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i ], [ %i.a, %.lr.ph140 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %.sroa.0100.0139, ptr %7, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bm = call ptr @_ZNSt8_Rb_treeIPN4llvh2cl14OptionCategoryESt4pairIKS3_St6vectorIPNS1_6OptionESaIS8_EEESt10_Select1stISB_ESt4lessIS3_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit: ; preds = %bb.k, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.bm, %.critedge.i ], [ %.19.i.i.i.i, %bb.k ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !425 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !426
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #29
  br label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EED2Ev.exit: ; preds = %bb.l, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0100.0139, i64 8 ; 2 uses
  %.not120 = icmp eq ptr %i.bu, %.sroa.9.0.lcssa
  br i1 %.not120, label %._crit_edge141, label %.lr.ph140, !llvm.loop !427

.preheader:                                       ; preds = %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit, %._crit_edge141
  br i1 %.not120138, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.u

.lr.ph145:                                        ; preds = %._crit_edge141, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit
  %.0143 = phi i64 [ %i.de, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit ], [ 0, %._crit_edge141 ] ; 2 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !178
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.0143
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !349 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72 ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !409 ; 2 uses
  %.not10.i.i.i.i24 = icmp eq ptr %i.cb, null
  br i1 %.not10.i.i.i.i24, label %.critedge.i35, label %.lr.ph.i.i.i.i25

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph145
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !381 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i25
  %.012.i.i.i.i26 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i25 ], [ %.1.i.i.i.i31, %bb.m ] ; 4 uses
  %.0811.i.i.i.i27 = phi ptr [ %i.a, %.lr.ph.i.i.i.i25 ], [ %.19.i.i.i.i28, %bb.m ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i26, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !381
  %i.cf = icmp ult ptr %i.ce, %i.cc               ; 3 uses
  %.19.i.i.i.i28 = select i1 %i.cf, ptr %.0811.i.i.i.i27, ptr %.012.i.i.i.i26 ; 5 uses
  %.1.in.v.i.i.i.i29 = select i1 %i.cf, i64 24, i64 16
  %.1.in.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i26, i64 %.1.in.v.i.i.i.i29
  %.1.i.i.i.i31 = load ptr, ptr %.1.in.i.i.i.i30, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %.1.i.i.i.i31, null
  br i1 %.not.i.i.i.i32, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i33, label %bb.m, !llvm.loop !415

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i33: ; preds = %bb.m
  %i.cg = icmp eq ptr %.19.i.i.i.i28, %i.a
  br i1 %i.cg, label %.critedge.i35, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i33
  %.19.i.i.i.i28.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cf, ptr %.0811.i.i.i.i27, ptr %.012.i.i.i.i26
  %.19.i.i.i.i28.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ch = load ptr, ptr %.19.i.i.i.i28.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !416
  %i.ci = icmp ult ptr %i.cc, %i.ch
  br i1 %i.ci, label %.critedge.i35, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit37

.critedge.i35:                                    ; preds = %bb.n, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i33, %.lr.ph145
  %.08.lcssa.i.i.i11.i36 = phi ptr [ %.19.i.i.i.i28, %bb.n ], [ %.19.i.i.i.i28, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i33 ], [ %i.a, %.lr.ph145 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.ca, ptr %5, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cj = call ptr @_ZNSt8_Rb_treeIPN4llvh2cl14OptionCategoryESt4pairIKS3_St6vectorIPNS1_6OptionESaIS8_EEESt10_Select1stISB_ESt4lessIS3_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i11.i36, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit37

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit37: ; preds = %bb.n, %.critedge.i35
  %.sroa.06.0.i34 = phi ptr [ %i.cj, %.critedge.i35 ], [ %.19.i.i.i.i28, %bb.n ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i34, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i34, i64 48 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !428 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i34, i64 56 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !426
  %.not.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit37
  store ptr %i.bz, ptr %i.cm, align 8, !tbaa !240
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !428
  br label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit37
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !425 ; 4 uses
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 6 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.q, label %_ZNKSt6vectorIPN4llvh2cl6OptionESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #30
  unreachable

_ZNKSt6vectorIPN4llvh2cl6OptionESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.cv = ashr exact i64 %i.ct, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i38 = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i38)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #31 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.ct ; 2 uses
  store ptr %i.bz, ptr %i.da, align 8, !tbaa !240
  %i.db = icmp sgt i64 %i.ct, 0
  br i1 %i.db, label %bb.r, label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN4llvh2cl6OptionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %i.cq, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN4llvh2cl6OptionESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #29
  br label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.cz, ptr %i.ck, align 8, !tbaa !425
  store ptr %i.dc, ptr %i.cl, align 8, !tbaa !428
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dd, ptr %i.cn, align 8, !tbaa !426
  br label %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.o, %_ZNSt6vectorIPN4llvh2cl6OptionESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.de = add nuw nsw i64 %.0143, 1               ; 2 uses
  %.not19 = icmp eq i64 %i.de, %i.bd
  br i1 %.not19, label %.preheader, label %.lr.ph145, !llvm.loop !429

._crit_edge154:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit79, %.preheader
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !409
  call void @_ZNSt8_Rb_treeIPN4llvh2cl14OptionCategoryESt4pairIKS3_St6vectorIPNS1_6OptionESaIS8_EEESt10_Select1stISB_ESt4lessIS3_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.not.i.i.i39 = icmp eq ptr %.sroa.0110.0.lcssa, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge154
  %i.dg = sub i64 %.sroa.15.0.lcssa, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0.lcssa, i64 noundef %i.dg) #29
  br label %_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4llvh2cl14OptionCategoryESaIS3_EED2Ev.exit: ; preds = %._crit_edge154, %bb.t
  ret void

bb.u:                                             ; preds = %.lr.ph153, %_ZN4llvh11raw_ostreamlsEPKc.exit79
  %.sroa.087.0151 = phi ptr [ %.sroa.0110.0.lcssa, %.lr.ph153 ], [ %i.hg, %_ZN4llvh11raw_ostreamlsEPKc.exit79 ] ; 6 uses
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !409 ; 2 uses
  %.not10.i.i.i.i40 = icmp eq ptr %i.dh, null
  br i1 %.not10.i.i.i.i40, label %.critedge.i51, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %bb.u
  %i.di = load ptr, ptr %.sroa.087.0151, align 8, !tbaa !381 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i.i41
  %.012.i.i.i.i42 = phi ptr [ %i.dh, %.lr.ph.i.i.i.i41 ], [ %.1.i.i.i.i47, %bb.v ] ; 4 uses
  %.0811.i.i.i.i43 = phi ptr [ %i.a, %.lr.ph.i.i.i.i41 ], [ %.19.i.i.i.i44, %bb.v ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !381
  %i.dl = icmp ult ptr %i.dk, %i.di               ; 3 uses
  %.19.i.i.i.i44 = select i1 %i.dl, ptr %.0811.i.i.i.i43, ptr %.012.i.i.i.i42 ; 5 uses
  %.1.in.v.i.i.i.i45 = select i1 %i.dl, i64 24, i64 16
  %.1.in.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 %.1.in.v.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %.1.in.i.i.i.i46, align 8, !tbaa !414 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i49, label %bb.v, !llvm.loop !415

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i49: ; preds = %bb.v
  %i.dm = icmp eq ptr %.19.i.i.i.i44, %i.a
  br i1 %i.dm, label %.critedge.i51, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i49
  %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dl, ptr %.0811.i.i.i.i43, ptr %.012.i.i.i.i42
  %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.dn = load ptr, ptr %.19.i.i.i.i44.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !416
  %i.do = icmp ult ptr %i.di, %i.dn
  br i1 %i.do, label %.critedge.i51, label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit53

.critedge.i51:                                    ; preds = %bb.w, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i49, %bb.u
  %.08.lcssa.i.i.i11.i52 = phi ptr [ %.19.i.i.i.i44, %bb.w ], [ %.19.i.i.i.i44, %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSC_.exit.i49 ], [ %i.a, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.087.0151, ptr %3, align 8, !tbaa !423
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.dp = call ptr @_ZNSt8_Rb_treeIPN4llvh2cl14OptionCategoryESt4pairIKS3_St6vectorIPNS1_6OptionESaIS8_EEESt10_Select1stISB_ESt4lessIS3_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr %.08.lcssa.i.i.i11.i52, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit53

_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit53: ; preds = %bb.w, %.critedge.i51
  %.sroa.06.0.i50 = phi ptr [ %i.dp, %.critedge.i51 ], [ %.19.i.i.i.i44, %bb.w ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i50, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !430
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i50, i64 48 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !430
  %i.du = icmp ne ptr %i.dr, %i.dt                ; 2 uses
  %i.dv = load i8, ptr %i.bv, align 8, !tbaa !356, !range !59, !noundef !60
  %i.dw = trunc nuw i8 %i.dv to i1
  %or.cond.not = or i1 %i.du, %i.dw
  br i1 %or.cond.not, label %bb.x, label %_ZN4llvh11raw_ostreamlsEPKc.exit79

bb.x:                                             ; preds = %_ZNSt3mapIPN4llvh2cl14OptionCategoryESt6vectorIPNS1_6OptionESaIS6_EESt4lessIS3_ESaISt4pairIKS3_S8_EEEixERSC_.exit53
  %i.dx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #28 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !55 ; 2 uses
  %i.ec = icmp eq ptr %i.dz, %i.eb
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dx, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.z:                                             ; preds = %bb.x
  store i8 10, ptr %i.eb, align 1
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !55
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.ef, ptr %i.ea, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.y, %bb.z
  %i.eg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #28 ; 5 uses
  %i.eh = load ptr, ptr %.sroa.087.0151, align 8, !tbaa !381 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eh, align 8, !tbaa !56 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !57 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !52
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !55 ; 3 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = icmp ugt i64 %.sroa.2.0.copyload.i, %i.eo
  br i1 %i.ep, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.eq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.eg, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i54 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i54, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.et = phi ptr [ %.pre, %bb.aa ], [ %i.es, %bb.ac ], [ %i.el, %bb.ab ] ; 2 uses
  %.0.i = phi ptr [ %i.eq, %bb.aa ], [ %i.eg, %bb.ac ], [ %i.eg, %bb.ab ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !52
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp ult i64 %i.ey, 2
  br i1 %i.ez, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.97, i64 noundef 2) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

bb.ae:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i16 2618, ptr %i.et, align 1
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !55
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit57

_ZN4llvh11raw_ostreamlsEPKc.exit57:               ; preds = %bb.ad, %bb.ae
  %i.fe = load ptr, ptr %.sroa.087.0151, align 8, !tbaa !381
  %.sroa.2.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.sroa.2.0.copyload.i60 = load i64, ptr %.sroa.2.0..sroa_idx.i59, align 8, !tbaa !57
  %i.ff = icmp eq i64 %.sroa.2.0.copyload.i60, 0
  %i.fg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #28 ; 8 uses
  br i1 %i.ff, label %bb.al, label %bb.af

bb.af:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit57
  %i.fh = load ptr, ptr %.sroa.087.0151, align 8, !tbaa !381 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.0.0.copyload.i63 = load ptr, ptr %i.fi, align 8, !tbaa !56 ; 2 uses
  %.sroa.2.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %.sroa.2.0.copyload.i65 = load i64, ptr %.sroa.2.0..sroa_idx.i64, align 8, !tbaa !57 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !55 ; 3 uses
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ugt i64 %.sroa.2.0.copyload.i65, %i.fp
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fg, ptr noundef %.sroa.0.0.copyload.i63, i64 noundef %.sroa.2.0.copyload.i65) #28 ; 2 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %.pre158 = load ptr, ptr %.phi.trans.insert157, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit70

bb.ah:                                            ; preds = %bb.af
  %.not.i68 = icmp eq i64 %.sroa.2.0.copyload.i65, 0
  br i1 %.not.i68, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %.sroa.0.0.copyload.i63, i64 %.sroa.2.0.copyload.i65, i1 false)
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !55
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sroa.2.0.copyload.i65 ; 2 uses
  store ptr %i.ft, ptr %i.fl, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit70

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit70:    ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.fu = phi ptr [ %.pre158, %bb.ag ], [ %i.ft, %bb.ai ], [ %i.fm, %bb.ah ] ; 2 uses
  %.0.i69 = phi ptr [ %i.fr, %bb.ag ], [ %i.fg, %bb.ai ], [ %i.fg, %bb.ah ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i69, i64 16
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE16handleOccurrenceEjNS_9StringRefES7_:bb.a
  br label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i.i

_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i.i: ; preds = %bb.j, %bb.i
  %i.x = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #28
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !354
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNKSt8functionIFvRN4llvh11raw_ostreamEEEclES2_.exit.i.i

bb.k:                                             ; preds = %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i.i
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFvRN4llvh11raw_ostreamEEEclES2_.exit.i.i: ; preds = %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit.i.i
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !481
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %i.x) #28, !inline_history !483
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !354 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i3.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8functionIFvRN4llvh11raw_ostreamEEEclES2_.exit.i.i
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #28, !inline_history !484 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.l, %_ZNKSt8functionIFvRN4llvh11raw_ostreamEEEclES2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i, i64 32 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not4.i.i, label %.loopexit.i.i, label %bb.i

.loopexit.i.i:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %_ZN4llvh11raw_ostreamlsEc.exit.i.i, %bb.e
  call void @exit(i32 noundef 0) #30
  unreachable

_ZN4llvh2cl11opt_storageIN12_GLOBAL__N_114VersionPrinterELb1ELb1EE8setValueIbEEvRKT_b.exit: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.ad, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvh2cl11opt_storageIN12_GLOBAL__N_114VersionPrinterELb1ELb1EE8setValueIbEEvRKT_b.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE27getValueExpectedFlagDefaultEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEED0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #28, !inline_history !383
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @_ZNK4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { ptr, i64 } %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28, !inline_history !51
  %i.g = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i16, ptr %i.i, align 4
  %i.k = and i16 %i.j, 1024
  %.not.i = icmp eq i16 %i.k, 0
  %spec.select.i = select i1 %.not.i, i64 3, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val7.i = load i64, ptr %i.l, align 8, !tbaa !50 ; 2 uses
  %i.m = icmp eq i64 %.val7.i, 0
  %.sroa.3.0.i.i = select i1 %i.m, i64 %i.g, i64 %.val7.i
  %i.n = add i64 %spec.select.i, %i.c
  %i.o = add i64 %i.n, %.sroa.3.0.i.i
  br label %_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE.exit

_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.o, %bb.b ]
  %i.p = add i64 %.0.i, 6
  ret i64 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE16printOptionValueEmb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %_ZN4llvh2cl15printOptionDiffINS0_6parserIbEEN12_GLOBAL__N_114VersionPrinterEEEvRKNS0_6OptionERKNS0_12basic_parserINT_16parser_data_typeEEERKT0_RKNS0_11OptionValueISF_EEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionNameERKNS0_6OptionEm(ptr nonnull readnone align 8 poison, ptr noundef nonnull readonly align 8 dereferenceable(145) %0, i64 noundef %1)
  %i.a = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 30
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.a, ptr noundef nonnull @.str.33, i64 noundef 30) #28 ; 0 uses
  br label %_ZN4llvh2cl15printOptionDiffINS0_6parserIbEEN12_GLOBAL__N_114VersionPrinterEEEvRKNS0_6OptionERKNS0_12basic_parserINT_16parser_data_typeEEERKT0_RKNS0_11OptionValueISF_EEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.e, ptr noundef nonnull align 1 dereferenceable(30) @.str.33, i64 30, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 30
  store ptr %i.l, ptr %i.d, align 8, !tbaa !55
  br label %_ZN4llvh2cl15printOptionDiffINS0_6parserIbEEN12_GLOBAL__N_114VersionPrinterEEEvRKNS0_6OptionERKNS0_12basic_parserINT_16parser_data_typeEEERKT0_RKNS0_11OptionValueISF_EEm.exit

_ZN4llvh2cl15printOptionDiffINS0_6parserIbEEN12_GLOBAL__N_114VersionPrinterEEEvRKNS0_6OptionERKNS0_12basic_parserINT_16parser_data_typeEEERKT0_RKNS0_11OptionValueISF_EEm.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE10setDefaultEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4llvh2cl3optIN12_GLOBAL__N_114VersionPrinterELb1ENS0_6parserIbEEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK4llvh2cl15OptionValueBaseIN12_GLOBAL__N_114VersionPrinterELb1EE7compareERKNS0_18GenericOptionValueE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt8functionIFvRN4llvh11raw_ostreamEEEclES2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !354
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !481
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #28
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !369  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !485    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #30
  unreachable

_ZNKSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !354  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2) #28, !inline_history !486 ; 0 uses
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !66
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !66
  br label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit

_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit: ; preds = %_ZNKSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !487, !noalias !490
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !481, !alias.scope !490, !noalias !487
  store ptr %i.w, ptr %i.u, align 8, !tbaa !481, !alias.scope !487, !noalias !490
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !354, !alias.scope !490, !noalias !487 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i

_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !365, !alias.scope !492
  store ptr %i.y, ptr %i.z, align 8, !tbaa !354, !alias.scope !487, !noalias !490
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !490, !noalias !487
  br label %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !493

_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2ERKS4_.exit ], [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ac, %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !494, !noalias !497
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !481, !alias.scope !497, !noalias !494
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !481, !alias.scope !494, !noalias !497
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !354, !alias.scope !497, !noalias !494 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i21

_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !365, !alias.scope !499
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !354, !alias.scope !494, !noalias !497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !alias.scope !497, !noalias !494
  br label %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFvRN4llvh11raw_ostreamEEEC2EOS4_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !493

_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ac, %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFvRN4llvh11raw_ostreamEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !372
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #29
  br label %_ZNSt12_Vector_baseISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt8functionIFvRN4llvh11raw_ostreamEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit25, %bb.d
  store ptr %i.n, ptr %0, align 8, !tbaa !485
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !369
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !372
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_CommandLine.cpp() #23 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %1 = alloca %"struct.llvh::cl::desc", align 8   ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.llvh::cl::initializer", align 8 ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.llvh::cl::cat", align 8    ; 4 uses
  %4 = alloca %"struct.llvh::cl::sub", align 8    ; 4 uses
  %5 = alloca %"struct.llvh::cl::desc", align 8   ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"struct.llvh::cl::initializer", align 8 ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.llvh::cl::cat", align 8    ; 4 uses
  %8 = alloca %"struct.llvh::cl::sub", align 8    ; 4 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.llvh::cl::cat", align 8   ; 4 uses
  %12 = alloca %"struct.llvh::cl::sub", align 8   ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"struct.llvh::cl::cat", align 8   ; 4 uses
  %14 = alloca %"struct.llvh::cl::sub", align 8   ; 4 uses
  store ptr @.str, ptr @_ZN4llvh2cl15GeneralCategoryE, align 8, !tbaa !56
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvh2cl15GeneralCategoryE, i64 8), align 8, !tbaa !57
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvh2cl15GeneralCategoryE, i64 16), align 8, !tbaa !56
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvh2cl15GeneralCategoryE, i64 24), align 8, !tbaa !57
  %i.i = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.j = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64, !noalias !500
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !65, !noalias !500 ; 3 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 92 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !62, !noalias !500 ; 4 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %.not63.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not63.i.i.i.i.i.i, label %.critedge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.065.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %bb.d ], [ null, %bb.c ]
  %.04964.i.i.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.04964.i.i.i.i.i.i, align 8, !tbaa !66, !noalias !500 ; 2 uses
  %.not27.i.i.i.i.i.i = icmp eq ptr %i.t, @_ZN4llvh2cl15GeneralCategoryE
  br i1 %.not27.i.i.i.i.i.i, label %__cxx_global_var_init.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.u = icmp eq ptr %i.t, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i.i.i.i = select i1 %i.u, ptr %.04964.i.i.i.i.i.i, ptr %.065.i.i.i.i.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04964.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.s
  br i1 %.not.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !138

.critedge.i.i.i.i.i.i:                            ; preds = %bb.d
  %.not28.i.i.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i.i, null
  br i1 %.not28.i.i.i.i.i.i, label %.critedge.thread.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i.i.i.i
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !66, !noalias !500
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !63, !noalias !500
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !63, !noalias !500
  br label %__cxx_global_var_init.exit

.critedge.thread.i.i.i.i.i.i:                     ; preds = %.critedge.i.i.i.i.i.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !139, !noalias !500
  %i.ab = icmp ult i32 %i.q, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i.i.i.i.i.i
  %i.ac = add nuw i32 %i.q, 1
  store i32 %i.ac, ptr %i.p, align 4, !tbaa !62, !noalias !500
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr %i.s, align 8, !tbaa !66, !noalias !500
  br label %__cxx_global_var_init.exit

bb.g:                                             ; preds = %.critedge.thread.i.i.i.i.i.i, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i
  %i.ad = tail call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4llvh2cl15GeneralCategoryE) #28, !noalias !500 ; 0 uses
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %bb.f, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_111HelpPrinterE, i64 16), ptr @_ZL26UncategorizedNormalPrinter, align 8, !tbaa !7
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL26UncategorizedNormalPrinter, i64 8), align 8, !tbaa !356
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_111HelpPrinterE, i64 16), ptr @_ZL26UncategorizedHiddenPrinter, align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL26UncategorizedHiddenPrinter, i64 8), align 8, !tbaa !356
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL24CategorizedNormalPrinter, i64 8), align 8, !tbaa !356
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_122CategorizedHelpPrinterE, i64 16), ptr @_ZL24CategorizedNormalPrinter, align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL24CategorizedHiddenPrinter, i64 8), align 8, !tbaa !356
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_122CategorizedHelpPrinterE, i64 16), ptr @_ZL24CategorizedHiddenPrinter, align 8, !tbaa !7
  store ptr @_ZL26UncategorizedNormalPrinter, ptr @_ZL20WrappedNormalPrinter, align 8, !tbaa !503
  store ptr @_ZL24CategorizedNormalPrinter, ptr getelementptr inbounds nuw (i8, ptr @_ZL20WrappedNormalPrinter, i64 8), align 8, !tbaa !504
  store ptr @_ZL26UncategorizedHiddenPrinter, ptr @_ZL20WrappedHiddenPrinter, align 8, !tbaa !503
  store ptr @_ZL24CategorizedHiddenPrinter, ptr getelementptr inbounds nuw (i8, ptr @_ZL20WrappedHiddenPrinter, i64 8), align 8, !tbaa !504
  store ptr @.str.41, ptr @_ZL15GenericCategory, align 8, !tbaa !56
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GenericCategory, i64 8), align 8, !tbaa !57
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GenericCategory, i64 16), align 8, !tbaa !56
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15GenericCategory, i64 24), align 8, !tbaa !57
  %i.ae = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i.i.i.i1 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i1, label %bb.h, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i2

bb.h:                                             ; preds = %__cxx_global_var_init.exit
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i2

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i2: ; preds = %bb.h, %__cxx_global_var_init.exit
  %i.af = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64, !noalias !505
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !65, !noalias !505 ; 3 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i2
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 92 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62, !noalias !505 ; 4 uses
  %i.an = zext i32 %i.am to i64
  %.idx.i.i.i.i.i.i3 = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i.i.i.i3 ; 2 uses
  %.not63.i.i.i.i.i.i4 = icmp eq i32 %i.am, 0
  br i1 %.not63.i.i.i.i.i.i4, label %.critedge.thread.i.i.i.i.i.i13, label %.lr.ph.i.i.i.i.i.i5

.lr.ph.i.i.i.i.i.i5:                              ; preds = %bb.i, %bb.j
  %.065.i.i.i.i.i.i6 = phi ptr [ %spec.select.i.i.i.i.i.i9, %bb.j ], [ null, %bb.i ]
  %.04964.i.i.i.i.i.i7 = phi ptr [ %i.ar, %bb.j ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ap = load ptr, ptr %.04964.i.i.i.i.i.i7, align 8, !tbaa !66, !noalias !505 ; 2 uses
  %.not27.i.i.i.i.i.i8 = icmp eq ptr %i.ap, @_ZL15GenericCategory
  br i1 %.not27.i.i.i.i.i.i8, label %__cxx_global_var_init.40.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i5
  %i.aq = icmp eq ptr %i.ap, inttoptr (i64 -2 to ptr)
  %spec.select.i.i.i.i.i.i9 = select i1 %i.aq, ptr %.04964.i.i.i.i.i.i7, ptr %.065.i.i.i.i.i.i6 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.04964.i.i.i.i.i.i7, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.ao
  br i1 %.not.i.i.i.i.i.i10, label %.critedge.i.i.i.i.i.i11, label %.lr.ph.i.i.i.i.i.i5, !llvm.loop !138

.critedge.i.i.i.i.i.i11:                          ; preds = %bb.j
  %.not28.i.i.i.i.i.i12 = icmp eq ptr %spec.select.i.i.i.i.i.i9, null
  br i1 %.not28.i.i.i.i.i.i12, label %.critedge.thread.i.i.i.i.i.i13, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i.i.i.i.i11
  store ptr @_ZL15GenericCategory, ptr %spec.select.i.i.i.i.i.i9, align 8, !tbaa !66, !noalias !505
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 96 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !63, !noalias !505
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !63, !noalias !505
  br label %__cxx_global_var_init.40.exit

.critedge.thread.i.i.i.i.i.i13:                   ; preds = %.critedge.i.i.i.i.i.i11, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !139, !noalias !505
  %i.ax = icmp ult i32 %i.am, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.thread.i.i.i.i.i.i13
  %i.ay = add nuw i32 %i.am, 1
  store i32 %i.ay, ptr %i.al, align 4, !tbaa !62, !noalias !505
  store ptr @_ZL15GenericCategory, ptr %i.ao, align 8, !tbaa !66, !noalias !505
  br label %__cxx_global_var_init.40.exit

bb.m:                                             ; preds = %.critedge.thread.i.i.i.i.i.i13, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i.i.i2
  %i.az = tail call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) @_ZL15GenericCategory) #28, !noalias !505 ; 0 uses
  br label %__cxx_global_var_init.40.exit

__cxx_global_var_init.40.exit:                    ; preds = %.lr.ph.i.i.i.i.i.i5, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i32 1, ptr %i.g, align 4, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 3, ptr %i.h, align 4, !tbaa !451
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store ptr @_ZL15GenericCategory, ptr %13, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ba = load atomic ptr, ptr @_ZN4llvh2cl14AllSubCommandsE acquire, align 8
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.n, label %__cxx_global_var_init.42.exit

bb.n:                                             ; preds = %__cxx_global_var_init.40.exit
end_hunk_2
