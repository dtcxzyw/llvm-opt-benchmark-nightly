inline.NumInlined: 2980
inline.NumDeleted: 985
begin_hunk_0_@_ZNK4LIEF2PE14unwind_aarch6416UnpackedFunction9to_stringB5cxx11Ev:_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit168: ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hq = load i32, ptr %i.hp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !80
  %i.hr = and i32 %i.hq, 65535
  store i32 %i.hr, ptr %18, align 16, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !83
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.hu, align 8, !noalias !83
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.ht, align 8, !noalias !83
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.hv, ptr %10, align 8, !noalias !83
  store i64 500, ptr %i.hs, align 8, !noalias !83
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !83
  store ptr @.str.27, ptr %3, align 8, !noalias !83
  %.sroa.2.0..sroa_idx.i14.i163 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 28, ptr %.sroa.2.0..sroa_idx.i14.i163, align 8, !noalias !83
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.hw, align 8, !noalias !83
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %10, ptr %i.hx, align 8, !noalias !83
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 2, ptr %i.hy, align 8, !noalias !83
  %.sroa.2.0..sroa_idx.i15.i164 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %18, ptr %.sroa.2.0..sroa_idx.i15.i164, align 8, !noalias !83
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr null, ptr %i.hz, align 8, !noalias !83
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.27, i64 28, ptr noundef nonnull align 8 dereferenceable(56) %3), !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !83
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.ia = load i64, ptr %i.hu, align 8, !noalias !89 ; 6 uses
  %i.ib = icmp ult i64 %i.ia, 4611686018427387903
  call void @llvm.assume(i1 %i.ib)
  %i.ic = load ptr, ptr %10, align 8, !noalias !89 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 5 uses
  store ptr %i.id, ptr %29, align 8, !alias.scope !89
  %i.ie = icmp eq ptr %i.ic, null
  %i.if = icmp ne i64 %i.ia, 0
  %or.cond.i.i.i61 = and i1 %i.if, %i.ie
  br i1 %or.cond.i.i.i61, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit168
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.134) #27
  unreachable

bb.ah:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24, !noalias !89
  store i64 %i.ia, ptr %i.c, align 8, !noalias !89
  %i.ig = icmp samesign ugt i64 %i.ia, 15
  br i1 %i.ig, label %bb.ai, label %._crit_edge.i.i.i.i62

bb.ai:                                            ; preds = %bb.ah
  %i.ih = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ih, ptr %29, align 8, !alias.scope !89
  %i.ii = load i64, ptr %i.c, align 8, !noalias !89
  store i64 %i.ii, ptr %i.id, align 8, !alias.scope !89
  br label %._crit_edge.i.i.i.i62

._crit_edge.i.i.i.i62:                            ; preds = %bb.ai, %bb.ah
  %i.ij = phi ptr [ %i.ih, %bb.ai ], [ %i.id, %bb.ah ] ; 2 uses
  switch i64 %i.ia, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i62
  %i.ik = load i8, ptr %i.ic, align 1
  store i8 %i.ik, ptr %i.ij, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.ic, i64 %i.ia, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i62
  %i.il = load i64, ptr %i.c, align 8, !noalias !89 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store i64 %i.il, ptr %i.im, align 8, !alias.scope !89
  %i.in = load ptr, ptr %29, align 8, !alias.scope !89
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.il
  store i8 0, ptr %i.io, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24, !noalias !89
  %i.ip = load ptr, ptr %10, align 8, !noalias !83 ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.ip, %i.hv
  br i1 %.not.i.i.i64, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit65, label %bb.al

