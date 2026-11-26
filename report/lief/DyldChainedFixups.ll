Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldChainedFixups?download=true
inline.NumInlined: 2904
inline.NumDeleted: 855
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZNK4LIEF5MachO17DyldChainedFixups5printERSo:_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
bb.al:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24, !noalias !410
  store i64 %i.hq, ptr %i.g, align 8, !tbaa !97, !noalias !410
  %i.hw = icmp samesign ugt i64 %i.hq, 15
  br i1 %i.hw, label %bb.am, label %._crit_edge.i.i.i.i95

bb.am:                                            ; preds = %bb.al
  %i.hx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #24 ; 2 uses
  store ptr %i.hx, ptr %44, align 8, !tbaa !110, !alias.scope !410
  %i.hy = load i64, ptr %i.g, align 8, !tbaa !97, !noalias !410
  store i64 %i.hy, ptr %i.ht, align 8, !tbaa !91, !alias.scope !410
  br label %._crit_edge.i.i.i.i95

._crit_edge.i.i.i.i95:                            ; preds = %bb.am, %bb.al
  %i.hz = phi ptr [ %i.hx, %bb.am ], [ %i.ht, %bb.al ] ; 2 uses
  switch i64 %i.hq, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i95
  %i.ia = load i8, ptr %i.hs, align 1, !tbaa !91
  store i8 %i.ia, ptr %i.hz, align 1, !tbaa !91
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr align 1 %i.hs, i64 %i.hq, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i95
  %i.ib = load i64, ptr %i.g, align 8, !tbaa !97, !noalias !410 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !111, !alias.scope !410
  %i.id = load ptr, ptr %44, align 8, !tbaa !110, !alias.scope !410
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib
  store i8 0, ptr %i.ie, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24, !noalias !410
  %i.if = load ptr, ptr %19, align 8, !tbaa !95, !noalias !408 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.if, %i.hl
  br i1 %.not.i.i.i97, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98, label %bb.ap

bb.ap:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96
  call void @free(ptr noundef %i.if) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !407
  %i.ig = load ptr, ptr %44, align 8, !tbaa !110
  %i.ih = load i64, ptr %i.ic, align 8, !tbaa !111
  %i.ii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ig, i64 noundef %i.ih) #24 ; 0 uses
  %i.ij = load ptr, ptr %44, align 8, !tbaa !110  ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ht
  br i1 %i.ik, label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98
  %i.il = load i64, ptr %i.ht, align 8, !tbaa !91
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #25
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit203

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit203: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  %i.in = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 23) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !56
  %i.iq = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = sdiv exact i64 %i.it, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24, !noalias !411
  store i64 %i.iu, ptr %30, align 16, !tbaa !91, !noalias !411
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !412
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.ix, align 8, !noalias !412
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.iw, align 8, !tbaa !94, !noalias !412
  %i.iy = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store ptr %i.iy, ptr %18, align 8, !tbaa !95, !noalias !412
  store i64 500, ptr %i.iv, align 8, !tbaa !96, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !412
  store ptr @.str.9, ptr %6, align 8, !tbaa !89, !noalias !412
  %.sroa.2.0..sroa_idx.i16.i198 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %.sroa.2.0..sroa_idx.i16.i198, align 8, !tbaa !97, !noalias !412
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.iz, align 8, !tbaa !100, !noalias !412
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %18, ptr %i.ja, align 8, !tbaa !102, !noalias !412
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 4, ptr %i.jb, align 8, !tbaa !104, !noalias !412
  %.sroa.2.0..sroa_idx.i17.i199 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %30, ptr %.sroa.2.0..sroa_idx.i17.i199, align 8, !tbaa !91, !noalias !412
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.jc, align 8, !tbaa !105, !noalias !412
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.9, i64 15, ptr noundef nonnull align 8 dereferenceable(56) %6), !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !412
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.jd = load i64, ptr %i.ix, align 8, !tbaa !106, !noalias !414 ; 6 uses
  %i.je = icmp ult i64 %i.jd, 4611686018427387903
  call void @llvm.assume(i1 %i.je)
  %i.jf = load ptr, ptr %18, align 8, !tbaa !95, !noalias !414 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  store ptr %i.jg, ptr %45, align 8, !tbaa !108, !alias.scope !414
  %i.jh = icmp eq ptr %i.jf, null
  %i.ji = icmp ne i64 %i.jd, 0
  %or.cond.i.i.i102 = and i1 %i.ji, %i.jh
  br i1 %or.cond.i.i.i102, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit203
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #26
  unreachable

