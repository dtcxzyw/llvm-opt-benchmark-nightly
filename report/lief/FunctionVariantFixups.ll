Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/FunctionVariantFixups?download=true
inline.NumInlined: 2915
inline.NumDeleted: 874
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !347, !noalias !345 ; 2 uses
  %i.go = ptrtoint ptr %.08.i.i.i to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.gn, i64 noundef %i.gq) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.ac:                                            ; preds = %bb.aa
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ab, %bb.ac
  %i.gs = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gs, ptr %14, align 8, !tbaa !54
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gu = getelementptr i8, ptr %i.gs, i64 -24
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds i8, ptr %14, i64 %i.gv
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !54
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !54
  %i.gx = load ptr, ptr %i.w, align 8, !tbaa !92  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.x
  br i1 %i.gy, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.gz = load i64, ptr %i.x, align 8, !tbaa !76
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !54
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO21FunctionVariantFixups5printERSo(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 18 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 18 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 22 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer.466", align 8 ; 10 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.1114", align 16 ; 14 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.1106", align 16 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO11LoadCommand5printERSo(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !76
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !371
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c, i64 noundef 1) #24 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 10) #24 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !109, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !373
  store i64 %i.t, ptr %7, align 16, !tbaa !76, !noalias !373
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !374
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !noalias !374
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.v, align 8, !tbaa !94, !noalias !374
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !95, !noalias !374
  store i64 500, ptr %i.u, align 8, !tbaa !96, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !374
  store ptr @.str.5, ptr %3, align 8, !tbaa !97, !noalias !374
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !73, !noalias !374
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !100, !noalias !374
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %5, ptr %i.z, align 8, !tbaa !102, !noalias !374
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 4, ptr %i.aa, align 8, !tbaa !104, !noalias !374
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !76, !noalias !374
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !105, !noalias !374
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.5, i64 15, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !374
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !106, !noalias !376 ; 6 uses
  %i.ad = icmp ult i64 %i.ac, 4611686018427387903
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !95, !noalias !376 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !90, !alias.scope !376
  %i.ag = icmp eq ptr %i.ae, null
  %i.ah = icmp ne i64 %i.ac, 0
  %or.cond.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #25
  unreachable

bb.e:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !376
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !73, !noalias !376
  %i.ai = icmp samesign ugt i64 %i.ac, 15
  br i1 %i.ai, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.aj, ptr %8, align 8, !tbaa !92, !alias.scope !376
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !73, !noalias !376
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !76, !alias.scope !376
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.al = phi ptr [ %i.aj, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  switch i64 %i.ac, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !76
  store i8 %i.am, ptr %i.al, align 1, !tbaa !76
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ae, i64 %i.ac, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.an = load i64, ptr %i.b, align 8, !tbaa !73, !noalias !376 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !91, !alias.scope !376
  %i.ap = load ptr, ptr %8, align 8, !tbaa !92, !alias.scope !376
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !376
  %i.ar = load ptr, ptr %5, align 8, !tbaa !95, !noalias !374 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.x
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ar) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !373
  %i.as = load ptr, ptr %8, align 8, !tbaa !92
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !91
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.as, i64 noundef %i.at) #24 ; 0 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !76
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ba
  br i1 %.not, label %._crit_edge, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.lr.ph

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.lr.ph: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %.sroa.2.0..sroa_idx.i16.i17 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i17.i18 = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !377
  store i64 0, ptr %6, align 16, !tbaa !76, !noalias !377
  %i.bp = load ptr, ptr %10, align 8, !tbaa !92, !noalias !377
  %i.bq = load i64, ptr %i.bc, align 8, !tbaa !91, !noalias !377
  store ptr %i.bp, ptr %i.bb, align 16, !tbaa !76, !noalias !377
  store i64 %i.bq, ptr %i.bd, align 8, !tbaa !76, !noalias !377
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !378
  store i64 0, ptr %i.bg, align 8, !noalias !378
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bf, align 8, !tbaa !94, !noalias !378
  store ptr %i.bh, ptr %4, align 8, !tbaa !95, !noalias !378
  store i64 500, ptr %i.be, align 8, !tbaa !96, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !378
  store ptr @.str.6, ptr %2, align 8, !tbaa !97, !noalias !378
  store i64 14, ptr %.sroa.2.0..sroa_idx.i16.i17, align 8, !tbaa !73, !noalias !378
  store i32 0, ptr %i.bi, align 8, !tbaa !100, !noalias !378
  store ptr %4, ptr %i.bj, align 8, !tbaa !102, !noalias !378
  store i64 212, ptr %i.bk, align 8, !tbaa !104, !noalias !378
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i18, align 8, !tbaa !76, !noalias !378
  store ptr null, ptr %i.bl, align 8, !tbaa !105, !noalias !378
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.6, i64 14, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !378
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.br = load i64, ptr %i.bg, align 8, !tbaa !106, !noalias !380 ; 6 uses
  %i.bs = icmp ult i64 %i.br, 4611686018427387903
  call void @llvm.assume(i1 %i.bs)
  %i.bt = load ptr, ptr %4, align 8, !tbaa !95, !noalias !380 ; 3 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !90, !alias.scope !380
  %i.bu = icmp eq ptr %i.bt, null
  %i.bv = icmp ne i64 %i.br, 0
  %or.cond.i.i.i6.peel = and i1 %i.bv, %i.bu
  br i1 %or.cond.i.i.i6.peel, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !380
  store i64 %i.br, ptr %i.a, align 8, !tbaa !73, !noalias !380
  %i.bw = icmp samesign ugt i64 %i.br, 15
  br i1 %i.bw, label %bb.k, label %._crit_edge.i.i.i.i7.peel

