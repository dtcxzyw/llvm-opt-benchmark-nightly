Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ChainedPointerAnalysis?download=true
inline.NumInlined: 2758
inline.NumDeleted: 734
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4LIEF5MachOlsERSoRKNS0_22ChainedPointerAnalysis34dyld_chained_ptr_32_cache_rebase_tE:_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.b:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !335
  store i64 %i.n, ptr %i.a, align 8, !tbaa !52, !noalias !335
  %i.t = icmp samesign ugt i64 %i.n, 15
  br i1 %i.t, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !65, !alias.scope !335
  %i.v = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !335
  store i64 %i.v, ptr %i.q, align 8, !tbaa !43, !alias.scope !335
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.u, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %i.p, align 1, !tbaa !43
  store i8 %i.x, ptr %i.w, align 1, !tbaa !43
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.p, i64 %i.n, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !335 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !66, !alias.scope !335
  %i.aa = load ptr, ptr %5, align 8, !tbaa !65, !alias.scope !335
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !335
  %i.ac = load ptr, ptr %3, align 8, !tbaa !49, !noalias !333 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ac) #23
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !332
  %i.ad = load ptr, ptr %5, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !66
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ad, i64 noundef %i.ae) #23 ; 0 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !43
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF5MachOlsERSoRKNS0_22ChainedPointerAnalysis37dyld_chained_ptr_32_firmware_rebase_tE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.465", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1079", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = and i32 %i.b, 67108863
  %i.d = lshr i32 %i.b, 26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !342
  store i32 %i.c, ptr %4, align 16, !tbaa !43, !noalias !342
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.d, ptr %i.e, align 16, !tbaa !43, !noalias !342
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !343
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !noalias !343
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !48, !noalias !343
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !49, !noalias !343
  store i64 500, ptr %i.f, align 8, !tbaa !50, !noalias !343
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !343
  store ptr @.str.11, ptr %2, align 8, !tbaa !51, !noalias !343
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !52, !noalias !343
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !55, !noalias !343
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.k, align 8, !tbaa !57, !noalias !343
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 34, ptr %i.l, align 8, !tbaa !59, !noalias !343
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !43, !noalias !343
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !60, !noalias !343
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.11, i64 28, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !343
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.n = load i64, ptr %i.h, align 8, !tbaa !61, !noalias !345 ; 6 uses
  %i.o = icmp ult i64 %i.n, 4611686018427387903
  call void @llvm.assume(i1 %i.o)
  %i.p = load ptr, ptr %3, align 8, !tbaa !49, !noalias !345 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !63, !alias.scope !345
  %i.r = icmp eq ptr %i.p, null
  %i.s = icmp ne i64 %i.n, 0
  %or.cond.i.i.i = and i1 %i.s, %i.r
  br i1 %or.cond.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #24
  unreachable

bb.b:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !345
  store i64 %i.n, ptr %i.a, align 8, !tbaa !52, !noalias !345
  %i.t = icmp samesign ugt i64 %i.n, 15
  br i1 %i.t, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !65, !alias.scope !345
  %i.v = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !345
  store i64 %i.v, ptr %i.q, align 8, !tbaa !43, !alias.scope !345
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.w = phi ptr [ %i.u, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.x = load i8, ptr %i.p, align 1, !tbaa !43
  store i8 %i.x, ptr %i.w, align 1, !tbaa !43
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.p, i64 %i.n, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !345 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !66, !alias.scope !345
  %i.aa = load ptr, ptr %5, align 8, !tbaa !65, !alias.scope !345
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !345
  %i.ac = load ptr, ptr %3, align 8, !tbaa !49, !noalias !343 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ac) #23
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !342
  %i.ad = load ptr, ptr %5, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !66
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ad, i64 noundef %i.ae) #23 ; 0 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.q
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !43
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF5MachOlsERSoRKNS0_22ChainedPointerAnalysis42dyld_chained_ptr_arm64e_segmented_rebase_tE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.465", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1080", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load i64, ptr %1, align 4                ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 268435455
  %6 = lshr i64 %i.b, 28
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 15
  %i.e = lshr i64 %i.b, 51
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 4095
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !352
  store i32 %i.d, ptr %4, align 16, !tbaa !43, !noalias !352
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %8, ptr %i.h, align 16, !tbaa !43, !noalias !352
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.g, ptr %i.i, align 16, !tbaa !43, !noalias !352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !353
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !noalias !353
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.k, align 8, !tbaa !48, !noalias !353
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !49, !noalias !353
  store i64 500, ptr %i.j, align 8, !tbaa !50, !noalias !353
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !353
  store ptr @.str.12, ptr %2, align 8, !tbaa !51, !noalias !353
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 55, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !52, !noalias !353
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !55, !noalias !353
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.o, align 8, !tbaa !57, !noalias !353
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 546, ptr %i.p, align 8, !tbaa !59, !noalias !353
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !43, !noalias !353
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.q, align 8, !tbaa !60, !noalias !353
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.12, i64 55, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !353
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.r = load i64, ptr %i.l, align 8, !tbaa !61, !noalias !355 ; 6 uses
  %i.s = icmp ult i64 %i.r, 4611686018427387903
  call void @llvm.assume(i1 %i.s)
  %i.t = load ptr, ptr %3, align 8, !tbaa !49, !noalias !355 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !63, !alias.scope !355
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp ne i64 %i.r, 0
  %or.cond.i.i.i = and i1 %i.w, %i.v
  br i1 %or.cond.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #24
  unreachable

