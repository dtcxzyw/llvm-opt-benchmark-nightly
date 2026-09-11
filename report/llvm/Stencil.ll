Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Stencil?download=true
inline.NumInlined: 1685
inline.NumDeleted: 830
begin_hunk_0_@_ZN4llvm11raw_ostream13write_escapedENS_9StringRefEb

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #11

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_115SelectorStencilESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_115SelectorStencilESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #19, !inline_history !596
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_115SelectorStencilESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_115SelectorStencilESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12_GLOBAL__N_115SelectorStencilESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #19
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115SelectorStencilD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_115SelectorStencilE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115SelectorStencilD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_115SelectorStencilE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_115SelectorStencilD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #19, !inline_history !597 ; 0 uses
  br label %_ZN12_GLOBAL__N_115SelectorStencilD2Ev.exit

_ZN12_GLOBAL__N_115SelectorStencilD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_115SelectorStencil4evalERKN5clang12ast_matchers11MatchFinder11MatchResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %11 = alloca %"class.std::unique_ptr.974", align 8 ; 5 uses
  %12 = alloca %"class.std::unique_ptr.974", align 8 ; 5 uses
  %13 = alloca %"class.llvm::Expected", align 8   ; 10 uses
  %14 = alloca %"class.clang::CharSourceRange", align 8 ; 6 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 8 uses
  %17 = alloca %"class.llvm::Error", align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38, !noalias !617
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEclES9_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #20, !noalias !617
  unreachable

_ZNKSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEclES9_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37, !noalias !617
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2) #19, !inline_history !600
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEclES9_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.k = load i64, ptr %13, align 8, !tbaa !70, !noalias !618
  %i.l = inttoptr i64 %i.k to ptr
  store ptr null, ptr %13, align 8, !tbaa !70, !noalias !618
  store ptr %i.l, ptr %0, align 8, !tbaa !58, !alias.scope !618
  br label %bb.r

bb.c:                                             ; preds = %_ZNKSt8functionIFN4llvm8ExpectedIN5clang15CharSourceRangeEEERKNS2_12ast_matchers11MatchFinder11MatchResultEEEclES9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %.sroa.012.0.copyload = load i64, ptr %13, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.213.0.copyload = load i8, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !619
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !620
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !481, !nonnull !482, !align !483
  %i.s = call { i64, i8 } @_ZN5clang5Lexer17makeFileCharRangeENS_15CharSourceRangeERKNS_13SourceManagerERKNS_11LangOptionsE(i64 %.sroa.012.0.copyload, i8 %.sroa.213.0.copyload, ptr noundef nonnull align 8 dereferenceable(776) %i.n, ptr noundef nonnull align 8 dereferenceable(1136) %i.r) #19 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.s, 0 ; 3 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.s, 1
  store i64 %.fca.0.extract, ptr %14, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i8 %.fca.1.extract, ptr %.sroa.28.0..sroa_idx, align 8
  %i.t = and i64 %.fca.0.extract, 4294967295
  %i.u = icmp eq i64 %i.t, 0
  %i.v = icmp ult i64 %.fca.0.extract, 4294967296
  %.not2.i = or i1 %i.u, %i.v
  br i1 %.not2.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !620
  call void @_ZN5clang7tooling13validateRangeERKNS_15CharSourceRangeERKNS_13SourceManagerEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %15, ptr noundef nonnull align 4 dereferenceable(9) %13, ptr noundef nonnull align 8 dereferenceable(776) %i.w, i1 noundef zeroext true) #19
  %i.x = load ptr, ptr %15, align 8, !tbaa !58    ; 8 uses
  %.not53 = icmp eq ptr %i.x, null
  br i1 %.not53, label %_ZN4llvm5ErrorD2Ev.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %15, align 8, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28, !noalias !621
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !621
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #19, !noalias !621, !inline_history !605
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !58, !alias.scope !621
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !485, !noalias !621 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !485, !noalias !621 ; 2 uses
  %.not1112.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not1112.i, label %_ZN4llvm5ErrorD2Ev.exit.sink.split, label %_ZN4llvm5ErrorD2Ev.exit7.i

