Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/DyldChainedFixups?download=true
inline.NumInlined: 2656
inline.NumDeleted: 845
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK4LIEF5MachO17DyldChainedFixups5printERSo:_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
bb.al:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23, !noalias !268
  store i64 %i.hq, ptr %i.g, align 8, !noalias !268
  %i.hw = icmp samesign ugt i64 %i.hq, 15
  br i1 %i.hw, label %bb.am, label %._crit_edge.i.i.i.i95

bb.am:                                            ; preds = %bb.al
  %i.hx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) #23 ; 2 uses
  store ptr %i.hx, ptr %44, align 8, !alias.scope !268
  %i.hy = load i64, ptr %i.g, align 8, !noalias !268
  store i64 %i.hy, ptr %i.ht, align 8, !alias.scope !268
  br label %._crit_edge.i.i.i.i95

._crit_edge.i.i.i.i95:                            ; preds = %bb.am, %bb.al
  %i.hz = phi ptr [ %i.hx, %bb.am ], [ %i.ht, %bb.al ] ; 2 uses
  switch i64 %i.hq, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i.i95
  %i.ia = load i8, ptr %i.hs, align 1
  store i8 %i.ia, ptr %i.hz, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hz, ptr align 1 %i.hs, i64 %i.hq, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96: ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i.i95
  %i.ib = load i64, ptr %i.g, align 8, !noalias !268 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  store i64 %i.ib, ptr %i.ic, align 8, !alias.scope !268
  %i.id = load ptr, ptr %44, align 8, !alias.scope !268
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib
  store i8 0, ptr %i.ie, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23, !noalias !268
  %i.if = load ptr, ptr %19, align 8, !noalias !266 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.if, %i.hl
  br i1 %.not.i.i.i97, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98, label %bb.ap

bb.ap:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96
  call void @free(ptr noundef %i.if) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i96, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !265
  %i.ig = load ptr, ptr %44, align 8
  %i.ih = load i64, ptr %i.ic, align 8
  %i.ii = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ig, i64 noundef %i.ih) #23 ; 0 uses
  %i.ij = load ptr, ptr %44, align 8              ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ht
  br i1 %i.ik, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98
  %i.il = load i64, ptr %i.ht, align 8
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #24
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit203

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit203: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  %i.in = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 23) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = load ptr, ptr %i.n, align 8
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = sdiv exact i64 %i.it, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23, !noalias !269
  store i64 %i.iu, ptr %30, align 16, !noalias !269
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !270
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.ix, align 8, !noalias !270
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.iw, align 8, !noalias !270
  %i.iy = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store ptr %i.iy, ptr %18, align 8, !noalias !270
  store i64 500, ptr %i.iv, align 8, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !270
  store ptr @.str.9, ptr %6, align 8, !noalias !270
  %.sroa.2.0..sroa_idx.i14.i198 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %.sroa.2.0..sroa_idx.i14.i198, align 8, !noalias !270
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.iz, align 8, !noalias !270
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %18, ptr %i.ja, align 8, !noalias !270
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 4, ptr %i.jb, align 8, !noalias !270
  %.sroa.2.0..sroa_idx.i15.i199 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %30, ptr %.sroa.2.0..sroa_idx.i15.i199, align 8, !noalias !270
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.jc, align 8, !noalias !270
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.9, i64 15, ptr noundef nonnull align 8 dereferenceable(56) %6), !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !270
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.jd = load i64, ptr %i.ix, align 8, !noalias !272 ; 6 uses
  %i.je = icmp ult i64 %i.jd, 4611686018427387903
  call void @llvm.assume(i1 %i.je)
  %i.jf = load ptr, ptr %18, align 8, !noalias !272 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  store ptr %i.jg, ptr %45, align 8, !alias.scope !272
  %i.jh = icmp eq ptr %i.jf, null
  %i.ji = icmp ne i64 %i.jd, 0
  %or.cond.i.i.i102 = and i1 %i.ji, %i.jh
  br i1 %or.cond.i.i.i102, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit203
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.65) #25
  unreachable

bb.ar:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23, !noalias !272
  store i64 %i.jd, ptr %i.f, align 8, !noalias !272
  %i.jj = icmp samesign ugt i64 %i.jd, 15
  br i1 %i.jj, label %bb.as, label %._crit_edge.i.i.i.i103