bb.al:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63
  call void @free(ptr noundef %i.ip) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit65

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit65: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i63, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !83
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !80
  %i.iq = load ptr, ptr %29, align 8
  %i.ir = load i64, ptr %i.im, align 8
  %i.is = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.iq, i64 noundef %i.ir) #24 ; 0 uses
  %i.it = load ptr, ptr %29, align 8              ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.id
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit65
  %i.iv = load i64, ptr %i.id, align 8
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %.pre = load i8, ptr %i.df, align 1
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.af
  %i.ix = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.hn, %bb.af ] ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 0
  br i1 %i.iy, label %bb.an, label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ja = load ptr, ptr %i.iz, align 8            ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %30, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jg) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.jg, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %30, i64 328
  store ptr null, ptr %i.jh, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %30, i64 336
  store i8 0, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %30, i64 337
  store i8 0, ptr %i.jj, align 1
  %i.jk = getelementptr inbounds nuw i8, ptr %30, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jk, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %30, align 8
  %i.jl = load i64, ptr %i.p, align 8
  %i.jm = getelementptr inbounds i8, ptr %30, i64 %i.jl
  store ptr %i.o, ptr %i.jm, align 8
  %i.jn = load ptr, ptr %30, align 8
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds i8, ptr %30, i64 %i.jp
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.jq, ptr noundef null) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %30, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.jg, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.js, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.jt) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jr, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %30, i64 72
  store i32 16, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %30, i64 80 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %30, i64 96 ; 4 uses
  store ptr %i.jw, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %30, i64 88
  store i64 0, ptr %i.jx, align 8
  store i8 0, ptr %i.jw, align 8
  %i.jy = load ptr, ptr %30, align 8
  %i.jz = getelementptr i8, ptr %i.jy, i64 -24
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds i8, ptr %30, i64 %i.ka
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.kb, ptr noundef nonnull %i.jr) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  %i.kc = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i8 0, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %31, i64 20
  store i32 3, ptr %i.ke, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %31, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %i.ja, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i64 %i.jf, ptr %i.kg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  store ptr %30, ptr %32, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %31, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %32, i64 16
  store i8 1, ptr %i.ki, align 8
  %i.kj = call i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17) %32, i1 noundef zeroext true) #24 ; 0 uses
  %i.kk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.28, i64 noundef 17) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.kl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  store ptr %i.kl, ptr %34, align 8, !alias.scope !96
  %i.km = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.km, align 8, !alias.scope !96
  store i8 0, ptr %i.kl, align 8, !alias.scope !96
  %i.kn = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !96 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.ko, null
  br i1 %.not4.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %51 = getelementptr inbounds nuw i8, ptr %30, i64 32
  %52 = load ptr, ptr %51, align 8, !noalias !96  ; 2 uses
  %53 = icmp ugt ptr %i.ko, %52
  %.08.i.i.i = select i1 %53, ptr %i.ko, ptr %52
  %i.kp = getelementptr inbounds nuw i8, ptr %30, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !96 ; 2 uses
  %i.kr = ptrtoint ptr %.08.i.i.i to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 0, i64 noundef 0, ptr noundef %i.kq, i64 noundef %i.kt) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.ap:                                            ; preds = %bb.an
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %i.jv) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ao, %bb.ap
  call void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 4) #24
  %i.kv = load ptr, ptr %33, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.kv, i64 noundef %i.kx) #24 ; 0 uses
  %i.kz = load ptr, ptr %33, align 8              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.lc = load i64, ptr %i.la, align 8
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  %i.le = load ptr, ptr %34, align 8              ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.kl
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.lg = load i64, ptr %i.kl, align 8
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = load ptr, ptr %i.li, align 8            ; 2 uses
  %.not321 = icmp eq ptr %i.lk, %i.ll
  %.pre322 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 4 uses
  %.pre323 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  br i1 %.not321, label %._crit_edge, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174.lr.ph

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174.lr.ph: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.lm = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.lp = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i14.i169 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.2.0..sroa_idx.i15.i170 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.lx = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.mc = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %37, i64 112 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %37, i64 328
  %i.mg = getelementptr inbounds nuw i8, ptr %37, i64 336
  %i.mh = getelementptr inbounds nuw i8, ptr %37, i64 337
  %i.mi = getelementptr inbounds nuw i8, ptr %37, i64 344
  %i.mj = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.ml = getelementptr inbounds nuw i8, ptr %37, i64 64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %37, i64 72
  %i.mn = getelementptr inbounds nuw i8, ptr %37, i64 80 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %37, i64 96 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %37, i64 88
  %i.mq = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.mw = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.mx = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.mz = getelementptr i8, ptr %.pre322, i64 -24
  br label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174

