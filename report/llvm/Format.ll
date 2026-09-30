Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Format?download=true
inline.NumInlined: 8543
inline.NumDeleted: 3503
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5clang6format23fixNamespaceEndCommentsERKNS0_11FormatStyleEN4llvm9StringRefENS4_8ArrayRefINS_7tooling5RangeEEES5_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink7, ptr %i.u, align 8, !tbaa !322
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.v, align 8, !tbaa !323
  store i32 %.sink.i.i.i.i.i, ptr %i.f, align 8, !tbaa !369
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(52) %9, ptr noundef null)
  call void @_ZN5clang6format13TokenAnalyzerD2Ev(ptr noundef nonnull align 8 dead_on_return(4836) dereferenceable(4836) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.pre = load ptr, ptr %7, align 8, !tbaa !422   ; 5 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !357  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.x) #28
  br label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %.pre, align 8, !tbaa !475 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i
  call void @_ZN5clang20SourceManagerForFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aa) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #29
  br label %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i, %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 152) #29
  br label %_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

declare void @_ZN5clang6format25NamespaceEndCommentsFixerC1ERKNS0_11EnvironmentERKNS0_11FormatStyleE(ptr noundef nonnull align 8 dereferenceable(4836), ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(1208)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6format21sortUsingDeclarationsERKNS0_11FormatStyleEN4llvm9StringRefENS4_8ArrayRefINS_7tooling5RangeEEES5_(ptr dead_on_unwind noalias writable sret(%"class.clang::tooling::Replacements") align 8 initializes((16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.126", align 8 ; 5 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %9 = alloca %"struct.std::pair.119", align 8    ; 9 uses
  %10 = alloca %"class.clang::format::UsingDeclarationsSorter", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8, !tbaa !326
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68
  store ptr %4, ptr %8, align 8, !tbaa !403
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !68
  call void @_ZN5clang6format11Environment4makeEN4llvm9StringRefES3_NS2_8ArrayRefINS_7tooling5RangeEEEjjj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.126") align 8 %7, ptr %2, i64 %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
  %i.a = load ptr, ptr %7, align 8, !tbaa !422    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !321
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.d, align 8, !tbaa !322
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !323
  br label %_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZN5clang6format23UsingDeclarationsSorterC1ERKNS0_11EnvironmentERKNS0_11FormatStyleE(ptr noundef nonnull align 8 dereferenceable(4836) %10, ptr noundef nonnull align 8 dereferenceable(148) %i.a, ptr noundef nonnull align 8 dereferenceable(1208) %1) #28
  call void @_ZN5clang6format13TokenAnalyzer7processEb(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.119") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4836) %10, i1 noundef zeroext false) #28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !325  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !369
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.k, align 8, !tbaa !325
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !321
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !322
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.p, align 8, !tbaa !398
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !323
  store ptr null, ptr %i.g, align 8, !tbaa !325
  store ptr %i.i, ptr %i.l, align 8, !tbaa !321
  store ptr %i.i, ptr %i.n, align 8, !tbaa !322
  store i64 0, ptr %i.q, align 8, !tbaa !323
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.s, align 8, !tbaa !325
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink8 = phi ptr [ %i.f, %bb.d ], [ %i.m, %bb.c ]
  %.sink7 = phi ptr [ %i.f, %bb.d ], [ %i.o, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.r, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.j, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink8, ptr %i.t, align 8, !tbaa !321
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink7, ptr %i.u, align 8, !tbaa !322
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.v, align 8, !tbaa !323
  store i32 %.sink.i.i.i.i.i, ptr %i.f, align 8, !tbaa !369
  call void @_ZNSt8_Rb_treeIN5clang7tooling11ReplacementES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(52) %9, ptr noundef null)
  call void @_ZN5clang6format13TokenAnalyzerD2Ev(ptr noundef nonnull align 8 dead_on_return(4836) dereferenceable(4836) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.pre = load ptr, ptr %7, align 8, !tbaa !422   ; 5 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !357  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.x) #28
  br label %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %.pre, align 8, !tbaa !475 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i
  call void @_ZN5clang20SourceManagerForFileD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aa) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #29
  br label %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang20SourceManagerForFileEEclEPS1_.exit.i.i.i.i, %_ZN4llvm11SmallVectorIN5clang15CharSourceRangeELj8EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 152) #29
  br label %_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang6format11EnvironmentESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteIN5clang6format11EnvironmentEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

declare void @_ZN5clang6format23UsingDeclarationsSorterC1ERKNS0_11EnvironmentERKNS0_11FormatStyleE(ptr noundef nonnull align 8 dereferenceable(4836), ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 8 dereferenceable(1208)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6format21getFormattingLangOptsERKNS0_11FormatStyleE(ptr dead_on_unwind noalias nonnull writable sret(%"class.clang::LangOptions") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1208) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136) %0) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 963
  %i.b = load i8, ptr %i.a, align 1, !tbaa !250   ; 2 uses
  %i.c = add i8 %i.b, -7
  %or.cond = icmp ult i8 %i.c, 2
  %spec.store.select = select i1 %or.cond, i8 4, i8 %i.b ; 6 uses
  %i.d = icmp sgt i8 %spec.store.select, 0        ; 2 uses
  %i.e = icmp sgt i8 %spec.store.select, 3        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 527
  %i.g = load i8, ptr %i.f, align 1, !tbaa !223
  switch i8 %i.g, label %._crit_edge [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 7, label %bb.c
  ]

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %0, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8
  %i.i = or i64 %i.h, 10
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, 34359738368
  store i64 %i.l, ptr %i.j, align 8
  %i.m = load i64, ptr %0, align 8
  %i.n = select i1 %i.d, i64 8192, i64 0
  %i.o = and i64 %i.m, -516097
  %i.p = icmp sgt i8 %spec.store.select, 1
  %i.q = icmp sgt i8 %spec.store.select, 2
  %2 = select i1 %i.q, i64 32768, i64 0
  %3 = select i1 %i.e, i64 65536, i64 0
  %i.r = icmp sgt i8 %spec.store.select, 4
  %4 = select i1 %i.r, i64 131072, i64 0
  %i.s = icmp sgt i8 %spec.store.select, 5
  %i.t = select i1 %i.s, i64 262144, i64 0
  %i.u = select i1 %i.p, i64 24576, i64 %i.n
  %5 = or disjoint i64 %i.u, %2
  %6 = or disjoint i64 %5, %3
  %7 = or disjoint i64 %6, %4
  %8 = or disjoint i64 %7, %i.t
  %i.v = or i64 %8, %i.o
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.w = phi i64 [ %.pre, %._crit_edge ], [ %i.v, %bb.c ]
  %i.x = or i64 %i.w, 4096
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %storemerge = phi i64 [ %i.i, %bb.b ], [ %i.x, %bb.d ] ; 2 uses
  %i.y = select i1 %i.e, i64 2147483648, i64 0
  %i.z = and i64 %storemerge, -11141120130
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = and i64 %storemerge, 16392
  %.not = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = select i1 %.not, i64 0, i64 4
  %i.af = and i64 %i.ad, -5
  %i.ag = or disjoint i64 %i.af, %i.ae
  store i64 %i.ag, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = select i1 %i.d, i64 8589934592, i64 0
  %i.ak = and i64 %i.ai, -8589934593
  %i.al = or disjoint i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.ah, align 8
  %i.am = or disjoint i64 %i.aa, 8993636481
  store i64 %i.am, ptr %0, align 8
  ret void
}

declare void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang11LangOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(1136) dereferenceable(1136) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !67
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !67
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !67
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !264  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !188  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !69 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !67
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.v
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.s, align 8, !tbaa !264
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !67
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !826 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !827 ; 2 uses
  %.not4.i.i.i13 = icmp eq ptr %i.av, %i.ax
  br i1 %.not4.i.i.i13, label %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exit.i, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i
  %.05.i.i.i15 = phi ptr [ %i.bd, %_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ] ; 3 uses
  %i.ay = load ptr, ptr %.05.i.i.i15, align 8, !tbaa !69 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !67
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #29
  br label %_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i15, i64 56 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bd, %i.ax
  br i1 %.not.i.i.i16, label %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i14, !llvm.loop !825

_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvm6TripleEEvPT_.exit.i.i.i
  %.pr.i17 = load ptr, ptr %i.au, align 8, !tbaa !826
  br label %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exit.i

_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exit.i:      ; preds = %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.be = phi ptr [ %.pr.i17, %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exitthread-pre-split.i ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ] ; 3 uses
  %.not.i.i1.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i18, label %_ZNSt6vectorIN4llvm6TripleESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !828
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #29
  br label %_ZNSt6vectorIN4llvm6TripleESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm6TripleESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN4llvm6TripleEEvT_S3_.exit.i, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt6vectorIN4llvm6TripleESaIS1_EED2Ev.exit
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !67
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
end_hunk_0