_ZN4llvm5ErrorD2Ev.exit7.i:                       ; preds = %bb.f, %_ZN4llvm5ErrorD2Ev.exit9.i
  %i.ag = phi ptr [ %i.ai, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ null, %bb.f ]
  %.sroa.01.013.i = phi ptr [ %i.ax, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ %i.ad, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !621
  store ptr %i.ag, ptr %9, align 8, !tbaa !58, !noalias !621
  %i.ah = load i64, ptr %.sroa.01.013.i, align 8, !tbaa !70, !noalias !621
  store i64 %i.ah, ptr %11, align 8, !tbaa !70, !noalias !621
  store ptr null, ptr %.sroa.01.013.i, align 8, !tbaa !70, !noalias !621
  call fastcc void @_ZN4llvm15handleErrorImplIZNK12_GLOBAL__N_115SelectorStencil4evalERKN5clang12ast_matchers11MatchFinder11MatchResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt10unique_ptrINS_11StringErrorESt14default_deleteISH_EEE_JEEENS_5ErrorESG_INS_13ErrorInfoBaseESI_ISN_EEOT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %10, ptr nofree noundef align 8 dereferenceable(8) %11), !noalias !621
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr nofree noundef nonnull align 8 dereferenceable(8) %10), !noalias !621
  %i.ai = load ptr, ptr %8, align 8, !tbaa !58, !noalias !621 ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !58, !noalias !621
  %i.aj = load ptr, ptr %10, align 8, !tbaa !58, !noalias !621 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4llvm5ErrorD2Ev.exit8.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !28, !noalias !621
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !621
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #19, !noalias !621, !inline_history !606
  br label %_ZN4llvm5ErrorD2Ev.exit8.i

_ZN4llvm5ErrorD2Ev.exit8.i:                       ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.ao = load ptr, ptr %11, align 8, !tbaa !70, !noalias !621 ; 3 uses
  %.not.i.i25 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i26, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28, !noalias !621
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !621
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #19, !noalias !621, !inline_history !607
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i26

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i26: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.as = load ptr, ptr %9, align 8, !tbaa !58, !noalias !621 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4llvm5ErrorD2Ev.exit9.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i26
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !28, !noalias !621
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !621
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #19, !noalias !621, !inline_history !606
  br label %_ZN4llvm5ErrorD2Ev.exit9.i

_ZN4llvm5ErrorD2Ev.exit9.i:                       ; preds = %bb.h, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !621
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.01.013.i, i64 8 ; 2 uses
  %.not11.i = icmp eq ptr %i.ax, %i.af
  br i1 %.not11.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit, label %_ZN4llvm5ErrorD2Ev.exit7.i

bb.i:                                             ; preds = %bb.e
  %i.ay = ptrtoint ptr %i.x to i64
  store i64 %i.ay, ptr %12, align 8, !tbaa !70, !noalias !621
  call fastcc void @_ZN4llvm15handleErrorImplIZNK12_GLOBAL__N_115SelectorStencil4evalERKN5clang12ast_matchers11MatchFinder11MatchResultEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlSt10unique_ptrINS_11StringErrorESt14default_deleteISH_EEE_JEEENS_5ErrorESG_INS_13ErrorInfoBaseESI_ISN_EEOT_DpOT0_(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef align 8 dereferenceable(8) %12)
  %i.az = load ptr, ptr %12, align 8, !tbaa !70, !noalias !621 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.az, null
  br i1 %.not.i10.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm5ErrorD2Ev.exit.sink.split

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit: ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i
  store ptr %i.ai, ptr %0, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit.sink.split

_ZN4llvm5ErrorD2Ev.exit.sink.split:               ; preds = %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit, %bb.i
  %.sink75 = phi ptr [ %i.az, %bb.i ], [ %i.x, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit ], [ %i.x, %bb.f ] ; 2 uses
  %i.ba = load ptr, ptr %.sink75, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %.sink75) #19
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm5ErrorD2Ev.exit.sink.split, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.bd = load ptr, ptr %15, align 8, !tbaa !58   ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN4llvm5ErrorD2Ev.exit27, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #19, !inline_history !608
  br label %_ZN4llvm5ErrorD2Ev.exit27

_ZN4llvm5ErrorD2Ev.exit27:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.q

_ZN4llvm5ErrorD2Ev.exit28:                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !622
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bj, ptr %7, align 8, !tbaa !17, !noalias !622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !622
  store i64 60, ptr %i.b, align 8, !tbaa !19, !noalias !622
  %i.bk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #19, !noalias !622 ; 3 uses
  store ptr %i.bk, ptr %7, align 8, !tbaa !21, !noalias !622
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !19, !noalias !622 ; 3 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !22, !noalias !622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.bk, ptr noundef nonnull align 1 dereferenceable(60) @.str.10, i64 60, i1 false), !noalias !622
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !23, !noalias !622
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !22, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !622
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 22, ptr nonnull %i.bi) #19
  %i.bo = load ptr, ptr %7, align 8, !tbaa !21, !noalias !622 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bj
  br i1 %i.bp, label %_ZN4llvm17createStringErrorESt10error_codePKc.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit28
  %i.bq = load i64, ptr %i.bj, align 8, !tbaa !22, !noalias !622
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #22
  br label %_ZN4llvm17createStringErrorESt10error_codePKc.exit

_ZN4llvm17createStringErrorESt10error_codePKc.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !622
  br label %bb.q

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !620
  call void @_ZN5clang7tooling13validateRangeERKNS_15CharSourceRangeERKNS_13SourceManagerEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %16, ptr noundef nonnull align 4 dereferenceable(9) %14, ptr noundef nonnull align 8 dereferenceable(776) %i.bs, i1 noundef zeroext true) #19
  %i.bt = load ptr, ptr %16, align 8, !tbaa !58
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit39, label %._crit_edge.i.i.i30