bb.ar:                                            ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24, !noalias !414
  store i64 %i.jd, ptr %i.f, align 8, !tbaa !97, !noalias !414
  %i.jj = icmp samesign ugt i64 %i.jd, 15
  br i1 %i.jj, label %bb.as, label %._crit_edge.i.i.i.i103

bb.as:                                            ; preds = %bb.ar
  %i.jk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #24 ; 2 uses
  store ptr %i.jk, ptr %45, align 8, !tbaa !110, !alias.scope !414
  %i.jl = load i64, ptr %i.f, align 8, !tbaa !97, !noalias !414
  store i64 %i.jl, ptr %i.jg, align 8, !tbaa !91, !alias.scope !414
  br label %._crit_edge.i.i.i.i103

._crit_edge.i.i.i.i103:                           ; preds = %bb.as, %bb.ar
  %i.jm = phi ptr [ %i.jk, %bb.as ], [ %i.jg, %bb.ar ] ; 2 uses
  switch i64 %i.jd, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i.i103
  %i.jn = load i8, ptr %i.jf, align 1, !tbaa !91
  store i8 %i.jn, ptr %i.jm, align 1, !tbaa !91
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104

bb.au:                                            ; preds = %._crit_edge.i.i.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jf, i64 %i.jd, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104: ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i.i103
  %i.jo = load i64, ptr %i.f, align 8, !tbaa !97, !noalias !414 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !111, !alias.scope !414
  %i.jq = load ptr, ptr %45, align 8, !tbaa !110, !alias.scope !414
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jo
  store i8 0, ptr %i.jr, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24, !noalias !414
  %i.js = load ptr, ptr %18, align 8, !tbaa !95, !noalias !412 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.js, %i.iy
  br i1 %.not.i.i.i105, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106, label %bb.av

bb.av:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104
  call void @free(ptr noundef %i.js) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24, !noalias !411
  %i.jt = load ptr, ptr %45, align 8, !tbaa !110
  %i.ju = load i64, ptr %i.jp, align 8, !tbaa !111
  %i.jv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jt, i64 noundef %i.ju) #24 ; 0 uses
  %i.jw = load ptr, ptr %45, align 8, !tbaa !110  ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jg
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106
  %i.jy = load i64, ptr %i.jg, align 8, !tbaa !91
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  %i.ka = load ptr, ptr %i.io, align 8, !tbaa !56 ; 2 uses
  %i.kb = load ptr, ptr %i.n, align 8, !tbaa !55  ; 4 uses
  %.not450 = icmp eq ptr %i.ka, %i.kb
  br i1 %.not450, label %.preheader, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.kc = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 6 uses
  %.sroa.2.0..sroa_idx.i16.i204 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i17.i205 = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 15 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !415, !nonnull !119, !align !120 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24, !noalias !416
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !tbaa !91, !noalias !416
  store i64 0, ptr %i.kc, align 16, !tbaa !91, !noalias !416
  %i.kt = load i32, ptr %i.kb, align 8, !tbaa !86, !noalias !416
  store i32 %i.kt, ptr %i.kd, align 16, !tbaa !91, !noalias !416
  %i.ku = load ptr, ptr %i.ks, align 8, !tbaa !110, !noalias !416
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !111, !noalias !416
  store ptr %i.ku, ptr %i.ke, align 16, !tbaa !91, !noalias !416
  store i64 %i.kw, ptr %i.kf, align 8, !tbaa !91, !noalias !416
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !417
  store i64 0, ptr %i.ki, align 8, !noalias !417
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !tbaa !94, !noalias !417
  store ptr %i.kj, ptr %17, align 8, !tbaa !95, !noalias !417
  store i64 500, ptr %i.kg, align 8, !tbaa !96, !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !417
  store ptr @.str.10, ptr %5, align 8, !tbaa !89, !noalias !417
  store i64 31, ptr %.sroa.2.0..sroa_idx.i16.i204, align 8, !tbaa !97, !noalias !417
  store i32 0, ptr %i.kk, align 8, !tbaa !100, !noalias !417
  store ptr %17, ptr %i.kl, align 8, !tbaa !102, !noalias !417
  store i64 53836, ptr %i.km, align 8, !tbaa !104, !noalias !417
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i17.i205, align 8, !tbaa !91, !noalias !417
  store ptr null, ptr %i.kn, align 8, !tbaa !105, !noalias !417
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !417
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.kx = load i64, ptr %i.ki, align 8, !tbaa !106, !noalias !419 ; 6 uses
  %i.ky = icmp ult i64 %i.kx, 4611686018427387903
  call void @llvm.assume(i1 %i.ky)
  %i.kz = load ptr, ptr %17, align 8, !tbaa !95, !noalias !419 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !tbaa !108, !alias.scope !419
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = icmp ne i64 %i.kx, 0
  %or.cond.i.i.i111.peel = and i1 %i.lb, %i.la
  br i1 %or.cond.i.i.i111.peel, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !419
  store i64 %i.kx, ptr %i.e, align 8, !tbaa !97, !noalias !419
  %i.lc = icmp samesign ugt i64 %i.kx, 15
  br i1 %i.lc, label %bb.ax, label %._crit_edge.i.i.i.i112.peel