._crit_edge:                                      ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  store ptr %.pre322, ptr %30, align 8
  %i.na = getelementptr i8, ptr %.pre322, i64 -24
  %i.nb = load i64, ptr %i.na, align 8
  %i.nc = getelementptr inbounds i8, ptr %30, i64 %i.nb
  store ptr %.pre323, ptr %i.nc, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jr, align 8
  %i.nd = load ptr, ptr %i.jv, align 8            ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.jw
  br i1 %i.ne, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.nf = load i64, ptr %i.jw, align 8
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jr, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jt) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %.pr319 = load i8, ptr %i.df, align 1
  br label %bb.bb

_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174: ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174.lr.ph, %bb.ba
  %i.nh = phi ptr [ %i.ll, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174.lr.ph ], [ %i.qa, %bb.ba ]
  %.0320 = phi i64 [ 0, %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174.lr.ph ], [ %i.nj, %bb.ba ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.0320 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.nj = add nuw i64 %.0320, 1                   ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 4 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !97
  store i64 %i.nj, ptr %16, align 16, !noalias !97
  %i.nm = load i32, ptr %i.ni, align 4, !noalias !97
  store i32 %i.nm, ptr %i.lm, align 16, !noalias !97
  %i.nn = load i16, ptr %i.nk, align 4, !noalias !97
  %i.no = zext i16 %i.nn to i32
  store i32 %i.no, ptr %i.ln, align 16, !noalias !97
  %i.np = load i8, ptr %i.nl, align 2, !noalias !97
  %i.nq = zext i8 %i.np to i32
  store i32 %i.nq, ptr %i.lo, align 16, !noalias !97
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !100
  store i64 0, ptr %i.lr, align 8, !noalias !100
  store ptr @_ZN3fmt3v1119basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.lq, align 8, !noalias !100
  store ptr %i.ls, ptr %9, align 8, !noalias !100
  store i64 500, ptr %i.lp, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !100
  store ptr @.str.29, ptr %2, align 8, !noalias !100
  store i64 57, ptr %.sroa.2.0..sroa_idx.i14.i169, align 8, !noalias !100
  store i32 0, ptr %i.lt, align 8, !noalias !100
  store ptr %9, ptr %i.lu, align 8, !noalias !100
  store i64 8740, ptr %i.lv, align 8, !noalias !100
  store ptr %16, ptr %.sroa.2.0..sroa_idx.i15.i170, align 8, !noalias !100
  store ptr null, ptr %i.lw, align 8, !noalias !100
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.29, i64 57, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.nr = load i64, ptr %i.lr, align 8, !noalias !106 ; 6 uses
  %i.ns = icmp ult i64 %i.nr, 4611686018427387903
  call void @llvm.assume(i1 %i.ns)
  %i.nt = load ptr, ptr %9, align 8, !noalias !106 ; 3 uses
  store ptr %i.lx, ptr %35, align 8, !alias.scope !106
  %i.nu = icmp eq ptr %i.nt, null
  %i.nv = icmp ne i64 %i.nr, 0
  %or.cond.i.i.i75 = and i1 %i.nv, %i.nu
  br i1 %or.cond.i.i.i75, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.134) #27
  unreachable

bb.ar:                                            ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !106
  store i64 %i.nr, ptr %i.b, align 8, !noalias !106
  %i.nw = icmp samesign ugt i64 %i.nr, 15
  br i1 %i.nw, label %bb.as, label %._crit_edge.i.i.i.i76

bb.as:                                            ; preds = %bb.ar
  %i.nx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #24 ; 2 uses
  store ptr %i.nx, ptr %35, align 8, !alias.scope !106
  %i.ny = load i64, ptr %i.b, align 8, !noalias !106
  store i64 %i.ny, ptr %i.lx, align 8, !alias.scope !106
  br label %._crit_edge.i.i.i.i76