bb.k:                                             ; preds = %bb.j
  %i.bx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.bx, ptr %9, align 8, !tbaa !92, !alias.scope !380
  %i.by = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !380
  store i64 %i.by, ptr %i.bm, align 8, !tbaa !76, !alias.scope !380
  br label %._crit_edge.i.i.i.i7.peel

._crit_edge.i.i.i.i7.peel:                        ; preds = %bb.k, %bb.j
  %i.bz = phi ptr [ %i.bx, %bb.k ], [ %i.bm, %bb.j ] ; 2 uses
  switch i64 %i.br, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i7.peel
  %i.ca = load i8, ptr %i.bt, align 1, !tbaa !76
  store i8 %i.ca, ptr %i.bz, align 1, !tbaa !76
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel

bb.m:                                             ; preds = %._crit_edge.i.i.i.i7.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %i.bt, i64 %i.br, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i7.peel
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !380 ; 2 uses
  store i64 %i.cb, ptr %i.bn, align 8, !tbaa !91, !alias.scope !380
  %i.cc = load ptr, ptr %9, align 8, !tbaa !92, !alias.scope !380
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 0, ptr %i.cd, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !380
  %i.ce = load ptr, ptr %4, align 8, !tbaa !95, !noalias !378 ; 2 uses
  %.not.i.i.i9.peel = icmp eq ptr %i.ce, %i.bh
  br i1 %.not.i.i.i9.peel, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel, label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel
  call void @free(ptr noundef %i.ce) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel: ; preds = %bb.n, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !377
  %i.cf = load ptr, ptr %9, align 8, !tbaa !92
  %i.cg = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cf, i64 noundef %i.cg) #24 ; 0 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bm
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel
  %i.ck = load i64, ptr %i.bm, align 8, !tbaa !76
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel
  %11 = load i64, ptr %i.bn, align 8, !tbaa !91
  %12 = icmp ult i64 %11, 16
  call void @llvm.assume(i1 %12)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel
  %i.cm = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bo
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel
  %i.co = load i64, ptr %i.bo, align 8, !tbaa !76
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel
  %13 = load i64, ptr %i.bc, align 8, !tbaa !91
  %14 = icmp ult i64 %13, 16
  call void @llvm.assume(i1 %14)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.cq = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ugt i64 %i.cu, 32
  br i1 %i.cv, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.peel.next, label %._crit_edge

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  call void @_ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !377
  store i64 1, ptr %6, align 16, !tbaa !76, !noalias !377
  %i.cx = load ptr, ptr %10, align 8, !tbaa !92, !noalias !377
  %i.cy = load i64, ptr %i.bc, align 8, !tbaa !91, !noalias !377
  store ptr %i.cx, ptr %i.bb, align 16, !tbaa !76, !noalias !377
  store i64 %i.cy, ptr %i.bd, align 8, !tbaa !76, !noalias !377
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !381
  store i64 0, ptr %i.bg, align 8, !noalias !381
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bf, align 8, !tbaa !94, !noalias !381
  store ptr %i.bh, ptr %4, align 8, !tbaa !95, !noalias !381
  store i64 500, ptr %i.be, align 8, !tbaa !96, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !381
  store ptr @.str.6, ptr %2, align 8, !tbaa !97, !noalias !381
  store i64 14, ptr %.sroa.2.0..sroa_idx.i16.i17, align 8, !tbaa !73, !noalias !381
  store i32 0, ptr %i.bi, align 8, !tbaa !100, !noalias !381
  store ptr %4, ptr %i.bj, align 8, !tbaa !102, !noalias !381
  store i64 212, ptr %i.bk, align 8, !tbaa !104, !noalias !381
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i18, align 8, !tbaa !76, !noalias !381
  store ptr null, ptr %i.bl, align 8, !tbaa !105, !noalias !381
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.6, i64 14, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !381
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.cz = load i64, ptr %i.bg, align 8, !tbaa !106, !noalias !383 ; 6 uses
  %i.da = icmp ult i64 %i.cz, 4611686018427387903
  call void @llvm.assume(i1 %i.da)
  %i.db = load ptr, ptr %4, align 8, !tbaa !95, !noalias !383 ; 3 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !90, !alias.scope !383
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = icmp ne i64 %i.cz, 0
  %or.cond.i.i.i6.peel59 = and i1 %i.dd, %i.dc
  br i1 %or.cond.i.i.i6.peel59, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !383
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !73, !noalias !383
  %i.de = icmp samesign ugt i64 %i.cz, 15
  br i1 %i.de, label %bb.p, label %._crit_edge.i.i.i.i7.peel60