bb.as:                                            ; preds = %bb.ar
  %i.jk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #23 ; 2 uses
  store ptr %i.jk, ptr %45, align 8, !alias.scope !272
  %i.jl = load i64, ptr %i.f, align 8, !noalias !272
  store i64 %i.jl, ptr %i.jg, align 8, !alias.scope !272
  br label %._crit_edge.i.i.i.i103

._crit_edge.i.i.i.i103:                           ; preds = %bb.as, %bb.ar
  %i.jm = phi ptr [ %i.jk, %bb.as ], [ %i.jg, %bb.ar ] ; 2 uses
  switch i64 %i.jd, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i.i103
  %i.jn = load i8, ptr %i.jf, align 1
  store i8 %i.jn, ptr %i.jm, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104

bb.au:                                            ; preds = %._crit_edge.i.i.i.i103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jf, i64 %i.jd, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104: ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i.i103
  %i.jo = load i64, ptr %i.f, align 8, !noalias !272 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  store i64 %i.jo, ptr %i.jp, align 8, !alias.scope !272
  %i.jq = load ptr, ptr %45, align 8, !alias.scope !272
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jo
  store i8 0, ptr %i.jr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23, !noalias !272
  %i.js = load ptr, ptr %18, align 8, !noalias !270 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.js, %i.iy
  br i1 %.not.i.i.i105, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106, label %bb.av

bb.av:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104
  call void @free(ptr noundef %i.js) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i104, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23, !noalias !269
  %i.jt = load ptr, ptr %45, align 8
  %i.ju = load i64, ptr %i.jp, align 8
  %i.jv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.jt, i64 noundef %i.ju) #23 ; 0 uses
  %i.jw = load ptr, ptr %45, align 8              ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jg
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106
  %i.jy = load i64, ptr %i.jg, align 8
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.ka = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.kb = load ptr, ptr %i.n, align 8             ; 4 uses
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
  %.sroa.2.0..sroa_idx.i14.i204 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.sroa.2.0..sroa_idx.i15.i205 = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 15 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kb, i64 80
  %i.kr = load ptr, ptr %i.kq, align 8, !nonnull !124, !align !125 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23, !noalias !273
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !noalias !273
  store i64 0, ptr %i.kc, align 16, !noalias !273
  %i.kt = load i32, ptr %i.kb, align 8, !noalias !273
  store i32 %i.kt, ptr %i.kd, align 16, !noalias !273
  %i.ku = load ptr, ptr %i.ks, align 8, !noalias !273
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.kw = load i64, ptr %i.kv, align 8, !noalias !273
  store ptr %i.ku, ptr %i.ke, align 16, !noalias !273
  store i64 %i.kw, ptr %i.kf, align 8, !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !274
  store i64 0, ptr %i.ki, align 8, !noalias !274
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !noalias !274
  store ptr %i.kj, ptr %17, align 8, !noalias !274
  store i64 500, ptr %i.kg, align 8, !noalias !274
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !274
  store ptr @.str.10, ptr %5, align 8, !noalias !274
  store i64 31, ptr %.sroa.2.0..sroa_idx.i14.i204, align 8, !noalias !274
  store i32 0, ptr %i.kk, align 8, !noalias !274
  store ptr %17, ptr %i.kl, align 8, !noalias !274
  store i64 53836, ptr %i.km, align 8, !noalias !274
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i15.i205, align 8, !noalias !274
  store ptr null, ptr %i.kn, align 8, !noalias !274
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !274
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.kx = load i64, ptr %i.ki, align 8, !noalias !276 ; 6 uses
  %i.ky = icmp ult i64 %i.kx, 4611686018427387903
  call void @llvm.assume(i1 %i.ky)
  %i.kz = load ptr, ptr %17, align 8, !noalias !276 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !alias.scope !276
  %i.la = icmp eq ptr %i.kz, null
  %i.lb = icmp ne i64 %i.kx, 0
  %or.cond.i.i.i111.peel = and i1 %i.lb, %i.la
  br i1 %or.cond.i.i.i111.peel, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23, !noalias !276
  store i64 %i.kx, ptr %i.e, align 8, !noalias !276
  %i.lc = icmp samesign ugt i64 %i.kx, 15
  br i1 %i.lc, label %bb.ax, label %._crit_edge.i.i.i.i112.peel