._crit_edge.i.i.i.i76:                            ; preds = %bb.as, %bb.ar
  %i.nz = phi ptr [ %i.nx, %bb.as ], [ %i.lx, %bb.ar ] ; 2 uses
  switch i64 %i.nr, label %bb.au [
    i64 1, label %bb.at
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77
  ]

bb.at:                                            ; preds = %._crit_edge.i.i.i.i76
  %i.oa = load i8, ptr %i.nt, align 1
  store i8 %i.oa, ptr %i.nz, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77

bb.au:                                            ; preds = %._crit_edge.i.i.i.i76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nz, ptr align 1 %i.nt, i64 %i.nr, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77: ; preds = %bb.au, %bb.at, %._crit_edge.i.i.i.i76
  %i.ob = load i64, ptr %i.b, align 8, !noalias !106 ; 2 uses
  store i64 %i.ob, ptr %i.ly, align 8, !alias.scope !106
  %i.oc = load ptr, ptr %35, align 8, !alias.scope !106
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  store i8 0, ptr %i.od, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !106
  %i.oe = load ptr, ptr %9, align 8, !noalias !100 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.oe, %i.ls
  br i1 %.not.i.i.i78, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit79, label %bb.av

bb.av:                                            ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77
  call void @free(ptr noundef %i.oe) #24
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit79

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit79: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i77, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !97
  %i.of = load ptr, ptr %35, align 8
  %i.og = load i64, ptr %i.ly, align 8
  %i.oh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.of, i64 noundef %i.og) #24 ; 0 uses
  %i.oi = load ptr, ptr %35, align 8              ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.lx
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit79
  %i.ok = load i64, ptr %i.lx, align 8
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.om = load i16, ptr %i.nk, align 4            ; 2 uses
  %.not28 = icmp eq i16 %i.om, 0
  br i1 %.not28, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.on = zext i16 %i.om to i64                   ; 3 uses
  %i.oo = icmp ugt i64 %i.jf, %i.on
  br i1 %i.oo, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.op = sub nuw i64 %i.jf, %i.on
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.on
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  store i64 0, ptr %i.lz, align 8
  store i8 0, ptr %i.ma, align 8
  store i32 3, ptr %i.mb, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %36, align 8
  store ptr %i.oq, ptr %i.mc, align 8
  store i64 %i.op, ptr %i.md, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.me) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.me, align 16
  store ptr null, ptr %i.mf, align 8
  store i8 0, ptr %i.mg, align 16
  store i8 0, ptr %i.mh, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %37, align 16
  %i.or = load i64, ptr %i.p, align 8
  %i.os = getelementptr inbounds i8, ptr %37, i64 %i.or
  store ptr %i.o, ptr %i.os, align 8
  %i.ot = load ptr, ptr %37, align 16
  %i.ou = getelementptr i8, ptr %i.ot, i64 -24
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = getelementptr inbounds i8, ptr %37, i64 %i.ov
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ow, ptr noundef null) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.me, align 16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %37, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.mk, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ml) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.mj, align 8
  store i32 16, ptr %i.mm, align 8
  store ptr %i.mo, ptr %i.mn, align 16
  store i64 0, ptr %i.mp, align 8
  store i8 0, ptr %i.mo, align 16
  %i.ox = load ptr, ptr %37, align 16
  %i.oy = getelementptr i8, ptr %i.ox, i64 -24
  %i.oz = load i64, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds i8, ptr %37, i64 %i.oz
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.pa, ptr noundef nonnull %i.mj) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  store ptr %37, ptr %38, align 8
  store ptr %36, ptr %i.mq, align 8
  store i8 1, ptr %i.mr, align 8
  %i.pb = call i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17) %38, i1 noundef zeroext false) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  store ptr %i.ms, ptr %40, align 8, !alias.scope !113
  store i64 0, ptr %i.mt, align 8, !alias.scope !113
  store i8 0, ptr %i.ms, align 8, !alias.scope !113
  %i.pc = load ptr, ptr %i.mu, align 16, !noalias !113 ; 3 uses
  %.not4.i.i87 = icmp eq ptr %i.pc, null
  br i1 %.not4.i.i87, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %54 = load ptr, ptr %i.mv, align 16, !noalias !113 ; 2 uses
  %55 = icmp ugt ptr %i.pc, %54
  %.08.i.i.i86 = select i1 %55, ptr %i.pc, ptr %54
  %i.pd = load ptr, ptr %i.mw, align 8, !noalias !113 ; 2 uses
  %i.pe = ptrtoint ptr %.08.i.i.i86 to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef 0, i64 noundef 0, ptr noundef %i.pd, i64 noundef %i.pg) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit89