bb.p:                                             ; preds = %bb.o
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.df, ptr %9, align 8, !tbaa !92, !alias.scope !383
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !383
  store i64 %i.dg, ptr %i.bm, align 8, !tbaa !76, !alias.scope !383
  br label %._crit_edge.i.i.i.i7.peel60

._crit_edge.i.i.i.i7.peel60:                      ; preds = %bb.p, %bb.o
  %i.dh = phi ptr [ %i.df, %bb.p ], [ %i.bm, %bb.o ] ; 2 uses
  switch i64 %i.cz, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i7.peel60
  %i.di = load i8, ptr %i.db, align 1, !tbaa !76
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !76
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61

bb.r:                                             ; preds = %._crit_edge.i.i.i.i7.peel60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %i.db, i64 %i.cz, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61: ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i.i7.peel60
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !383 ; 2 uses
  store i64 %i.dj, ptr %i.bn, align 8, !tbaa !91, !alias.scope !383
  %i.dk = load ptr, ptr %9, align 8, !tbaa !92, !alias.scope !383
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dj
  store i8 0, ptr %i.dl, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !383
  %i.dm = load ptr, ptr %4, align 8, !tbaa !95, !noalias !381 ; 2 uses
  %.not.i.i.i9.peel62 = icmp eq ptr %i.dm, %i.bh
  br i1 %.not.i.i.i9.peel62, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel63, label %bb.s