bb.ax:                                            ; preds = %bb.aw
  %i.ld = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ld, ptr %46, align 8, !tbaa !110, !alias.scope !419
  %i.le = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !419
  store i64 %i.le, ptr %i.ko, align 8, !tbaa !91, !alias.scope !419
  br label %._crit_edge.i.i.i.i112.peel

._crit_edge.i.i.i.i112.peel:                      ; preds = %bb.ax, %bb.aw
  %i.lf = phi ptr [ %i.ld, %bb.ax ], [ %i.ko, %bb.aw ] ; 2 uses
  switch i64 %i.kx, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i112.peel
  %i.lg = load i8, ptr %i.kz, align 1, !tbaa !91
  store i8 %i.lg, ptr %i.lf, align 1, !tbaa !91
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel

bb.az:                                            ; preds = %._crit_edge.i.i.i.i112.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lf, ptr align 1 %i.kz, i64 %i.kx, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel: ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i.i112.peel
  %i.lh = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !419 ; 2 uses
  store i64 %i.lh, ptr %i.kp, align 8, !tbaa !111, !alias.scope !419
  %i.li = load ptr, ptr %46, align 8, !tbaa !110, !alias.scope !419
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lh
  store i8 0, ptr %i.lj, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !419
  %i.lk = load ptr, ptr %17, align 8, !tbaa !95, !noalias !417 ; 2 uses
  %.not.i.i.i114.peel = icmp eq ptr %i.lk, %i.kj
  br i1 %.not.i.i.i114.peel, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel, label %bb.ba

bb.ba:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  call void @free(ptr noundef %i.lk) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel: ; preds = %bb.ba, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !417
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24, !noalias !416
  %i.ll = load ptr, ptr %46, align 8, !tbaa !110
  %i.lm = load i64, ptr %i.kp, align 8, !tbaa !111
  %i.ln = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ll, i64 noundef %i.lm) #24 ; 0 uses
  %i.lo = load ptr, ptr %46, align 8, !tbaa !110  ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ko
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel
  %i.lq = load i64, ptr %i.ko, align 8, !tbaa !91
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  %i.ls = load ptr, ptr %i.io, align 8, !tbaa !56 ; 2 uses
  %i.lt = load ptr, ptr %i.n, align 8, !tbaa !55  ; 4 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = sdiv exact i64 %i.lw, 88
  %i.ly = icmp ugt i64 %i.lx, 1
  br i1 %i.ly, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next, label %.preheader

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 168
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !415, !nonnull !119, !align !120 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24, !noalias !416
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !tbaa !91, !noalias !416
  store i64 1, ptr %i.kc, align 16, !tbaa !91, !noalias !416
  %i.md = load i32, ptr %i.lz, align 8, !tbaa !86, !noalias !416
  store i32 %i.md, ptr %i.kd, align 16, !tbaa !91, !noalias !416
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !110, !noalias !416
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !111, !noalias !416
  store ptr %i.me, ptr %i.ke, align 16, !tbaa !91, !noalias !416
  store i64 %i.mg, ptr %i.kf, align 8, !tbaa !91, !noalias !416
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !420
  store i64 0, ptr %i.ki, align 8, !noalias !420
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !tbaa !94, !noalias !420
  store ptr %i.kj, ptr %17, align 8, !tbaa !95, !noalias !420
  store i64 500, ptr %i.kg, align 8, !tbaa !96, !noalias !420
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !420
  store ptr @.str.10, ptr %5, align 8, !tbaa !89, !noalias !420
  store i64 31, ptr %.sroa.2.0..sroa_idx.i16.i204, align 8, !tbaa !97, !noalias !420
  store i32 0, ptr %i.kk, align 8, !tbaa !100, !noalias !420
  store ptr %17, ptr %i.kl, align 8, !tbaa !102, !noalias !420
  store i64 53836, ptr %i.km, align 8, !tbaa !104, !noalias !420
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i17.i205, align 8, !tbaa !91, !noalias !420
  store ptr null, ptr %i.kn, align 8, !tbaa !105, !noalias !420
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !420
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.mh = load i64, ptr %i.ki, align 8, !tbaa !106, !noalias !422 ; 6 uses
  %i.mi = icmp ult i64 %i.mh, 4611686018427387903
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load ptr, ptr %17, align 8, !tbaa !95, !noalias !422 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !tbaa !108, !alias.scope !422
  %i.mk = icmp eq ptr %i.mj, null
  %i.ml = icmp ne i64 %i.mh, 0
  %or.cond.i.i.i111.peel459 = and i1 %i.ml, %i.mk
  br i1 %or.cond.i.i.i111.peel459, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !422
  store i64 %i.mh, ptr %i.e, align 8, !tbaa !97, !noalias !422
  %i.mm = icmp samesign ugt i64 %i.mh, 15
  br i1 %i.mm, label %bb.bc, label %._crit_edge.i.i.i.i112.peel460