bb.az:                                            ; preds = %bb.ax
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %i.mn) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit89

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit89: ; preds = %bb.ay, %bb.az
  call void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull align 8 dereferenceable(32) %40, i64 noundef 4) #24
  %i.pi = load ptr, ptr %39, align 8
  %i.pj = load i64, ptr %i.mx, align 8
  %i.pk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.pi, i64 noundef %i.pj) #24 ; 0 uses
  %i.pl = load ptr, ptr %39, align 8              ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.my
  br i1 %i.pm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit89
  %i.pn = load i64, ptr %i.my, align 8
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %i.pl, i64 noundef %i.po) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.pp = load ptr, ptr %40, align 8              ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.ms
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.pr = load i64, ptr %i.ms, align 8
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  store ptr %.pre322, ptr %37, align 16
  %i.pt = load i64, ptr %i.mz, align 8
  %i.pu = getelementptr inbounds i8, ptr %37, i64 %i.pt
  store ptr %.pre323, ptr %i.pu, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.mj, align 8
  %i.pv = load ptr, ptr %i.mn, align 16           ; 2 uses
  %i.pw = icmp eq ptr %i.pv, %i.mo
  br i1 %i.pw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.px = load i64, ptr %i.mo, align 16
  %i.py = add i64 %i.px, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.py) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit98

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.mj, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ml) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.me) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit98, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.pz = load ptr, ptr %i.lj, align 8
  %i.qa = load ptr, ptr %i.li, align 8            ; 2 uses
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = ptrtoint ptr %i.qa to i64
  %i.qd = sub i64 %i.qb, %i.qc
  %i.qe = ashr exact i64 %i.qd, 3
  %i.qf = icmp ult i64 %i.nj, %i.qe
  br i1 %i.qf, label %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit174, label %._crit_edge, !llvm.loop !114