bb.ax:                                            ; preds = %bb.aw
  %i.ld = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ld, ptr %46, align 8, !alias.scope !276
  %i.le = load i64, ptr %i.e, align 8, !noalias !276
  store i64 %i.le, ptr %i.ko, align 8, !alias.scope !276
  br label %._crit_edge.i.i.i.i112.peel

._crit_edge.i.i.i.i112.peel:                      ; preds = %bb.ax, %bb.aw
  %i.lf = phi ptr [ %i.ld, %bb.ax ], [ %i.ko, %bb.aw ] ; 2 uses
  switch i64 %i.kx, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i112.peel
  %i.lg = load i8, ptr %i.kz, align 1
  store i8 %i.lg, ptr %i.lf, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel

bb.az:                                            ; preds = %._crit_edge.i.i.i.i112.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lf, ptr align 1 %i.kz, i64 %i.kx, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel: ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i.i112.peel
  %i.lh = load i64, ptr %i.e, align 8, !noalias !276 ; 2 uses
  store i64 %i.lh, ptr %i.kp, align 8, !alias.scope !276
  %i.li = load ptr, ptr %46, align 8, !alias.scope !276
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lh
  store i8 0, ptr %i.lj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !276
  %i.lk = load ptr, ptr %17, align 8, !noalias !274 ; 2 uses
  %.not.i.i.i114.peel = icmp eq ptr %i.lk, %i.kj
  br i1 %.not.i.i.i114.peel, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel, label %bb.ba

bb.ba:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  call void @free(ptr noundef %i.lk) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel: ; preds = %bb.ba, %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23, !noalias !273
  %i.ll = load ptr, ptr %46, align 8
  %i.lm = load i64, ptr %i.kp, align 8
  %i.ln = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ll, i64 noundef %i.lm) #23 ; 0 uses
  %i.lo = load ptr, ptr %46, align 8              ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.ko
  br i1 %i.lp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel
  %i.lq = load i64, ptr %i.ko, align 8
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel
  %54 = load i64, ptr %i.kp, align 8
  %55 = icmp ult i64 %54, 16
  call void @llvm.assume(i1 %55)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.ls = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.lt = load ptr, ptr %i.n, align 8             ; 4 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = sdiv exact i64 %i.lw, 88
  %i.ly = icmp ugt i64 %i.lx, 1
  br i1 %i.ly, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next, label %.preheader

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lt, i64 168
  %i.mb = load ptr, ptr %i.ma, align 8, !nonnull !124, !align !125 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23, !noalias !273
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !noalias !273
  store i64 1, ptr %i.kc, align 16, !noalias !273
  %i.md = load i32, ptr %i.lz, align 8, !noalias !273
  store i32 %i.md, ptr %i.kd, align 16, !noalias !273
  %i.me = load ptr, ptr %i.mc, align 8, !noalias !273
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.mg = load i64, ptr %i.mf, align 8, !noalias !273
  store ptr %i.me, ptr %i.ke, align 16, !noalias !273
  store i64 %i.mg, ptr %i.kf, align 8, !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !277
  store i64 0, ptr %i.ki, align 8, !noalias !277
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !noalias !277
  store ptr %i.kj, ptr %17, align 8, !noalias !277
  store i64 500, ptr %i.kg, align 8, !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !277
  store ptr @.str.10, ptr %5, align 8, !noalias !277
  store i64 31, ptr %.sroa.2.0..sroa_idx.i14.i204, align 8, !noalias !277
  store i32 0, ptr %i.kk, align 8, !noalias !277
  store ptr %17, ptr %i.kl, align 8, !noalias !277
  store i64 53836, ptr %i.km, align 8, !noalias !277
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i15.i205, align 8, !noalias !277
  store ptr null, ptr %i.kn, align 8, !noalias !277
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !277
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.mh = load i64, ptr %i.ki, align 8, !noalias !279 ; 6 uses
  %i.mi = icmp ult i64 %i.mh, 4611686018427387903
  call void @llvm.assume(i1 %i.mi)
  %i.mj = load ptr, ptr %17, align 8, !noalias !279 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !alias.scope !279
  %i.mk = icmp eq ptr %i.mj, null
  %i.ml = icmp ne i64 %i.mh, 0
  %or.cond.i.i.i111.peel459 = and i1 %i.ml, %i.mk
  br i1 %or.cond.i.i.i111.peel459, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23, !noalias !279
  store i64 %i.mh, ptr %i.e, align 8, !noalias !279
  %i.mm = icmp samesign ugt i64 %i.mh, 15
  br i1 %i.mm, label %bb.bc, label %._crit_edge.i.i.i.i112.peel460