bb.s:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61
  call void @free(ptr noundef %i.dm) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel63

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel63: ; preds = %bb.s, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8.peel61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !377
  %i.dn = load ptr, ptr %9, align 8, !tbaa !92
  %i.do = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.dn, i64 noundef %i.do) #24 ; 0 uses
  %i.dq = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.bm
  br i1 %i.dr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel64: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel63
  %i.ds = load i64, ptr %i.bm, align 8, !tbaa !76
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel65: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10.peel63
  %15 = load i64, ptr %i.bn, align 8, !tbaa !91
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel66: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.peel65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.peel64
  %i.du = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bo
  br i1 %i.dv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel66
  %i.dw = load i64, ptr %i.bo, align 8, !tbaa !76
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.peel66
  %17 = load i64, ptr %i.bc, align 8, !tbaa !91
  %18 = icmp ult i64 %17, 16
  call void @llvm.assume(i1 %18)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i15.peel68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.peel67
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ugt i64 %i.ec, 64
  br i1 %i.ed, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %1

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.ee = phi ptr [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69 ]
  %storemerge54 = phi i64 [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.peel69 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ef = getelementptr inbounds [32 x i8], ptr %i.ee, i64 %storemerge54
  call void @_ZNK4LIEF5MachO21FunctionVariantFixups5Fixup9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !377
  store i64 %storemerge54, ptr %6, align 16, !tbaa !76, !noalias !377
  %i.eg = load ptr, ptr %10, align 8, !tbaa !92, !noalias !377
  %i.eh = load i64, ptr %i.bc, align 8, !tbaa !91, !noalias !377
  store ptr %i.eg, ptr %i.bb, align 16, !tbaa !76, !noalias !377
  store i64 %i.eh, ptr %i.bd, align 8, !tbaa !76, !noalias !377
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !384
  store i64 0, ptr %i.bg, align 8, !noalias !384
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bf, align 8, !tbaa !94, !noalias !384
  store ptr %i.bh, ptr %4, align 8, !tbaa !95, !noalias !384
  store i64 500, ptr %i.be, align 8, !tbaa !96, !noalias !384
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !384
  store ptr @.str.6, ptr %2, align 8, !tbaa !97, !noalias !384
  store i64 14, ptr %.sroa.2.0..sroa_idx.i16.i17, align 8, !tbaa !73, !noalias !384
  store i32 0, ptr %i.bi, align 8, !tbaa !100, !noalias !384
  store ptr %4, ptr %i.bj, align 8, !tbaa !102, !noalias !384
  store i64 212, ptr %i.bk, align 8, !tbaa !104, !noalias !384
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i18, align 8, !tbaa !76, !noalias !384
  store ptr null, ptr %i.bl, align 8, !tbaa !105, !noalias !384
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.6, i64 14, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !384
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.ei = load i64, ptr %i.bg, align 8, !tbaa !106, !noalias !386 ; 6 uses
  %i.ej = icmp ult i64 %i.ei, 4611686018427387903
  call void @llvm.assume(i1 %i.ej)
  %i.ek = load ptr, ptr %4, align 8, !tbaa !95, !noalias !386 ; 3 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !90, !alias.scope !386
  %i.el = icmp eq ptr %i.ek, null
  %i.em = icmp ne i64 %i.ei, 0
  %or.cond.i.i.i6 = and i1 %i.em, %i.el
  br i1 %or.cond.i.i.i6, label %.loopexit, label %bb.t

.loopexit:                                        ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.peel.next, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22.lr.ph
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #25
  unreachable

bb.t:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !386
  store i64 %i.ei, ptr %i.a, align 8, !tbaa !73, !noalias !386
  %i.en = icmp samesign ugt i64 %i.ei, 15
  br i1 %i.en, label %bb.u, label %._crit_edge.i.i.i.i7

bb.u:                                             ; preds = %bb.t
  %i.eo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.eo, ptr %9, align 8, !tbaa !92, !alias.scope !386
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !386
  store i64 %i.ep, ptr %i.bm, align 8, !tbaa !76, !alias.scope !386
  br label %._crit_edge.i.i.i.i7

._crit_edge.i.i.i.i7:                             ; preds = %bb.u, %bb.t
  %i.eq = phi ptr [ %i.eo, %bb.u ], [ %i.bm, %bb.t ] ; 2 uses
  switch i64 %i.ei, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i7
  %i.er = load i8, ptr %i.ek, align 1, !tbaa !76
  store i8 %i.er, ptr %i.eq, align 1, !tbaa !76
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8

bb.w:                                             ; preds = %._crit_edge.i.i.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eq, ptr align 1 %i.ek, i64 %i.ei, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i7
  %i.es = load i64, ptr %i.a, align 8, !tbaa !73, !noalias !386 ; 2 uses
  store i64 %i.es, ptr %i.bn, align 8, !tbaa !91, !alias.scope !386
  %i.et = load ptr, ptr %9, align 8, !tbaa !92, !alias.scope !386
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.es
  store i8 0, ptr %i.eu, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !386
  %i.ev = load ptr, ptr %4, align 8, !tbaa !95, !noalias !384 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ev, %i.bh
  br i1 %.not.i.i.i9, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10, label %bb.x

bb.x:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8
  call void @free(ptr noundef %i.ev) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i8, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !384
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !377
  %i.ew = load ptr, ptr %9, align 8, !tbaa !92
  %i.ex = load i64, ptr %i.bn, align 8, !tbaa !91
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ew, i64 noundef %i.ex) #24 ; 0 uses
  %i.ez = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bm
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10
  %i.fb = load i64, ptr %i.bm, align 8, !tbaa !76
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.fd = load ptr, ptr %10, align 8, !tbaa !92   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.bo
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ff = load i64, ptr %i.bo, align 8, !tbaa !76
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fh = add nuw i64 %storemerge54, 1            ; 2 uses
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.fj = load ptr, ptr %i.m, align 8, !tbaa !70  ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 5
  %i.fo = icmp ult i64 %i.fh, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit22, label %._crit_edge, !llvm.loop !370
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4LIEF5MachO11LoadCommand5printERSo(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF5MachO21FunctionVariantFixupsD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO21FunctionVariantFixupsE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EED2Ev.exit

_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO11LoadCommandE, i64 16), ptr %0, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4LIEF5MachO11LoadCommandD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #27
  br label %_ZN4LIEF5MachO11LoadCommandD2Ev.exit

_ZN4LIEF5MachO11LoadCommandD2Ev.exit:             ; preds = %_ZNSt6vectorIN4LIEF5MachO21FunctionVariantFixups5FixupESaIS3_EED2Ev.exit, %bb.c
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF5MachO21FunctionVariantFixupsD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO21FunctionVariantFixupsE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
end_hunk_0