bb.bc:                                            ; preds = %bb.bb
  %i.mn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #24 ; 2 uses
  store ptr %i.mn, ptr %46, align 8, !tbaa !110, !alias.scope !422
  %i.mo = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !422
  store i64 %i.mo, ptr %i.ko, align 8, !tbaa !91, !alias.scope !422
  br label %._crit_edge.i.i.i.i112.peel460

._crit_edge.i.i.i.i112.peel460:                   ; preds = %bb.bc, %bb.bb
  %i.mp = phi ptr [ %i.mn, %bb.bc ], [ %i.ko, %bb.bb ] ; 2 uses
  switch i64 %i.mh, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i112.peel460
  %i.mq = load i8, ptr %i.mj, align 1, !tbaa !91
  store i8 %i.mq, ptr %i.mp, align 1, !tbaa !91
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461

bb.be:                                            ; preds = %._crit_edge.i.i.i.i112.peel460
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr align 1 %i.mj, i64 %i.mh, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i.i112.peel460
  %i.mr = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !422 ; 2 uses
  store i64 %i.mr, ptr %i.kp, align 8, !tbaa !111, !alias.scope !422
  %i.ms = load ptr, ptr %46, align 8, !tbaa !110, !alias.scope !422
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mr
  store i8 0, ptr %i.mt, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !422
  %i.mu = load ptr, ptr %17, align 8, !tbaa !95, !noalias !420 ; 2 uses
  %.not.i.i.i114.peel462 = icmp eq ptr %i.mu, %i.kj
  br i1 %.not.i.i.i114.peel462, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463, label %bb.bf

bb.bf:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  call void @free(ptr noundef %i.mu) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463: ; preds = %bb.bf, %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !420
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24, !noalias !416
  %i.mv = load ptr, ptr %46, align 8, !tbaa !110
  %i.mw = load i64, ptr %i.kp, align 8, !tbaa !111
  %i.mx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.mv, i64 noundef %i.mw) #24 ; 0 uses
  %i.my = load ptr, ptr %46, align 8, !tbaa !110  ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ko
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463
  %i.na = load i64, ptr %i.ko, align 8, !tbaa !91
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  %i.nc = load ptr, ptr %i.io, align 8, !tbaa !56 ; 2 uses
  %i.nd = load ptr, ptr %i.n, align 8, !tbaa !55  ; 3 uses
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = sdiv exact i64 %i.ng, 88
  %i.ni = icmp ugt i64 %i.nh, 2
  br i1 %i.ni, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.nj = phi ptr [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel ], [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ], [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ] ; 2 uses
  %i.nk = phi ptr [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel ], [ %i.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ] ; 2 uses
  %.not451 = icmp eq ptr %i.nk, %i.nj
  br i1 %.not451, label %._crit_edge443, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit123.lr.ph

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit123.lr.ph: ; preds = %.preheader
  %i.nl = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i206 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i17.i207 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.nv = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i16.i208 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i17.i209 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  br label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit123

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.oi = phi ptr [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ]
  %storemerge437 = phi i64 [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ] ; 3 uses
  %i.oj = getelementptr inbounds [88 x i8], ptr %i.oi, i64 %storemerge437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !415, !nonnull !119, !align !120 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24, !noalias !416
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !tbaa !91, !noalias !416
  store i64 %storemerge437, ptr %i.kc, align 16, !tbaa !91, !noalias !416
  %i.on = load i32, ptr %i.oj, align 8, !tbaa !86, !noalias !416
  store i32 %i.on, ptr %i.kd, align 16, !tbaa !91, !noalias !416
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !110, !noalias !416
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 64
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !111, !noalias !416
  store ptr %i.oo, ptr %i.ke, align 16, !tbaa !91, !noalias !416
  store i64 %i.oq, ptr %i.kf, align 8, !tbaa !91, !noalias !416
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !423
  store i64 0, ptr %i.ki, align 8, !noalias !423
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !tbaa !94, !noalias !423
  store ptr %i.kj, ptr %17, align 8, !tbaa !95, !noalias !423
  store i64 500, ptr %i.kg, align 8, !tbaa !96, !noalias !423
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !423
  store ptr @.str.10, ptr %5, align 8, !tbaa !89, !noalias !423
  store i64 31, ptr %.sroa.2.0..sroa_idx.i16.i204, align 8, !tbaa !97, !noalias !423
  store i32 0, ptr %i.kk, align 8, !tbaa !100, !noalias !423
  store ptr %17, ptr %i.kl, align 8, !tbaa !102, !noalias !423
  store i64 53836, ptr %i.km, align 8, !tbaa !104, !noalias !423
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i17.i205, align 8, !tbaa !91, !noalias !423
  store ptr null, ptr %i.kn, align 8, !tbaa !105, !noalias !423
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !423
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.or = load i64, ptr %i.ki, align 8, !tbaa !106, !noalias !425 ; 6 uses
  %i.os = icmp ult i64 %i.or, 4611686018427387903
  call void @llvm.assume(i1 %i.os)
  %i.ot = load ptr, ptr %17, align 8, !tbaa !95, !noalias !425 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !tbaa !108, !alias.scope !425
  %i.ou = icmp eq ptr %i.ot, null
  %i.ov = icmp ne i64 %i.or, 0
  %or.cond.i.i.i111 = and i1 %i.ov, %i.ou
  br i1 %or.cond.i.i.i111, label %.loopexit, label %bb.bg

