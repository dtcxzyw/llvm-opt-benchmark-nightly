inline.NumInlined: 2586
inline.NumDeleted: 801
begin_hunk_0_@_ZN4LIEF2PElsERSoRKNS0_22ResourceStringFileInfoE:_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  store ptr null, ptr %i.o, align 8, !noalias !17
  call void @_ZN3fmt3v116detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.3, i64 14, ptr noundef nonnull align 8 dereferenceable(56) %2), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !17
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.p = load i64, ptr %i.j, align 8, !noalias !23 ; 6 uses
  %i.q = icmp ult i64 %i.p, 4611686018427387903
  call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %3, align 8, !noalias !23  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !alias.scope !23
  %i.t = icmp eq ptr %i.r, null
  %i.u = icmp ne i64 %i.p, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.105) #24
  unreachable

bb.b:                                             ; preds = %_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !23
  store i64 %i.p, ptr %i.b, align 8, !noalias !23
  %i.v = icmp samesign ugt i64 %i.p, 15
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.w, ptr %5, align 8, !alias.scope !23
  %i.x = load i64, ptr %i.b, align 8, !noalias !23
  store i64 %i.x, ptr %i.s, align 8, !alias.scope !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.y = phi ptr [ %i.w, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  switch i64 %i.p, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.r, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.r, i64 %i.p, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.aa = load i64, ptr %i.b, align 8, !noalias !23 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ab, align 8, !alias.scope !23
  %i.ac = load ptr, ptr %5, align 8, !alias.scope !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !23
  %i.ae = load ptr, ptr %3, align 8, !noalias !17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ae) #22
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !14
  %i.af = load ptr, ptr %5, align 8
  %i.ag = load i64, ptr %i.ab, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.af, i64 noundef %i.ag) #22 ; 0 uses
  %i.ai = load ptr, ptr %5, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ak = load i64, ptr %i.s, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = load ptr, ptr %6, align 8               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !noalias !27 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 72
  %.not27 = icmp eq ptr %i.au, %i.as
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 328
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 336
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 337
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 344
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bv = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 -24
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 125, ptr %i.a, align 1
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %0, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %.not.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #22 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %._crit_edge
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 125) #22 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.sroa.8.029 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.sroa.419.028 = phi ptr [ %i.as, %.lr.ph ], [ %i.do, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.az, align 16
  store ptr null, ptr %i.ba, align 8
  store i8 0, ptr %i.bb, align 16
  store i8 0, ptr %i.bc, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  store ptr %i.be, ptr %7, align 16
  %i.cg = load i64, ptr %i.bg, align 8
  %i.ch = getelementptr inbounds i8, ptr %7, i64 %i.cg
  store ptr %i.bf, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %7, align 16
  %i.cj = getelementptr i8, ptr %i.ci, i64 -24
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds i8, ptr %7, i64 %i.ck
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cl, ptr noundef null) #22
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.az, align 16
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %7, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #22
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bh, align 8
  store i32 16, ptr %i.bk, align 8
  store ptr %i.bm, ptr %i.bl, align 16
  store i64 0, ptr %i.bn, align 8
  store i8 0, ptr %i.bm, align 16
  %i.cm = load ptr, ptr %7, align 16
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %7, i64 %i.co
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.cp, ptr noundef nonnull %i.bh) #22
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.419.028) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  store ptr %i.bo, ptr %9, align 8, !alias.scope !36
  store i64 0, ptr %i.bp, align 8, !alias.scope !36
  store i8 0, ptr %i.bo, align 8, !alias.scope !36
  %i.cr = load ptr, ptr %i.bq, align 16, !noalias !36 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cr, null
  %10 = load ptr, ptr %i.br, align 16, !noalias !36 ; 2 uses
  %11 = icmp ugt ptr %i.cr, %10
  %.08.i.i.i = select i1 %11, ptr %i.cr, ptr %10  ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %i.bs, align 8, !noalias !36 ; 2 uses
  %i.ct = ptrtoint ptr %.08.i.i.i to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.cs, i64 noundef %i.cv) #22 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bl) #22
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.k
  call void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 2) #22
  %i.cx = load ptr, ptr %8, align 8
  %i.cy = load i64, ptr %i.bt, align 8
  %i.cz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cx, i64 noundef %i.cy) #22 ; 0 uses
  %i.da = load ptr, ptr %8, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.bu
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dc = load i64, ptr %i.bu, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.de = load ptr, ptr %9, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.bo
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.dg = load i64, ptr %i.bo, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  store ptr %i.bv, ptr %7, align 16
  %i.di = load i64, ptr %i.bx, align 8
  %i.dj = getelementptr inbounds i8, ptr %7, i64 %i.di
  store ptr %i.bw, ptr %i.dj, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bh, align 8
  %i.dk = load ptr, ptr %i.bl, align 16           ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bm
  br i1 %i.dl, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.dm = load i64, ptr %i.bm, align 16
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bh, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.419.028, i64 72
  %i.dp = add nuw nsw i64 %.sroa.8.029, 1         ; 2 uses
  %.not = icmp eq i64 %i.dp, %i.ay
  br i1 %.not, label %._crit_edge, label %bb.i
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_19ResourceStringTableE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN4LIEF6indentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF2PE22ResourceStringFileInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE22ResourceStringFileInfoE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(72) %.05.i.i.i.i) #22, !inline_history !8
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exitthread-pre-split.i.i, %bb.a
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #23, !inline_history !11
  br label %_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN4LIEF2PE19ResourceStringTableEEvT_S4_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4LIEF2PE22ResourceStringFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EED2Ev.exit.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = shl i64 %i.s, 1
  %i.u = add i64 %i.t, 2
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.u) #23, !inline_history !11
  br label %_ZN4LIEF2PE22ResourceStringFileInfoD2Ev.exit

_ZN4LIEF2PE22ResourceStringFileInfoD2Ev.exit:     ; preds = %_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(72) %0) #22, !inline_history !11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNKSt6vectorIN4LIEF2PE19ResourceStringTableESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE19ResourceStringTableE, i64 16), ptr %i.q, align 8
end_hunk_0
