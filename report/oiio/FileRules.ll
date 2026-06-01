inline.NumInlined: 5824
inline.NumDeleted: 2063
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_122BuildRegularExpressionB5cxx11EPKcS2_:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ho = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.214, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.hp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #30
  %i.hq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull %2, i64 noundef %i.hp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.215, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.hs = load ptr, ptr %i.hg, align 8, !tbaa !7
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = call noundef ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #30
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hv)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %bb.bk
  %i.hy = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.hz = load ptr, ptr %12, align 8, !tbaa !69
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef %i.hz)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  invoke void @__cxa_throw(ptr nonnull %i.hy, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #31
          to label %bb.bv unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bi
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm, %bb.bl
  %.0 = phi i1 [ false, %bb.bm ], [ true, %bb.bl ] ; 2 uses
  %i.id = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ie = load ptr, ptr %12, align 8, !tbaa !69   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.bp
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !24
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.0, label %bb.bq, label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br i1 %.0, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.pn32120 = phi { ptr, i32 } [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.thread ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ]
  call void @__cxa_free_exception(ptr %i.hy) #30
  br label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.bq, %bb.bo
  %.pn32.pn = phi { ptr, i32 } [ %.pn32120, %bb.bq ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.ib, %bb.bo ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #30
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bn
  %.pn32.pn.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.br ], [ %i.ia, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %.body
  %.merged36 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn32.pn.pn, %bb.bs ] ; 2 uses
  %i.ij = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.bx
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.bt
  %i.il = load i64, ptr %i.bx, align 8, !tbaa !24
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.c, %bb.b
  %.merged = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.f, %bb.b ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.an, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.merged36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.merged36, %bb.bt ]
  %i.in = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.b
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.ip = load i64, ptr %i.b, align 8, !tbaa !24
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %.merged

bb.bu:                                            ; preds = %bb.bs
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  call void @__clang_call_terminate(ptr %i.is) #32
  unreachable

bb.bv:                                            ; preds = %bb.bm
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !44
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !44
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %6 = alloca %"class.std::locale", align 8       ; 4 uses
  %i.a = and i32 %4, 1008
  switch i32 %i.a, label %bb.c [
    i32 16, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 32, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 64, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 128, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 256, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 512, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %4, 16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 14, ptr noundef nonnull @.str.37) #31
  unreachable

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ] ; 2 uses
  store i32 %.0.i, ptr %0, align 8, !tbaa !193
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  invoke void @_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %6)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !214
  store ptr null, ptr %i.d, align 8, !tbaa !217, !alias.scope !214
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  invoke void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !214
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.h, align 8, !tbaa !67
  store i8 0, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 noundef 0)
          to label %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit unwind label %bb.r

_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.l, ptr %i.j, align 8, !tbaa !218
  %i.m = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #30
  %i.n = load ptr, ptr %3, align 8, !tbaa !219
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !224  ; 2 uses
  %.not.not.i = icmp eq ptr %i.r, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.r, ptr %i.s, align 8, !tbaa !226
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !217  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !227
  %i.w = invoke noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.t)
          to label %bb.g unwind label %bb.t       ; 2 uses

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !234
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !237
  invoke void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !240
  %i.ad = icmp eq i32 %i.ac, 27
  br i1 %i.ad, label %bb.i, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !241
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !242
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc18
  store i32 27, ptr %i.ab, align 8, !tbaa !240
  br label %bb.u

bb.k:                                             ; preds = %.noexc18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !243
  switch i32 %i.al, label %bb.u [
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 1, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
          to label %bb.u unwind label %bb.t

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %bb.h
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #31
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  unreachable

bb.p:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %_ZNSt8__detail8_ScannerIcED2Ev.exit

bb.q:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.s:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.t:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.y, %bb.x, %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.m, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !244, !noalias !245 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !250, !noalias !245 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.as, i64 -16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.as, i64 -8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !74
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !251, !noalias !245
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !252, !noalias !253 ; 2 uses
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ba, i64 488
  %.sroa.5.0.copyload24 = load i64, ptr %.sroa.5.0..sroa_idx23, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ba, i64 496
  %.sroa.6.0.copyload26 = load i64, ptr %.sroa.6.0..sroa_idx25, align 8, !tbaa !74
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef 504) #29, !noalias !253
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !254, !noalias !253
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !251, !noalias !253
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !252, !noalias !253 ; 3 uses
  store ptr %i.bd, ptr %i.at, align 8, !tbaa !250, !noalias !253
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 504
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !255, !noalias !253
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 480
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload26, %bb.w ], [ %.sroa.6.0.copyload, %bb.v ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload24, %bb.w ], [ %.sroa.5.0.copyload, %bb.v ]
  %storemerge.i.i.i = phi ptr [ %i.bg, %bb.w ], [ %i.aw, %bb.v ]
  store ptr %storemerge.i.i.i, ptr %i.ar, align 8, !tbaa !256, !noalias !253
end_hunk_0