bb.bb:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.am
  %i.qg = phi i8 [ %.pr319, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ix, %bb.am ]
  %i.qh = icmp eq i8 %i.qg, 1
  br i1 %i.qh, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.qj = load ptr, ptr %i.qi, align 8            ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.qp = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 0, ptr %i.qp, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i8 0, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %41, i64 20
  store i32 3, ptr %i.qr, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %41, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %41, i64 24
  store ptr %i.qj, ptr %i.qs, align 8
  %i.qt = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i64 %i.qo, ptr %i.qt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  %i.qu = getelementptr inbounds nuw i8, ptr %42, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.qu) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.qu, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %42, i64 328
  store ptr null, ptr %i.qv, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %42, i64 336
  store i8 0, ptr %i.qw, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %42, i64 337
  store i8 0, ptr %i.qx, align 1
  %i.qy = getelementptr inbounds nuw i8, ptr %42, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qy, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %42, align 8
  %i.qz = load i64, ptr %i.p, align 8
  %i.ra = getelementptr inbounds i8, ptr %42, i64 %i.qz
  store ptr %i.o, ptr %i.ra, align 8
  %i.rb = load ptr, ptr %42, align 8
  %i.rc = getelementptr i8, ptr %i.rb, i64 -24
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = getelementptr inbounds i8, ptr %42, i64 %i.rd
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.re, ptr noundef null) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %42, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.qu, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.rh = getelementptr inbounds nuw i8, ptr %42, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rg, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.rh) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.rf, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %42, i64 72
  store i32 16, ptr %i.ri, align 8
  %i.rj = getelementptr inbounds nuw i8, ptr %42, i64 80 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %42, i64 96 ; 4 uses
  store ptr %i.rk, ptr %i.rj, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %42, i64 88
  store i64 0, ptr %i.rl, align 8
  store i8 0, ptr %i.rk, align 8
  %i.rm = load ptr, ptr %42, align 8
  %i.rn = getelementptr i8, ptr %i.rm, i64 -24
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = getelementptr inbounds i8, ptr %42, i64 %i.ro
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.rp, ptr noundef nonnull %i.rf) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  store ptr %42, ptr %43, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %41, ptr %i.rq, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i8 1, ptr %i.rr, align 8
  %i.rs = call i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17) %43, i1 noundef zeroext true) #24 ; 0 uses
  %i.rt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.28, i64 noundef 17) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ru = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  store ptr %i.ru, ptr %45, align 8, !alias.scope !121
  %i.rv = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.rv, align 8, !alias.scope !121
  store i8 0, ptr %i.ru, align 8, !alias.scope !121
  %i.rw = getelementptr inbounds nuw i8, ptr %42, i64 48
  %i.rx = load ptr, ptr %i.rw, align 8, !noalias !121 ; 3 uses
  %.not4.i.i103 = icmp eq ptr %i.rx, null
  br i1 %.not4.i.i103, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %56 = getelementptr inbounds nuw i8, ptr %42, i64 32
  %57 = load ptr, ptr %56, align 8, !noalias !121 ; 2 uses
  %58 = icmp ugt ptr %i.rx, %57
  %.08.i.i.i100 = select i1 %58, ptr %i.rx, ptr %57
  %i.ry = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !121 ; 2 uses
  %i.sa = ptrtoint ptr %.08.i.i.i100 to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef 0, i64 noundef 0, ptr noundef %i.rz, i64 noundef %i.sc) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105