bb.bc:                                            ; preds = %bb.bb
  %i.mn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #23 ; 2 uses
  store ptr %i.mn, ptr %46, align 8, !alias.scope !279
  %i.mo = load i64, ptr %i.e, align 8, !noalias !279
  store i64 %i.mo, ptr %i.ko, align 8, !alias.scope !279
  br label %._crit_edge.i.i.i.i112.peel460

._crit_edge.i.i.i.i112.peel460:                   ; preds = %bb.bc, %bb.bb
  %i.mp = phi ptr [ %i.mn, %bb.bc ], [ %i.ko, %bb.bb ] ; 2 uses
  switch i64 %i.mh, label %bb.be [
    i64 1, label %bb.bd
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  ]

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i112.peel460
  %i.mq = load i8, ptr %i.mj, align 1
  store i8 %i.mq, ptr %i.mp, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461

bb.be:                                            ; preds = %._crit_edge.i.i.i.i112.peel460
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mp, ptr align 1 %i.mj, i64 %i.mh, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461: ; preds = %bb.be, %bb.bd, %._crit_edge.i.i.i.i112.peel460
  %i.mr = load i64, ptr %i.e, align 8, !noalias !279 ; 2 uses
  store i64 %i.mr, ptr %i.kp, align 8, !alias.scope !279
  %i.ms = load ptr, ptr %46, align 8, !alias.scope !279
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mr
  store i8 0, ptr %i.mt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !279
  %i.mu = load ptr, ptr %17, align 8, !noalias !277 ; 2 uses
  %.not.i.i.i114.peel462 = icmp eq ptr %i.mu, %i.kj
  br i1 %.not.i.i.i114.peel462, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463, label %bb.bf

bb.bf:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  call void @free(ptr noundef %i.mu) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463: ; preds = %bb.bf, %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113.peel461
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23, !noalias !273
  %i.mv = load ptr, ptr %46, align 8
  %i.mw = load i64, ptr %i.kp, align 8
  %i.mx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.mv, i64 noundef %i.mw) #23 ; 0 uses
  %i.my = load ptr, ptr %46, align 8              ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ko
  br i1 %i.mz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463
  %i.na = load i64, ptr %i.ko, align 8
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel465: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115.peel463
  %56 = load i64, ptr %i.kp, align 8
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117.peel465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.peel464
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.nc = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.nd = load ptr, ptr %i.n, align 8             ; 3 uses
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
  %.sroa.2.0..sroa_idx.i14.i206 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.2.0..sroa_idx.i15.i207 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.nv = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i14.i208 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i15.i209 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  br label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit123

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.oi = phi ptr [ %i.po, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ]
  %storemerge437 = phi i64 [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ 2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.peel466 ] ; 3 uses
  %i.oj = getelementptr inbounds [88 x i8], ptr %i.oi, i64 %storemerge437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %i.ol = load ptr, ptr %i.ok, align 8, !nonnull !124, !align !125 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23, !noalias !273
  store ptr @_ZZNK4LIEF5MachO17DyldChainedFixups5printERSoE6PREFIX, ptr %29, align 16, !noalias !273
  store i64 %storemerge437, ptr %i.kc, align 16, !noalias !273
  %i.on = load i32, ptr %i.oj, align 8, !noalias !273
  store i32 %i.on, ptr %i.kd, align 16, !noalias !273
  %i.oo = load ptr, ptr %i.om, align 8, !noalias !273
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 64
  %i.oq = load i64, ptr %i.op, align 8, !noalias !273
  store ptr %i.oo, ptr %i.ke, align 16, !noalias !273
  store i64 %i.oq, ptr %i.kf, align 8, !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !280
  store i64 0, ptr %i.ki, align 8, !noalias !280
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.kh, align 8, !noalias !280
  store ptr %i.kj, ptr %17, align 8, !noalias !280
  store i64 500, ptr %i.kg, align 8, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !280
  store ptr @.str.10, ptr %5, align 8, !noalias !280
  store i64 31, ptr %.sroa.2.0..sroa_idx.i14.i204, align 8, !noalias !280
  store i32 0, ptr %i.kk, align 8, !noalias !280
  store ptr %17, ptr %i.kl, align 8, !noalias !280
  store i64 53836, ptr %i.km, align 8, !noalias !280
  store ptr %29, ptr %.sroa.2.0..sroa_idx.i15.i205, align 8, !noalias !280
  store ptr null, ptr %i.kn, align 8, !noalias !280
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.10, i64 31, ptr noundef nonnull align 8 dereferenceable(56) %5), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !280
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.or = load i64, ptr %i.ki, align 8, !noalias !282 ; 6 uses
  %i.os = icmp ult i64 %i.or, 4611686018427387903
  call void @llvm.assume(i1 %i.os)
  %i.ot = load ptr, ptr %17, align 8, !noalias !282 ; 3 uses
  store ptr %i.ko, ptr %46, align 8, !alias.scope !282
  %i.ou = icmp eq ptr %i.ot, null
  %i.ov = icmp ne i64 %i.or, 0
  %or.cond.i.i.i111 = and i1 %i.ov, %i.ou
  br i1 %or.cond.i.i.i111, label %.loopexit, label %bb.bg