.loopexit:                                        ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next, %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #26
  unreachable

bb.bg:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24, !noalias !425
  store i64 %i.or, ptr %i.e, align 8, !tbaa !97, !noalias !425
  %i.ow = icmp samesign ugt i64 %i.or, 15
  br i1 %i.ow, label %bb.bh, label %._crit_edge.i.i.i.i112

bb.bh:                                            ; preds = %bb.bg
  %i.ox = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ox, ptr %46, align 8, !tbaa !110, !alias.scope !425
  %i.oy = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !425
  store i64 %i.oy, ptr %i.ko, align 8, !tbaa !91, !alias.scope !425
  br label %._crit_edge.i.i.i.i112

._crit_edge.i.i.i.i112:                           ; preds = %bb.bh, %bb.bg
  %i.oz = phi ptr [ %i.ox, %bb.bh ], [ %i.ko, %bb.bg ] ; 2 uses
  switch i64 %i.or, label %bb.bj [
    i64 1, label %bb.bi
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i112
  %i.pa = load i8, ptr %i.ot, align 1, !tbaa !91
  store i8 %i.pa, ptr %i.oz, align 1, !tbaa !91
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oz, ptr align 1 %i.ot, i64 %i.or, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113: ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i.i.i112
  %i.pb = load i64, ptr %i.e, align 8, !tbaa !97, !noalias !425 ; 2 uses
  store i64 %i.pb, ptr %i.kp, align 8, !tbaa !111, !alias.scope !425
  %i.pc = load ptr, ptr %46, align 8, !tbaa !110, !alias.scope !425
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb
  store i8 0, ptr %i.pd, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24, !noalias !425
  %i.pe = load ptr, ptr %17, align 8, !tbaa !95, !noalias !423 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.pe, %i.kj
  br i1 %.not.i.i.i114, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115, label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113
  call void @free(ptr noundef %i.pe) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !423
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24, !noalias !416
  %i.pf = load ptr, ptr %46, align 8, !tbaa !110
  %i.pg = load i64, ptr %i.kp, align 8, !tbaa !111
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.pf, i64 noundef %i.pg) #24 ; 0 uses
  %i.pi = load ptr, ptr %46, align 8, !tbaa !110  ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ko
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115
  %i.pk = load i64, ptr %i.ko, align 8, !tbaa !91
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  %i.pm = add nuw i64 %storemerge437, 1           ; 2 uses
  %i.pn = load ptr, ptr %i.io, align 8, !tbaa !56 ; 2 uses
  %i.po = load ptr, ptr %i.n, align 8, !tbaa !55  ; 3 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 88
  %i.pt = icmp ult i64 %i.pm, %i.ps
  br i1 %i.pt, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.preheader, !llvm.loop !347