bb.be:                                            ; preds = %bb.bc
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %i.rj) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105: ; preds = %bb.bd, %bb.be
  call void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %44, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef 4) #24
  %i.se = load ptr, ptr %44, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.sg = load i64, ptr %i.sf, align 8
  %i.sh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.se, i64 noundef %i.sg) #24 ; 0 uses
  %i.si = load ptr, ptr %44, align 8              ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105
  %i.sl = load i64, ptr %i.sj, align 8
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  %i.sn = load ptr, ptr %45, align 8              ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.ru
  br i1 %i.so, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.sp = load i64, ptr %i.ru, align 8
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  %i.sr = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.sr, ptr %42, align 8
  %i.ss = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.st = getelementptr i8, ptr %i.sr, i64 -24    ; 2 uses
  %i.su = load i64, ptr %i.st, align 8
  %i.sv = getelementptr inbounds i8, ptr %42, i64 %i.su
  store ptr %i.ss, ptr %i.sv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.rf, align 8
  %i.sw = load ptr, ptr %i.rj, align 8            ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.rk
  br i1 %i.sx, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.sy = load i64, ptr %i.rk, align 8
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i112
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.rf, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.rh) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.qu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.ta = load i8, ptr %i.df, align 1
  %i.tb = icmp eq i8 %i.ta, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.td = load i32, ptr %i.tc, align 8
  %i.te = trunc i32 %i.td to i16
  %i.tf = select i1 %i.tb, i16 %i.te, i16 -1      ; 2 uses
  %.not = icmp eq i16 %i.tf, 0
  br i1 %.not, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114
  %i.tg = zext i16 %i.tf to i64                   ; 3 uses
  %i.th = icmp ugt i64 %i.qo, %i.tg
  br i1 %i.th, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.ti = sub nuw i64 %i.qo, %i.tg
  %i.tj = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.tg
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.tk = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 0, ptr %i.tk, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i8 0, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i32 3, ptr %i.tm, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %46, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %46, i64 24
  store ptr %i.tj, ptr %i.tn, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i64 %i.ti, ptr %i.to, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  %i.tp = getelementptr inbounds nuw i8, ptr %47, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.tp) #24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.tp, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %47, i64 328
  store ptr null, ptr %i.tq, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %47, i64 336
  store i8 0, ptr %i.tr, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %47, i64 337
  store i8 0, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %47, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.tt, i8 0, i64 32, i1 false)
  store ptr %i.n, ptr %47, align 8
  %i.tu = load i64, ptr %i.p, align 8
  %i.tv = getelementptr inbounds i8, ptr %47, i64 %i.tu
  store ptr %i.o, ptr %i.tv, align 8
  %i.tw = load ptr, ptr %47, align 8
  %i.tx = getelementptr i8, ptr %i.tw, i64 -24
  %i.ty = load i64, ptr %i.tx, align 8
  %i.tz = getelementptr inbounds i8, ptr %47, i64 %i.ty
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.tz, ptr noundef null) #24
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %47, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.tp, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ua, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.uc = getelementptr inbounds nuw i8, ptr %47, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ub, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.uc) #24
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ua, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %47, i64 72
  store i32 16, ptr %i.ud, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %47, i64 80 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %47, i64 96 ; 4 uses
  store ptr %i.uf, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %47, i64 88
  store i64 0, ptr %i.ug, align 8
  store i8 0, ptr %i.uf, align 8
  %i.uh = load ptr, ptr %47, align 8
  %i.ui = getelementptr i8, ptr %i.uh, i64 -24
  %i.uj = load i64, ptr %i.ui, align 8
  %i.uk = getelementptr inbounds i8, ptr %47, i64 %i.uj
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.uk, ptr noundef nonnull %i.ua) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  store ptr %47, ptr %48, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %46, ptr %i.ul, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i8 1, ptr %i.um, align 8
  %i.un = call i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17) %48, i1 noundef zeroext false) #24 ; 0 uses
  %i.uo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.30, i64 noundef 17) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.up = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  store ptr %i.up, ptr %50, align 8, !alias.scope !128
  %i.uq = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 0, ptr %i.uq, align 8, !alias.scope !128
  store i8 0, ptr %i.up, align 8, !alias.scope !128
  %i.ur = getelementptr inbounds nuw i8, ptr %47, i64 48
  %i.us = load ptr, ptr %i.ur, align 8, !noalias !128 ; 3 uses
  %.not4.i.i119 = icmp eq ptr %i.us, null
  br i1 %.not4.i.i119, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %59 = getelementptr inbounds nuw i8, ptr %47, i64 32
  %60 = load ptr, ptr %59, align 8, !noalias !128 ; 2 uses
  %61 = icmp ugt ptr %i.us, %60
  %.08.i.i.i114 = select i1 %61, ptr %i.us, ptr %60
  %i.ut = getelementptr inbounds nuw i8, ptr %47, i64 40
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !128 ; 2 uses
  %i.uv = ptrtoint ptr %.08.i.i.i114 to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %i.uy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef 0, i64 noundef 0, ptr noundef %i.uu, i64 noundef %i.ux) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit121