bb.b:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !355
  store i64 %i.r, ptr %i.a, align 8, !tbaa !52, !noalias !355
  %i.x = icmp samesign ugt i64 %i.r, 15
  br i1 %i.x, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !65, !alias.scope !355
  %i.z = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !355
  store i64 %i.z, ptr %i.u, align 8, !tbaa !43, !alias.scope !355
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.aa = phi ptr [ %i.y, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !43
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !43
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.t, i64 %i.r, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !355 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !66, !alias.scope !355
  %i.ae = load ptr, ptr %5, align 8, !tbaa !65, !alias.scope !355
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !355
  %i.ag = load ptr, ptr %3, align 8, !tbaa !49, !noalias !353 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ag) #23
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !353
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !352
  %i.ah = load ptr, ptr %5, align 8, !tbaa !65
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ah, i64 noundef %i.ai) #23 ; 0 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.u
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.am = load i64, ptr %i.u, align 8, !tbaa !43
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF5MachOlsERSoRKNS0_22ChainedPointerAnalysis47dyld_chained_ptr_arm64e_auth_segmented_rebase_tE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 {
_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.fmt::v12::basic_memory_buffer.465", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.1081", align 16 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load i64, ptr %1, align 4                ; 7 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 268435455
  %6 = lshr i64 %i.b, 28
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 15
  %i.e = lshr i64 %i.b, 51
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 4095
  %i.h = lshr i64 %i.b, 48
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 1
  %i.k = lshr i64 %i.b, 49
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 3
  %i.n = lshr i64 %i.b, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = and i32 %i.o, 65535
  %i.q = lshr i64 %i.b, 63
  %i.r = trunc nuw nsw i64 %i.q to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !362
  store i32 %i.d, ptr %4, align 16, !tbaa !43, !noalias !362
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %8, ptr %i.s, align 16, !tbaa !43, !noalias !362
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.g, ptr %i.t, align 16, !tbaa !43, !noalias !362
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.j, ptr %i.u, align 16, !tbaa !43, !noalias !362
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %i.m, ptr %i.v, align 16, !tbaa !43, !noalias !362
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i32 %i.p, ptr %i.w, align 16, !tbaa !43, !noalias !362
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i32 %i.r, ptr %i.x, align 16, !tbaa !43, !noalias !362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !363
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !noalias !363
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.z, align 8, !tbaa !48, !noalias !363
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !49, !noalias !363
  store i64 500, ptr %i.y, align 8, !tbaa !50, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !363
  store ptr @.str.13, ptr %2, align 8, !tbaa !51, !noalias !363
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 101, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !52, !noalias !363
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !55, !noalias !363
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.ad, align 8, !tbaa !57, !noalias !363
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 35791394, ptr %i.ae, align 8, !tbaa !59, !noalias !363
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !43, !noalias !363
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.af, align 8, !tbaa !60, !noalias !363
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.13, i64 101, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !363
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !61, !noalias !365 ; 6 uses
  %i.ah = icmp ult i64 %i.ag, 4611686018427387903
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49, !noalias !365 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !63, !alias.scope !365
  %i.ak = icmp eq ptr %i.ai, null
  %i.al = icmp ne i64 %i.ag, 0
  %or.cond.i.i.i = and i1 %i.al, %i.ak
  br i1 %or.cond.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #24
  unreachable

bb.b:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !365
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !52, !noalias !365
  %i.am = icmp samesign ugt i64 %i.ag, 15
  br i1 %i.am, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #23 ; 2 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !65, !alias.scope !365
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !365
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !43, !alias.scope !365
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.ap = phi ptr [ %i.an, %bb.c ], [ %i.aj, %bb.b ] ; 2 uses
  switch i64 %i.ag, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !43
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !43
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ai, i64 %i.ag, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !52, !noalias !365 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !66, !alias.scope !365
  %i.at = load ptr, ptr %5, align 8, !tbaa !65, !alias.scope !365
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !365
  %i.av = load ptr, ptr %3, align 8, !tbaa !49, !noalias !363 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ab
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.av) #23
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !362
  %i.aw = load ptr, ptr %5, align 8, !tbaa !65
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !66
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aw, i64 noundef %i.ax) #23 ; 0 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !65    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aj
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bb = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZNK4LIEF5MachO22ChainedPointerAnalysis6get_asENS0_23DYLD_CHAINED_PTR_FORMATE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i32 %1, label %.critedge6 [
    i32 1, label %bb.b
    i32 7, label %bb.b
    i32 9, label %bb.b
    i32 12, label %bb.b
    i32 2, label %bb.g
    i32 6, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 8, label %bb.k
    i32 14, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8 ; 7 uses
  %.not32 = icmp sgt i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not32, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = and i64 %.sroa.0.0.copyload.i, 4611686018427387904
  %.not33 = icmp eq i64 %i.a, 0
  br i1 %.not33, label %.critedge6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = icmp eq i32 %1, 12
  %. = select i1 %i.b, i64 7, i64 4
  br label %.critedge6

bb.e:                                             ; preds = %bb.b
  %.not37 = icmp samesign ult i64 %.sroa.0.0.copyload.i, 4611686018427387904
  br i1 %.not37, label %.critedge6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = icmp eq i32 %1, 12
  %.96 = select i1 %i.c, i64 6, i64 2
  br label %.critedge6

bb.g:                                             ; preds = %bb.a, %bb.a
  %.sroa.0.0.copyload.i58 = load i64, ptr %0, align 8 ; 2 uses
  %.not31 = icmp sgt i64 %.sroa.0.0.copyload.i58, -1
  %.97 = select i1 %.not31, i64 5, i64 8
  br label %.critedge6

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i63 = load i32, ptr %0, align 8 ; 2 uses
  %.not30 = icmp sgt i32 %.sroa.0.0.copyload.i63, -1
  %.sroa.2.8.insert.ext.i67 = zext i32 %.sroa.0.0.copyload.i63 to i64
  %.98 = select i1 %.not30, i64 10, i64 11
  br label %.critedge6

bb.i:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i69 = load i32, ptr %0, align 8
  %.sroa.2.8.insert.ext.i70 = zext i32 %.sroa.0.0.copyload.i69 to i64
  br label %.critedge6

bb.j:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i72 = load i32, ptr %0, align 8
  %.sroa.2.8.insert.ext.i73 = zext i32 %.sroa.0.0.copyload.i72 to i64
  br label %.critedge6

bb.k:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i75 = load i64, ptr %0, align 8
  br label %.critedge6

bb.l:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i77 = load i64, ptr %0, align 8 ; 2 uses
  %.not = icmp sgt i64 %.sroa.0.0.copyload.i77, -1
  %.99 = select i1 %.not, i64 14, i64 15
  br label %.critedge6

.critedge6:                                       ; preds = %bb.l, %bb.h, %bb.g, %bb.e, %bb.f, %bb.c, %bb.d, %bb.a, %bb.k, %bb.j, %bb.i
  %.sroa.019.0 = phi i64 [ 0, %bb.a ], [ %., %bb.d ], [ %.99, %bb.l ], [ 9, %bb.k ], [ 12, %bb.i ], [ 13, %bb.j ], [ %.96, %bb.f ], [ 3, %bb.c ], [ %.97, %bb.g ], [ 1, %bb.e ], [ %.98, %bb.h ]
  %.sroa.18.0 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.copyload.i, %bb.d ], [ %.sroa.0.0.copyload.i77, %bb.l ], [ %.sroa.0.0.copyload.i75, %bb.k ], [ %.sroa.2.8.insert.ext.i70, %bb.i ], [ %.sroa.2.8.insert.ext.i73, %bb.j ], [ %.sroa.0.0.copyload.i, %bb.f ], [ %.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.0.0.copyload.i58, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.e ], [ %.sroa.2.8.insert.ext.i67, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.18.0, 1
  ret { i64, i64 } %.fca.1.insert
}

end_hunk_0