._crit_edge.i.i.i30:                              ; preds = %bb.k
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !623
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bv, ptr %6, align 8, !tbaa !17, !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !623
  store i64 39, ptr %i.a, align 8, !tbaa !19, !noalias !623
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19, !noalias !623 ; 3 uses
  store ptr %i.bw, ptr %6, align 8, !tbaa !21, !noalias !623
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !19, !noalias !623 ; 3 uses
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !22, !noalias !623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.bw, ptr noundef nonnull align 1 dereferenceable(39) @.str.11, i64 39, i1 false), !noalias !623
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !23, !noalias !623
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !22, !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !623
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 22, ptr nonnull %i.bu) #19
  %i.ca = load ptr, ptr %6, align 8, !tbaa !21, !noalias !623 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bv
  br i1 %i.cb, label %_ZN4llvm17createStringErrorESt10error_codePKc.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %._crit_edge.i.i.i30
  %i.cc = load i64, ptr %i.bv, align 8, !tbaa !22, !noalias !623
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #22
  br label %_ZN4llvm17createStringErrorESt10error_codePKc.exit34

_ZN4llvm17createStringErrorESt10error_codePKc.exit34: ; preds = %._crit_edge.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !623
  %i.ce = load ptr, ptr %16, align 8, !tbaa !58
  store ptr null, ptr %16, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cf = load ptr, ptr %17, align 8, !tbaa !58, !noalias !624
  store ptr %i.cf, ptr %4, align 8, !tbaa !58, !noalias !624
  store ptr null, ptr %17, align 8, !tbaa !58, !noalias !624
  store ptr %i.ce, ptr %5, align 8, !tbaa !58, !noalias !624
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cg = load ptr, ptr %5, align 8, !tbaa !58, !noalias !624 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZN4llvm5ErrorD2Ev.exit.i35, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm17createStringErrorESt10error_codePKc.exit34
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #19, !inline_history !615
  br label %_ZN4llvm5ErrorD2Ev.exit.i35

_ZN4llvm5ErrorD2Ev.exit.i35:                      ; preds = %bb.l, %_ZN4llvm17createStringErrorESt10error_codePKc.exit34
  %i.cl = load ptr, ptr %4, align 8, !tbaa !58, !noalias !624 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm5ErrorD2Ev.exit36, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i35
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #19, !inline_history !615
  br label %_ZN4llvm5ErrorD2Ev.exit36

_ZN4llvm5ErrorD2Ev.exit36:                        ; preds = %bb.m, %_ZN4llvm5ErrorD2Ev.exit.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cq = load ptr, ptr %17, align 8, !tbaa !58   ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4llvm5ErrorD2Ev.exit37, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit36
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cq) #19, !inline_history !608
  br label %_ZN4llvm5ErrorD2Ev.exit37

_ZN4llvm5ErrorD2Ev.exit37:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit36, %bb.n
  %i.cv = load ptr, ptr %16, align 8, !tbaa !58   ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4llvm5ErrorD2Ev.exit38, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit37
  %i.cx = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cv) #19, !inline_history !608
  br label %_ZN4llvm5ErrorD2Ev.exit38

_ZN4llvm5ErrorD2Ev.exit38:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit37, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.q

_ZN4llvm5ErrorD2Ev.exit39:                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %.sroa.02.0.copyload = load i64, ptr %14, align 8
  %.sroa.23.0.copyload = load i8, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !619
  %i.da = load ptr, ptr %i.o, align 8, !tbaa !85
  %i.db = call { ptr, i64 } @_ZN5clang7tooling7getTextENS_15CharSourceRangeERKNS_10ASTContextE(i64 %.sroa.02.0.copyload, i8 %.sroa.23.0.copyload, ptr noundef nonnull align 8 dereferenceable(23904) %i.da) #19 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 1      ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !23
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.p, label %_ZN4llvm5ErrorD2Ev.exit40

bb.p:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

_ZN4llvm5ErrorD2Ev.exit40:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit39
  %i.dh = extractvalue { ptr, i64 } %i.db, 0
  %i.di = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.dh, i64 noundef %i.dc) #19 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !58
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit38, %_ZN4llvm5ErrorD2Ev.exit27, %_ZN4llvm5ErrorD2Ev.exit40, %_ZN4llvm17createStringErrorESt10error_codePKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %.pre = load i8, ptr %i.h, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.dj = phi i8 [ %.pre, %bb.q ], [ %i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %i.dk = trunc i8 %i.dj to i1
  br i1 %i.dk, label %bb.s, label %_ZN4llvm8ExpectedIN5clang15CharSourceRangeEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %13, align 8, !tbaa !70   ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i42, label %_ZN4llvm8ExpectedIN5clang15CharSourceRangeEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i43

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i43: ; preds = %bb.s
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
end_hunk_0