._crit_edge443:                                   ; preds = %bb.bz, %.preheader
  %i.pu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 16) #24 ; 0 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !427, !noalias !428 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !427, !noalias !429 ; 2 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.pw to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = ashr exact i64 %i.qb, 3
  %.not429444 = icmp eq ptr %i.py, %i.pw
  br i1 %.not429444, label %._crit_edge449, label %.lr.ph448

.lr.ph448:                                        ; preds = %._crit_edge443
  %i.qd = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 6 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 9 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.qn = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.qp = getelementptr inbounds nuw i8, ptr %26, i64 48
  %i.qq = getelementptr inbounds nuw i8, ptr %26, i64 56
  %i.qr = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.qs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.qu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.66) #29
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.65) #29
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !86
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !236
  %i.b = load i8, ptr %0, align 1, !tbaa !91      ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !31

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !91    ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !31

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !91
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.49) #29
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !86
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !91
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !100 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.58) #29
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !100
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !236
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %4, ptr %5, align 8, !tbaa !820
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !821
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !105
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !91
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !236
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.55) #29
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !91      ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
  %i.k = mul i32 %i.q, 10
  %i.l = zext nneg i8 %i.r to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = add i32 %i.m, %i.k                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.o, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph50, !llvm.loop !31

.lr.ph50:                                         ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.c ] ; 4 uses
  %i.q = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i49 = phi ptr [ %i.p, %bb.d ], [ %0, %bb.c ]
  %.027.i48 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.r = load i8, ptr %i.p, align 1, !tbaa !91    ; 2 uses
  %i.s = add i8 %i.r, -48
  %or.cond.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i, label %bb.d, label %..critedge.i_crit_edge, !llvm.loop !31

..critedge.i_crit_edge:                           ; preds = %.lr.ph50
  br label %.critedge.i, !llvm.loop !31

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %bb.c
  %.027.i.lcssa = phi i32 [ %.027.i48, %..critedge.i_crit_edge ], [ 0, %bb.c ], [ %i.q, %bb.d ]
  %.lcssa = phi i32 [ %i.q, %..critedge.i_crit_edge ], [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.0.i49, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.c ], [ %scevgep.i, %bb.d ]
  %.lcssa.i = phi ptr [ %i.p, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.c ], [ %scevgep37.i, %bb.d ] ; 4 uses
  %i.t = ptrtoint ptr %.lcssa.i to i64
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 10
  br i1 %i.w, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.x = icmp eq i64 %i.v, 10
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %.027.i.lcssa to i64
  %i.z = mul nuw nsw i64 %i.y, 10
  %i.aa = load i8, ptr %.0.lcssa.i, align 1, !tbaa !91
  %i.ab = sext i8 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, 4294967248
  %i.ad = and i64 %i.ac, 4294967294
  %i.ae = add nuw nsw i64 %i.ad, %i.z
  %i.af = icmp samesign ult i64 %i.ae, 2147483648
  br i1 %i.af, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %bb.g, %bb.f, %.critedge.i, %bb.h
  %.037 = phi ptr [ %i.ag, %bb.h ], [ %.lcssa.i, %.critedge.i ], [ %.lcssa.i, %bb.f ], [ %.lcssa.i, %bb.g ] ; 3 uses
  %.021 = phi i32 [ 0, %bb.h ], [ %.lcssa, %.critedge.i ], [ %.lcssa, %bb.f ], [ 2147483647, %bb.g ]
  %i.ah = icmp eq ptr %.037, %1
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  %i.ai = load i8, ptr %.037, align 1, !tbaa !91
  switch i8 %i.ai, label %bb.j [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.55) #29
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !824, !nonnull !119, !align !120
  store i32 %.021, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !825, !nonnull !119, !align !165
  store i32 1, ptr %i.am, align 4, !tbaa !236
  %i.an = load ptr, ptr %2, align 8, !tbaa !826, !nonnull !119, !align !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !100
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.59) #29
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.k
  store i32 -1, ptr %i.ao, align 8, !tbaa !100
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.ar = and i8 %i.c, -33
  %i.as = add i8 %i.ar, -65
  %or.cond10.i = icmp ult i8 %i.as, 26
  %i.at = icmp eq i8 %i.c, 95
  %i.au = or i1 %i.at, %or.cond10.i
  br i1 %i.au, label %.critedge4.preheader, label %bb.n

.critedge4.preheader:                             ; preds = %bb.m
  %i.av = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not45 = icmp eq ptr %i.aw, %1
  br i1 %.not45, label %.critedge, label %.lr.ph

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.55) #29
  unreachable

