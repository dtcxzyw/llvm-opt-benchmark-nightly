Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFVCRuntimeSupport?download=true
inline.NumInlined: 1452
inline.NumDeleted: 839
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZZN4llvm3orc25COFFVCRuntimeBootstrapper13loadVCRuntimeERNS0_8JITDylibERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EENS_8ArrayRefINS_9StringRefEEESG_ENK3$_0clENS_11SmallStringILj256EEESF_":bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !73
  store ptr %3, ptr %6, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.d, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i16 257, ptr %i.g, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.h, ptr %i.k, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.l, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99, !nonnull !101, !align !102
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %.not.i.i = icmp ult i64 %i.q, %i.s
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseIcLb1EE15growAndPushBackEc(ptr noundef nonnull align 8 dereferenceable(280) %2, i8 noundef signext 0)
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !45
  %i.t = add i64 %.pre.i, -1
  br label %_ZN4llvm11SmallStringILj256EE5c_strEv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %2, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q
  store i8 0, ptr %i.v, align 1
  %i.w = load i64, ptr %i.p, align 8, !tbaa !45
  br label %_ZN4llvm11SmallStringILj256EE5c_strEv.exit

_ZN4llvm11SmallStringILj256EE5c_strEv.exit:       ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.t, %bb.b ], [ %i.w, %bb.c ]
  store i64 %i.x, ptr %i.p, align 8, !tbaa !45
  %i.y = load ptr, ptr %2, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store i64 0, ptr %i.aa, align 8
  store ptr %10, ptr %12, align 8, !tbaa !103
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEEC1INS_3orc21COFFImportFileScannerESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S6_RS7_mE_8__invokeESH_S6_SI_m, ptr %i.z, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  call void @_ZN4llvm3orc32StaticLibraryDefinitionGenerator4LoadERNS0_11ObjectLayerEPKcNS_15unique_functionIFNS_8ExpectedIbEERNS_6object7ArchiveENS_15MemoryBufferRefEmEEENS6_IFNS7_INS0_19MaterializationUnit9InterfaceEEERNS0_16ExecutionSessionESC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.136") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.y, ptr nofree noundef nonnull align 8 dereferenceable(40) %12, ptr nofree noundef nonnull align 8 dereferenceable(40) %13) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !107 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallStringILj256EE5c_strEv.exit
  call void %i.ac(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %13) #18, !inline_history !109
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit: ; preds = %_ZN4llvm11SmallStringILj256EE5c_strEv.exit, %bb.d
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ad, null
  br i1 %.not.i3, label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit
  call void %i.ad(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %12) #18, !inline_history !111
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedINS_3orc19MaterializationUnit9InterfaceEEEJRNS3_16ExecutionSessionENS_15MemoryBufferRefEEED2Ev.exit, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %_ZN4llvm5ErrorD2Ev.exit.thread, label %bb.f