bb.bi:                                            ; preds = %bb.bg
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.ue) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit121

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit121: ; preds = %bb.bh, %bb.bi
  call void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef 4) #24
  %i.uz = load ptr, ptr %49, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.vb = load i64, ptr %i.va, align 8
  %i.vc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %i.uz, i64 noundef %i.vb) #24 ; 0 uses
  %i.vd = load ptr, ptr %49, align 8              ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.vf = icmp eq ptr %i.vd, %i.ve
  br i1 %i.vf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit121
  %i.vg = load i64, ptr %i.ve, align 8
  %i.vh = add i64 %i.vg, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  %i.vi = load ptr, ptr %50, align 8              ; 2 uses
  %i.vj = icmp eq ptr %i.vi, %i.up
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.vk = load i64, ptr %i.up, align 8
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  store ptr %i.sr, ptr %47, align 8
  %i.vm = load i64, ptr %i.st, align 8
  %i.vn = getelementptr inbounds i8, ptr %47, i64 %i.vm
  store ptr %i.ss, ptr %i.vn, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ua, align 8
  %i.vo = load ptr, ptr %i.ue, align 8            ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.uf
  br i1 %i.vp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit130.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.vq = load i64, ptr %i.uf, align 8
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit130.a

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit130.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i128.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ua, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.uc) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.tp) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit114, %bb.bf, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit130.a, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1
  %i.vs = load ptr, ptr %23, align 8
  %i.vt = getelementptr i8, ptr %i.vs, i64 -24
  %i.vu = load i64, ptr %i.vt, align 8
  %i.vv = getelementptr inbounds i8, ptr %23, i64 %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.vx = load i64, ptr %i.vw, align 8
  %.not.i = icmp eq i64 %i.vx, 0
  br i1 %.not.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.vy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull %i.a, i64 noundef 1) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.bl:                                            ; preds = %bb.bj
  %i.vz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %23, i8 noundef signext 125) #24 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.bk, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.wa, ptr %0, align 8, !alias.scope !135
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.wb, align 8, !alias.scope !135
  store i8 0, ptr %i.wa, align 8, !alias.scope !135
  %i.wc = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !noalias !135 ; 3 uses
  %.not4.i.i133 = icmp eq ptr %i.wd, null
  br i1 %.not4.i.i133, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %62 = getelementptr inbounds nuw i8, ptr %23, i64 32
  %63 = load ptr, ptr %62, align 8, !noalias !135 ; 2 uses
  %64 = icmp ugt ptr %i.wd, %63
  %.08.i.i.i126 = select i1 %64, ptr %i.wd, ptr %63
  %i.we = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.wf = load ptr, ptr %i.we, align 8, !noalias !135 ; 2 uses
  %i.wg = ptrtoint ptr %.08.i.i.i126 to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.wf, i64 noundef %i.wi) #24 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #24
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135: ; preds = %bb.bm, %bb.bn
  %i.wk = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.wk, ptr %23, align 8
  %i.wl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.wm = getelementptr i8, ptr %i.wk, i64 -24
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = getelementptr inbounds i8, ptr %23, i64 %i.wn
  store ptr %i.wl, ptr %i.wo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.wp = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.ab
  br i1 %i.wq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135
  %i.wr = load i64, ptr %i.ab, align 8
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit138

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit138: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i136
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #24
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i64 @_ZN4LIEF2PE14unwind_aarch647Decoder3runEb(ptr noundef nonnull align 8 dereferenceable(17), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF12BinaryStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4LIEF2PE14unwind_aarch6416UnpackedFunction5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #1 comdat align 2 {
_ZNSt10unique_ptrIN4LIEF2PE14unwind_aarch6416UnpackedFunctionESt14default_deleteIS3_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #25 ; 2 uses
  tail call void @_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %1)
  store ptr %i.a, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE14unwind_aarch6416UnpackedFunctionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EED2Ev.exit

_ZNSt6vectorIN4LIEF2PE14unwind_aarch6416UnpackedFunction14epilog_scope_tESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4LIEF2PE14unwind_aarch6416UnpackedFunctionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26, !inline_history !136
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26, !inline_history !136
  br label %_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionD2Ev.exit

_ZN4LIEF2PE14unwind_aarch6416UnpackedFunctionD2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #4 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF10SpanStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4LIEF10SpanStream4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF12BinaryStream9peek_dataERSt6vectorIhSaIhEEmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %.not = icmp ugt i64 %2, %i.e
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %3, %2                           ; 2 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  %i.k = icmp ule i64 %i.f, %i.j
  %i.l = or i64 %3, %2
  %i.m = or i64 %i.l, %i.f
  %i.n = icmp sgt i64 %i.m, -1
  %spec.select = and i1 %i.n, %i.k
  br i1 %spec.select, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %3)
end_hunk_0