.loopexit:                                        ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.peel.next, %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit.lr.ph
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.65) #25
  unreachable

bb.bg:                                            ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23, !noalias !282
  store i64 %i.or, ptr %i.e, align 8, !noalias !282
  %i.ow = icmp samesign ugt i64 %i.or, 15
  br i1 %i.ow, label %bb.bh, label %._crit_edge.i.i.i.i112

bb.bh:                                            ; preds = %bb.bg
  %i.ox = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #23 ; 2 uses
  store ptr %i.ox, ptr %46, align 8, !alias.scope !282
  %i.oy = load i64, ptr %i.e, align 8, !noalias !282
  store i64 %i.oy, ptr %i.ko, align 8, !alias.scope !282
  br label %._crit_edge.i.i.i.i112

._crit_edge.i.i.i.i112:                           ; preds = %bb.bh, %bb.bg
  %i.oz = phi ptr [ %i.ox, %bb.bh ], [ %i.ko, %bb.bg ] ; 2 uses
  switch i64 %i.or, label %bb.bj [
    i64 1, label %bb.bi
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113
  ]

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i112
  %i.pa = load i8, ptr %i.ot, align 1
  store i8 %i.pa, ptr %i.oz, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113

bb.bj:                                            ; preds = %._crit_edge.i.i.i.i112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oz, ptr align 1 %i.ot, i64 %i.or, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113: ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i.i.i112
  %i.pb = load i64, ptr %i.e, align 8, !noalias !282 ; 2 uses
  store i64 %i.pb, ptr %i.kp, align 8, !alias.scope !282
  %i.pc = load ptr, ptr %46, align 8, !alias.scope !282
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pb
  store i8 0, ptr %i.pd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23, !noalias !282
  %i.pe = load ptr, ptr %17, align 8, !noalias !280 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.pe, %i.kj
  br i1 %.not.i.i.i114, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115, label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113
  call void @free(ptr noundef %i.pe) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i113, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23, !noalias !273
  %i.pf = load ptr, ptr %46, align 8
  %i.pg = load i64, ptr %i.kp, align 8
  %i.ph = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.pf, i64 noundef %i.pg) #23 ; 0 uses
  %i.pi = load ptr, ptr %46, align 8              ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.ko
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115
  %i.pk = load i64, ptr %i.ko, align 8
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #23
  %i.pm = add nuw i64 %storemerge437, 1           ; 2 uses
  %i.pn = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.po = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 88
  %i.pt = icmp ult i64 %i.pm, %i.ps
  br i1 %i.pt, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.preheader, !llvm.loop !209

._crit_edge443:                                   ; preds = %bb.bz, %.preheader
  %i.pu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 16) #23 ; 0 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pw = load ptr, ptr %i.pv, align 8, !noalias !284 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.py = load ptr, ptr %i.px, align 8, !noalias !285 ; 2 uses
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