_ZN4llvm5ErrorD2Ev.exit.thread:                   ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit
  %i.ah = load i64, ptr %11, align 8, !tbaa !50, !noalias !112
  %i.ai = inttoptr i64 %i.ah to ptr
  store ptr %i.ai, ptr %0, align 8, !tbaa !30
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS3_EEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_8ExpectedIbEEJRNS_6object7ArchiveENS_15MemoryBufferRefEmEED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115, !nonnull !101, !align !102 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertISt23_Rb_tree_const_iteratorIS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr %i.as, ptr %i.an, ptr nonnull %i.h)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !116, !nonnull !101, !align !102 ; 2 uses
  %i.av = load i64, ptr %11, align 8, !tbaa !117
  store i64 %i.av, ptr %14, align 8, !tbaa !117
  store ptr null, ptr %11, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !119, !nonnull !101, !align !102
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %i.au, ptr %5, align 8, !tbaa !151
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %14, ptr %i.ay, align 8, !tbaa !154
  call void @_ZN4llvm3orc16ExecutionSession16runSessionLockedIZNS0_8JITDylib12addGeneratorINS0_32StaticLibraryDefinitionGeneratorEEERT_St10unique_ptrIS6_St14default_deleteIS6_EEEUlvE_EEDcOS6_(ptr noundef nonnull align 8 dereferenceable(392) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.az = load ptr, ptr %14, align 8, !tbaa !117  ; 3 uses
  %.not.i4 = icmp eq ptr %i.az, null
  br i1 %.not.i4, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3orc32StaticLibraryDefinitionGeneratorEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm3orc32StaticLibraryDefinitionGeneratorEEclEPS2_.exit.i: ; preds = %bb.f
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(224) %i.az) #18, !inline_history !155
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.f, %_ZNKSt14default_deleteIN4llvm3orc32StaticLibraryDefinitionGeneratorEEclEPS2_.exit.i
  %.pr = load ptr, ptr %11, align 8, !tbaa !37    ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !30
  %.not.i1.i = icmp eq ptr %.pr, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS3_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit.sink.split.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.bd = load ptr, ptr %.pr, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #18, !inline_history !156
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS3_EEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit.thread, %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt10unique_ptrIN4llvm3orc32StaticLibraryDefinitionGeneratorESt14default_deleteIS2_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !95
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc25COFFVCRuntimeBootstrapper25initializeStaticVCRuntimeERNS0_8JITDylibE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(272) %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %3 = alloca %"class.llvm::DenseMap.120", align 16 ; 9 uses
  %4 = alloca %class.anon.224, align 8            ; 6 uses
  %5 = alloca %"class.llvm::Expected.107", align 8 ; 6 uses
  %6 = alloca %"class.llvm::Expected.107", align 8 ; 6 uses
  %7 = alloca %"class.llvm::Expected.107", align 8 ; 6 uses
  %8 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 5 uses
  %9 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 5 uses
  %10 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 5 uses
  %11 = alloca %"class.llvm::orc::ExecutorAddr", align 8 ; 5 uses
  %12 = alloca %"class.std::vector.88", align 8   ; 7 uses
  %13 = alloca %"class.std::vector.100", align 8  ; 7 uses
  %14 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %15 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %16 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %17 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %18 = alloca %"class.llvm::Expected.107", align 8 ; 7 uses
  %19 = alloca %"class.llvm::DenseMap.120", align 8 ; 9 uses
  %20 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 4 uses
  %21 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 5 uses
  %22 = alloca %"class.std::unique_ptr.122", align 8 ; 6 uses
  %23 = alloca %"class.llvm::DenseMap.120", align 16 ; 9 uses
  %24 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i64 0, ptr %8, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 0, ptr %9, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i64 0, ptr %10, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  store i64 0, ptr %11, align 8, !tbaa !157
  %i.a = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !101, !align !102
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17, !noalias !160 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !noalias !160
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !160
  store ptr %i.e, ptr %i.d, align 8, !tbaa !163, !alias.scope !160
  %.pre = load ptr, ptr %1, align 8, !tbaa !159
  store ptr %i.e, ptr %i.b, align 8, !alias.scope !160
  store ptr %i.c, ptr %12, align 8, !alias.scope !160
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164, !noalias !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169, !noalias !174
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr nonnull @.str.11, i64 21)
  %i.j = load ptr, ptr %14, align 8, !tbaa !177   ; 4 uses
  store ptr null, ptr %14, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.k = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !101, !align !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164, !noalias !179
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169, !noalias !182
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr nonnull @.str.12, i64 34)
  %i.p = load ptr, ptr %15, align 8, !tbaa !177   ; 4 uses
  store ptr null, ptr %15, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.q = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !101, !align !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !164, !noalias !185
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !169, !noalias !188
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr nonnull @.str.13, i64 35)
  %i.v = load ptr, ptr %16, align 8, !tbaa !177   ; 4 uses
  store ptr null, ptr %16, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.w = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !101, !align !102
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164, !noalias !191
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169, !noalias !194
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr nonnull @.str.14, i64 45)
  %i.ab = load ptr, ptr %17, align 8, !tbaa !177  ; 4 uses
  store ptr null, ptr %17, align 8, !tbaa !177
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 11 uses
  store ptr %i.ad, ptr %13, align 8, !tbaa !197
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !200
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !201
  %i.ag = ptrtoint ptr %i.j to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.ag, -1
  %i.ah = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32 ; 2 uses
  br i1 %i.ah, label %bb.a, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %8, ptr %i.ak, align 8, !tbaa !203
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.p, ptr %i.al, align 8, !tbaa !201
  %i.am = ptrtoint ptr %i.p to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.1 = add i64 %i.am, -1
  %i.an = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.1, -32 ; 2 uses
  br i1 %i.an, label %bb.b, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.b:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.b, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %9, ptr %i.aq, align 8, !tbaa !203
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.v, ptr %i.ar, align 8, !tbaa !201
  %i.as = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.2 = add i64 %i.as, -1
  %i.at = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.2, -32 ; 2 uses
  br i1 %i.at, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

bb.c:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.av = atomicrmw add ptr %i.au, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2: ; preds = %bb.c, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %10, ptr %i.aw, align 8, !tbaa !203
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store ptr %i.ab, ptr %i.ax, align 8, !tbaa !201
  %i.ay = ptrtoint ptr %i.ab to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.3 = add i64 %i.ay, -1
  %i.az = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.3, -32 ; 2 uses
  br i1 %i.az, label %bb.d, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3

bb.d:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3: ; preds = %bb.d, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %11, ptr %i.bc, align 8, !tbaa !203
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !207
  call void @_ZN4llvm3orc20lookupAndRecordAddrsERNS0_16ExecutionSessionENS0_10LookupKindERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS9_EES4_IS5_INS0_15SymbolStringPtrEPNS0_12ExecutorAddrEESaISH_EENS0_17SymbolLookupFlagsE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.a, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, i32 noundef 0) #18
  %i.bf = load ptr, ptr %13, align 8, !tbaa !197  ; 3 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !207 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bm, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i ], [ %i.bf, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3 ] ; 2 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !201 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.bi, -1
  %i.bj = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.bj, label %bb.e, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bm, %i.bg
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !208

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !197
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3
  %i.bn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i ], [ %i.bf, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !200
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #19
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, %bb.f
  br i1 %i.az, label %bb.g, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, %bb.g
  br i1 %i.at, label %bb.h, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1

bb.h:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1: ; preds = %bb.h, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit
  br i1 %i.an, label %bb.i, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2

bb.i:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2: ; preds = %bb.i, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1
  br i1 %i.ah, label %bb.j, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.3

bb.j:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bz = atomicrmw sub ptr %i.by, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.3

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.3: ; preds = %bb.j, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2
  %i.ca = load ptr, ptr %17, align 8, !tbaa !201  ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %notsub.i.i.i = add i64 %i.cb, -1
  %i.cc = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.cc, label %bb.k, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.k:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.3, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.cf = load ptr, ptr %16, align 8, !tbaa !201  ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %notsub.i.i.i36 = add i64 %i.cg, -1
  %i.ch = icmp ult i64 %notsub.i.i.i36, -32
  br i1 %i.ch, label %bb.l, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit37

bb.l:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit37

end_hunk_0