.critedge4:                                       ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !822

.lr.ph:                                           ; preds = %.critedge4.preheader, %.critedge4
  %i.ay = phi ptr [ %i.ax, %.critedge4 ], [ %i.aw, %.critedge4.preheader ] ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !91  ; 3 uses
  %i.ba = and i8 %i.az, -33
  %i.bb = add i8 %i.ba, -65
  %or.cond10.i32 = icmp ult i8 %i.bb, 26
  %i.bc = icmp eq i8 %i.az, 95
  %i.bd = or i1 %i.bc, %or.cond10.i32
  %i.be = add i8 %i.az, -48
  %or.cond31 = icmp ult i8 %i.be, 10
  %or.cond38 = or i1 %or.cond31, %i.bd
  br i1 %or.cond38, label %.critedge4, label %..critedge_crit_edge, !llvm.loop !822

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !822

.critedge:                                        ; preds = %.critedge4, %..critedge_crit_edge, %.critedge4.preheader
  %.lcssa40 = phi ptr [ %i.ay, %..critedge_crit_edge ], [ %scevgep, %.critedge4.preheader ], [ %scevgep, %.critedge4 ] ; 2 uses
  %i.bf = ptrtoint ptr %.lcssa40 to i64
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !824, !nonnull !119, !align !120 ; 2 uses
  store ptr %0, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %i.bh, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !91
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !825, !nonnull !119, !align !165
  store i32 2, ptr %i.bl, align 4, !tbaa !236
  %i.bm = load ptr, ptr %2, align 8, !tbaa !826, !nonnull !119, !align !120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 -1, ptr %i.bn, align 8, !tbaa !100
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit
  %.022 = phi ptr [ %.037, %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit ], [ %.lcssa40, %.critedge ]
  ret ptr %.022
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE(ptr %0, i64 %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %class.anon.503, align 1            ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load i32, ptr %3, align 4, !tbaa !129    ; 10 uses
  %i.c = trunc i32 %i.b to i8
  %i.d = and i8 %i.c, 7
  switch i8 %i.d, label %bb.b [
    i8 7, label %bb.j
    i8 6, label %.split.us.i11
    i8 4, label %bb.e
    i8 5, label %.split.us.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.020.i = phi i32 [ %i.f, %.lr.ph.i ], [ 64, %bb.b ]
  %.01819.i = phi i64 [ %i.m, %.lr.ph.i ], [ %1, %bb.b ] ; 3 uses
  %i.f = add i32 %.020.i, -2                      ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = urem i64 %.01819.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  store i16 %i.l, ptr %i.h, align 2
  %i.m = udiv i64 %.01819.i, 100                  ; 2 uses
  %i.n = icmp ugt i64 %.01819.i, 9999
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.018.lcssa.i = phi i64 [ %1, %bb.b ], [ %i.m, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 64, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.o = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i
  %i.p = add i32 %.0.lcssa.i, -2
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  %i.s = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.w = or disjoint i8 %i.v, 48
  %i.x = add i32 %.0.lcssa.i, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 %i.w, ptr %i.z, align 1, !tbaa !91
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = and i32 %i.b, 4096
  %.not37 = icmp eq i32 %i.aa, 0                  ; 2 uses
  %.str.34..str.35.i = select i1 %.not37, ptr @.str.35, ptr @.str.34
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.e
  %.012.i = phi i64 [ %i.ae, %.split.i ], [ %1, %bb.e ] ; 2 uses
  %.0.i6.idx = phi i64 [ %.0.i6.add, %.split.i ], [ 64, %bb.e ]
  %i.ab = and i64 %.012.i, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %.str.34..str.35.i, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !91
  %.0.i6.add = add nsw i64 %.0.i6.idx, -1         ; 4 uses
  %.ptr42 = getelementptr inbounds i8, ptr %i.a, i64 %.0.i6.add
  store i8 %i.ad, ptr %.ptr42, align 1, !tbaa !91
  %i.ae = lshr i64 %.012.i, 4                     ; 2 uses
  %.not.i7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i7, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit, label %.split.i, !llvm.loop !13

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit: ; preds = %.split.i
  %i.af = and i32 %i.b, 8192
  %.not38 = icmp eq i32 %i.af, 0
  br i1 %.not38, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %i.ag = select i1 %.not37, i32 30768, i32 22576 ; 2 uses
  %.not.i8 = icmp eq i32 %2, 0
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = select i1 %.not.i8, i32 %i.ag, i32 %i.ah
  %i.aj = or i32 %i.ai, %2
  %i.ak = add i32 %i.aj, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i:                                      ; preds = %bb.a, %.split.us.i
  %.012.us.i = phi i64 [ %i.ao, %.split.us.i ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i.idx = phi i64 [ %.0.us.i.add, %.split.us.i ], [ 64, %bb.a ] ; 2 uses
  %i.al = trunc i64 %.012.us.i to i8
  %i.am = and i8 %i.al, 7
  %i.an = or disjoint i8 %i.am, 48
  %.0.us.i.add = add nsw i64 %.0.us.i.idx, -1     ; 5 uses
  %.ptr41 = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i.add
  store i8 %i.an, ptr %.ptr41, align 1, !tbaa !91
  %i.ao = lshr i64 %.012.us.i, 3                  ; 2 uses
  %.not.us.i = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, label %.split.us.i, !llvm.loop !13

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9: ; preds = %.split.us.i
  %i.ap = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9
  %gepdiff = sub nsw i64 65, %.0.us.i.idx
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp sge i64 %gepdiff, %i.as
  %i.au = icmp ne i64 %1, 0
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %bb.h, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.h:                                             ; preds = %bb.g
  %.not.i10 = icmp eq i32 %2, 0
  %i.av = select i1 %.not.i10, i32 48, i32 12288
  %i.aw = or i32 %i.av, %2
  %i.ax = add i32 %i.aw, 16777216
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

.split.us.i11:                                    ; preds = %bb.a, %.split.us.i11
  %.012.us.i12 = phi i64 [ %i.bb, %.split.us.i11 ], [ %1, %bb.a ] ; 2 uses
  %.0.us.i13.idx = phi i64 [ %.0.us.i13.add, %.split.us.i11 ], [ 64, %bb.a ]
  %i.ay = trunc i64 %.012.us.i12 to i8
  %i.az = and i8 %i.ay, 1
  %i.ba = or disjoint i8 %i.az, 48
  %.0.us.i13.add = add nsw i64 %.0.us.i13.idx, -1 ; 4 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.0.us.i13.add
  store i8 %i.ba, ptr %.ptr, align 1, !tbaa !91
  %i.bb = lshr i64 %.012.us.i12, 1                ; 2 uses
  %.not.us.i14 = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i14, label %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, label %.split.us.i11, !llvm.loop !13

_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15: ; preds = %.split.us.i11
  %i.bc = and i32 %i.b, 8192
  %.not39 = icmp eq i32 %i.bc, 0
  br i1 %.not39, label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15
  %i.bd = and i32 %i.b, 4096
  %.not40 = icmp eq i32 %i.bd, 0
  %i.be = select i1 %.not40, i32 25136, i32 16944 ; 2 uses
  %.not.i16 = icmp eq i32 %2, 0
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = select i1 %.not.i16, i32 %i.be, i32 %i.bf
  %i.bh = or i32 %i.bg, %2
  %i.bi = add i32 %i.bh, 33554432
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %bb.a
  %i.bj = trunc i64 %1 to i8
  %i.bk = and i32 %i.b, 7
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = zext i1 %i.bl to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 %i.bm, ptr %4, align 1, !tbaa !154
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.bj, ptr %i.bn, align 1, !tbaa !155
  %i.bo = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN3fmt3v126detail9write_intIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.d, %bb.c, %bb.i, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15, %bb.h, %bb.g, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9, %bb.f, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit
  %.0 = phi i32 [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %i.ak, %bb.f ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %i.ax, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %i.bi, %bb.i ], [ %2, %bb.c ], [ %2, %bb.d ] ; 3 uses
  %.0.i.idx = phi i64 [ %.0.us.i13.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit15 ], [ %.0.i6.add, %bb.f ], [ %.0.i6.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit ], [ %.0.us.i.add, %bb.h ], [ %.0.us.i.add, %bb.g ], [ %.0.us.i.add, %_ZN3fmt3v126detail16do_format_base2eIcmEEPT_iS4_T0_ib.exit9 ], [ %.0.us.i13.add, %bb.i ], [ %i.q, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.bp = trunc i64 %.0.i.idx to i32
  %i.bq = sub i32 64, %i.bp                       ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !156 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !131 ; 4 uses
  %i.bv = add nsw i32 %i.bu, 1
  %i.bw = or i32 %i.bv, %i.bs
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = lshr i32 %.0, 24                        ; 2 uses
  %i.bz = add i32 %i.bq, %i.by                    ; 4 uses
  br i1 %i.bx, label %bb.k, label %bb.r
end_hunk_1
